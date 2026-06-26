import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group021

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
private def case_000672_rank : Fin numPairWords := ⟨413, by decide⟩
private def case_000672_mask : SignMask := ⟨7, by decide⟩
private def case_000672_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000672_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000672_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000672_b : Vec3 Rat := { x := (-868/81), y := (1348/81), z := (580/81) }
private def case_000672_firstLine : StrictLin2 := { a := 1, b := 1, c := (-747/217) }
private def case_000672_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000672_rankWord :
    rankPairWord? case_000672_word = some case_000672_rank := by
  decide

private theorem case_000672_unrank :
    unrankPairWord case_000672_rank = case_000672_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000672_word case_000672_rank).1
    case_000672_rankWord |>.symm

private theorem case_000672_seqChoice :
    translationChoiceSeq case_000672_word case_000672_mask = case_000672_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000672_seqAtRank :
    translationSeqAtRankMask case_000672_rank case_000672_mask = case_000672_seq := by
  rw [translationSeqAtRankMask, case_000672_unrank]
  exact case_000672_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000672_bAtRank :
    translationBAtRankMask case_000672_rank case_000672_mask = case_000672_b := by
  rw [translationBAtRankMask, case_000672_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000672_b, case_000672_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000672_firstLine_eq :
    case_000672_support.firstLine case_000672_seq case_000672_b = case_000672_firstLine := by
  norm_num [case_000672_firstLine, case_000672_support, case_000672_seq, case_000672_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000672_secondLine_eq :
    case_000672_support.secondLine case_000672_seq case_000672_b = case_000672_secondLine := by
  norm_num [case_000672_secondLine, case_000672_support, case_000672_seq, case_000672_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000672_sourceAgrees :
    SourceAgrees case_000672_support case_000672_rank.val case_000672_mask := by
  intro hlt
  have hrank : (⟨case_000672_rank.val, hlt⟩ : Fin numPairWords) = case_000672_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000672_rank.val, hlt⟩ case_000672_mask =
        case_000672_seq := by
    simpa [hrank] using case_000672_seqAtRank
  simp [SourceChecks, hseq, case_000672_support,
    checkTranslationConstraintSource, case_000672_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000672_rows :
    EqEqNegVarFirstRows case_000672_support case_000672_rank.val case_000672_mask := by
  intro hlt
  have hrank : (⟨case_000672_rank.val, hlt⟩ : Fin numPairWords) = case_000672_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000672_rank.val, hlt⟩ case_000672_mask =
        case_000672_seq := by
    simpa [hrank] using case_000672_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000672_rank.val, hlt⟩ case_000672_mask =
        case_000672_b := by
    simpa [hrank] using case_000672_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000672_support case_000672_rank.val hlt
          case_000672_mask = case_000672_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000672_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000672_support case_000672_rank.val hlt
          case_000672_mask = case_000672_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000672_secondLine_eq]
  have case_000672_rowFirst :
      EqEqNegRow (FirstLineAt case_000672_support case_000672_rank.val hlt case_000672_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000672_firstLine, EqEqNegRow]
  have case_000672_fixedSecond :
      FixedRow (SecondLineAt case_000672_support case_000672_rank.val hlt case_000672_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000672_secondLine, FixedRow]
  exact ⟨case_000672_rowFirst, case_000672_fixedSecond⟩

private theorem case_000672_existsRows :
    ExistsEqEqNegVarFirstRows case_000672_rank.val case_000672_mask :=
  ⟨case_000672_support, case_000672_sourceAgrees, case_000672_rows⟩

private theorem case_000672_covered :
    RowPropertyParametricCovered case_000672_rank.val case_000672_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000672_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000673_rank : Fin numPairWords := ⟨413, by decide⟩
private def case_000673_mask : SignMask := ⟨9, by decide⟩
private def case_000673_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000673_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000673_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000673_b : Vec3 Rat := { x := (-260/81), y := (356/81), z := (-964/81) }
private def case_000673_firstLine : StrictLin2 := { a := -1, b := -1, c := (-239/65) }
private def case_000673_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000673_rankWord :
    rankPairWord? case_000673_word = some case_000673_rank := by
  decide

private theorem case_000673_unrank :
    unrankPairWord case_000673_rank = case_000673_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000673_word case_000673_rank).1
    case_000673_rankWord |>.symm

private theorem case_000673_seqChoice :
    translationChoiceSeq case_000673_word case_000673_mask = case_000673_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000673_seqAtRank :
    translationSeqAtRankMask case_000673_rank case_000673_mask = case_000673_seq := by
  rw [translationSeqAtRankMask, case_000673_unrank]
  exact case_000673_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000673_bAtRank :
    translationBAtRankMask case_000673_rank case_000673_mask = case_000673_b := by
  rw [translationBAtRankMask, case_000673_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000673_b, case_000673_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000673_firstLine_eq :
    case_000673_support.firstLine case_000673_seq case_000673_b = case_000673_firstLine := by
  norm_num [case_000673_firstLine, case_000673_support, case_000673_seq, case_000673_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000673_secondLine_eq :
    case_000673_support.secondLine case_000673_seq case_000673_b = case_000673_secondLine := by
  norm_num [case_000673_secondLine, case_000673_support, case_000673_seq, case_000673_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000673_sourceAgrees :
    SourceAgrees case_000673_support case_000673_rank.val case_000673_mask := by
  intro hlt
  have hrank : (⟨case_000673_rank.val, hlt⟩ : Fin numPairWords) = case_000673_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000673_rank.val, hlt⟩ case_000673_mask =
        case_000673_seq := by
    simpa [hrank] using case_000673_seqAtRank
  simp [SourceChecks, hseq, case_000673_support,
    checkTranslationConstraintSource, case_000673_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000673_rows :
    EqEqPosVarFirstRows case_000673_support case_000673_rank.val case_000673_mask := by
  intro hlt
  have hrank : (⟨case_000673_rank.val, hlt⟩ : Fin numPairWords) = case_000673_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000673_rank.val, hlt⟩ case_000673_mask =
        case_000673_seq := by
    simpa [hrank] using case_000673_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000673_rank.val, hlt⟩ case_000673_mask =
        case_000673_b := by
    simpa [hrank] using case_000673_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000673_support case_000673_rank.val hlt
          case_000673_mask = case_000673_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000673_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000673_support case_000673_rank.val hlt
          case_000673_mask = case_000673_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000673_secondLine_eq]
  have case_000673_rowFirst :
      EqEqPosRow (FirstLineAt case_000673_support case_000673_rank.val hlt case_000673_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000673_firstLine, EqEqPosRow]
  have case_000673_fixedSecond :
      FixedRow (SecondLineAt case_000673_support case_000673_rank.val hlt case_000673_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000673_secondLine, FixedRow]
  exact ⟨case_000673_rowFirst, case_000673_fixedSecond⟩

private theorem case_000673_existsRows :
    ExistsEqEqPosVarFirstRows case_000673_rank.val case_000673_mask :=
  ⟨case_000673_support, case_000673_sourceAgrees, case_000673_rows⟩

private theorem case_000673_covered :
    RowPropertyParametricCovered case_000673_rank.val case_000673_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000673_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=0ef1248979a51a72226ced64e0cd085ba836f78524dfad98ea5b8d5c95f5fa61`. -/
private def case_000674_rank : Fin numPairWords := ⟨413, by decide⟩
private def case_000674_mask : SignMask := ⟨22, by decide⟩
private def case_000674_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000674_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000674_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000674_b : Vec3 Rat := { x := (-1012/81), y := (-20/81), z := (724/81) }
private def case_000674_firstLine : StrictLin2 := { a := (253/5), b := 0, c := (-739/5) }
private def case_000674_secondLine : StrictLin2 := { a := (-81/20), b := 0, c := (19683/5060) }

private theorem case_000674_rankWord :
    rankPairWord? case_000674_word = some case_000674_rank := by
  decide

private theorem case_000674_unrank :
    unrankPairWord case_000674_rank = case_000674_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000674_word case_000674_rank).1
    case_000674_rankWord |>.symm

private theorem case_000674_seqChoice :
    translationChoiceSeq case_000674_word case_000674_mask = case_000674_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000674_seqAtRank :
    translationSeqAtRankMask case_000674_rank case_000674_mask = case_000674_seq := by
  rw [translationSeqAtRankMask, case_000674_unrank]
  exact case_000674_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000674_bAtRank :
    translationBAtRankMask case_000674_rank case_000674_mask = case_000674_b := by
  rw [translationBAtRankMask, case_000674_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000674_b, case_000674_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000674_firstLine_eq :
    case_000674_support.firstLine case_000674_seq case_000674_b = case_000674_firstLine := by
  norm_num [case_000674_firstLine, case_000674_support, case_000674_seq, case_000674_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000674_secondLine_eq :
    case_000674_support.secondLine case_000674_seq case_000674_b = case_000674_secondLine := by
  norm_num [case_000674_secondLine, case_000674_support, case_000674_seq, case_000674_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000674_sourceAgrees :
    SourceAgrees case_000674_support case_000674_rank.val case_000674_mask := by
  intro hlt
  have hrank : (⟨case_000674_rank.val, hlt⟩ : Fin numPairWords) = case_000674_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000674_rank.val, hlt⟩ case_000674_mask =
        case_000674_seq := by
    simpa [hrank] using case_000674_seqAtRank
  simp [SourceChecks, hseq, case_000674_support,
    checkTranslationConstraintSource, case_000674_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000674_rows :
    AxisAOnlyRows case_000674_support case_000674_rank.val case_000674_mask := by
  intro hlt
  have hrank : (⟨case_000674_rank.val, hlt⟩ : Fin numPairWords) = case_000674_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000674_rank.val, hlt⟩ case_000674_mask =
        case_000674_seq := by
    simpa [hrank] using case_000674_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000674_rank.val, hlt⟩ case_000674_mask =
        case_000674_b := by
    simpa [hrank] using case_000674_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000674_support case_000674_rank.val hlt
          case_000674_mask = case_000674_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000674_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000674_support case_000674_rank.val hlt
          case_000674_mask = case_000674_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000674_secondLine_eq]
  have case_000674_firstBZero :
      (FirstLineAt case_000674_support case_000674_rank.val hlt case_000674_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000674_firstLine]
  have case_000674_secondBZero :
      (SecondLineAt case_000674_support case_000674_rank.val hlt case_000674_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000674_secondLine]
  have case_000674_aProductNeg :
      (FirstLineAt case_000674_support case_000674_rank.val hlt case_000674_mask).a *
          (SecondLineAt case_000674_support case_000674_rank.val hlt case_000674_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000674_firstLine, case_000674_secondLine]
  have case_000674_weightedCNonpos :
      (SupportPair.multipliersAt case_000674_support
          case_000674_rank.val hlt case_000674_mask).1 *
          (FirstLineAt case_000674_support case_000674_rank.val hlt case_000674_mask).c +
        (SupportPair.multipliersAt case_000674_support
          case_000674_rank.val hlt case_000674_mask).2 *
          (SecondLineAt case_000674_support case_000674_rank.val hlt case_000674_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_000674_firstLine_eq,
      case_000674_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_000674_firstLine, case_000674_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_000674_firstBZero, case_000674_secondBZero,
    case_000674_aProductNeg, case_000674_weightedCNonpos⟩

private theorem case_000674_existsRows :
    ExistsAxisAOnlyRows case_000674_rank.val case_000674_mask :=
  ⟨case_000674_support, case_000674_sourceAgrees, case_000674_rows⟩

private theorem case_000674_covered :
    RowPropertyParametricCovered case_000674_rank.val case_000674_mask :=
  RowPropertyParametricCovered.axisAOnly case_000674_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000675_rank : Fin numPairWords := ⟨413, by decide⟩
private def case_000675_mask : SignMask := ⟨24, by decide⟩
private def case_000675_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000675_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000675_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000675_b : Vec3 Rat := { x := (-404/81), y := (-1012/81), z := (-820/81) }
private def case_000675_firstLine : StrictLin2 := { a := -1, b := -1, c := (-815/101) }
private def case_000675_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000675_rankWord :
    rankPairWord? case_000675_word = some case_000675_rank := by
  decide

private theorem case_000675_unrank :
    unrankPairWord case_000675_rank = case_000675_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000675_word case_000675_rank).1
    case_000675_rankWord |>.symm

private theorem case_000675_seqChoice :
    translationChoiceSeq case_000675_word case_000675_mask = case_000675_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000675_seqAtRank :
    translationSeqAtRankMask case_000675_rank case_000675_mask = case_000675_seq := by
  rw [translationSeqAtRankMask, case_000675_unrank]
  exact case_000675_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000675_bAtRank :
    translationBAtRankMask case_000675_rank case_000675_mask = case_000675_b := by
  rw [translationBAtRankMask, case_000675_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000675_b, case_000675_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000675_firstLine_eq :
    case_000675_support.firstLine case_000675_seq case_000675_b = case_000675_firstLine := by
  norm_num [case_000675_firstLine, case_000675_support, case_000675_seq, case_000675_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000675_secondLine_eq :
    case_000675_support.secondLine case_000675_seq case_000675_b = case_000675_secondLine := by
  norm_num [case_000675_secondLine, case_000675_support, case_000675_seq, case_000675_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000675_sourceAgrees :
    SourceAgrees case_000675_support case_000675_rank.val case_000675_mask := by
  intro hlt
  have hrank : (⟨case_000675_rank.val, hlt⟩ : Fin numPairWords) = case_000675_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000675_rank.val, hlt⟩ case_000675_mask =
        case_000675_seq := by
    simpa [hrank] using case_000675_seqAtRank
  simp [SourceChecks, hseq, case_000675_support,
    checkTranslationConstraintSource, case_000675_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000675_rows :
    EqEqPosVarFirstRows case_000675_support case_000675_rank.val case_000675_mask := by
  intro hlt
  have hrank : (⟨case_000675_rank.val, hlt⟩ : Fin numPairWords) = case_000675_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000675_rank.val, hlt⟩ case_000675_mask =
        case_000675_seq := by
    simpa [hrank] using case_000675_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000675_rank.val, hlt⟩ case_000675_mask =
        case_000675_b := by
    simpa [hrank] using case_000675_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000675_support case_000675_rank.val hlt
          case_000675_mask = case_000675_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000675_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000675_support case_000675_rank.val hlt
          case_000675_mask = case_000675_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000675_secondLine_eq]
  have case_000675_rowFirst :
      EqEqPosRow (FirstLineAt case_000675_support case_000675_rank.val hlt case_000675_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000675_firstLine, EqEqPosRow]
  have case_000675_fixedSecond :
      FixedRow (SecondLineAt case_000675_support case_000675_rank.val hlt case_000675_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000675_secondLine, FixedRow]
  exact ⟨case_000675_rowFirst, case_000675_fixedSecond⟩

private theorem case_000675_existsRows :
    ExistsEqEqPosVarFirstRows case_000675_rank.val case_000675_mask :=
  ⟨case_000675_support, case_000675_sourceAgrees, case_000675_rows⟩

private theorem case_000675_covered :
    RowPropertyParametricCovered case_000675_rank.val case_000675_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000675_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000676_rank : Fin numPairWords := ⟨413, by decide⟩
private def case_000676_mask : SignMask := ⟨30, by decide⟩
private def case_000676_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000676_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000676_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000676_b : Vec3 Rat := { x := (-836/81), y := (-580/81), z := (260/81) }
private def case_000676_firstLine : StrictLin2 := { a := (-209/129), b := (-209/129), c := (-529/129) }
private def case_000676_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000676_rankWord :
    rankPairWord? case_000676_word = some case_000676_rank := by
  decide

private theorem case_000676_unrank :
    unrankPairWord case_000676_rank = case_000676_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000676_word case_000676_rank).1
    case_000676_rankWord |>.symm

private theorem case_000676_seqChoice :
    translationChoiceSeq case_000676_word case_000676_mask = case_000676_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000676_seqAtRank :
    translationSeqAtRankMask case_000676_rank case_000676_mask = case_000676_seq := by
  rw [translationSeqAtRankMask, case_000676_unrank]
  exact case_000676_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000676_bAtRank :
    translationBAtRankMask case_000676_rank case_000676_mask = case_000676_b := by
  rw [translationBAtRankMask, case_000676_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000676_b, case_000676_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000676_firstLine_eq :
    case_000676_support.firstLine case_000676_seq case_000676_b = case_000676_firstLine := by
  norm_num [case_000676_firstLine, case_000676_support, case_000676_seq, case_000676_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000676_secondLine_eq :
    case_000676_support.secondLine case_000676_seq case_000676_b = case_000676_secondLine := by
  norm_num [case_000676_secondLine, case_000676_support, case_000676_seq, case_000676_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000676_sourceAgrees :
    SourceAgrees case_000676_support case_000676_rank.val case_000676_mask := by
  intro hlt
  have hrank : (⟨case_000676_rank.val, hlt⟩ : Fin numPairWords) = case_000676_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000676_rank.val, hlt⟩ case_000676_mask =
        case_000676_seq := by
    simpa [hrank] using case_000676_seqAtRank
  simp [SourceChecks, hseq, case_000676_support,
    checkTranslationConstraintSource, case_000676_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000676_rows :
    EqEqPosVarFirstRows case_000676_support case_000676_rank.val case_000676_mask := by
  intro hlt
  have hrank : (⟨case_000676_rank.val, hlt⟩ : Fin numPairWords) = case_000676_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000676_rank.val, hlt⟩ case_000676_mask =
        case_000676_seq := by
    simpa [hrank] using case_000676_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000676_rank.val, hlt⟩ case_000676_mask =
        case_000676_b := by
    simpa [hrank] using case_000676_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000676_support case_000676_rank.val hlt
          case_000676_mask = case_000676_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000676_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000676_support case_000676_rank.val hlt
          case_000676_mask = case_000676_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000676_secondLine_eq]
  have case_000676_rowFirst :
      EqEqPosRow (FirstLineAt case_000676_support case_000676_rank.val hlt case_000676_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000676_firstLine, EqEqPosRow]
  have case_000676_fixedSecond :
      FixedRow (SecondLineAt case_000676_support case_000676_rank.val hlt case_000676_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000676_secondLine, FixedRow]
  exact ⟨case_000676_rowFirst, case_000676_fixedSecond⟩

private theorem case_000676_existsRows :
    ExistsEqEqPosVarFirstRows case_000676_rank.val case_000676_mask :=
  ⟨case_000676_support, case_000676_sourceAgrees, case_000676_rows⟩

private theorem case_000676_covered :
    RowPropertyParametricCovered case_000676_rank.val case_000676_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000676_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000677_rank : Fin numPairWords := ⟨413, by decide⟩
private def case_000677_mask : SignMask := ⟨54, by decide⟩
private def case_000677_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000677_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000677_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000677_b : Vec3 Rat := { x := (-388/81), y := (-356/81), z := (964/81) }
private def case_000677_firstLine : StrictLin2 := { a := -1, b := 1, c := (-563/97) }
private def case_000677_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000677_rankWord :
    rankPairWord? case_000677_word = some case_000677_rank := by
  decide

private theorem case_000677_unrank :
    unrankPairWord case_000677_rank = case_000677_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000677_word case_000677_rank).1
    case_000677_rankWord |>.symm

private theorem case_000677_seqChoice :
    translationChoiceSeq case_000677_word case_000677_mask = case_000677_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000677_seqAtRank :
    translationSeqAtRankMask case_000677_rank case_000677_mask = case_000677_seq := by
  rw [translationSeqAtRankMask, case_000677_unrank]
  exact case_000677_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000677_bAtRank :
    translationBAtRankMask case_000677_rank case_000677_mask = case_000677_b := by
  rw [translationBAtRankMask, case_000677_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000677_b, case_000677_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000677_firstLine_eq :
    case_000677_support.firstLine case_000677_seq case_000677_b = case_000677_firstLine := by
  norm_num [case_000677_firstLine, case_000677_support, case_000677_seq, case_000677_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000677_secondLine_eq :
    case_000677_support.secondLine case_000677_seq case_000677_b = case_000677_secondLine := by
  norm_num [case_000677_secondLine, case_000677_support, case_000677_seq, case_000677_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000677_sourceAgrees :
    SourceAgrees case_000677_support case_000677_rank.val case_000677_mask := by
  intro hlt
  have hrank : (⟨case_000677_rank.val, hlt⟩ : Fin numPairWords) = case_000677_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000677_rank.val, hlt⟩ case_000677_mask =
        case_000677_seq := by
    simpa [hrank] using case_000677_seqAtRank
  simp [SourceChecks, hseq, case_000677_support,
    checkTranslationConstraintSource, case_000677_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000677_rows :
    OppOneMinusVarFirstRows case_000677_support case_000677_rank.val case_000677_mask := by
  intro hlt
  have hrank : (⟨case_000677_rank.val, hlt⟩ : Fin numPairWords) = case_000677_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000677_rank.val, hlt⟩ case_000677_mask =
        case_000677_seq := by
    simpa [hrank] using case_000677_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000677_rank.val, hlt⟩ case_000677_mask =
        case_000677_b := by
    simpa [hrank] using case_000677_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000677_support case_000677_rank.val hlt
          case_000677_mask = case_000677_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000677_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000677_support case_000677_rank.val hlt
          case_000677_mask = case_000677_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000677_secondLine_eq]
  have case_000677_rowFirst :
      OppPosRow (FirstLineAt case_000677_support case_000677_rank.val hlt case_000677_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000677_firstLine, OppPosRow]
  have case_000677_fixedSecond :
      FixedRow (SecondLineAt case_000677_support case_000677_rank.val hlt case_000677_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000677_secondLine, FixedRow]
  exact ⟨case_000677_rowFirst, case_000677_fixedSecond⟩

private theorem case_000677_existsRows :
    ExistsOppOneMinusVarFirstRows case_000677_rank.val case_000677_mask :=
  ⟨case_000677_support, case_000677_sourceAgrees, case_000677_rows⟩

private theorem case_000677_covered :
    RowPropertyParametricCovered case_000677_rank.val case_000677_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000677_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000678_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000678_mask : SignMask := ⟨7, by decide⟩
private def case_000678_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000678_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000678_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000678_b : Vec3 Rat := { x := (-220/27), y := (412/27), z := (220/27) }
private def case_000678_firstLine : StrictLin2 := { a := 1, b := 1, c := (-261/55) }
private def case_000678_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000678_rankWord :
    rankPairWord? case_000678_word = some case_000678_rank := by
  decide

private theorem case_000678_unrank :
    unrankPairWord case_000678_rank = case_000678_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000678_word case_000678_rank).1
    case_000678_rankWord |>.symm

private theorem case_000678_seqChoice :
    translationChoiceSeq case_000678_word case_000678_mask = case_000678_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000678_seqAtRank :
    translationSeqAtRankMask case_000678_rank case_000678_mask = case_000678_seq := by
  rw [translationSeqAtRankMask, case_000678_unrank]
  exact case_000678_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000678_bAtRank :
    translationBAtRankMask case_000678_rank case_000678_mask = case_000678_b := by
  rw [translationBAtRankMask, case_000678_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000678_b, case_000678_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000678_firstLine_eq :
    case_000678_support.firstLine case_000678_seq case_000678_b = case_000678_firstLine := by
  norm_num [case_000678_firstLine, case_000678_support, case_000678_seq, case_000678_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000678_secondLine_eq :
    case_000678_support.secondLine case_000678_seq case_000678_b = case_000678_secondLine := by
  norm_num [case_000678_secondLine, case_000678_support, case_000678_seq, case_000678_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000678_sourceAgrees :
    SourceAgrees case_000678_support case_000678_rank.val case_000678_mask := by
  intro hlt
  have hrank : (⟨case_000678_rank.val, hlt⟩ : Fin numPairWords) = case_000678_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000678_rank.val, hlt⟩ case_000678_mask =
        case_000678_seq := by
    simpa [hrank] using case_000678_seqAtRank
  simp [SourceChecks, hseq, case_000678_support,
    checkTranslationConstraintSource, case_000678_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000678_rows :
    EqEqNegVarFirstRows case_000678_support case_000678_rank.val case_000678_mask := by
  intro hlt
  have hrank : (⟨case_000678_rank.val, hlt⟩ : Fin numPairWords) = case_000678_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000678_rank.val, hlt⟩ case_000678_mask =
        case_000678_seq := by
    simpa [hrank] using case_000678_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000678_rank.val, hlt⟩ case_000678_mask =
        case_000678_b := by
    simpa [hrank] using case_000678_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000678_support case_000678_rank.val hlt
          case_000678_mask = case_000678_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000678_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000678_support case_000678_rank.val hlt
          case_000678_mask = case_000678_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000678_secondLine_eq]
  have case_000678_rowFirst :
      EqEqNegRow (FirstLineAt case_000678_support case_000678_rank.val hlt case_000678_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000678_firstLine, EqEqNegRow]
  have case_000678_fixedSecond :
      FixedRow (SecondLineAt case_000678_support case_000678_rank.val hlt case_000678_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000678_secondLine, FixedRow]
  exact ⟨case_000678_rowFirst, case_000678_fixedSecond⟩

private theorem case_000678_existsRows :
    ExistsEqEqNegVarFirstRows case_000678_rank.val case_000678_mask :=
  ⟨case_000678_support, case_000678_sourceAgrees, case_000678_rows⟩

private theorem case_000678_covered :
    RowPropertyParametricCovered case_000678_rank.val case_000678_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000678_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000679_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000679_mask : SignMask := ⟨9, by decide⟩
private def case_000679_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000679_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000679_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000679_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000679_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000679_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000679_rankWord :
    rankPairWord? case_000679_word = some case_000679_rank := by
  decide

private theorem case_000679_unrank :
    unrankPairWord case_000679_rank = case_000679_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000679_word case_000679_rank).1
    case_000679_rankWord |>.symm

private theorem case_000679_seqChoice :
    translationChoiceSeq case_000679_word case_000679_mask = case_000679_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000679_seqAtRank :
    translationSeqAtRankMask case_000679_rank case_000679_mask = case_000679_seq := by
  rw [translationSeqAtRankMask, case_000679_unrank]
  exact case_000679_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000679_bAtRank :
    translationBAtRankMask case_000679_rank case_000679_mask = case_000679_b := by
  rw [translationBAtRankMask, case_000679_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000679_b, case_000679_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000679_firstLine_eq :
    case_000679_support.firstLine case_000679_seq case_000679_b = case_000679_firstLine := by
  norm_num [case_000679_firstLine, case_000679_support, case_000679_seq, case_000679_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000679_secondLine_eq :
    case_000679_support.secondLine case_000679_seq case_000679_b = case_000679_secondLine := by
  norm_num [case_000679_secondLine, case_000679_support, case_000679_seq, case_000679_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000679_sourceAgrees :
    SourceAgrees case_000679_support case_000679_rank.val case_000679_mask := by
  intro hlt
  have hrank : (⟨case_000679_rank.val, hlt⟩ : Fin numPairWords) = case_000679_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000679_rank.val, hlt⟩ case_000679_mask =
        case_000679_seq := by
    simpa [hrank] using case_000679_seqAtRank
  simp [SourceChecks, hseq, case_000679_support,
    checkTranslationConstraintSource, case_000679_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000679_rows :
    EqEqPosVarFirstRows case_000679_support case_000679_rank.val case_000679_mask := by
  intro hlt
  have hrank : (⟨case_000679_rank.val, hlt⟩ : Fin numPairWords) = case_000679_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000679_rank.val, hlt⟩ case_000679_mask =
        case_000679_seq := by
    simpa [hrank] using case_000679_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000679_rank.val, hlt⟩ case_000679_mask =
        case_000679_b := by
    simpa [hrank] using case_000679_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000679_support case_000679_rank.val hlt
          case_000679_mask = case_000679_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000679_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000679_support case_000679_rank.val hlt
          case_000679_mask = case_000679_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000679_secondLine_eq]
  have case_000679_rowFirst :
      EqEqPosRow (FirstLineAt case_000679_support case_000679_rank.val hlt case_000679_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000679_firstLine, EqEqPosRow]
  have case_000679_fixedSecond :
      FixedRow (SecondLineAt case_000679_support case_000679_rank.val hlt case_000679_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000679_secondLine, FixedRow]
  exact ⟨case_000679_rowFirst, case_000679_fixedSecond⟩

private theorem case_000679_existsRows :
    ExistsEqEqPosVarFirstRows case_000679_rank.val case_000679_mask :=
  ⟨case_000679_support, case_000679_sourceAgrees, case_000679_rows⟩

private theorem case_000679_covered :
    RowPropertyParametricCovered case_000679_rank.val case_000679_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000679_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000680_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000680_mask : SignMask := ⟨13, by decide⟩
private def case_000680_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000680_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000680_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000680_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000680_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000680_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000680_rankWord :
    rankPairWord? case_000680_word = some case_000680_rank := by
  decide

private theorem case_000680_unrank :
    unrankPairWord case_000680_rank = case_000680_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000680_word case_000680_rank).1
    case_000680_rankWord |>.symm

private theorem case_000680_seqChoice :
    translationChoiceSeq case_000680_word case_000680_mask = case_000680_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000680_seqAtRank :
    translationSeqAtRankMask case_000680_rank case_000680_mask = case_000680_seq := by
  rw [translationSeqAtRankMask, case_000680_unrank]
  exact case_000680_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000680_bAtRank :
    translationBAtRankMask case_000680_rank case_000680_mask = case_000680_b := by
  rw [translationBAtRankMask, case_000680_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000680_b, case_000680_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000680_firstLine_eq :
    case_000680_support.firstLine case_000680_seq case_000680_b = case_000680_firstLine := by
  norm_num [case_000680_firstLine, case_000680_support, case_000680_seq, case_000680_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000680_secondLine_eq :
    case_000680_support.secondLine case_000680_seq case_000680_b = case_000680_secondLine := by
  norm_num [case_000680_secondLine, case_000680_support, case_000680_seq, case_000680_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000680_sourceAgrees :
    SourceAgrees case_000680_support case_000680_rank.val case_000680_mask := by
  intro hlt
  have hrank : (⟨case_000680_rank.val, hlt⟩ : Fin numPairWords) = case_000680_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000680_rank.val, hlt⟩ case_000680_mask =
        case_000680_seq := by
    simpa [hrank] using case_000680_seqAtRank
  simp [SourceChecks, hseq, case_000680_support,
    checkTranslationConstraintSource, case_000680_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000680_rows :
    OppMinusOneVarFirstRows case_000680_support case_000680_rank.val case_000680_mask := by
  intro hlt
  have hrank : (⟨case_000680_rank.val, hlt⟩ : Fin numPairWords) = case_000680_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000680_rank.val, hlt⟩ case_000680_mask =
        case_000680_seq := by
    simpa [hrank] using case_000680_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000680_rank.val, hlt⟩ case_000680_mask =
        case_000680_b := by
    simpa [hrank] using case_000680_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000680_support case_000680_rank.val hlt
          case_000680_mask = case_000680_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000680_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000680_support case_000680_rank.val hlt
          case_000680_mask = case_000680_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000680_secondLine_eq]
  have case_000680_rowFirst :
      OppNegRow (FirstLineAt case_000680_support case_000680_rank.val hlt case_000680_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000680_firstLine, OppNegRow]
  have case_000680_fixedSecond :
      FixedRow (SecondLineAt case_000680_support case_000680_rank.val hlt case_000680_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000680_secondLine, FixedRow]
  exact ⟨case_000680_rowFirst, case_000680_fixedSecond⟩

private theorem case_000680_existsRows :
    ExistsOppMinusOneVarFirstRows case_000680_rank.val case_000680_mask :=
  ⟨case_000680_support, case_000680_sourceAgrees, case_000680_rows⟩

private theorem case_000680_covered :
    RowPropertyParametricCovered case_000680_rank.val case_000680_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000680_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000681_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000681_mask : SignMask := ⟨22, by decide⟩
private def case_000681_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000681_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000681_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000681_b : Vec3 Rat := { x := (-268/27), y := (-44/27), z := (268/27) }
private def case_000681_firstLine : StrictLin2 := { a := -1, b := 1, c := (-89/67) }
private def case_000681_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000681_rankWord :
    rankPairWord? case_000681_word = some case_000681_rank := by
  decide

private theorem case_000681_unrank :
    unrankPairWord case_000681_rank = case_000681_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000681_word case_000681_rank).1
    case_000681_rankWord |>.symm

private theorem case_000681_seqChoice :
    translationChoiceSeq case_000681_word case_000681_mask = case_000681_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000681_seqAtRank :
    translationSeqAtRankMask case_000681_rank case_000681_mask = case_000681_seq := by
  rw [translationSeqAtRankMask, case_000681_unrank]
  exact case_000681_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000681_bAtRank :
    translationBAtRankMask case_000681_rank case_000681_mask = case_000681_b := by
  rw [translationBAtRankMask, case_000681_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000681_b, case_000681_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000681_firstLine_eq :
    case_000681_support.firstLine case_000681_seq case_000681_b = case_000681_firstLine := by
  norm_num [case_000681_firstLine, case_000681_support, case_000681_seq, case_000681_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000681_secondLine_eq :
    case_000681_support.secondLine case_000681_seq case_000681_b = case_000681_secondLine := by
  norm_num [case_000681_secondLine, case_000681_support, case_000681_seq, case_000681_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000681_sourceAgrees :
    SourceAgrees case_000681_support case_000681_rank.val case_000681_mask := by
  intro hlt
  have hrank : (⟨case_000681_rank.val, hlt⟩ : Fin numPairWords) = case_000681_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000681_rank.val, hlt⟩ case_000681_mask =
        case_000681_seq := by
    simpa [hrank] using case_000681_seqAtRank
  simp [SourceChecks, hseq, case_000681_support,
    checkTranslationConstraintSource, case_000681_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000681_rows :
    OppOneMinusVarFirstRows case_000681_support case_000681_rank.val case_000681_mask := by
  intro hlt
  have hrank : (⟨case_000681_rank.val, hlt⟩ : Fin numPairWords) = case_000681_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000681_rank.val, hlt⟩ case_000681_mask =
        case_000681_seq := by
    simpa [hrank] using case_000681_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000681_rank.val, hlt⟩ case_000681_mask =
        case_000681_b := by
    simpa [hrank] using case_000681_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000681_support case_000681_rank.val hlt
          case_000681_mask = case_000681_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000681_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000681_support case_000681_rank.val hlt
          case_000681_mask = case_000681_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000681_secondLine_eq]
  have case_000681_rowFirst :
      OppPosRow (FirstLineAt case_000681_support case_000681_rank.val hlt case_000681_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000681_firstLine, OppPosRow]
  have case_000681_fixedSecond :
      FixedRow (SecondLineAt case_000681_support case_000681_rank.val hlt case_000681_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000681_secondLine, FixedRow]
  exact ⟨case_000681_rowFirst, case_000681_fixedSecond⟩

private theorem case_000681_existsRows :
    ExistsOppOneMinusVarFirstRows case_000681_rank.val case_000681_mask :=
  ⟨case_000681_support, case_000681_sourceAgrees, case_000681_rows⟩

private theorem case_000681_covered :
    RowPropertyParametricCovered case_000681_rank.val case_000681_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000681_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000682_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000682_mask : SignMask := ⟨24, by decide⟩
private def case_000682_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000682_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000682_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000682_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000682_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000682_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000682_rankWord :
    rankPairWord? case_000682_word = some case_000682_rank := by
  decide

private theorem case_000682_unrank :
    unrankPairWord case_000682_rank = case_000682_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000682_word case_000682_rank).1
    case_000682_rankWord |>.symm

private theorem case_000682_seqChoice :
    translationChoiceSeq case_000682_word case_000682_mask = case_000682_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000682_seqAtRank :
    translationSeqAtRankMask case_000682_rank case_000682_mask = case_000682_seq := by
  rw [translationSeqAtRankMask, case_000682_unrank]
  exact case_000682_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000682_bAtRank :
    translationBAtRankMask case_000682_rank case_000682_mask = case_000682_b := by
  rw [translationBAtRankMask, case_000682_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000682_b, case_000682_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000682_firstLine_eq :
    case_000682_support.firstLine case_000682_seq case_000682_b = case_000682_firstLine := by
  norm_num [case_000682_firstLine, case_000682_support, case_000682_seq, case_000682_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000682_secondLine_eq :
    case_000682_support.secondLine case_000682_seq case_000682_b = case_000682_secondLine := by
  norm_num [case_000682_secondLine, case_000682_support, case_000682_seq, case_000682_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000682_sourceAgrees :
    SourceAgrees case_000682_support case_000682_rank.val case_000682_mask := by
  intro hlt
  have hrank : (⟨case_000682_rank.val, hlt⟩ : Fin numPairWords) = case_000682_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000682_rank.val, hlt⟩ case_000682_mask =
        case_000682_seq := by
    simpa [hrank] using case_000682_seqAtRank
  simp [SourceChecks, hseq, case_000682_support,
    checkTranslationConstraintSource, case_000682_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000682_rows :
    EqEqPosVarFirstRows case_000682_support case_000682_rank.val case_000682_mask := by
  intro hlt
  have hrank : (⟨case_000682_rank.val, hlt⟩ : Fin numPairWords) = case_000682_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000682_rank.val, hlt⟩ case_000682_mask =
        case_000682_seq := by
    simpa [hrank] using case_000682_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000682_rank.val, hlt⟩ case_000682_mask =
        case_000682_b := by
    simpa [hrank] using case_000682_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000682_support case_000682_rank.val hlt
          case_000682_mask = case_000682_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000682_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000682_support case_000682_rank.val hlt
          case_000682_mask = case_000682_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000682_secondLine_eq]
  have case_000682_rowFirst :
      EqEqPosRow (FirstLineAt case_000682_support case_000682_rank.val hlt case_000682_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000682_firstLine, EqEqPosRow]
  have case_000682_fixedSecond :
      FixedRow (SecondLineAt case_000682_support case_000682_rank.val hlt case_000682_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000682_secondLine, FixedRow]
  exact ⟨case_000682_rowFirst, case_000682_fixedSecond⟩

private theorem case_000682_existsRows :
    ExistsEqEqPosVarFirstRows case_000682_rank.val case_000682_mask :=
  ⟨case_000682_support, case_000682_sourceAgrees, case_000682_rows⟩

private theorem case_000682_covered :
    RowPropertyParametricCovered case_000682_rank.val case_000682_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000682_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000683_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000683_mask : SignMask := ⟨28, by decide⟩
private def case_000683_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000683_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000683_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000683_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000683_firstLine : StrictLin2 := { a := (-3/5), b := (3/5), c := -1 }
private def case_000683_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000683_rankWord :
    rankPairWord? case_000683_word = some case_000683_rank := by
  decide

private theorem case_000683_unrank :
    unrankPairWord case_000683_rank = case_000683_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000683_word case_000683_rank).1
    case_000683_rankWord |>.symm

private theorem case_000683_seqChoice :
    translationChoiceSeq case_000683_word case_000683_mask = case_000683_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000683_seqAtRank :
    translationSeqAtRankMask case_000683_rank case_000683_mask = case_000683_seq := by
  rw [translationSeqAtRankMask, case_000683_unrank]
  exact case_000683_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000683_bAtRank :
    translationBAtRankMask case_000683_rank case_000683_mask = case_000683_b := by
  rw [translationBAtRankMask, case_000683_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000683_b, case_000683_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000683_firstLine_eq :
    case_000683_support.firstLine case_000683_seq case_000683_b = case_000683_firstLine := by
  norm_num [case_000683_firstLine, case_000683_support, case_000683_seq, case_000683_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000683_secondLine_eq :
    case_000683_support.secondLine case_000683_seq case_000683_b = case_000683_secondLine := by
  norm_num [case_000683_secondLine, case_000683_support, case_000683_seq, case_000683_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000683_sourceAgrees :
    SourceAgrees case_000683_support case_000683_rank.val case_000683_mask := by
  intro hlt
  have hrank : (⟨case_000683_rank.val, hlt⟩ : Fin numPairWords) = case_000683_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000683_rank.val, hlt⟩ case_000683_mask =
        case_000683_seq := by
    simpa [hrank] using case_000683_seqAtRank
  simp [SourceChecks, hseq, case_000683_support,
    checkTranslationConstraintSource, case_000683_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000683_rows :
    OppOneMinusVarFirstRows case_000683_support case_000683_rank.val case_000683_mask := by
  intro hlt
  have hrank : (⟨case_000683_rank.val, hlt⟩ : Fin numPairWords) = case_000683_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000683_rank.val, hlt⟩ case_000683_mask =
        case_000683_seq := by
    simpa [hrank] using case_000683_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000683_rank.val, hlt⟩ case_000683_mask =
        case_000683_b := by
    simpa [hrank] using case_000683_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000683_support case_000683_rank.val hlt
          case_000683_mask = case_000683_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000683_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000683_support case_000683_rank.val hlt
          case_000683_mask = case_000683_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000683_secondLine_eq]
  have case_000683_rowFirst :
      OppPosRow (FirstLineAt case_000683_support case_000683_rank.val hlt case_000683_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000683_firstLine, OppPosRow]
  have case_000683_fixedSecond :
      FixedRow (SecondLineAt case_000683_support case_000683_rank.val hlt case_000683_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000683_secondLine, FixedRow]
  exact ⟨case_000683_rowFirst, case_000683_fixedSecond⟩

private theorem case_000683_existsRows :
    ExistsOppOneMinusVarFirstRows case_000683_rank.val case_000683_mask :=
  ⟨case_000683_support, case_000683_sourceAgrees, case_000683_rows⟩

private theorem case_000683_covered :
    RowPropertyParametricCovered case_000683_rank.val case_000683_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000683_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000684_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000684_mask : SignMask := ⟨30, by decide⟩
private def case_000684_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000684_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000684_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000684_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (20/9) }
private def case_000684_firstLine : StrictLin2 := { a := (-29/21), b := (-29/21), c := (-61/21) }
private def case_000684_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000684_rankWord :
    rankPairWord? case_000684_word = some case_000684_rank := by
  decide

private theorem case_000684_unrank :
    unrankPairWord case_000684_rank = case_000684_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000684_word case_000684_rank).1
    case_000684_rankWord |>.symm

private theorem case_000684_seqChoice :
    translationChoiceSeq case_000684_word case_000684_mask = case_000684_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000684_seqAtRank :
    translationSeqAtRankMask case_000684_rank case_000684_mask = case_000684_seq := by
  rw [translationSeqAtRankMask, case_000684_unrank]
  exact case_000684_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000684_bAtRank :
    translationBAtRankMask case_000684_rank case_000684_mask = case_000684_b := by
  rw [translationBAtRankMask, case_000684_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000684_b, case_000684_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000684_firstLine_eq :
    case_000684_support.firstLine case_000684_seq case_000684_b = case_000684_firstLine := by
  norm_num [case_000684_firstLine, case_000684_support, case_000684_seq, case_000684_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000684_secondLine_eq :
    case_000684_support.secondLine case_000684_seq case_000684_b = case_000684_secondLine := by
  norm_num [case_000684_secondLine, case_000684_support, case_000684_seq, case_000684_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000684_sourceAgrees :
    SourceAgrees case_000684_support case_000684_rank.val case_000684_mask := by
  intro hlt
  have hrank : (⟨case_000684_rank.val, hlt⟩ : Fin numPairWords) = case_000684_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000684_rank.val, hlt⟩ case_000684_mask =
        case_000684_seq := by
    simpa [hrank] using case_000684_seqAtRank
  simp [SourceChecks, hseq, case_000684_support,
    checkTranslationConstraintSource, case_000684_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000684_rows :
    EqEqPosVarFirstRows case_000684_support case_000684_rank.val case_000684_mask := by
  intro hlt
  have hrank : (⟨case_000684_rank.val, hlt⟩ : Fin numPairWords) = case_000684_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000684_rank.val, hlt⟩ case_000684_mask =
        case_000684_seq := by
    simpa [hrank] using case_000684_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000684_rank.val, hlt⟩ case_000684_mask =
        case_000684_b := by
    simpa [hrank] using case_000684_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000684_support case_000684_rank.val hlt
          case_000684_mask = case_000684_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000684_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000684_support case_000684_rank.val hlt
          case_000684_mask = case_000684_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000684_secondLine_eq]
  have case_000684_rowFirst :
      EqEqPosRow (FirstLineAt case_000684_support case_000684_rank.val hlt case_000684_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000684_firstLine, EqEqPosRow]
  have case_000684_fixedSecond :
      FixedRow (SecondLineAt case_000684_support case_000684_rank.val hlt case_000684_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000684_secondLine, FixedRow]
  exact ⟨case_000684_rowFirst, case_000684_fixedSecond⟩

private theorem case_000684_existsRows :
    ExistsEqEqPosVarFirstRows case_000684_rank.val case_000684_mask :=
  ⟨case_000684_support, case_000684_sourceAgrees, case_000684_rows⟩

private theorem case_000684_covered :
    RowPropertyParametricCovered case_000684_rank.val case_000684_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000684_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000685_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000685_mask : SignMask := ⟨31, by decide⟩
private def case_000685_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000685_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000685_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000685_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000685_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000685_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000685_rankWord :
    rankPairWord? case_000685_word = some case_000685_rank := by
  decide

private theorem case_000685_unrank :
    unrankPairWord case_000685_rank = case_000685_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000685_word case_000685_rank).1
    case_000685_rankWord |>.symm

private theorem case_000685_seqChoice :
    translationChoiceSeq case_000685_word case_000685_mask = case_000685_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000685_seqAtRank :
    translationSeqAtRankMask case_000685_rank case_000685_mask = case_000685_seq := by
  rw [translationSeqAtRankMask, case_000685_unrank]
  exact case_000685_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000685_bAtRank :
    translationBAtRankMask case_000685_rank case_000685_mask = case_000685_b := by
  rw [translationBAtRankMask, case_000685_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000685_b, case_000685_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000685_firstLine_eq :
    case_000685_support.firstLine case_000685_seq case_000685_b = case_000685_firstLine := by
  norm_num [case_000685_firstLine, case_000685_support, case_000685_seq, case_000685_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000685_secondLine_eq :
    case_000685_support.secondLine case_000685_seq case_000685_b = case_000685_secondLine := by
  norm_num [case_000685_secondLine, case_000685_support, case_000685_seq, case_000685_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000685_sourceAgrees :
    SourceAgrees case_000685_support case_000685_rank.val case_000685_mask := by
  intro hlt
  have hrank : (⟨case_000685_rank.val, hlt⟩ : Fin numPairWords) = case_000685_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000685_rank.val, hlt⟩ case_000685_mask =
        case_000685_seq := by
    simpa [hrank] using case_000685_seqAtRank
  simp [SourceChecks, hseq, case_000685_support,
    checkTranslationConstraintSource, case_000685_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000685_rows :
    EqEqPosVarFirstRows case_000685_support case_000685_rank.val case_000685_mask := by
  intro hlt
  have hrank : (⟨case_000685_rank.val, hlt⟩ : Fin numPairWords) = case_000685_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000685_rank.val, hlt⟩ case_000685_mask =
        case_000685_seq := by
    simpa [hrank] using case_000685_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000685_rank.val, hlt⟩ case_000685_mask =
        case_000685_b := by
    simpa [hrank] using case_000685_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000685_support case_000685_rank.val hlt
          case_000685_mask = case_000685_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000685_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000685_support case_000685_rank.val hlt
          case_000685_mask = case_000685_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000685_secondLine_eq]
  have case_000685_rowFirst :
      EqEqPosRow (FirstLineAt case_000685_support case_000685_rank.val hlt case_000685_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000685_firstLine, EqEqPosRow]
  have case_000685_fixedSecond :
      FixedRow (SecondLineAt case_000685_support case_000685_rank.val hlt case_000685_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000685_secondLine, FixedRow]
  exact ⟨case_000685_rowFirst, case_000685_fixedSecond⟩

private theorem case_000685_existsRows :
    ExistsEqEqPosVarFirstRows case_000685_rank.val case_000685_mask :=
  ⟨case_000685_support, case_000685_sourceAgrees, case_000685_rows⟩

private theorem case_000685_covered :
    RowPropertyParametricCovered case_000685_rank.val case_000685_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000685_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000686_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000686_mask : SignMask := ⟨54, by decide⟩
private def case_000686_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000686_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000686_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000686_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (116/9) }
private def case_000686_firstLine : StrictLin2 := { a := (-10/21), b := (-10/21), c := (-4/7) }
private def case_000686_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000686_rankWord :
    rankPairWord? case_000686_word = some case_000686_rank := by
  decide

private theorem case_000686_unrank :
    unrankPairWord case_000686_rank = case_000686_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000686_word case_000686_rank).1
    case_000686_rankWord |>.symm

private theorem case_000686_seqChoice :
    translationChoiceSeq case_000686_word case_000686_mask = case_000686_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000686_seqAtRank :
    translationSeqAtRankMask case_000686_rank case_000686_mask = case_000686_seq := by
  rw [translationSeqAtRankMask, case_000686_unrank]
  exact case_000686_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000686_bAtRank :
    translationBAtRankMask case_000686_rank case_000686_mask = case_000686_b := by
  rw [translationBAtRankMask, case_000686_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000686_b, case_000686_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000686_firstLine_eq :
    case_000686_support.firstLine case_000686_seq case_000686_b = case_000686_firstLine := by
  norm_num [case_000686_firstLine, case_000686_support, case_000686_seq, case_000686_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000686_secondLine_eq :
    case_000686_support.secondLine case_000686_seq case_000686_b = case_000686_secondLine := by
  norm_num [case_000686_secondLine, case_000686_support, case_000686_seq, case_000686_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000686_sourceAgrees :
    SourceAgrees case_000686_support case_000686_rank.val case_000686_mask := by
  intro hlt
  have hrank : (⟨case_000686_rank.val, hlt⟩ : Fin numPairWords) = case_000686_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000686_rank.val, hlt⟩ case_000686_mask =
        case_000686_seq := by
    simpa [hrank] using case_000686_seqAtRank
  simp [SourceChecks, hseq, case_000686_support,
    checkTranslationConstraintSource, case_000686_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000686_rows :
    EqEqPosVarFirstRows case_000686_support case_000686_rank.val case_000686_mask := by
  intro hlt
  have hrank : (⟨case_000686_rank.val, hlt⟩ : Fin numPairWords) = case_000686_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000686_rank.val, hlt⟩ case_000686_mask =
        case_000686_seq := by
    simpa [hrank] using case_000686_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000686_rank.val, hlt⟩ case_000686_mask =
        case_000686_b := by
    simpa [hrank] using case_000686_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000686_support case_000686_rank.val hlt
          case_000686_mask = case_000686_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000686_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000686_support case_000686_rank.val hlt
          case_000686_mask = case_000686_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000686_secondLine_eq]
  have case_000686_rowFirst :
      EqEqPosRow (FirstLineAt case_000686_support case_000686_rank.val hlt case_000686_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000686_firstLine, EqEqPosRow]
  have case_000686_fixedSecond :
      FixedRow (SecondLineAt case_000686_support case_000686_rank.val hlt case_000686_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000686_secondLine, FixedRow]
  exact ⟨case_000686_rowFirst, case_000686_fixedSecond⟩

private theorem case_000686_existsRows :
    ExistsEqEqPosVarFirstRows case_000686_rank.val case_000686_mask :=
  ⟨case_000686_support, case_000686_sourceAgrees, case_000686_rows⟩

private theorem case_000686_covered :
    RowPropertyParametricCovered case_000686_rank.val case_000686_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000686_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000687_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000687_mask : SignMask := ⟨55, by decide⟩
private def case_000687_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000687_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000687_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000687_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000687_firstLine : StrictLin2 := { a := (-10/39), b := (-10/39), c := (-16/13) }
private def case_000687_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000687_rankWord :
    rankPairWord? case_000687_word = some case_000687_rank := by
  decide

private theorem case_000687_unrank :
    unrankPairWord case_000687_rank = case_000687_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000687_word case_000687_rank).1
    case_000687_rankWord |>.symm

private theorem case_000687_seqChoice :
    translationChoiceSeq case_000687_word case_000687_mask = case_000687_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000687_seqAtRank :
    translationSeqAtRankMask case_000687_rank case_000687_mask = case_000687_seq := by
  rw [translationSeqAtRankMask, case_000687_unrank]
  exact case_000687_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000687_bAtRank :
    translationBAtRankMask case_000687_rank case_000687_mask = case_000687_b := by
  rw [translationBAtRankMask, case_000687_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000687_b, case_000687_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000687_firstLine_eq :
    case_000687_support.firstLine case_000687_seq case_000687_b = case_000687_firstLine := by
  norm_num [case_000687_firstLine, case_000687_support, case_000687_seq, case_000687_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000687_secondLine_eq :
    case_000687_support.secondLine case_000687_seq case_000687_b = case_000687_secondLine := by
  norm_num [case_000687_secondLine, case_000687_support, case_000687_seq, case_000687_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000687_sourceAgrees :
    SourceAgrees case_000687_support case_000687_rank.val case_000687_mask := by
  intro hlt
  have hrank : (⟨case_000687_rank.val, hlt⟩ : Fin numPairWords) = case_000687_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000687_rank.val, hlt⟩ case_000687_mask =
        case_000687_seq := by
    simpa [hrank] using case_000687_seqAtRank
  simp [SourceChecks, hseq, case_000687_support,
    checkTranslationConstraintSource, case_000687_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000687_rows :
    EqEqPosVarFirstRows case_000687_support case_000687_rank.val case_000687_mask := by
  intro hlt
  have hrank : (⟨case_000687_rank.val, hlt⟩ : Fin numPairWords) = case_000687_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000687_rank.val, hlt⟩ case_000687_mask =
        case_000687_seq := by
    simpa [hrank] using case_000687_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000687_rank.val, hlt⟩ case_000687_mask =
        case_000687_b := by
    simpa [hrank] using case_000687_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000687_support case_000687_rank.val hlt
          case_000687_mask = case_000687_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000687_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000687_support case_000687_rank.val hlt
          case_000687_mask = case_000687_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000687_secondLine_eq]
  have case_000687_rowFirst :
      EqEqPosRow (FirstLineAt case_000687_support case_000687_rank.val hlt case_000687_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000687_firstLine, EqEqPosRow]
  have case_000687_fixedSecond :
      FixedRow (SecondLineAt case_000687_support case_000687_rank.val hlt case_000687_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000687_secondLine, FixedRow]
  exact ⟨case_000687_rowFirst, case_000687_fixedSecond⟩

private theorem case_000687_existsRows :
    ExistsEqEqPosVarFirstRows case_000687_rank.val case_000687_mask :=
  ⟨case_000687_support, case_000687_sourceAgrees, case_000687_rows⟩

private theorem case_000687_covered :
    RowPropertyParametricCovered case_000687_rank.val case_000687_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000687_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000688_rank : Fin numPairWords := ⟨444, by decide⟩
private def case_000688_mask : SignMask := ⟨62, by decide⟩
private def case_000688_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000688_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000688_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000688_b : Vec3 Rat := { x := (-140/27), y := (-268/27), z := (140/27) }
private def case_000688_firstLine : StrictLin2 := { a := (-35/3), b := (-35/3), c := (-163/3) }
private def case_000688_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000688_rankWord :
    rankPairWord? case_000688_word = some case_000688_rank := by
  decide

private theorem case_000688_unrank :
    unrankPairWord case_000688_rank = case_000688_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000688_word case_000688_rank).1
    case_000688_rankWord |>.symm

private theorem case_000688_seqChoice :
    translationChoiceSeq case_000688_word case_000688_mask = case_000688_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000688_seqAtRank :
    translationSeqAtRankMask case_000688_rank case_000688_mask = case_000688_seq := by
  rw [translationSeqAtRankMask, case_000688_unrank]
  exact case_000688_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000688_bAtRank :
    translationBAtRankMask case_000688_rank case_000688_mask = case_000688_b := by
  rw [translationBAtRankMask, case_000688_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000688_b, case_000688_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000688_firstLine_eq :
    case_000688_support.firstLine case_000688_seq case_000688_b = case_000688_firstLine := by
  norm_num [case_000688_firstLine, case_000688_support, case_000688_seq, case_000688_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000688_secondLine_eq :
    case_000688_support.secondLine case_000688_seq case_000688_b = case_000688_secondLine := by
  norm_num [case_000688_secondLine, case_000688_support, case_000688_seq, case_000688_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000688_sourceAgrees :
    SourceAgrees case_000688_support case_000688_rank.val case_000688_mask := by
  intro hlt
  have hrank : (⟨case_000688_rank.val, hlt⟩ : Fin numPairWords) = case_000688_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000688_rank.val, hlt⟩ case_000688_mask =
        case_000688_seq := by
    simpa [hrank] using case_000688_seqAtRank
  simp [SourceChecks, hseq, case_000688_support,
    checkTranslationConstraintSource, case_000688_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000688_rows :
    EqEqPosVarFirstRows case_000688_support case_000688_rank.val case_000688_mask := by
  intro hlt
  have hrank : (⟨case_000688_rank.val, hlt⟩ : Fin numPairWords) = case_000688_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000688_rank.val, hlt⟩ case_000688_mask =
        case_000688_seq := by
    simpa [hrank] using case_000688_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000688_rank.val, hlt⟩ case_000688_mask =
        case_000688_b := by
    simpa [hrank] using case_000688_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000688_support case_000688_rank.val hlt
          case_000688_mask = case_000688_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000688_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000688_support case_000688_rank.val hlt
          case_000688_mask = case_000688_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000688_secondLine_eq]
  have case_000688_rowFirst :
      EqEqPosRow (FirstLineAt case_000688_support case_000688_rank.val hlt case_000688_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000688_firstLine, EqEqPosRow]
  have case_000688_fixedSecond :
      FixedRow (SecondLineAt case_000688_support case_000688_rank.val hlt case_000688_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000688_secondLine, FixedRow]
  exact ⟨case_000688_rowFirst, case_000688_fixedSecond⟩

private theorem case_000688_existsRows :
    ExistsEqEqPosVarFirstRows case_000688_rank.val case_000688_mask :=
  ⟨case_000688_support, case_000688_sourceAgrees, case_000688_rows⟩

private theorem case_000688_covered :
    RowPropertyParametricCovered case_000688_rank.val case_000688_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000688_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000689_rank : Fin numPairWords := ⟨447, by decide⟩
private def case_000689_mask : SignMask := ⟨13, by decide⟩
private def case_000689_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000689_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000689_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000689_b : Vec3 Rat := { x := (-332/27), y := (428/27), z := (-172/27) }
private def case_000689_firstLine : StrictLin2 := { a := 1, b := -1, c := (-217/83) }
private def case_000689_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000689_rankWord :
    rankPairWord? case_000689_word = some case_000689_rank := by
  decide

private theorem case_000689_unrank :
    unrankPairWord case_000689_rank = case_000689_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000689_word case_000689_rank).1
    case_000689_rankWord |>.symm

private theorem case_000689_seqChoice :
    translationChoiceSeq case_000689_word case_000689_mask = case_000689_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000689_seqAtRank :
    translationSeqAtRankMask case_000689_rank case_000689_mask = case_000689_seq := by
  rw [translationSeqAtRankMask, case_000689_unrank]
  exact case_000689_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000689_bAtRank :
    translationBAtRankMask case_000689_rank case_000689_mask = case_000689_b := by
  rw [translationBAtRankMask, case_000689_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000689_b, case_000689_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000689_firstLine_eq :
    case_000689_support.firstLine case_000689_seq case_000689_b = case_000689_firstLine := by
  norm_num [case_000689_firstLine, case_000689_support, case_000689_seq, case_000689_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000689_secondLine_eq :
    case_000689_support.secondLine case_000689_seq case_000689_b = case_000689_secondLine := by
  norm_num [case_000689_secondLine, case_000689_support, case_000689_seq, case_000689_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000689_sourceAgrees :
    SourceAgrees case_000689_support case_000689_rank.val case_000689_mask := by
  intro hlt
  have hrank : (⟨case_000689_rank.val, hlt⟩ : Fin numPairWords) = case_000689_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000689_rank.val, hlt⟩ case_000689_mask =
        case_000689_seq := by
    simpa [hrank] using case_000689_seqAtRank
  simp [SourceChecks, hseq, case_000689_support,
    checkTranslationConstraintSource, case_000689_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000689_rows :
    OppMinusOneVarFirstRows case_000689_support case_000689_rank.val case_000689_mask := by
  intro hlt
  have hrank : (⟨case_000689_rank.val, hlt⟩ : Fin numPairWords) = case_000689_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000689_rank.val, hlt⟩ case_000689_mask =
        case_000689_seq := by
    simpa [hrank] using case_000689_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000689_rank.val, hlt⟩ case_000689_mask =
        case_000689_b := by
    simpa [hrank] using case_000689_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000689_support case_000689_rank.val hlt
          case_000689_mask = case_000689_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000689_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000689_support case_000689_rank.val hlt
          case_000689_mask = case_000689_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000689_secondLine_eq]
  have case_000689_rowFirst :
      OppNegRow (FirstLineAt case_000689_support case_000689_rank.val hlt case_000689_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000689_firstLine, OppNegRow]
  have case_000689_fixedSecond :
      FixedRow (SecondLineAt case_000689_support case_000689_rank.val hlt case_000689_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000689_secondLine, FixedRow]
  exact ⟨case_000689_rowFirst, case_000689_fixedSecond⟩

private theorem case_000689_existsRows :
    ExistsOppMinusOneVarFirstRows case_000689_rank.val case_000689_mask :=
  ⟨case_000689_support, case_000689_sourceAgrees, case_000689_rows⟩

private theorem case_000689_covered :
    RowPropertyParametricCovered case_000689_rank.val case_000689_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000689_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000690_rank : Fin numPairWords := ⟨447, by decide⟩
private def case_000690_mask : SignMask := ⟨15, by decide⟩
private def case_000690_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000690_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000690_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000690_b : Vec3 Rat := { x := (-332/27), y := (428/27), z := (44/27) }
private def case_000690_firstLine : StrictLin2 := { a := (-83/201), b := (-83/201), c := (-275/201) }
private def case_000690_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000690_rankWord :
    rankPairWord? case_000690_word = some case_000690_rank := by
  decide

private theorem case_000690_unrank :
    unrankPairWord case_000690_rank = case_000690_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000690_word case_000690_rank).1
    case_000690_rankWord |>.symm

private theorem case_000690_seqChoice :
    translationChoiceSeq case_000690_word case_000690_mask = case_000690_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000690_seqAtRank :
    translationSeqAtRankMask case_000690_rank case_000690_mask = case_000690_seq := by
  rw [translationSeqAtRankMask, case_000690_unrank]
  exact case_000690_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000690_bAtRank :
    translationBAtRankMask case_000690_rank case_000690_mask = case_000690_b := by
  rw [translationBAtRankMask, case_000690_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000690_b, case_000690_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000690_firstLine_eq :
    case_000690_support.firstLine case_000690_seq case_000690_b = case_000690_firstLine := by
  norm_num [case_000690_firstLine, case_000690_support, case_000690_seq, case_000690_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000690_secondLine_eq :
    case_000690_support.secondLine case_000690_seq case_000690_b = case_000690_secondLine := by
  norm_num [case_000690_secondLine, case_000690_support, case_000690_seq, case_000690_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000690_sourceAgrees :
    SourceAgrees case_000690_support case_000690_rank.val case_000690_mask := by
  intro hlt
  have hrank : (⟨case_000690_rank.val, hlt⟩ : Fin numPairWords) = case_000690_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000690_rank.val, hlt⟩ case_000690_mask =
        case_000690_seq := by
    simpa [hrank] using case_000690_seqAtRank
  simp [SourceChecks, hseq, case_000690_support,
    checkTranslationConstraintSource, case_000690_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000690_rows :
    EqEqPosVarFirstRows case_000690_support case_000690_rank.val case_000690_mask := by
  intro hlt
  have hrank : (⟨case_000690_rank.val, hlt⟩ : Fin numPairWords) = case_000690_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000690_rank.val, hlt⟩ case_000690_mask =
        case_000690_seq := by
    simpa [hrank] using case_000690_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000690_rank.val, hlt⟩ case_000690_mask =
        case_000690_b := by
    simpa [hrank] using case_000690_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000690_support case_000690_rank.val hlt
          case_000690_mask = case_000690_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000690_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000690_support case_000690_rank.val hlt
          case_000690_mask = case_000690_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000690_secondLine_eq]
  have case_000690_rowFirst :
      EqEqPosRow (FirstLineAt case_000690_support case_000690_rank.val hlt case_000690_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000690_firstLine, EqEqPosRow]
  have case_000690_fixedSecond :
      FixedRow (SecondLineAt case_000690_support case_000690_rank.val hlt case_000690_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000690_secondLine, FixedRow]
  exact ⟨case_000690_rowFirst, case_000690_fixedSecond⟩

private theorem case_000690_existsRows :
    ExistsEqEqPosVarFirstRows case_000690_rank.val case_000690_mask :=
  ⟨case_000690_support, case_000690_sourceAgrees, case_000690_rows⟩

private theorem case_000690_covered :
    RowPropertyParametricCovered case_000690_rank.val case_000690_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000690_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000691_rank : Fin numPairWords := ⟨447, by decide⟩
private def case_000691_mask : SignMask := ⟨22, by decide⟩
private def case_000691_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000691_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000691_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000691_b : Vec3 Rat := { x := (-236/27), y := (-172/27), z := (236/27) }
private def case_000691_firstLine : StrictLin2 := { a := -1, b := 1, c := (-145/59) }
private def case_000691_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000691_rankWord :
    rankPairWord? case_000691_word = some case_000691_rank := by
  decide

private theorem case_000691_unrank :
    unrankPairWord case_000691_rank = case_000691_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000691_word case_000691_rank).1
    case_000691_rankWord |>.symm

private theorem case_000691_seqChoice :
    translationChoiceSeq case_000691_word case_000691_mask = case_000691_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000691_seqAtRank :
    translationSeqAtRankMask case_000691_rank case_000691_mask = case_000691_seq := by
  rw [translationSeqAtRankMask, case_000691_unrank]
  exact case_000691_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000691_bAtRank :
    translationBAtRankMask case_000691_rank case_000691_mask = case_000691_b := by
  rw [translationBAtRankMask, case_000691_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000691_b, case_000691_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000691_firstLine_eq :
    case_000691_support.firstLine case_000691_seq case_000691_b = case_000691_firstLine := by
  norm_num [case_000691_firstLine, case_000691_support, case_000691_seq, case_000691_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000691_secondLine_eq :
    case_000691_support.secondLine case_000691_seq case_000691_b = case_000691_secondLine := by
  norm_num [case_000691_secondLine, case_000691_support, case_000691_seq, case_000691_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000691_sourceAgrees :
    SourceAgrees case_000691_support case_000691_rank.val case_000691_mask := by
  intro hlt
  have hrank : (⟨case_000691_rank.val, hlt⟩ : Fin numPairWords) = case_000691_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000691_rank.val, hlt⟩ case_000691_mask =
        case_000691_seq := by
    simpa [hrank] using case_000691_seqAtRank
  simp [SourceChecks, hseq, case_000691_support,
    checkTranslationConstraintSource, case_000691_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000691_rows :
    OppOneMinusVarFirstRows case_000691_support case_000691_rank.val case_000691_mask := by
  intro hlt
  have hrank : (⟨case_000691_rank.val, hlt⟩ : Fin numPairWords) = case_000691_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000691_rank.val, hlt⟩ case_000691_mask =
        case_000691_seq := by
    simpa [hrank] using case_000691_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000691_rank.val, hlt⟩ case_000691_mask =
        case_000691_b := by
    simpa [hrank] using case_000691_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000691_support case_000691_rank.val hlt
          case_000691_mask = case_000691_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000691_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000691_support case_000691_rank.val hlt
          case_000691_mask = case_000691_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000691_secondLine_eq]
  have case_000691_rowFirst :
      OppPosRow (FirstLineAt case_000691_support case_000691_rank.val hlt case_000691_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000691_firstLine, OppPosRow]
  have case_000691_fixedSecond :
      FixedRow (SecondLineAt case_000691_support case_000691_rank.val hlt case_000691_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000691_secondLine, FixedRow]
  exact ⟨case_000691_rowFirst, case_000691_fixedSecond⟩

private theorem case_000691_existsRows :
    ExistsOppOneMinusVarFirstRows case_000691_rank.val case_000691_mask :=
  ⟨case_000691_support, case_000691_sourceAgrees, case_000691_rows⟩

private theorem case_000691_covered :
    RowPropertyParametricCovered case_000691_rank.val case_000691_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000691_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000692_rank : Fin numPairWords := ⟨447, by decide⟩
private def case_000692_mask : SignMask := ⟨24, by decide⟩
private def case_000692_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000692_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000692_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000692_b : Vec3 Rat := { x := (-236/27), y := (-172/27), z := (-268/27) }
private def case_000692_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/59) }
private def case_000692_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000692_rankWord :
    rankPairWord? case_000692_word = some case_000692_rank := by
  decide

private theorem case_000692_unrank :
    unrankPairWord case_000692_rank = case_000692_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000692_word case_000692_rank).1
    case_000692_rankWord |>.symm

private theorem case_000692_seqChoice :
    translationChoiceSeq case_000692_word case_000692_mask = case_000692_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000692_seqAtRank :
    translationSeqAtRankMask case_000692_rank case_000692_mask = case_000692_seq := by
  rw [translationSeqAtRankMask, case_000692_unrank]
  exact case_000692_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000692_bAtRank :
    translationBAtRankMask case_000692_rank case_000692_mask = case_000692_b := by
  rw [translationBAtRankMask, case_000692_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000692_b, case_000692_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000692_firstLine_eq :
    case_000692_support.firstLine case_000692_seq case_000692_b = case_000692_firstLine := by
  norm_num [case_000692_firstLine, case_000692_support, case_000692_seq, case_000692_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000692_secondLine_eq :
    case_000692_support.secondLine case_000692_seq case_000692_b = case_000692_secondLine := by
  norm_num [case_000692_secondLine, case_000692_support, case_000692_seq, case_000692_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000692_sourceAgrees :
    SourceAgrees case_000692_support case_000692_rank.val case_000692_mask := by
  intro hlt
  have hrank : (⟨case_000692_rank.val, hlt⟩ : Fin numPairWords) = case_000692_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000692_rank.val, hlt⟩ case_000692_mask =
        case_000692_seq := by
    simpa [hrank] using case_000692_seqAtRank
  simp [SourceChecks, hseq, case_000692_support,
    checkTranslationConstraintSource, case_000692_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000692_rows :
    EqEqPosVarFirstRows case_000692_support case_000692_rank.val case_000692_mask := by
  intro hlt
  have hrank : (⟨case_000692_rank.val, hlt⟩ : Fin numPairWords) = case_000692_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000692_rank.val, hlt⟩ case_000692_mask =
        case_000692_seq := by
    simpa [hrank] using case_000692_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000692_rank.val, hlt⟩ case_000692_mask =
        case_000692_b := by
    simpa [hrank] using case_000692_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000692_support case_000692_rank.val hlt
          case_000692_mask = case_000692_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000692_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000692_support case_000692_rank.val hlt
          case_000692_mask = case_000692_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000692_secondLine_eq]
  have case_000692_rowFirst :
      EqEqPosRow (FirstLineAt case_000692_support case_000692_rank.val hlt case_000692_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000692_firstLine, EqEqPosRow]
  have case_000692_fixedSecond :
      FixedRow (SecondLineAt case_000692_support case_000692_rank.val hlt case_000692_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000692_secondLine, FixedRow]
  exact ⟨case_000692_rowFirst, case_000692_fixedSecond⟩

private theorem case_000692_existsRows :
    ExistsEqEqPosVarFirstRows case_000692_rank.val case_000692_mask :=
  ⟨case_000692_support, case_000692_sourceAgrees, case_000692_rows⟩

private theorem case_000692_covered :
    RowPropertyParametricCovered case_000692_rank.val case_000692_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000692_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000693_rank : Fin numPairWords := ⟨447, by decide⟩
private def case_000693_mask : SignMask := ⟨28, by decide⟩
private def case_000693_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000693_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000693_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000693_b : Vec3 Rat := { x := (-380/27), y := (-28/27), z := (-124/27) }
private def case_000693_firstLine : StrictLin2 := { a := (95/119), b := (-95/119), c := (-47/51) }
private def case_000693_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000693_rankWord :
    rankPairWord? case_000693_word = some case_000693_rank := by
  decide

private theorem case_000693_unrank :
    unrankPairWord case_000693_rank = case_000693_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000693_word case_000693_rank).1
    case_000693_rankWord |>.symm

private theorem case_000693_seqChoice :
    translationChoiceSeq case_000693_word case_000693_mask = case_000693_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000693_seqAtRank :
    translationSeqAtRankMask case_000693_rank case_000693_mask = case_000693_seq := by
  rw [translationSeqAtRankMask, case_000693_unrank]
  exact case_000693_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000693_bAtRank :
    translationBAtRankMask case_000693_rank case_000693_mask = case_000693_b := by
  rw [translationBAtRankMask, case_000693_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000693_b, case_000693_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000693_firstLine_eq :
    case_000693_support.firstLine case_000693_seq case_000693_b = case_000693_firstLine := by
  norm_num [case_000693_firstLine, case_000693_support, case_000693_seq, case_000693_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000693_secondLine_eq :
    case_000693_support.secondLine case_000693_seq case_000693_b = case_000693_secondLine := by
  norm_num [case_000693_secondLine, case_000693_support, case_000693_seq, case_000693_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000693_sourceAgrees :
    SourceAgrees case_000693_support case_000693_rank.val case_000693_mask := by
  intro hlt
  have hrank : (⟨case_000693_rank.val, hlt⟩ : Fin numPairWords) = case_000693_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000693_rank.val, hlt⟩ case_000693_mask =
        case_000693_seq := by
    simpa [hrank] using case_000693_seqAtRank
  simp [SourceChecks, hseq, case_000693_support,
    checkTranslationConstraintSource, case_000693_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000693_rows :
    OppMinusOneVarFirstRows case_000693_support case_000693_rank.val case_000693_mask := by
  intro hlt
  have hrank : (⟨case_000693_rank.val, hlt⟩ : Fin numPairWords) = case_000693_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000693_rank.val, hlt⟩ case_000693_mask =
        case_000693_seq := by
    simpa [hrank] using case_000693_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000693_rank.val, hlt⟩ case_000693_mask =
        case_000693_b := by
    simpa [hrank] using case_000693_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000693_support case_000693_rank.val hlt
          case_000693_mask = case_000693_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000693_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000693_support case_000693_rank.val hlt
          case_000693_mask = case_000693_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000693_secondLine_eq]
  have case_000693_rowFirst :
      OppNegRow (FirstLineAt case_000693_support case_000693_rank.val hlt case_000693_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000693_firstLine, OppNegRow]
  have case_000693_fixedSecond :
      FixedRow (SecondLineAt case_000693_support case_000693_rank.val hlt case_000693_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000693_secondLine, FixedRow]
  exact ⟨case_000693_rowFirst, case_000693_fixedSecond⟩

private theorem case_000693_existsRows :
    ExistsOppMinusOneVarFirstRows case_000693_rank.val case_000693_mask :=
  ⟨case_000693_support, case_000693_sourceAgrees, case_000693_rows⟩

private theorem case_000693_covered :
    RowPropertyParametricCovered case_000693_rank.val case_000693_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000693_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000694_rank : Fin numPairWords := ⟨447, by decide⟩
private def case_000694_mask : SignMask := ⟨30, by decide⟩
private def case_000694_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000694_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000694_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000694_b : Vec3 Rat := { x := (-380/27), y := (-28/27), z := (92/27) }
private def case_000694_firstLine : StrictLin2 := { a := (19/13), b := (-19/13), c := (-217/39) }
private def case_000694_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000694_rankWord :
    rankPairWord? case_000694_word = some case_000694_rank := by
  decide

private theorem case_000694_unrank :
    unrankPairWord case_000694_rank = case_000694_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000694_word case_000694_rank).1
    case_000694_rankWord |>.symm

private theorem case_000694_seqChoice :
    translationChoiceSeq case_000694_word case_000694_mask = case_000694_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000694_seqAtRank :
    translationSeqAtRankMask case_000694_rank case_000694_mask = case_000694_seq := by
  rw [translationSeqAtRankMask, case_000694_unrank]
  exact case_000694_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000694_bAtRank :
    translationBAtRankMask case_000694_rank case_000694_mask = case_000694_b := by
  rw [translationBAtRankMask, case_000694_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000694_b, case_000694_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000694_firstLine_eq :
    case_000694_support.firstLine case_000694_seq case_000694_b = case_000694_firstLine := by
  norm_num [case_000694_firstLine, case_000694_support, case_000694_seq, case_000694_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000694_secondLine_eq :
    case_000694_support.secondLine case_000694_seq case_000694_b = case_000694_secondLine := by
  norm_num [case_000694_secondLine, case_000694_support, case_000694_seq, case_000694_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000694_sourceAgrees :
    SourceAgrees case_000694_support case_000694_rank.val case_000694_mask := by
  intro hlt
  have hrank : (⟨case_000694_rank.val, hlt⟩ : Fin numPairWords) = case_000694_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000694_rank.val, hlt⟩ case_000694_mask =
        case_000694_seq := by
    simpa [hrank] using case_000694_seqAtRank
  simp [SourceChecks, hseq, case_000694_support,
    checkTranslationConstraintSource, case_000694_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000694_rows :
    OppMinusOneVarFirstRows case_000694_support case_000694_rank.val case_000694_mask := by
  intro hlt
  have hrank : (⟨case_000694_rank.val, hlt⟩ : Fin numPairWords) = case_000694_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000694_rank.val, hlt⟩ case_000694_mask =
        case_000694_seq := by
    simpa [hrank] using case_000694_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000694_rank.val, hlt⟩ case_000694_mask =
        case_000694_b := by
    simpa [hrank] using case_000694_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000694_support case_000694_rank.val hlt
          case_000694_mask = case_000694_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000694_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000694_support case_000694_rank.val hlt
          case_000694_mask = case_000694_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000694_secondLine_eq]
  have case_000694_rowFirst :
      OppNegRow (FirstLineAt case_000694_support case_000694_rank.val hlt case_000694_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000694_firstLine, OppNegRow]
  have case_000694_fixedSecond :
      FixedRow (SecondLineAt case_000694_support case_000694_rank.val hlt case_000694_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000694_secondLine, FixedRow]
  exact ⟨case_000694_rowFirst, case_000694_fixedSecond⟩

private theorem case_000694_existsRows :
    ExistsOppMinusOneVarFirstRows case_000694_rank.val case_000694_mask :=
  ⟨case_000694_support, case_000694_sourceAgrees, case_000694_rows⟩

private theorem case_000694_covered :
    RowPropertyParametricCovered case_000694_rank.val case_000694_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000694_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000695_rank : Fin numPairWords := ⟨447, by decide⟩
private def case_000695_mask : SignMask := ⟨54, by decide⟩
private def case_000695_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000695_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000695_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000695_b : Vec3 Rat := { x := (-28/27), y := (-284/27), z := (316/27) }
private def case_000695_firstLine : StrictLin2 := { a := -1, b := 1, c := (-293/7) }
private def case_000695_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000695_rankWord :
    rankPairWord? case_000695_word = some case_000695_rank := by
  decide

private theorem case_000695_unrank :
    unrankPairWord case_000695_rank = case_000695_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000695_word case_000695_rank).1
    case_000695_rankWord |>.symm

private theorem case_000695_seqChoice :
    translationChoiceSeq case_000695_word case_000695_mask = case_000695_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000695_seqAtRank :
    translationSeqAtRankMask case_000695_rank case_000695_mask = case_000695_seq := by
  rw [translationSeqAtRankMask, case_000695_unrank]
  exact case_000695_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000695_bAtRank :
    translationBAtRankMask case_000695_rank case_000695_mask = case_000695_b := by
  rw [translationBAtRankMask, case_000695_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000695_b, case_000695_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000695_firstLine_eq :
    case_000695_support.firstLine case_000695_seq case_000695_b = case_000695_firstLine := by
  norm_num [case_000695_firstLine, case_000695_support, case_000695_seq, case_000695_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000695_secondLine_eq :
    case_000695_support.secondLine case_000695_seq case_000695_b = case_000695_secondLine := by
  norm_num [case_000695_secondLine, case_000695_support, case_000695_seq, case_000695_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000695_sourceAgrees :
    SourceAgrees case_000695_support case_000695_rank.val case_000695_mask := by
  intro hlt
  have hrank : (⟨case_000695_rank.val, hlt⟩ : Fin numPairWords) = case_000695_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000695_rank.val, hlt⟩ case_000695_mask =
        case_000695_seq := by
    simpa [hrank] using case_000695_seqAtRank
  simp [SourceChecks, hseq, case_000695_support,
    checkTranslationConstraintSource, case_000695_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000695_rows :
    OppOneMinusVarFirstRows case_000695_support case_000695_rank.val case_000695_mask := by
  intro hlt
  have hrank : (⟨case_000695_rank.val, hlt⟩ : Fin numPairWords) = case_000695_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000695_rank.val, hlt⟩ case_000695_mask =
        case_000695_seq := by
    simpa [hrank] using case_000695_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000695_rank.val, hlt⟩ case_000695_mask =
        case_000695_b := by
    simpa [hrank] using case_000695_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000695_support case_000695_rank.val hlt
          case_000695_mask = case_000695_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000695_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000695_support case_000695_rank.val hlt
          case_000695_mask = case_000695_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000695_secondLine_eq]
  have case_000695_rowFirst :
      OppPosRow (FirstLineAt case_000695_support case_000695_rank.val hlt case_000695_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000695_firstLine, OppPosRow]
  have case_000695_fixedSecond :
      FixedRow (SecondLineAt case_000695_support case_000695_rank.val hlt case_000695_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000695_secondLine, FixedRow]
  exact ⟨case_000695_rowFirst, case_000695_fixedSecond⟩

private theorem case_000695_existsRows :
    ExistsOppOneMinusVarFirstRows case_000695_rank.val case_000695_mask :=
  ⟨case_000695_support, case_000695_sourceAgrees, case_000695_rows⟩

private theorem case_000695_covered :
    RowPropertyParametricCovered case_000695_rank.val case_000695_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000695_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000696_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000696_mask : SignMask := ⟨7, by decide⟩
private def case_000696_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000696_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000696_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000696_b : Vec3 Rat := { x := (-236/27), y := (332/27), z := (236/27) }
private def case_000696_firstLine : StrictLin2 := { a := 1, b := 1, c := (-225/59) }
private def case_000696_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000696_rankWord :
    rankPairWord? case_000696_word = some case_000696_rank := by
  decide

private theorem case_000696_unrank :
    unrankPairWord case_000696_rank = case_000696_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000696_word case_000696_rank).1
    case_000696_rankWord |>.symm

private theorem case_000696_seqChoice :
    translationChoiceSeq case_000696_word case_000696_mask = case_000696_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000696_seqAtRank :
    translationSeqAtRankMask case_000696_rank case_000696_mask = case_000696_seq := by
  rw [translationSeqAtRankMask, case_000696_unrank]
  exact case_000696_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000696_bAtRank :
    translationBAtRankMask case_000696_rank case_000696_mask = case_000696_b := by
  rw [translationBAtRankMask, case_000696_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000696_b, case_000696_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000696_firstLine_eq :
    case_000696_support.firstLine case_000696_seq case_000696_b = case_000696_firstLine := by
  norm_num [case_000696_firstLine, case_000696_support, case_000696_seq, case_000696_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000696_secondLine_eq :
    case_000696_support.secondLine case_000696_seq case_000696_b = case_000696_secondLine := by
  norm_num [case_000696_secondLine, case_000696_support, case_000696_seq, case_000696_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000696_sourceAgrees :
    SourceAgrees case_000696_support case_000696_rank.val case_000696_mask := by
  intro hlt
  have hrank : (⟨case_000696_rank.val, hlt⟩ : Fin numPairWords) = case_000696_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000696_rank.val, hlt⟩ case_000696_mask =
        case_000696_seq := by
    simpa [hrank] using case_000696_seqAtRank
  simp [SourceChecks, hseq, case_000696_support,
    checkTranslationConstraintSource, case_000696_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000696_rows :
    EqEqNegVarFirstRows case_000696_support case_000696_rank.val case_000696_mask := by
  intro hlt
  have hrank : (⟨case_000696_rank.val, hlt⟩ : Fin numPairWords) = case_000696_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000696_rank.val, hlt⟩ case_000696_mask =
        case_000696_seq := by
    simpa [hrank] using case_000696_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000696_rank.val, hlt⟩ case_000696_mask =
        case_000696_b := by
    simpa [hrank] using case_000696_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000696_support case_000696_rank.val hlt
          case_000696_mask = case_000696_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000696_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000696_support case_000696_rank.val hlt
          case_000696_mask = case_000696_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000696_secondLine_eq]
  have case_000696_rowFirst :
      EqEqNegRow (FirstLineAt case_000696_support case_000696_rank.val hlt case_000696_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000696_firstLine, EqEqNegRow]
  have case_000696_fixedSecond :
      FixedRow (SecondLineAt case_000696_support case_000696_rank.val hlt case_000696_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000696_secondLine, FixedRow]
  exact ⟨case_000696_rowFirst, case_000696_fixedSecond⟩

private theorem case_000696_existsRows :
    ExistsEqEqNegVarFirstRows case_000696_rank.val case_000696_mask :=
  ⟨case_000696_support, case_000696_sourceAgrees, case_000696_rows⟩

private theorem case_000696_covered :
    RowPropertyParametricCovered case_000696_rank.val case_000696_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000696_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000697_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000697_mask : SignMask := ⟨13, by decide⟩
private def case_000697_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000697_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000697_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000697_b : Vec3 Rat := { x := (-284/27), y := (380/27), z := (-220/27) }
private def case_000697_firstLine : StrictLin2 := { a := 1, b := -1, c := (-229/71) }
private def case_000697_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000697_rankWord :
    rankPairWord? case_000697_word = some case_000697_rank := by
  decide

private theorem case_000697_unrank :
    unrankPairWord case_000697_rank = case_000697_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000697_word case_000697_rank).1
    case_000697_rankWord |>.symm

private theorem case_000697_seqChoice :
    translationChoiceSeq case_000697_word case_000697_mask = case_000697_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000697_seqAtRank :
    translationSeqAtRankMask case_000697_rank case_000697_mask = case_000697_seq := by
  rw [translationSeqAtRankMask, case_000697_unrank]
  exact case_000697_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000697_bAtRank :
    translationBAtRankMask case_000697_rank case_000697_mask = case_000697_b := by
  rw [translationBAtRankMask, case_000697_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000697_b, case_000697_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000697_firstLine_eq :
    case_000697_support.firstLine case_000697_seq case_000697_b = case_000697_firstLine := by
  norm_num [case_000697_firstLine, case_000697_support, case_000697_seq, case_000697_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000697_secondLine_eq :
    case_000697_support.secondLine case_000697_seq case_000697_b = case_000697_secondLine := by
  norm_num [case_000697_secondLine, case_000697_support, case_000697_seq, case_000697_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000697_sourceAgrees :
    SourceAgrees case_000697_support case_000697_rank.val case_000697_mask := by
  intro hlt
  have hrank : (⟨case_000697_rank.val, hlt⟩ : Fin numPairWords) = case_000697_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000697_rank.val, hlt⟩ case_000697_mask =
        case_000697_seq := by
    simpa [hrank] using case_000697_seqAtRank
  simp [SourceChecks, hseq, case_000697_support,
    checkTranslationConstraintSource, case_000697_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000697_rows :
    OppMinusOneVarFirstRows case_000697_support case_000697_rank.val case_000697_mask := by
  intro hlt
  have hrank : (⟨case_000697_rank.val, hlt⟩ : Fin numPairWords) = case_000697_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000697_rank.val, hlt⟩ case_000697_mask =
        case_000697_seq := by
    simpa [hrank] using case_000697_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000697_rank.val, hlt⟩ case_000697_mask =
        case_000697_b := by
    simpa [hrank] using case_000697_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000697_support case_000697_rank.val hlt
          case_000697_mask = case_000697_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000697_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000697_support case_000697_rank.val hlt
          case_000697_mask = case_000697_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000697_secondLine_eq]
  have case_000697_rowFirst :
      OppNegRow (FirstLineAt case_000697_support case_000697_rank.val hlt case_000697_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000697_firstLine, OppNegRow]
  have case_000697_fixedSecond :
      FixedRow (SecondLineAt case_000697_support case_000697_rank.val hlt case_000697_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000697_secondLine, FixedRow]
  exact ⟨case_000697_rowFirst, case_000697_fixedSecond⟩

private theorem case_000697_existsRows :
    ExistsOppMinusOneVarFirstRows case_000697_rank.val case_000697_mask :=
  ⟨case_000697_support, case_000697_sourceAgrees, case_000697_rows⟩

private theorem case_000697_covered :
    RowPropertyParametricCovered case_000697_rank.val case_000697_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000697_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000698_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000698_mask : SignMask := ⟨22, by decide⟩
private def case_000698_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000698_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000698_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000698_b : Vec3 Rat := { x := (-284/27), y := (-124/27), z := (284/27) }
private def case_000698_firstLine : StrictLin2 := { a := -1, b := 1, c := (-133/71) }
private def case_000698_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000698_rankWord :
    rankPairWord? case_000698_word = some case_000698_rank := by
  decide

private theorem case_000698_unrank :
    unrankPairWord case_000698_rank = case_000698_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000698_word case_000698_rank).1
    case_000698_rankWord |>.symm

private theorem case_000698_seqChoice :
    translationChoiceSeq case_000698_word case_000698_mask = case_000698_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000698_seqAtRank :
    translationSeqAtRankMask case_000698_rank case_000698_mask = case_000698_seq := by
  rw [translationSeqAtRankMask, case_000698_unrank]
  exact case_000698_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000698_bAtRank :
    translationBAtRankMask case_000698_rank case_000698_mask = case_000698_b := by
  rw [translationBAtRankMask, case_000698_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000698_b, case_000698_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000698_firstLine_eq :
    case_000698_support.firstLine case_000698_seq case_000698_b = case_000698_firstLine := by
  norm_num [case_000698_firstLine, case_000698_support, case_000698_seq, case_000698_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000698_secondLine_eq :
    case_000698_support.secondLine case_000698_seq case_000698_b = case_000698_secondLine := by
  norm_num [case_000698_secondLine, case_000698_support, case_000698_seq, case_000698_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000698_sourceAgrees :
    SourceAgrees case_000698_support case_000698_rank.val case_000698_mask := by
  intro hlt
  have hrank : (⟨case_000698_rank.val, hlt⟩ : Fin numPairWords) = case_000698_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000698_rank.val, hlt⟩ case_000698_mask =
        case_000698_seq := by
    simpa [hrank] using case_000698_seqAtRank
  simp [SourceChecks, hseq, case_000698_support,
    checkTranslationConstraintSource, case_000698_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000698_rows :
    OppOneMinusVarFirstRows case_000698_support case_000698_rank.val case_000698_mask := by
  intro hlt
  have hrank : (⟨case_000698_rank.val, hlt⟩ : Fin numPairWords) = case_000698_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000698_rank.val, hlt⟩ case_000698_mask =
        case_000698_seq := by
    simpa [hrank] using case_000698_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000698_rank.val, hlt⟩ case_000698_mask =
        case_000698_b := by
    simpa [hrank] using case_000698_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000698_support case_000698_rank.val hlt
          case_000698_mask = case_000698_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000698_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000698_support case_000698_rank.val hlt
          case_000698_mask = case_000698_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000698_secondLine_eq]
  have case_000698_rowFirst :
      OppPosRow (FirstLineAt case_000698_support case_000698_rank.val hlt case_000698_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000698_firstLine, OppPosRow]
  have case_000698_fixedSecond :
      FixedRow (SecondLineAt case_000698_support case_000698_rank.val hlt case_000698_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000698_secondLine, FixedRow]
  exact ⟨case_000698_rowFirst, case_000698_fixedSecond⟩

private theorem case_000698_existsRows :
    ExistsOppOneMinusVarFirstRows case_000698_rank.val case_000698_mask :=
  ⟨case_000698_support, case_000698_sourceAgrees, case_000698_rows⟩

private theorem case_000698_covered :
    RowPropertyParametricCovered case_000698_rank.val case_000698_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000698_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000699_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000699_mask : SignMask := ⟨23, by decide⟩
private def case_000699_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000699_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000699_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000699_b : Vec3 Rat := { x := (-284/27), y := (92/27), z := (284/27) }
private def case_000699_firstLine : StrictLin2 := { a := (-71/165), b := (-71/165), c := (-263/165) }
private def case_000699_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000699_rankWord :
    rankPairWord? case_000699_word = some case_000699_rank := by
  decide

private theorem case_000699_unrank :
    unrankPairWord case_000699_rank = case_000699_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000699_word case_000699_rank).1
    case_000699_rankWord |>.symm

private theorem case_000699_seqChoice :
    translationChoiceSeq case_000699_word case_000699_mask = case_000699_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000699_seqAtRank :
    translationSeqAtRankMask case_000699_rank case_000699_mask = case_000699_seq := by
  rw [translationSeqAtRankMask, case_000699_unrank]
  exact case_000699_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000699_bAtRank :
    translationBAtRankMask case_000699_rank case_000699_mask = case_000699_b := by
  rw [translationBAtRankMask, case_000699_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000699_b, case_000699_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000699_firstLine_eq :
    case_000699_support.firstLine case_000699_seq case_000699_b = case_000699_firstLine := by
  norm_num [case_000699_firstLine, case_000699_support, case_000699_seq, case_000699_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000699_secondLine_eq :
    case_000699_support.secondLine case_000699_seq case_000699_b = case_000699_secondLine := by
  norm_num [case_000699_secondLine, case_000699_support, case_000699_seq, case_000699_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000699_sourceAgrees :
    SourceAgrees case_000699_support case_000699_rank.val case_000699_mask := by
  intro hlt
  have hrank : (⟨case_000699_rank.val, hlt⟩ : Fin numPairWords) = case_000699_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000699_rank.val, hlt⟩ case_000699_mask =
        case_000699_seq := by
    simpa [hrank] using case_000699_seqAtRank
  simp [SourceChecks, hseq, case_000699_support,
    checkTranslationConstraintSource, case_000699_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000699_rows :
    EqEqPosVarFirstRows case_000699_support case_000699_rank.val case_000699_mask := by
  intro hlt
  have hrank : (⟨case_000699_rank.val, hlt⟩ : Fin numPairWords) = case_000699_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000699_rank.val, hlt⟩ case_000699_mask =
        case_000699_seq := by
    simpa [hrank] using case_000699_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000699_rank.val, hlt⟩ case_000699_mask =
        case_000699_b := by
    simpa [hrank] using case_000699_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000699_support case_000699_rank.val hlt
          case_000699_mask = case_000699_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000699_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000699_support case_000699_rank.val hlt
          case_000699_mask = case_000699_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000699_secondLine_eq]
  have case_000699_rowFirst :
      EqEqPosRow (FirstLineAt case_000699_support case_000699_rank.val hlt case_000699_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000699_firstLine, EqEqPosRow]
  have case_000699_fixedSecond :
      FixedRow (SecondLineAt case_000699_support case_000699_rank.val hlt case_000699_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000699_secondLine, FixedRow]
  exact ⟨case_000699_rowFirst, case_000699_fixedSecond⟩

private theorem case_000699_existsRows :
    ExistsEqEqPosVarFirstRows case_000699_rank.val case_000699_mask :=
  ⟨case_000699_support, case_000699_sourceAgrees, case_000699_rows⟩

private theorem case_000699_covered :
    RowPropertyParametricCovered case_000699_rank.val case_000699_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000699_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000700_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000700_mask : SignMask := ⟨24, by decide⟩
private def case_000700_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000700_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000700_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000700_b : Vec3 Rat := { x := (-188/27), y := (-220/27), z := (-316/27) }
private def case_000700_firstLine : StrictLin2 := { a := -1, b := -1, c := (-221/47) }
private def case_000700_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000700_rankWord :
    rankPairWord? case_000700_word = some case_000700_rank := by
  decide

private theorem case_000700_unrank :
    unrankPairWord case_000700_rank = case_000700_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000700_word case_000700_rank).1
    case_000700_rankWord |>.symm

private theorem case_000700_seqChoice :
    translationChoiceSeq case_000700_word case_000700_mask = case_000700_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000700_seqAtRank :
    translationSeqAtRankMask case_000700_rank case_000700_mask = case_000700_seq := by
  rw [translationSeqAtRankMask, case_000700_unrank]
  exact case_000700_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000700_bAtRank :
    translationBAtRankMask case_000700_rank case_000700_mask = case_000700_b := by
  rw [translationBAtRankMask, case_000700_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000700_b, case_000700_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000700_firstLine_eq :
    case_000700_support.firstLine case_000700_seq case_000700_b = case_000700_firstLine := by
  norm_num [case_000700_firstLine, case_000700_support, case_000700_seq, case_000700_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000700_secondLine_eq :
    case_000700_support.secondLine case_000700_seq case_000700_b = case_000700_secondLine := by
  norm_num [case_000700_secondLine, case_000700_support, case_000700_seq, case_000700_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000700_sourceAgrees :
    SourceAgrees case_000700_support case_000700_rank.val case_000700_mask := by
  intro hlt
  have hrank : (⟨case_000700_rank.val, hlt⟩ : Fin numPairWords) = case_000700_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000700_rank.val, hlt⟩ case_000700_mask =
        case_000700_seq := by
    simpa [hrank] using case_000700_seqAtRank
  simp [SourceChecks, hseq, case_000700_support,
    checkTranslationConstraintSource, case_000700_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000700_rows :
    EqEqPosVarFirstRows case_000700_support case_000700_rank.val case_000700_mask := by
  intro hlt
  have hrank : (⟨case_000700_rank.val, hlt⟩ : Fin numPairWords) = case_000700_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000700_rank.val, hlt⟩ case_000700_mask =
        case_000700_seq := by
    simpa [hrank] using case_000700_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000700_rank.val, hlt⟩ case_000700_mask =
        case_000700_b := by
    simpa [hrank] using case_000700_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000700_support case_000700_rank.val hlt
          case_000700_mask = case_000700_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000700_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000700_support case_000700_rank.val hlt
          case_000700_mask = case_000700_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000700_secondLine_eq]
  have case_000700_rowFirst :
      EqEqPosRow (FirstLineAt case_000700_support case_000700_rank.val hlt case_000700_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000700_firstLine, EqEqPosRow]
  have case_000700_fixedSecond :
      FixedRow (SecondLineAt case_000700_support case_000700_rank.val hlt case_000700_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000700_secondLine, FixedRow]
  exact ⟨case_000700_rowFirst, case_000700_fixedSecond⟩

private theorem case_000700_existsRows :
    ExistsEqEqPosVarFirstRows case_000700_rank.val case_000700_mask :=
  ⟨case_000700_support, case_000700_sourceAgrees, case_000700_rows⟩

private theorem case_000700_covered :
    RowPropertyParametricCovered case_000700_rank.val case_000700_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000700_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000701_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000701_mask : SignMask := ⟨28, by decide⟩
private def case_000701_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000701_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000701_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000701_b : Vec3 Rat := { x := (-332/27), y := (-76/27), z := (-172/27) }
private def case_000701_firstLine : StrictLin2 := { a := (83/21), b := (83/21), c := (-97/7) }
private def case_000701_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000701_rankWord :
    rankPairWord? case_000701_word = some case_000701_rank := by
  decide

private theorem case_000701_unrank :
    unrankPairWord case_000701_rank = case_000701_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000701_word case_000701_rank).1
    case_000701_rankWord |>.symm

private theorem case_000701_seqChoice :
    translationChoiceSeq case_000701_word case_000701_mask = case_000701_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000701_seqAtRank :
    translationSeqAtRankMask case_000701_rank case_000701_mask = case_000701_seq := by
  rw [translationSeqAtRankMask, case_000701_unrank]
  exact case_000701_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000701_bAtRank :
    translationBAtRankMask case_000701_rank case_000701_mask = case_000701_b := by
  rw [translationBAtRankMask, case_000701_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000701_b, case_000701_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000701_firstLine_eq :
    case_000701_support.firstLine case_000701_seq case_000701_b = case_000701_firstLine := by
  norm_num [case_000701_firstLine, case_000701_support, case_000701_seq, case_000701_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000701_secondLine_eq :
    case_000701_support.secondLine case_000701_seq case_000701_b = case_000701_secondLine := by
  norm_num [case_000701_secondLine, case_000701_support, case_000701_seq, case_000701_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000701_sourceAgrees :
    SourceAgrees case_000701_support case_000701_rank.val case_000701_mask := by
  intro hlt
  have hrank : (⟨case_000701_rank.val, hlt⟩ : Fin numPairWords) = case_000701_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000701_rank.val, hlt⟩ case_000701_mask =
        case_000701_seq := by
    simpa [hrank] using case_000701_seqAtRank
  simp [SourceChecks, hseq, case_000701_support,
    checkTranslationConstraintSource, case_000701_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000701_rows :
    EqEqNegVarFirstRows case_000701_support case_000701_rank.val case_000701_mask := by
  intro hlt
  have hrank : (⟨case_000701_rank.val, hlt⟩ : Fin numPairWords) = case_000701_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000701_rank.val, hlt⟩ case_000701_mask =
        case_000701_seq := by
    simpa [hrank] using case_000701_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000701_rank.val, hlt⟩ case_000701_mask =
        case_000701_b := by
    simpa [hrank] using case_000701_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000701_support case_000701_rank.val hlt
          case_000701_mask = case_000701_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000701_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000701_support case_000701_rank.val hlt
          case_000701_mask = case_000701_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000701_secondLine_eq]
  have case_000701_rowFirst :
      EqEqNegRow (FirstLineAt case_000701_support case_000701_rank.val hlt case_000701_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000701_firstLine, EqEqNegRow]
  have case_000701_fixedSecond :
      FixedRow (SecondLineAt case_000701_support case_000701_rank.val hlt case_000701_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000701_secondLine, FixedRow]
  exact ⟨case_000701_rowFirst, case_000701_fixedSecond⟩

private theorem case_000701_existsRows :
    ExistsEqEqNegVarFirstRows case_000701_rank.val case_000701_mask :=
  ⟨case_000701_support, case_000701_sourceAgrees, case_000701_rows⟩

private theorem case_000701_covered :
    RowPropertyParametricCovered case_000701_rank.val case_000701_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000701_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000702_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000702_mask : SignMask := ⟨30, by decide⟩
private def case_000702_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000702_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000702_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000702_b : Vec3 Rat := { x := (-332/27), y := (-76/27), z := (44/27) }
private def case_000702_firstLine : StrictLin2 := { a := (-83/75), b := (-83/75), c := (-23/15) }
private def case_000702_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000702_rankWord :
    rankPairWord? case_000702_word = some case_000702_rank := by
  decide

private theorem case_000702_unrank :
    unrankPairWord case_000702_rank = case_000702_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000702_word case_000702_rank).1
    case_000702_rankWord |>.symm

private theorem case_000702_seqChoice :
    translationChoiceSeq case_000702_word case_000702_mask = case_000702_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000702_seqAtRank :
    translationSeqAtRankMask case_000702_rank case_000702_mask = case_000702_seq := by
  rw [translationSeqAtRankMask, case_000702_unrank]
  exact case_000702_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000702_bAtRank :
    translationBAtRankMask case_000702_rank case_000702_mask = case_000702_b := by
  rw [translationBAtRankMask, case_000702_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000702_b, case_000702_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000702_firstLine_eq :
    case_000702_support.firstLine case_000702_seq case_000702_b = case_000702_firstLine := by
  norm_num [case_000702_firstLine, case_000702_support, case_000702_seq, case_000702_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000702_secondLine_eq :
    case_000702_support.secondLine case_000702_seq case_000702_b = case_000702_secondLine := by
  norm_num [case_000702_secondLine, case_000702_support, case_000702_seq, case_000702_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000702_sourceAgrees :
    SourceAgrees case_000702_support case_000702_rank.val case_000702_mask := by
  intro hlt
  have hrank : (⟨case_000702_rank.val, hlt⟩ : Fin numPairWords) = case_000702_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000702_rank.val, hlt⟩ case_000702_mask =
        case_000702_seq := by
    simpa [hrank] using case_000702_seqAtRank
  simp [SourceChecks, hseq, case_000702_support,
    checkTranslationConstraintSource, case_000702_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000702_rows :
    EqEqPosVarFirstRows case_000702_support case_000702_rank.val case_000702_mask := by
  intro hlt
  have hrank : (⟨case_000702_rank.val, hlt⟩ : Fin numPairWords) = case_000702_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000702_rank.val, hlt⟩ case_000702_mask =
        case_000702_seq := by
    simpa [hrank] using case_000702_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000702_rank.val, hlt⟩ case_000702_mask =
        case_000702_b := by
    simpa [hrank] using case_000702_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000702_support case_000702_rank.val hlt
          case_000702_mask = case_000702_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000702_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000702_support case_000702_rank.val hlt
          case_000702_mask = case_000702_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000702_secondLine_eq]
  have case_000702_rowFirst :
      EqEqPosRow (FirstLineAt case_000702_support case_000702_rank.val hlt case_000702_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000702_firstLine, EqEqPosRow]
  have case_000702_fixedSecond :
      FixedRow (SecondLineAt case_000702_support case_000702_rank.val hlt case_000702_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000702_secondLine, FixedRow]
  exact ⟨case_000702_rowFirst, case_000702_fixedSecond⟩

private theorem case_000702_existsRows :
    ExistsEqEqPosVarFirstRows case_000702_rank.val case_000702_mask :=
  ⟨case_000702_support, case_000702_sourceAgrees, case_000702_rows⟩

private theorem case_000702_covered :
    RowPropertyParametricCovered case_000702_rank.val case_000702_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000702_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000703_rank : Fin numPairWords := ⟨449, by decide⟩
private def case_000703_mask : SignMask := ⟨54, by decide⟩
private def case_000703_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000703_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000703_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000703_b : Vec3 Rat := { x := (-76/27), y := (-236/27), z := (364/27) }
private def case_000703_firstLine : StrictLin2 := { a := -1, b := 1, c := (-281/19) }
private def case_000703_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000703_rankWord :
    rankPairWord? case_000703_word = some case_000703_rank := by
  decide

private theorem case_000703_unrank :
    unrankPairWord case_000703_rank = case_000703_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000703_word case_000703_rank).1
    case_000703_rankWord |>.symm

private theorem case_000703_seqChoice :
    translationChoiceSeq case_000703_word case_000703_mask = case_000703_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000703_seqAtRank :
    translationSeqAtRankMask case_000703_rank case_000703_mask = case_000703_seq := by
  rw [translationSeqAtRankMask, case_000703_unrank]
  exact case_000703_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000703_bAtRank :
    translationBAtRankMask case_000703_rank case_000703_mask = case_000703_b := by
  rw [translationBAtRankMask, case_000703_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000703_b, case_000703_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000703_firstLine_eq :
    case_000703_support.firstLine case_000703_seq case_000703_b = case_000703_firstLine := by
  norm_num [case_000703_firstLine, case_000703_support, case_000703_seq, case_000703_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000703_secondLine_eq :
    case_000703_support.secondLine case_000703_seq case_000703_b = case_000703_secondLine := by
  norm_num [case_000703_secondLine, case_000703_support, case_000703_seq, case_000703_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000703_sourceAgrees :
    SourceAgrees case_000703_support case_000703_rank.val case_000703_mask := by
  intro hlt
  have hrank : (⟨case_000703_rank.val, hlt⟩ : Fin numPairWords) = case_000703_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000703_rank.val, hlt⟩ case_000703_mask =
        case_000703_seq := by
    simpa [hrank] using case_000703_seqAtRank
  simp [SourceChecks, hseq, case_000703_support,
    checkTranslationConstraintSource, case_000703_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000703_rows :
    OppOneMinusVarFirstRows case_000703_support case_000703_rank.val case_000703_mask := by
  intro hlt
  have hrank : (⟨case_000703_rank.val, hlt⟩ : Fin numPairWords) = case_000703_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000703_rank.val, hlt⟩ case_000703_mask =
        case_000703_seq := by
    simpa [hrank] using case_000703_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000703_rank.val, hlt⟩ case_000703_mask =
        case_000703_b := by
    simpa [hrank] using case_000703_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000703_support case_000703_rank.val hlt
          case_000703_mask = case_000703_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000703_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000703_support case_000703_rank.val hlt
          case_000703_mask = case_000703_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000703_secondLine_eq]
  have case_000703_rowFirst :
      OppPosRow (FirstLineAt case_000703_support case_000703_rank.val hlt case_000703_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000703_firstLine, OppPosRow]
  have case_000703_fixedSecond :
      FixedRow (SecondLineAt case_000703_support case_000703_rank.val hlt case_000703_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000703_secondLine, FixedRow]
  exact ⟨case_000703_rowFirst, case_000703_fixedSecond⟩

private theorem case_000703_existsRows :
    ExistsOppOneMinusVarFirstRows case_000703_rank.val case_000703_mask :=
  ⟨case_000703_support, case_000703_sourceAgrees, case_000703_rows⟩

private theorem case_000703_covered :
    RowPropertyParametricCovered case_000703_rank.val case_000703_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000703_existsRows

inductive Group021Covered : Nat -> SignMask -> Prop
  | case_000672 : Group021Covered case_000672_rank.val case_000672_mask
  | case_000673 : Group021Covered case_000673_rank.val case_000673_mask
  | case_000674 : Group021Covered case_000674_rank.val case_000674_mask
  | case_000675 : Group021Covered case_000675_rank.val case_000675_mask
  | case_000676 : Group021Covered case_000676_rank.val case_000676_mask
  | case_000677 : Group021Covered case_000677_rank.val case_000677_mask
  | case_000678 : Group021Covered case_000678_rank.val case_000678_mask
  | case_000679 : Group021Covered case_000679_rank.val case_000679_mask
  | case_000680 : Group021Covered case_000680_rank.val case_000680_mask
  | case_000681 : Group021Covered case_000681_rank.val case_000681_mask
  | case_000682 : Group021Covered case_000682_rank.val case_000682_mask
  | case_000683 : Group021Covered case_000683_rank.val case_000683_mask
  | case_000684 : Group021Covered case_000684_rank.val case_000684_mask
  | case_000685 : Group021Covered case_000685_rank.val case_000685_mask
  | case_000686 : Group021Covered case_000686_rank.val case_000686_mask
  | case_000687 : Group021Covered case_000687_rank.val case_000687_mask
  | case_000688 : Group021Covered case_000688_rank.val case_000688_mask
  | case_000689 : Group021Covered case_000689_rank.val case_000689_mask
  | case_000690 : Group021Covered case_000690_rank.val case_000690_mask
  | case_000691 : Group021Covered case_000691_rank.val case_000691_mask
  | case_000692 : Group021Covered case_000692_rank.val case_000692_mask
  | case_000693 : Group021Covered case_000693_rank.val case_000693_mask
  | case_000694 : Group021Covered case_000694_rank.val case_000694_mask
  | case_000695 : Group021Covered case_000695_rank.val case_000695_mask
  | case_000696 : Group021Covered case_000696_rank.val case_000696_mask
  | case_000697 : Group021Covered case_000697_rank.val case_000697_mask
  | case_000698 : Group021Covered case_000698_rank.val case_000698_mask
  | case_000699 : Group021Covered case_000699_rank.val case_000699_mask
  | case_000700 : Group021Covered case_000700_rank.val case_000700_mask
  | case_000701 : Group021Covered case_000701_rank.val case_000701_mask
  | case_000702 : Group021Covered case_000702_rank.val case_000702_mask
  | case_000703 : Group021Covered case_000703_rank.val case_000703_mask

theorem Group021GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group021Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000672 =>
      exact RowPropertyParametricCovered.kills case_000672_covered
  | case_000673 =>
      exact RowPropertyParametricCovered.kills case_000673_covered
  | case_000674 =>
      exact RowPropertyParametricCovered.kills case_000674_covered
  | case_000675 =>
      exact RowPropertyParametricCovered.kills case_000675_covered
  | case_000676 =>
      exact RowPropertyParametricCovered.kills case_000676_covered
  | case_000677 =>
      exact RowPropertyParametricCovered.kills case_000677_covered
  | case_000678 =>
      exact RowPropertyParametricCovered.kills case_000678_covered
  | case_000679 =>
      exact RowPropertyParametricCovered.kills case_000679_covered
  | case_000680 =>
      exact RowPropertyParametricCovered.kills case_000680_covered
  | case_000681 =>
      exact RowPropertyParametricCovered.kills case_000681_covered
  | case_000682 =>
      exact RowPropertyParametricCovered.kills case_000682_covered
  | case_000683 =>
      exact RowPropertyParametricCovered.kills case_000683_covered
  | case_000684 =>
      exact RowPropertyParametricCovered.kills case_000684_covered
  | case_000685 =>
      exact RowPropertyParametricCovered.kills case_000685_covered
  | case_000686 =>
      exact RowPropertyParametricCovered.kills case_000686_covered
  | case_000687 =>
      exact RowPropertyParametricCovered.kills case_000687_covered
  | case_000688 =>
      exact RowPropertyParametricCovered.kills case_000688_covered
  | case_000689 =>
      exact RowPropertyParametricCovered.kills case_000689_covered
  | case_000690 =>
      exact RowPropertyParametricCovered.kills case_000690_covered
  | case_000691 =>
      exact RowPropertyParametricCovered.kills case_000691_covered
  | case_000692 =>
      exact RowPropertyParametricCovered.kills case_000692_covered
  | case_000693 =>
      exact RowPropertyParametricCovered.kills case_000693_covered
  | case_000694 =>
      exact RowPropertyParametricCovered.kills case_000694_covered
  | case_000695 =>
      exact RowPropertyParametricCovered.kills case_000695_covered
  | case_000696 =>
      exact RowPropertyParametricCovered.kills case_000696_covered
  | case_000697 =>
      exact RowPropertyParametricCovered.kills case_000697_covered
  | case_000698 =>
      exact RowPropertyParametricCovered.kills case_000698_covered
  | case_000699 =>
      exact RowPropertyParametricCovered.kills case_000699_covered
  | case_000700 =>
      exact RowPropertyParametricCovered.kills case_000700_covered
  | case_000701 =>
      exact RowPropertyParametricCovered.kills case_000701_covered
  | case_000702 =>
      exact RowPropertyParametricCovered.kills case_000702_covered
  | case_000703 =>
      exact RowPropertyParametricCovered.kills case_000703_covered

theorem Group021_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group021
