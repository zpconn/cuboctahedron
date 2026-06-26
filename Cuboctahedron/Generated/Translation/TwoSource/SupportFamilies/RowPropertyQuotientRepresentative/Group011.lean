import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group011

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000352_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000352_mask : SignMask := ⟨29, by decide⟩
private def case_000352_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000352_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000352_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000352_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000352_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000352_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000352_rankWord :
    rankPairWord? case_000352_word = some case_000352_rank := by
  decide

private theorem case_000352_unrank :
    unrankPairWord case_000352_rank = case_000352_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000352_word case_000352_rank).1
    case_000352_rankWord |>.symm

private theorem case_000352_seqChoice :
    translationChoiceSeq case_000352_word case_000352_mask = case_000352_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000352_seqAtRank :
    translationSeqAtRankMask case_000352_rank case_000352_mask = case_000352_seq := by
  rw [translationSeqAtRankMask, case_000352_unrank]
  exact case_000352_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000352_bAtRank :
    translationBAtRankMask case_000352_rank case_000352_mask = case_000352_b := by
  rw [translationBAtRankMask, case_000352_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000352_b, case_000352_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000352_firstLine_eq :
    case_000352_support.firstLine case_000352_seq case_000352_b = case_000352_firstLine := by
  norm_num [case_000352_firstLine, case_000352_support, case_000352_seq, case_000352_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000352_secondLine_eq :
    case_000352_support.secondLine case_000352_seq case_000352_b = case_000352_secondLine := by
  norm_num [case_000352_secondLine, case_000352_support, case_000352_seq, case_000352_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000352_sourceAgrees :
    SourceAgrees case_000352_support case_000352_rank.val case_000352_mask := by
  intro hlt
  have hrank : (⟨case_000352_rank.val, hlt⟩ : Fin numPairWords) = case_000352_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000352_rank.val, hlt⟩ case_000352_mask =
        case_000352_seq := by
    simpa [hrank] using case_000352_seqAtRank
  simp [SourceChecks, hseq, case_000352_support,
    checkTranslationConstraintSource, case_000352_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000352_rows :
    EqEqPosVarSecondRows case_000352_support case_000352_rank.val case_000352_mask := by
  intro hlt
  have hrank : (⟨case_000352_rank.val, hlt⟩ : Fin numPairWords) = case_000352_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000352_rank.val, hlt⟩ case_000352_mask =
        case_000352_seq := by
    simpa [hrank] using case_000352_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000352_rank.val, hlt⟩ case_000352_mask =
        case_000352_b := by
    simpa [hrank] using case_000352_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000352_support case_000352_rank.val hlt
          case_000352_mask = case_000352_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000352_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000352_support case_000352_rank.val hlt
          case_000352_mask = case_000352_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000352_secondLine_eq]
  have case_000352_fixedFirst :
      FixedRow (FirstLineAt case_000352_support case_000352_rank.val hlt case_000352_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000352_firstLine, FixedRow]
  have case_000352_rowSecond :
      EqEqPosRow (SecondLineAt case_000352_support case_000352_rank.val hlt case_000352_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000352_secondLine, EqEqPosRow]
  exact ⟨case_000352_fixedFirst, case_000352_rowSecond⟩

private theorem case_000352_existsRows :
    ExistsEqEqPosVarSecondRows case_000352_rank.val case_000352_mask :=
  ⟨case_000352_support, case_000352_sourceAgrees, case_000352_rows⟩

private theorem case_000352_covered :
    RowPropertyParametricCovered case_000352_rank.val case_000352_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000352_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000353_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000353_mask : SignMask := ⟨30, by decide⟩
private def case_000353_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000353_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000353_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000353_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000353_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000353_secondLine : StrictLin2 := { a := (-3/22), b := (-3/22), c := (-5/11) }

private theorem case_000353_rankWord :
    rankPairWord? case_000353_word = some case_000353_rank := by
  decide

private theorem case_000353_unrank :
    unrankPairWord case_000353_rank = case_000353_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000353_word case_000353_rank).1
    case_000353_rankWord |>.symm

private theorem case_000353_seqChoice :
    translationChoiceSeq case_000353_word case_000353_mask = case_000353_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000353_seqAtRank :
    translationSeqAtRankMask case_000353_rank case_000353_mask = case_000353_seq := by
  rw [translationSeqAtRankMask, case_000353_unrank]
  exact case_000353_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000353_bAtRank :
    translationBAtRankMask case_000353_rank case_000353_mask = case_000353_b := by
  rw [translationBAtRankMask, case_000353_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000353_b, case_000353_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000353_firstLine_eq :
    case_000353_support.firstLine case_000353_seq case_000353_b = case_000353_firstLine := by
  norm_num [case_000353_firstLine, case_000353_support, case_000353_seq, case_000353_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000353_secondLine_eq :
    case_000353_support.secondLine case_000353_seq case_000353_b = case_000353_secondLine := by
  norm_num [case_000353_secondLine, case_000353_support, case_000353_seq, case_000353_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000353_sourceAgrees :
    SourceAgrees case_000353_support case_000353_rank.val case_000353_mask := by
  intro hlt
  have hrank : (⟨case_000353_rank.val, hlt⟩ : Fin numPairWords) = case_000353_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000353_rank.val, hlt⟩ case_000353_mask =
        case_000353_seq := by
    simpa [hrank] using case_000353_seqAtRank
  simp [SourceChecks, hseq, case_000353_support,
    checkTranslationConstraintSource, case_000353_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000353_rows :
    EqEqPosVarSecondRows case_000353_support case_000353_rank.val case_000353_mask := by
  intro hlt
  have hrank : (⟨case_000353_rank.val, hlt⟩ : Fin numPairWords) = case_000353_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000353_rank.val, hlt⟩ case_000353_mask =
        case_000353_seq := by
    simpa [hrank] using case_000353_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000353_rank.val, hlt⟩ case_000353_mask =
        case_000353_b := by
    simpa [hrank] using case_000353_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000353_support case_000353_rank.val hlt
          case_000353_mask = case_000353_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000353_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000353_support case_000353_rank.val hlt
          case_000353_mask = case_000353_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000353_secondLine_eq]
  have case_000353_fixedFirst :
      FixedRow (FirstLineAt case_000353_support case_000353_rank.val hlt case_000353_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000353_firstLine, FixedRow]
  have case_000353_rowSecond :
      EqEqPosRow (SecondLineAt case_000353_support case_000353_rank.val hlt case_000353_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000353_secondLine, EqEqPosRow]
  exact ⟨case_000353_fixedFirst, case_000353_rowSecond⟩

private theorem case_000353_existsRows :
    ExistsEqEqPosVarSecondRows case_000353_rank.val case_000353_mask :=
  ⟨case_000353_support, case_000353_sourceAgrees, case_000353_rows⟩

private theorem case_000353_covered :
    RowPropertyParametricCovered case_000353_rank.val case_000353_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000353_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000354_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000354_mask : SignMask := ⟨31, by decide⟩
private def case_000354_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000354_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000354_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000354_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000354_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000354_secondLine : StrictLin2 := { a := (-33/170), b := (-33/170), c := (-8/5) }

private theorem case_000354_rankWord :
    rankPairWord? case_000354_word = some case_000354_rank := by
  decide

private theorem case_000354_unrank :
    unrankPairWord case_000354_rank = case_000354_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000354_word case_000354_rank).1
    case_000354_rankWord |>.symm

private theorem case_000354_seqChoice :
    translationChoiceSeq case_000354_word case_000354_mask = case_000354_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000354_seqAtRank :
    translationSeqAtRankMask case_000354_rank case_000354_mask = case_000354_seq := by
  rw [translationSeqAtRankMask, case_000354_unrank]
  exact case_000354_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000354_bAtRank :
    translationBAtRankMask case_000354_rank case_000354_mask = case_000354_b := by
  rw [translationBAtRankMask, case_000354_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000354_b, case_000354_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000354_firstLine_eq :
    case_000354_support.firstLine case_000354_seq case_000354_b = case_000354_firstLine := by
  norm_num [case_000354_firstLine, case_000354_support, case_000354_seq, case_000354_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000354_secondLine_eq :
    case_000354_support.secondLine case_000354_seq case_000354_b = case_000354_secondLine := by
  norm_num [case_000354_secondLine, case_000354_support, case_000354_seq, case_000354_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000354_sourceAgrees :
    SourceAgrees case_000354_support case_000354_rank.val case_000354_mask := by
  intro hlt
  have hrank : (⟨case_000354_rank.val, hlt⟩ : Fin numPairWords) = case_000354_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000354_rank.val, hlt⟩ case_000354_mask =
        case_000354_seq := by
    simpa [hrank] using case_000354_seqAtRank
  simp [SourceChecks, hseq, case_000354_support,
    checkTranslationConstraintSource, case_000354_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000354_rows :
    EqEqPosVarSecondRows case_000354_support case_000354_rank.val case_000354_mask := by
  intro hlt
  have hrank : (⟨case_000354_rank.val, hlt⟩ : Fin numPairWords) = case_000354_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000354_rank.val, hlt⟩ case_000354_mask =
        case_000354_seq := by
    simpa [hrank] using case_000354_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000354_rank.val, hlt⟩ case_000354_mask =
        case_000354_b := by
    simpa [hrank] using case_000354_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000354_support case_000354_rank.val hlt
          case_000354_mask = case_000354_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000354_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000354_support case_000354_rank.val hlt
          case_000354_mask = case_000354_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000354_secondLine_eq]
  have case_000354_fixedFirst :
      FixedRow (FirstLineAt case_000354_support case_000354_rank.val hlt case_000354_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000354_firstLine, FixedRow]
  have case_000354_rowSecond :
      EqEqPosRow (SecondLineAt case_000354_support case_000354_rank.val hlt case_000354_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000354_secondLine, EqEqPosRow]
  exact ⟨case_000354_fixedFirst, case_000354_rowSecond⟩

private theorem case_000354_existsRows :
    ExistsEqEqPosVarSecondRows case_000354_rank.val case_000354_mask :=
  ⟨case_000354_support, case_000354_sourceAgrees, case_000354_rows⟩

private theorem case_000354_covered :
    RowPropertyParametricCovered case_000354_rank.val case_000354_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000354_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000355_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000355_mask : SignMask := ⟨45, by decide⟩
private def case_000355_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000355_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000355_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000355_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000355_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000355_secondLine : StrictLin2 := { a := (-9/374), b := (9/374), c := (-1/17) }

private theorem case_000355_rankWord :
    rankPairWord? case_000355_word = some case_000355_rank := by
  decide

private theorem case_000355_unrank :
    unrankPairWord case_000355_rank = case_000355_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000355_word case_000355_rank).1
    case_000355_rankWord |>.symm

private theorem case_000355_seqChoice :
    translationChoiceSeq case_000355_word case_000355_mask = case_000355_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000355_seqAtRank :
    translationSeqAtRankMask case_000355_rank case_000355_mask = case_000355_seq := by
  rw [translationSeqAtRankMask, case_000355_unrank]
  exact case_000355_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000355_bAtRank :
    translationBAtRankMask case_000355_rank case_000355_mask = case_000355_b := by
  rw [translationBAtRankMask, case_000355_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000355_b, case_000355_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000355_firstLine_eq :
    case_000355_support.firstLine case_000355_seq case_000355_b = case_000355_firstLine := by
  norm_num [case_000355_firstLine, case_000355_support, case_000355_seq, case_000355_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000355_secondLine_eq :
    case_000355_support.secondLine case_000355_seq case_000355_b = case_000355_secondLine := by
  norm_num [case_000355_secondLine, case_000355_support, case_000355_seq, case_000355_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000355_sourceAgrees :
    SourceAgrees case_000355_support case_000355_rank.val case_000355_mask := by
  intro hlt
  have hrank : (⟨case_000355_rank.val, hlt⟩ : Fin numPairWords) = case_000355_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000355_rank.val, hlt⟩ case_000355_mask =
        case_000355_seq := by
    simpa [hrank] using case_000355_seqAtRank
  simp [SourceChecks, hseq, case_000355_support,
    checkTranslationConstraintSource, case_000355_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000355_rows :
    OppOneMinusVarSecondRows case_000355_support case_000355_rank.val case_000355_mask := by
  intro hlt
  have hrank : (⟨case_000355_rank.val, hlt⟩ : Fin numPairWords) = case_000355_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000355_rank.val, hlt⟩ case_000355_mask =
        case_000355_seq := by
    simpa [hrank] using case_000355_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000355_rank.val, hlt⟩ case_000355_mask =
        case_000355_b := by
    simpa [hrank] using case_000355_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000355_support case_000355_rank.val hlt
          case_000355_mask = case_000355_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000355_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000355_support case_000355_rank.val hlt
          case_000355_mask = case_000355_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000355_secondLine_eq]
  have case_000355_fixedFirst :
      FixedRow (FirstLineAt case_000355_support case_000355_rank.val hlt case_000355_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000355_firstLine, FixedRow]
  have case_000355_rowSecond :
      OppPosRow (SecondLineAt case_000355_support case_000355_rank.val hlt case_000355_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000355_secondLine, OppPosRow]
  exact ⟨case_000355_fixedFirst, case_000355_rowSecond⟩

private theorem case_000355_existsRows :
    ExistsOppOneMinusVarSecondRows case_000355_rank.val case_000355_mask :=
  ⟨case_000355_support, case_000355_sourceAgrees, case_000355_rows⟩

private theorem case_000355_covered :
    RowPropertyParametricCovered case_000355_rank.val case_000355_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000355_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000356_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000356_mask : SignMask := ⟨47, by decide⟩
private def case_000356_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000356_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000356_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000356_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000356_firstLine : StrictLin2 := { a := (-3/11), b := (3/11), c := (-25/33) }
private def case_000356_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000356_rankWord :
    rankPairWord? case_000356_word = some case_000356_rank := by
  decide

private theorem case_000356_unrank :
    unrankPairWord case_000356_rank = case_000356_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000356_word case_000356_rank).1
    case_000356_rankWord |>.symm

private theorem case_000356_seqChoice :
    translationChoiceSeq case_000356_word case_000356_mask = case_000356_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000356_seqAtRank :
    translationSeqAtRankMask case_000356_rank case_000356_mask = case_000356_seq := by
  rw [translationSeqAtRankMask, case_000356_unrank]
  exact case_000356_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000356_bAtRank :
    translationBAtRankMask case_000356_rank case_000356_mask = case_000356_b := by
  rw [translationBAtRankMask, case_000356_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000356_b, case_000356_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000356_firstLine_eq :
    case_000356_support.firstLine case_000356_seq case_000356_b = case_000356_firstLine := by
  norm_num [case_000356_firstLine, case_000356_support, case_000356_seq, case_000356_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000356_secondLine_eq :
    case_000356_support.secondLine case_000356_seq case_000356_b = case_000356_secondLine := by
  norm_num [case_000356_secondLine, case_000356_support, case_000356_seq, case_000356_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000356_sourceAgrees :
    SourceAgrees case_000356_support case_000356_rank.val case_000356_mask := by
  intro hlt
  have hrank : (⟨case_000356_rank.val, hlt⟩ : Fin numPairWords) = case_000356_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000356_rank.val, hlt⟩ case_000356_mask =
        case_000356_seq := by
    simpa [hrank] using case_000356_seqAtRank
  simp [SourceChecks, hseq, case_000356_support,
    checkTranslationConstraintSource, case_000356_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000356_rows :
    OppOneMinusVarFirstRows case_000356_support case_000356_rank.val case_000356_mask := by
  intro hlt
  have hrank : (⟨case_000356_rank.val, hlt⟩ : Fin numPairWords) = case_000356_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000356_rank.val, hlt⟩ case_000356_mask =
        case_000356_seq := by
    simpa [hrank] using case_000356_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000356_rank.val, hlt⟩ case_000356_mask =
        case_000356_b := by
    simpa [hrank] using case_000356_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000356_support case_000356_rank.val hlt
          case_000356_mask = case_000356_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000356_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000356_support case_000356_rank.val hlt
          case_000356_mask = case_000356_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000356_secondLine_eq]
  have case_000356_rowFirst :
      OppPosRow (FirstLineAt case_000356_support case_000356_rank.val hlt case_000356_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000356_firstLine, OppPosRow]
  have case_000356_fixedSecond :
      FixedRow (SecondLineAt case_000356_support case_000356_rank.val hlt case_000356_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000356_secondLine, FixedRow]
  exact ⟨case_000356_rowFirst, case_000356_fixedSecond⟩

private theorem case_000356_existsRows :
    ExistsOppOneMinusVarFirstRows case_000356_rank.val case_000356_mask :=
  ⟨case_000356_support, case_000356_sourceAgrees, case_000356_rows⟩

private theorem case_000356_covered :
    RowPropertyParametricCovered case_000356_rank.val case_000356_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000356_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000357_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000357_mask : SignMask := ⟨54, by decide⟩
private def case_000357_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000357_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000357_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000357_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000357_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000357_secondLine : StrictLin2 := { a := (-9/374), b := (9/374), c := (-1/11) }

private theorem case_000357_rankWord :
    rankPairWord? case_000357_word = some case_000357_rank := by
  decide

private theorem case_000357_unrank :
    unrankPairWord case_000357_rank = case_000357_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000357_word case_000357_rank).1
    case_000357_rankWord |>.symm

private theorem case_000357_seqChoice :
    translationChoiceSeq case_000357_word case_000357_mask = case_000357_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000357_seqAtRank :
    translationSeqAtRankMask case_000357_rank case_000357_mask = case_000357_seq := by
  rw [translationSeqAtRankMask, case_000357_unrank]
  exact case_000357_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000357_bAtRank :
    translationBAtRankMask case_000357_rank case_000357_mask = case_000357_b := by
  rw [translationBAtRankMask, case_000357_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000357_b, case_000357_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000357_firstLine_eq :
    case_000357_support.firstLine case_000357_seq case_000357_b = case_000357_firstLine := by
  norm_num [case_000357_firstLine, case_000357_support, case_000357_seq, case_000357_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000357_secondLine_eq :
    case_000357_support.secondLine case_000357_seq case_000357_b = case_000357_secondLine := by
  norm_num [case_000357_secondLine, case_000357_support, case_000357_seq, case_000357_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000357_sourceAgrees :
    SourceAgrees case_000357_support case_000357_rank.val case_000357_mask := by
  intro hlt
  have hrank : (⟨case_000357_rank.val, hlt⟩ : Fin numPairWords) = case_000357_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000357_rank.val, hlt⟩ case_000357_mask =
        case_000357_seq := by
    simpa [hrank] using case_000357_seqAtRank
  simp [SourceChecks, hseq, case_000357_support,
    checkTranslationConstraintSource, case_000357_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000357_rows :
    OppOneMinusVarSecondRows case_000357_support case_000357_rank.val case_000357_mask := by
  intro hlt
  have hrank : (⟨case_000357_rank.val, hlt⟩ : Fin numPairWords) = case_000357_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000357_rank.val, hlt⟩ case_000357_mask =
        case_000357_seq := by
    simpa [hrank] using case_000357_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000357_rank.val, hlt⟩ case_000357_mask =
        case_000357_b := by
    simpa [hrank] using case_000357_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000357_support case_000357_rank.val hlt
          case_000357_mask = case_000357_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000357_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000357_support case_000357_rank.val hlt
          case_000357_mask = case_000357_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000357_secondLine_eq]
  have case_000357_fixedFirst :
      FixedRow (FirstLineAt case_000357_support case_000357_rank.val hlt case_000357_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000357_firstLine, FixedRow]
  have case_000357_rowSecond :
      OppPosRow (SecondLineAt case_000357_support case_000357_rank.val hlt case_000357_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000357_secondLine, OppPosRow]
  exact ⟨case_000357_fixedFirst, case_000357_rowSecond⟩

private theorem case_000357_existsRows :
    ExistsOppOneMinusVarSecondRows case_000357_rank.val case_000357_mask :=
  ⟨case_000357_support, case_000357_sourceAgrees, case_000357_rows⟩

private theorem case_000357_covered :
    RowPropertyParametricCovered case_000357_rank.val case_000357_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000357_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000358_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000358_mask : SignMask := ⟨55, by decide⟩
private def case_000358_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000358_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000358_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000358_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000358_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000358_secondLine : StrictLin2 := { a := (-9/110), b := (9/110), c := (-4/11) }

private theorem case_000358_rankWord :
    rankPairWord? case_000358_word = some case_000358_rank := by
  decide

private theorem case_000358_unrank :
    unrankPairWord case_000358_rank = case_000358_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000358_word case_000358_rank).1
    case_000358_rankWord |>.symm

private theorem case_000358_seqChoice :
    translationChoiceSeq case_000358_word case_000358_mask = case_000358_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000358_seqAtRank :
    translationSeqAtRankMask case_000358_rank case_000358_mask = case_000358_seq := by
  rw [translationSeqAtRankMask, case_000358_unrank]
  exact case_000358_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000358_bAtRank :
    translationBAtRankMask case_000358_rank case_000358_mask = case_000358_b := by
  rw [translationBAtRankMask, case_000358_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000358_b, case_000358_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000358_firstLine_eq :
    case_000358_support.firstLine case_000358_seq case_000358_b = case_000358_firstLine := by
  norm_num [case_000358_firstLine, case_000358_support, case_000358_seq, case_000358_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000358_secondLine_eq :
    case_000358_support.secondLine case_000358_seq case_000358_b = case_000358_secondLine := by
  norm_num [case_000358_secondLine, case_000358_support, case_000358_seq, case_000358_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000358_sourceAgrees :
    SourceAgrees case_000358_support case_000358_rank.val case_000358_mask := by
  intro hlt
  have hrank : (⟨case_000358_rank.val, hlt⟩ : Fin numPairWords) = case_000358_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000358_rank.val, hlt⟩ case_000358_mask =
        case_000358_seq := by
    simpa [hrank] using case_000358_seqAtRank
  simp [SourceChecks, hseq, case_000358_support,
    checkTranslationConstraintSource, case_000358_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000358_rows :
    OppOneMinusVarSecondRows case_000358_support case_000358_rank.val case_000358_mask := by
  intro hlt
  have hrank : (⟨case_000358_rank.val, hlt⟩ : Fin numPairWords) = case_000358_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000358_rank.val, hlt⟩ case_000358_mask =
        case_000358_seq := by
    simpa [hrank] using case_000358_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000358_rank.val, hlt⟩ case_000358_mask =
        case_000358_b := by
    simpa [hrank] using case_000358_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000358_support case_000358_rank.val hlt
          case_000358_mask = case_000358_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000358_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000358_support case_000358_rank.val hlt
          case_000358_mask = case_000358_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000358_secondLine_eq]
  have case_000358_fixedFirst :
      FixedRow (FirstLineAt case_000358_support case_000358_rank.val hlt case_000358_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000358_firstLine, FixedRow]
  have case_000358_rowSecond :
      OppPosRow (SecondLineAt case_000358_support case_000358_rank.val hlt case_000358_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000358_secondLine, OppPosRow]
  exact ⟨case_000358_fixedFirst, case_000358_rowSecond⟩

private theorem case_000358_existsRows :
    ExistsOppOneMinusVarSecondRows case_000358_rank.val case_000358_mask :=
  ⟨case_000358_support, case_000358_sourceAgrees, case_000358_rows⟩

private theorem case_000358_covered :
    RowPropertyParametricCovered case_000358_rank.val case_000358_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000358_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000359_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000359_mask : SignMask := ⟨63, by decide⟩
private def case_000359_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000359_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000359_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000359_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000359_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000359_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000359_rankWord :
    rankPairWord? case_000359_word = some case_000359_rank := by
  decide

private theorem case_000359_unrank :
    unrankPairWord case_000359_rank = case_000359_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000359_word case_000359_rank).1
    case_000359_rankWord |>.symm

private theorem case_000359_seqChoice :
    translationChoiceSeq case_000359_word case_000359_mask = case_000359_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000359_seqAtRank :
    translationSeqAtRankMask case_000359_rank case_000359_mask = case_000359_seq := by
  rw [translationSeqAtRankMask, case_000359_unrank]
  exact case_000359_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000359_bAtRank :
    translationBAtRankMask case_000359_rank case_000359_mask = case_000359_b := by
  rw [translationBAtRankMask, case_000359_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000359_b, case_000359_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000359_firstLine_eq :
    case_000359_support.firstLine case_000359_seq case_000359_b = case_000359_firstLine := by
  norm_num [case_000359_firstLine, case_000359_support, case_000359_seq, case_000359_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000359_secondLine_eq :
    case_000359_support.secondLine case_000359_seq case_000359_b = case_000359_secondLine := by
  norm_num [case_000359_secondLine, case_000359_support, case_000359_seq, case_000359_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000359_sourceAgrees :
    SourceAgrees case_000359_support case_000359_rank.val case_000359_mask := by
  intro hlt
  have hrank : (⟨case_000359_rank.val, hlt⟩ : Fin numPairWords) = case_000359_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000359_rank.val, hlt⟩ case_000359_mask =
        case_000359_seq := by
    simpa [hrank] using case_000359_seqAtRank
  simp [SourceChecks, hseq, case_000359_support,
    checkTranslationConstraintSource, case_000359_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000359_rows :
    EqEqPosVarFirstRows case_000359_support case_000359_rank.val case_000359_mask := by
  intro hlt
  have hrank : (⟨case_000359_rank.val, hlt⟩ : Fin numPairWords) = case_000359_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000359_rank.val, hlt⟩ case_000359_mask =
        case_000359_seq := by
    simpa [hrank] using case_000359_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000359_rank.val, hlt⟩ case_000359_mask =
        case_000359_b := by
    simpa [hrank] using case_000359_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000359_support case_000359_rank.val hlt
          case_000359_mask = case_000359_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000359_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000359_support case_000359_rank.val hlt
          case_000359_mask = case_000359_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000359_secondLine_eq]
  have case_000359_rowFirst :
      EqEqPosRow (FirstLineAt case_000359_support case_000359_rank.val hlt case_000359_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000359_firstLine, EqEqPosRow]
  have case_000359_fixedSecond :
      FixedRow (SecondLineAt case_000359_support case_000359_rank.val hlt case_000359_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000359_secondLine, FixedRow]
  exact ⟨case_000359_rowFirst, case_000359_fixedSecond⟩

private theorem case_000359_existsRows :
    ExistsEqEqPosVarFirstRows case_000359_rank.val case_000359_mask :=
  ⟨case_000359_support, case_000359_sourceAgrees, case_000359_rows⟩

private theorem case_000359_covered :
    RowPropertyParametricCovered case_000359_rank.val case_000359_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000359_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000360_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000360_mask : SignMask := ⟨8, by decide⟩
private def case_000360_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000360_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000360_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000360_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-148/9) }
private def case_000360_firstLine : StrictLin2 := { a := -1, b := -1, c := -19 }
private def case_000360_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000360_rankWord :
    rankPairWord? case_000360_word = some case_000360_rank := by
  decide

private theorem case_000360_unrank :
    unrankPairWord case_000360_rank = case_000360_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000360_word case_000360_rank).1
    case_000360_rankWord |>.symm

private theorem case_000360_seqChoice :
    translationChoiceSeq case_000360_word case_000360_mask = case_000360_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000360_seqAtRank :
    translationSeqAtRankMask case_000360_rank case_000360_mask = case_000360_seq := by
  rw [translationSeqAtRankMask, case_000360_unrank]
  exact case_000360_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000360_bAtRank :
    translationBAtRankMask case_000360_rank case_000360_mask = case_000360_b := by
  rw [translationBAtRankMask, case_000360_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000360_b, case_000360_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000360_firstLine_eq :
    case_000360_support.firstLine case_000360_seq case_000360_b = case_000360_firstLine := by
  norm_num [case_000360_firstLine, case_000360_support, case_000360_seq, case_000360_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000360_secondLine_eq :
    case_000360_support.secondLine case_000360_seq case_000360_b = case_000360_secondLine := by
  norm_num [case_000360_secondLine, case_000360_support, case_000360_seq, case_000360_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000360_sourceAgrees :
    SourceAgrees case_000360_support case_000360_rank.val case_000360_mask := by
  intro hlt
  have hrank : (⟨case_000360_rank.val, hlt⟩ : Fin numPairWords) = case_000360_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000360_rank.val, hlt⟩ case_000360_mask =
        case_000360_seq := by
    simpa [hrank] using case_000360_seqAtRank
  simp [SourceChecks, hseq, case_000360_support,
    checkTranslationConstraintSource, case_000360_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000360_rows :
    EqEqPosVarFirstRows case_000360_support case_000360_rank.val case_000360_mask := by
  intro hlt
  have hrank : (⟨case_000360_rank.val, hlt⟩ : Fin numPairWords) = case_000360_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000360_rank.val, hlt⟩ case_000360_mask =
        case_000360_seq := by
    simpa [hrank] using case_000360_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000360_rank.val, hlt⟩ case_000360_mask =
        case_000360_b := by
    simpa [hrank] using case_000360_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000360_support case_000360_rank.val hlt
          case_000360_mask = case_000360_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000360_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000360_support case_000360_rank.val hlt
          case_000360_mask = case_000360_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000360_secondLine_eq]
  have case_000360_rowFirst :
      EqEqPosRow (FirstLineAt case_000360_support case_000360_rank.val hlt case_000360_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000360_firstLine, EqEqPosRow]
  have case_000360_fixedSecond :
      FixedRow (SecondLineAt case_000360_support case_000360_rank.val hlt case_000360_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000360_secondLine, FixedRow]
  exact ⟨case_000360_rowFirst, case_000360_fixedSecond⟩

private theorem case_000360_existsRows :
    ExistsEqEqPosVarFirstRows case_000360_rank.val case_000360_mask :=
  ⟨case_000360_support, case_000360_sourceAgrees, case_000360_rows⟩

private theorem case_000360_covered :
    RowPropertyParametricCovered case_000360_rank.val case_000360_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000360_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000361_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000361_mask : SignMask := ⟨9, by decide⟩
private def case_000361_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000361_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000361_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000361_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-148/9) }
private def case_000361_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/5) }
private def case_000361_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000361_rankWord :
    rankPairWord? case_000361_word = some case_000361_rank := by
  decide

private theorem case_000361_unrank :
    unrankPairWord case_000361_rank = case_000361_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000361_word case_000361_rank).1
    case_000361_rankWord |>.symm

private theorem case_000361_seqChoice :
    translationChoiceSeq case_000361_word case_000361_mask = case_000361_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000361_seqAtRank :
    translationSeqAtRankMask case_000361_rank case_000361_mask = case_000361_seq := by
  rw [translationSeqAtRankMask, case_000361_unrank]
  exact case_000361_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000361_bAtRank :
    translationBAtRankMask case_000361_rank case_000361_mask = case_000361_b := by
  rw [translationBAtRankMask, case_000361_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000361_b, case_000361_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000361_firstLine_eq :
    case_000361_support.firstLine case_000361_seq case_000361_b = case_000361_firstLine := by
  norm_num [case_000361_firstLine, case_000361_support, case_000361_seq, case_000361_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000361_secondLine_eq :
    case_000361_support.secondLine case_000361_seq case_000361_b = case_000361_secondLine := by
  norm_num [case_000361_secondLine, case_000361_support, case_000361_seq, case_000361_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000361_sourceAgrees :
    SourceAgrees case_000361_support case_000361_rank.val case_000361_mask := by
  intro hlt
  have hrank : (⟨case_000361_rank.val, hlt⟩ : Fin numPairWords) = case_000361_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000361_rank.val, hlt⟩ case_000361_mask =
        case_000361_seq := by
    simpa [hrank] using case_000361_seqAtRank
  simp [SourceChecks, hseq, case_000361_support,
    checkTranslationConstraintSource, case_000361_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000361_rows :
    EqEqPosVarFirstRows case_000361_support case_000361_rank.val case_000361_mask := by
  intro hlt
  have hrank : (⟨case_000361_rank.val, hlt⟩ : Fin numPairWords) = case_000361_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000361_rank.val, hlt⟩ case_000361_mask =
        case_000361_seq := by
    simpa [hrank] using case_000361_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000361_rank.val, hlt⟩ case_000361_mask =
        case_000361_b := by
    simpa [hrank] using case_000361_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000361_support case_000361_rank.val hlt
          case_000361_mask = case_000361_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000361_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000361_support case_000361_rank.val hlt
          case_000361_mask = case_000361_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000361_secondLine_eq]
  have case_000361_rowFirst :
      EqEqPosRow (FirstLineAt case_000361_support case_000361_rank.val hlt case_000361_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000361_firstLine, EqEqPosRow]
  have case_000361_fixedSecond :
      FixedRow (SecondLineAt case_000361_support case_000361_rank.val hlt case_000361_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000361_secondLine, FixedRow]
  exact ⟨case_000361_rowFirst, case_000361_fixedSecond⟩

private theorem case_000361_existsRows :
    ExistsEqEqPosVarFirstRows case_000361_rank.val case_000361_mask :=
  ⟨case_000361_support, case_000361_sourceAgrees, case_000361_rows⟩

private theorem case_000361_covered :
    RowPropertyParametricCovered case_000361_rank.val case_000361_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000361_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000362_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000362_mask : SignMask := ⟨13, by decide⟩
private def case_000362_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000362_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000362_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000362_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (-100/9) }
private def case_000362_firstLine : StrictLin2 := { a := (-17/9), b := (-17/9), c := (-49/9) }
private def case_000362_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000362_rankWord :
    rankPairWord? case_000362_word = some case_000362_rank := by
  decide

private theorem case_000362_unrank :
    unrankPairWord case_000362_rank = case_000362_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000362_word case_000362_rank).1
    case_000362_rankWord |>.symm

private theorem case_000362_seqChoice :
    translationChoiceSeq case_000362_word case_000362_mask = case_000362_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000362_seqAtRank :
    translationSeqAtRankMask case_000362_rank case_000362_mask = case_000362_seq := by
  rw [translationSeqAtRankMask, case_000362_unrank]
  exact case_000362_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000362_bAtRank :
    translationBAtRankMask case_000362_rank case_000362_mask = case_000362_b := by
  rw [translationBAtRankMask, case_000362_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000362_b, case_000362_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000362_firstLine_eq :
    case_000362_support.firstLine case_000362_seq case_000362_b = case_000362_firstLine := by
  norm_num [case_000362_firstLine, case_000362_support, case_000362_seq, case_000362_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000362_secondLine_eq :
    case_000362_support.secondLine case_000362_seq case_000362_b = case_000362_secondLine := by
  norm_num [case_000362_secondLine, case_000362_support, case_000362_seq, case_000362_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000362_sourceAgrees :
    SourceAgrees case_000362_support case_000362_rank.val case_000362_mask := by
  intro hlt
  have hrank : (⟨case_000362_rank.val, hlt⟩ : Fin numPairWords) = case_000362_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000362_rank.val, hlt⟩ case_000362_mask =
        case_000362_seq := by
    simpa [hrank] using case_000362_seqAtRank
  simp [SourceChecks, hseq, case_000362_support,
    checkTranslationConstraintSource, case_000362_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000362_rows :
    EqEqPosVarFirstRows case_000362_support case_000362_rank.val case_000362_mask := by
  intro hlt
  have hrank : (⟨case_000362_rank.val, hlt⟩ : Fin numPairWords) = case_000362_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000362_rank.val, hlt⟩ case_000362_mask =
        case_000362_seq := by
    simpa [hrank] using case_000362_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000362_rank.val, hlt⟩ case_000362_mask =
        case_000362_b := by
    simpa [hrank] using case_000362_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000362_support case_000362_rank.val hlt
          case_000362_mask = case_000362_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000362_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000362_support case_000362_rank.val hlt
          case_000362_mask = case_000362_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000362_secondLine_eq]
  have case_000362_rowFirst :
      EqEqPosRow (FirstLineAt case_000362_support case_000362_rank.val hlt case_000362_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000362_firstLine, EqEqPosRow]
  have case_000362_fixedSecond :
      FixedRow (SecondLineAt case_000362_support case_000362_rank.val hlt case_000362_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000362_secondLine, FixedRow]
  exact ⟨case_000362_rowFirst, case_000362_fixedSecond⟩

private theorem case_000362_existsRows :
    ExistsEqEqPosVarFirstRows case_000362_rank.val case_000362_mask :=
  ⟨case_000362_support, case_000362_sourceAgrees, case_000362_rows⟩

private theorem case_000362_covered :
    RowPropertyParametricCovered case_000362_rank.val case_000362_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000362_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000363_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000363_mask : SignMask := ⟨18, by decide⟩
private def case_000363_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000363_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000363_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000363_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000363_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000363_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000363_rankWord :
    rankPairWord? case_000363_word = some case_000363_rank := by
  decide

private theorem case_000363_unrank :
    unrankPairWord case_000363_rank = case_000363_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000363_word case_000363_rank).1
    case_000363_rankWord |>.symm

private theorem case_000363_seqChoice :
    translationChoiceSeq case_000363_word case_000363_mask = case_000363_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000363_seqAtRank :
    translationSeqAtRankMask case_000363_rank case_000363_mask = case_000363_seq := by
  rw [translationSeqAtRankMask, case_000363_unrank]
  exact case_000363_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000363_bAtRank :
    translationBAtRankMask case_000363_rank case_000363_mask = case_000363_b := by
  rw [translationBAtRankMask, case_000363_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000363_b, case_000363_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000363_firstLine_eq :
    case_000363_support.firstLine case_000363_seq case_000363_b = case_000363_firstLine := by
  norm_num [case_000363_firstLine, case_000363_support, case_000363_seq, case_000363_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000363_secondLine_eq :
    case_000363_support.secondLine case_000363_seq case_000363_b = case_000363_secondLine := by
  norm_num [case_000363_secondLine, case_000363_support, case_000363_seq, case_000363_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000363_sourceAgrees :
    SourceAgrees case_000363_support case_000363_rank.val case_000363_mask := by
  intro hlt
  have hrank : (⟨case_000363_rank.val, hlt⟩ : Fin numPairWords) = case_000363_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000363_rank.val, hlt⟩ case_000363_mask =
        case_000363_seq := by
    simpa [hrank] using case_000363_seqAtRank
  simp [SourceChecks, hseq, case_000363_support,
    checkTranslationConstraintSource, case_000363_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000363_rows :
    EqEqPosVarFirstRows case_000363_support case_000363_rank.val case_000363_mask := by
  intro hlt
  have hrank : (⟨case_000363_rank.val, hlt⟩ : Fin numPairWords) = case_000363_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000363_rank.val, hlt⟩ case_000363_mask =
        case_000363_seq := by
    simpa [hrank] using case_000363_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000363_rank.val, hlt⟩ case_000363_mask =
        case_000363_b := by
    simpa [hrank] using case_000363_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000363_support case_000363_rank.val hlt
          case_000363_mask = case_000363_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000363_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000363_support case_000363_rank.val hlt
          case_000363_mask = case_000363_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000363_secondLine_eq]
  have case_000363_rowFirst :
      EqEqPosRow (FirstLineAt case_000363_support case_000363_rank.val hlt case_000363_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000363_firstLine, EqEqPosRow]
  have case_000363_fixedSecond :
      FixedRow (SecondLineAt case_000363_support case_000363_rank.val hlt case_000363_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000363_secondLine, FixedRow]
  exact ⟨case_000363_rowFirst, case_000363_fixedSecond⟩

private theorem case_000363_existsRows :
    ExistsEqEqPosVarFirstRows case_000363_rank.val case_000363_mask :=
  ⟨case_000363_support, case_000363_sourceAgrees, case_000363_rows⟩

private theorem case_000363_covered :
    RowPropertyParametricCovered case_000363_rank.val case_000363_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000363_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000364_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000364_mask : SignMask := ⟨22, by decide⟩
private def case_000364_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000364_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000364_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000364_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000364_firstLine : StrictLin2 := { a := (-25/33), b := (-25/33), c := (-101/33) }
private def case_000364_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000364_rankWord :
    rankPairWord? case_000364_word = some case_000364_rank := by
  decide

private theorem case_000364_unrank :
    unrankPairWord case_000364_rank = case_000364_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000364_word case_000364_rank).1
    case_000364_rankWord |>.symm

private theorem case_000364_seqChoice :
    translationChoiceSeq case_000364_word case_000364_mask = case_000364_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000364_seqAtRank :
    translationSeqAtRankMask case_000364_rank case_000364_mask = case_000364_seq := by
  rw [translationSeqAtRankMask, case_000364_unrank]
  exact case_000364_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000364_bAtRank :
    translationBAtRankMask case_000364_rank case_000364_mask = case_000364_b := by
  rw [translationBAtRankMask, case_000364_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000364_b, case_000364_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000364_firstLine_eq :
    case_000364_support.firstLine case_000364_seq case_000364_b = case_000364_firstLine := by
  norm_num [case_000364_firstLine, case_000364_support, case_000364_seq, case_000364_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000364_secondLine_eq :
    case_000364_support.secondLine case_000364_seq case_000364_b = case_000364_secondLine := by
  norm_num [case_000364_secondLine, case_000364_support, case_000364_seq, case_000364_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000364_sourceAgrees :
    SourceAgrees case_000364_support case_000364_rank.val case_000364_mask := by
  intro hlt
  have hrank : (⟨case_000364_rank.val, hlt⟩ : Fin numPairWords) = case_000364_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000364_rank.val, hlt⟩ case_000364_mask =
        case_000364_seq := by
    simpa [hrank] using case_000364_seqAtRank
  simp [SourceChecks, hseq, case_000364_support,
    checkTranslationConstraintSource, case_000364_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000364_rows :
    EqEqPosVarFirstRows case_000364_support case_000364_rank.val case_000364_mask := by
  intro hlt
  have hrank : (⟨case_000364_rank.val, hlt⟩ : Fin numPairWords) = case_000364_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000364_rank.val, hlt⟩ case_000364_mask =
        case_000364_seq := by
    simpa [hrank] using case_000364_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000364_rank.val, hlt⟩ case_000364_mask =
        case_000364_b := by
    simpa [hrank] using case_000364_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000364_support case_000364_rank.val hlt
          case_000364_mask = case_000364_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000364_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000364_support case_000364_rank.val hlt
          case_000364_mask = case_000364_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000364_secondLine_eq]
  have case_000364_rowFirst :
      EqEqPosRow (FirstLineAt case_000364_support case_000364_rank.val hlt case_000364_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000364_firstLine, EqEqPosRow]
  have case_000364_fixedSecond :
      FixedRow (SecondLineAt case_000364_support case_000364_rank.val hlt case_000364_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000364_secondLine, FixedRow]
  exact ⟨case_000364_rowFirst, case_000364_fixedSecond⟩

private theorem case_000364_existsRows :
    ExistsEqEqPosVarFirstRows case_000364_rank.val case_000364_mask :=
  ⟨case_000364_support, case_000364_sourceAgrees, case_000364_rows⟩

private theorem case_000364_covered :
    RowPropertyParametricCovered case_000364_rank.val case_000364_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000364_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000365_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000365_mask : SignMask := ⟨24, by decide⟩
private def case_000365_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000365_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000365_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000365_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000365_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000365_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000365_rankWord :
    rankPairWord? case_000365_word = some case_000365_rank := by
  decide

private theorem case_000365_unrank :
    unrankPairWord case_000365_rank = case_000365_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000365_word case_000365_rank).1
    case_000365_rankWord |>.symm

private theorem case_000365_seqChoice :
    translationChoiceSeq case_000365_word case_000365_mask = case_000365_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000365_seqAtRank :
    translationSeqAtRankMask case_000365_rank case_000365_mask = case_000365_seq := by
  rw [translationSeqAtRankMask, case_000365_unrank]
  exact case_000365_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000365_bAtRank :
    translationBAtRankMask case_000365_rank case_000365_mask = case_000365_b := by
  rw [translationBAtRankMask, case_000365_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000365_b, case_000365_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000365_firstLine_eq :
    case_000365_support.firstLine case_000365_seq case_000365_b = case_000365_firstLine := by
  norm_num [case_000365_firstLine, case_000365_support, case_000365_seq, case_000365_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000365_secondLine_eq :
    case_000365_support.secondLine case_000365_seq case_000365_b = case_000365_secondLine := by
  norm_num [case_000365_secondLine, case_000365_support, case_000365_seq, case_000365_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000365_sourceAgrees :
    SourceAgrees case_000365_support case_000365_rank.val case_000365_mask := by
  intro hlt
  have hrank : (⟨case_000365_rank.val, hlt⟩ : Fin numPairWords) = case_000365_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000365_rank.val, hlt⟩ case_000365_mask =
        case_000365_seq := by
    simpa [hrank] using case_000365_seqAtRank
  simp [SourceChecks, hseq, case_000365_support,
    checkTranslationConstraintSource, case_000365_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000365_rows :
    EqEqPosVarFirstRows case_000365_support case_000365_rank.val case_000365_mask := by
  intro hlt
  have hrank : (⟨case_000365_rank.val, hlt⟩ : Fin numPairWords) = case_000365_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000365_rank.val, hlt⟩ case_000365_mask =
        case_000365_seq := by
    simpa [hrank] using case_000365_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000365_rank.val, hlt⟩ case_000365_mask =
        case_000365_b := by
    simpa [hrank] using case_000365_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000365_support case_000365_rank.val hlt
          case_000365_mask = case_000365_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000365_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000365_support case_000365_rank.val hlt
          case_000365_mask = case_000365_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000365_secondLine_eq]
  have case_000365_rowFirst :
      EqEqPosRow (FirstLineAt case_000365_support case_000365_rank.val hlt case_000365_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000365_firstLine, EqEqPosRow]
  have case_000365_fixedSecond :
      FixedRow (SecondLineAt case_000365_support case_000365_rank.val hlt case_000365_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000365_secondLine, FixedRow]
  exact ⟨case_000365_rowFirst, case_000365_fixedSecond⟩

private theorem case_000365_existsRows :
    ExistsEqEqPosVarFirstRows case_000365_rank.val case_000365_mask :=
  ⟨case_000365_support, case_000365_sourceAgrees, case_000365_rows⟩

private theorem case_000365_covered :
    RowPropertyParametricCovered case_000365_rank.val case_000365_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000365_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000366_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000366_mask : SignMask := ⟨28, by decide⟩
private def case_000366_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000366_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000366_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000366_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000366_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000366_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000366_rankWord :
    rankPairWord? case_000366_word = some case_000366_rank := by
  decide

private theorem case_000366_unrank :
    unrankPairWord case_000366_rank = case_000366_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000366_word case_000366_rank).1
    case_000366_rankWord |>.symm

private theorem case_000366_seqChoice :
    translationChoiceSeq case_000366_word case_000366_mask = case_000366_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000366_seqAtRank :
    translationSeqAtRankMask case_000366_rank case_000366_mask = case_000366_seq := by
  rw [translationSeqAtRankMask, case_000366_unrank]
  exact case_000366_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000366_bAtRank :
    translationBAtRankMask case_000366_rank case_000366_mask = case_000366_b := by
  rw [translationBAtRankMask, case_000366_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000366_b, case_000366_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000366_firstLine_eq :
    case_000366_support.firstLine case_000366_seq case_000366_b = case_000366_firstLine := by
  norm_num [case_000366_firstLine, case_000366_support, case_000366_seq, case_000366_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000366_secondLine_eq :
    case_000366_support.secondLine case_000366_seq case_000366_b = case_000366_secondLine := by
  norm_num [case_000366_secondLine, case_000366_support, case_000366_seq, case_000366_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000366_sourceAgrees :
    SourceAgrees case_000366_support case_000366_rank.val case_000366_mask := by
  intro hlt
  have hrank : (⟨case_000366_rank.val, hlt⟩ : Fin numPairWords) = case_000366_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000366_rank.val, hlt⟩ case_000366_mask =
        case_000366_seq := by
    simpa [hrank] using case_000366_seqAtRank
  simp [SourceChecks, hseq, case_000366_support,
    checkTranslationConstraintSource, case_000366_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000366_rows :
    OppOneMinusVarFirstRows case_000366_support case_000366_rank.val case_000366_mask := by
  intro hlt
  have hrank : (⟨case_000366_rank.val, hlt⟩ : Fin numPairWords) = case_000366_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000366_rank.val, hlt⟩ case_000366_mask =
        case_000366_seq := by
    simpa [hrank] using case_000366_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000366_rank.val, hlt⟩ case_000366_mask =
        case_000366_b := by
    simpa [hrank] using case_000366_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000366_support case_000366_rank.val hlt
          case_000366_mask = case_000366_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000366_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000366_support case_000366_rank.val hlt
          case_000366_mask = case_000366_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000366_secondLine_eq]
  have case_000366_rowFirst :
      OppPosRow (FirstLineAt case_000366_support case_000366_rank.val hlt case_000366_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000366_firstLine, OppPosRow]
  have case_000366_fixedSecond :
      FixedRow (SecondLineAt case_000366_support case_000366_rank.val hlt case_000366_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000366_secondLine, FixedRow]
  exact ⟨case_000366_rowFirst, case_000366_fixedSecond⟩

private theorem case_000366_existsRows :
    ExistsOppOneMinusVarFirstRows case_000366_rank.val case_000366_mask :=
  ⟨case_000366_support, case_000366_sourceAgrees, case_000366_rows⟩

private theorem case_000366_covered :
    RowPropertyParametricCovered case_000366_rank.val case_000366_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000366_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000367_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000367_mask : SignMask := ⟨29, by decide⟩
private def case_000367_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000367_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000367_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000367_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-52/9) }
private def case_000367_firstLine : StrictLin2 := { a := (-29/21), b := (-29/21), c := (-61/21) }
private def case_000367_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000367_rankWord :
    rankPairWord? case_000367_word = some case_000367_rank := by
  decide

private theorem case_000367_unrank :
    unrankPairWord case_000367_rank = case_000367_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000367_word case_000367_rank).1
    case_000367_rankWord |>.symm

private theorem case_000367_seqChoice :
    translationChoiceSeq case_000367_word case_000367_mask = case_000367_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000367_seqAtRank :
    translationSeqAtRankMask case_000367_rank case_000367_mask = case_000367_seq := by
  rw [translationSeqAtRankMask, case_000367_unrank]
  exact case_000367_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000367_bAtRank :
    translationBAtRankMask case_000367_rank case_000367_mask = case_000367_b := by
  rw [translationBAtRankMask, case_000367_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000367_b, case_000367_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000367_firstLine_eq :
    case_000367_support.firstLine case_000367_seq case_000367_b = case_000367_firstLine := by
  norm_num [case_000367_firstLine, case_000367_support, case_000367_seq, case_000367_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000367_secondLine_eq :
    case_000367_support.secondLine case_000367_seq case_000367_b = case_000367_secondLine := by
  norm_num [case_000367_secondLine, case_000367_support, case_000367_seq, case_000367_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000367_sourceAgrees :
    SourceAgrees case_000367_support case_000367_rank.val case_000367_mask := by
  intro hlt
  have hrank : (⟨case_000367_rank.val, hlt⟩ : Fin numPairWords) = case_000367_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000367_rank.val, hlt⟩ case_000367_mask =
        case_000367_seq := by
    simpa [hrank] using case_000367_seqAtRank
  simp [SourceChecks, hseq, case_000367_support,
    checkTranslationConstraintSource, case_000367_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000367_rows :
    EqEqPosVarFirstRows case_000367_support case_000367_rank.val case_000367_mask := by
  intro hlt
  have hrank : (⟨case_000367_rank.val, hlt⟩ : Fin numPairWords) = case_000367_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000367_rank.val, hlt⟩ case_000367_mask =
        case_000367_seq := by
    simpa [hrank] using case_000367_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000367_rank.val, hlt⟩ case_000367_mask =
        case_000367_b := by
    simpa [hrank] using case_000367_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000367_support case_000367_rank.val hlt
          case_000367_mask = case_000367_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000367_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000367_support case_000367_rank.val hlt
          case_000367_mask = case_000367_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000367_secondLine_eq]
  have case_000367_rowFirst :
      EqEqPosRow (FirstLineAt case_000367_support case_000367_rank.val hlt case_000367_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000367_firstLine, EqEqPosRow]
  have case_000367_fixedSecond :
      FixedRow (SecondLineAt case_000367_support case_000367_rank.val hlt case_000367_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000367_secondLine, FixedRow]
  exact ⟨case_000367_rowFirst, case_000367_fixedSecond⟩

private theorem case_000367_existsRows :
    ExistsEqEqPosVarFirstRows case_000367_rank.val case_000367_mask :=
  ⟨case_000367_support, case_000367_sourceAgrees, case_000367_rows⟩

private theorem case_000367_covered :
    RowPropertyParametricCovered case_000367_rank.val case_000367_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000367_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000368_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000368_mask : SignMask := ⟨31, by decide⟩
private def case_000368_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000368_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000368_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000368_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000368_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000368_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000368_rankWord :
    rankPairWord? case_000368_word = some case_000368_rank := by
  decide

private theorem case_000368_unrank :
    unrankPairWord case_000368_rank = case_000368_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000368_word case_000368_rank).1
    case_000368_rankWord |>.symm

private theorem case_000368_seqChoice :
    translationChoiceSeq case_000368_word case_000368_mask = case_000368_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000368_seqAtRank :
    translationSeqAtRankMask case_000368_rank case_000368_mask = case_000368_seq := by
  rw [translationSeqAtRankMask, case_000368_unrank]
  exact case_000368_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000368_bAtRank :
    translationBAtRankMask case_000368_rank case_000368_mask = case_000368_b := by
  rw [translationBAtRankMask, case_000368_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000368_b, case_000368_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000368_firstLine_eq :
    case_000368_support.firstLine case_000368_seq case_000368_b = case_000368_firstLine := by
  norm_num [case_000368_firstLine, case_000368_support, case_000368_seq, case_000368_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000368_secondLine_eq :
    case_000368_support.secondLine case_000368_seq case_000368_b = case_000368_secondLine := by
  norm_num [case_000368_secondLine, case_000368_support, case_000368_seq, case_000368_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000368_sourceAgrees :
    SourceAgrees case_000368_support case_000368_rank.val case_000368_mask := by
  intro hlt
  have hrank : (⟨case_000368_rank.val, hlt⟩ : Fin numPairWords) = case_000368_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000368_rank.val, hlt⟩ case_000368_mask =
        case_000368_seq := by
    simpa [hrank] using case_000368_seqAtRank
  simp [SourceChecks, hseq, case_000368_support,
    checkTranslationConstraintSource, case_000368_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000368_rows :
    EqEqPosVarFirstRows case_000368_support case_000368_rank.val case_000368_mask := by
  intro hlt
  have hrank : (⟨case_000368_rank.val, hlt⟩ : Fin numPairWords) = case_000368_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000368_rank.val, hlt⟩ case_000368_mask =
        case_000368_seq := by
    simpa [hrank] using case_000368_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000368_rank.val, hlt⟩ case_000368_mask =
        case_000368_b := by
    simpa [hrank] using case_000368_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000368_support case_000368_rank.val hlt
          case_000368_mask = case_000368_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000368_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000368_support case_000368_rank.val hlt
          case_000368_mask = case_000368_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000368_secondLine_eq]
  have case_000368_rowFirst :
      EqEqPosRow (FirstLineAt case_000368_support case_000368_rank.val hlt case_000368_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000368_firstLine, EqEqPosRow]
  have case_000368_fixedSecond :
      FixedRow (SecondLineAt case_000368_support case_000368_rank.val hlt case_000368_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000368_secondLine, FixedRow]
  exact ⟨case_000368_rowFirst, case_000368_fixedSecond⟩

private theorem case_000368_existsRows :
    ExistsEqEqPosVarFirstRows case_000368_rank.val case_000368_mask :=
  ⟨case_000368_support, case_000368_sourceAgrees, case_000368_rows⟩

private theorem case_000368_covered :
    RowPropertyParametricCovered case_000368_rank.val case_000368_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000368_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000369_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000369_mask : SignMask := ⟨45, by decide⟩
private def case_000369_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000369_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000369_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000369_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-52/9) }
private def case_000369_firstLine : StrictLin2 := { a := 1, b := -1, c := (-79/5) }
private def case_000369_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000369_rankWord :
    rankPairWord? case_000369_word = some case_000369_rank := by
  decide

private theorem case_000369_unrank :
    unrankPairWord case_000369_rank = case_000369_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000369_word case_000369_rank).1
    case_000369_rankWord |>.symm

private theorem case_000369_seqChoice :
    translationChoiceSeq case_000369_word case_000369_mask = case_000369_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000369_seqAtRank :
    translationSeqAtRankMask case_000369_rank case_000369_mask = case_000369_seq := by
  rw [translationSeqAtRankMask, case_000369_unrank]
  exact case_000369_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000369_bAtRank :
    translationBAtRankMask case_000369_rank case_000369_mask = case_000369_b := by
  rw [translationBAtRankMask, case_000369_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000369_b, case_000369_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000369_firstLine_eq :
    case_000369_support.firstLine case_000369_seq case_000369_b = case_000369_firstLine := by
  norm_num [case_000369_firstLine, case_000369_support, case_000369_seq, case_000369_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000369_secondLine_eq :
    case_000369_support.secondLine case_000369_seq case_000369_b = case_000369_secondLine := by
  norm_num [case_000369_secondLine, case_000369_support, case_000369_seq, case_000369_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000369_sourceAgrees :
    SourceAgrees case_000369_support case_000369_rank.val case_000369_mask := by
  intro hlt
  have hrank : (⟨case_000369_rank.val, hlt⟩ : Fin numPairWords) = case_000369_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000369_rank.val, hlt⟩ case_000369_mask =
        case_000369_seq := by
    simpa [hrank] using case_000369_seqAtRank
  simp [SourceChecks, hseq, case_000369_support,
    checkTranslationConstraintSource, case_000369_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000369_rows :
    OppMinusOneVarFirstRows case_000369_support case_000369_rank.val case_000369_mask := by
  intro hlt
  have hrank : (⟨case_000369_rank.val, hlt⟩ : Fin numPairWords) = case_000369_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000369_rank.val, hlt⟩ case_000369_mask =
        case_000369_seq := by
    simpa [hrank] using case_000369_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000369_rank.val, hlt⟩ case_000369_mask =
        case_000369_b := by
    simpa [hrank] using case_000369_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000369_support case_000369_rank.val hlt
          case_000369_mask = case_000369_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000369_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000369_support case_000369_rank.val hlt
          case_000369_mask = case_000369_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000369_secondLine_eq]
  have case_000369_rowFirst :
      OppNegRow (FirstLineAt case_000369_support case_000369_rank.val hlt case_000369_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000369_firstLine, OppNegRow]
  have case_000369_fixedSecond :
      FixedRow (SecondLineAt case_000369_support case_000369_rank.val hlt case_000369_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000369_secondLine, FixedRow]
  exact ⟨case_000369_rowFirst, case_000369_fixedSecond⟩

private theorem case_000369_existsRows :
    ExistsOppMinusOneVarFirstRows case_000369_rank.val case_000369_mask :=
  ⟨case_000369_support, case_000369_sourceAgrees, case_000369_rows⟩

private theorem case_000369_covered :
    RowPropertyParametricCovered case_000369_rank.val case_000369_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000369_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000370_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000370_mask : SignMask := ⟨47, by decide⟩
private def case_000370_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000370_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000370_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000370_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000370_firstLine : StrictLin2 := { a := 1, b := -1, c := (-43/5) }
private def case_000370_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000370_rankWord :
    rankPairWord? case_000370_word = some case_000370_rank := by
  decide

private theorem case_000370_unrank :
    unrankPairWord case_000370_rank = case_000370_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000370_word case_000370_rank).1
    case_000370_rankWord |>.symm

private theorem case_000370_seqChoice :
    translationChoiceSeq case_000370_word case_000370_mask = case_000370_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000370_seqAtRank :
    translationSeqAtRankMask case_000370_rank case_000370_mask = case_000370_seq := by
  rw [translationSeqAtRankMask, case_000370_unrank]
  exact case_000370_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000370_bAtRank :
    translationBAtRankMask case_000370_rank case_000370_mask = case_000370_b := by
  rw [translationBAtRankMask, case_000370_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000370_b, case_000370_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000370_firstLine_eq :
    case_000370_support.firstLine case_000370_seq case_000370_b = case_000370_firstLine := by
  norm_num [case_000370_firstLine, case_000370_support, case_000370_seq, case_000370_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000370_secondLine_eq :
    case_000370_support.secondLine case_000370_seq case_000370_b = case_000370_secondLine := by
  norm_num [case_000370_secondLine, case_000370_support, case_000370_seq, case_000370_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000370_sourceAgrees :
    SourceAgrees case_000370_support case_000370_rank.val case_000370_mask := by
  intro hlt
  have hrank : (⟨case_000370_rank.val, hlt⟩ : Fin numPairWords) = case_000370_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000370_rank.val, hlt⟩ case_000370_mask =
        case_000370_seq := by
    simpa [hrank] using case_000370_seqAtRank
  simp [SourceChecks, hseq, case_000370_support,
    checkTranslationConstraintSource, case_000370_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000370_rows :
    OppMinusOneVarFirstRows case_000370_support case_000370_rank.val case_000370_mask := by
  intro hlt
  have hrank : (⟨case_000370_rank.val, hlt⟩ : Fin numPairWords) = case_000370_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000370_rank.val, hlt⟩ case_000370_mask =
        case_000370_seq := by
    simpa [hrank] using case_000370_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000370_rank.val, hlt⟩ case_000370_mask =
        case_000370_b := by
    simpa [hrank] using case_000370_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000370_support case_000370_rank.val hlt
          case_000370_mask = case_000370_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000370_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000370_support case_000370_rank.val hlt
          case_000370_mask = case_000370_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000370_secondLine_eq]
  have case_000370_rowFirst :
      OppNegRow (FirstLineAt case_000370_support case_000370_rank.val hlt case_000370_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000370_firstLine, OppNegRow]
  have case_000370_fixedSecond :
      FixedRow (SecondLineAt case_000370_support case_000370_rank.val hlt case_000370_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000370_secondLine, FixedRow]
  exact ⟨case_000370_rowFirst, case_000370_fixedSecond⟩

private theorem case_000370_existsRows :
    ExistsOppMinusOneVarFirstRows case_000370_rank.val case_000370_mask :=
  ⟨case_000370_support, case_000370_sourceAgrees, case_000370_rows⟩

private theorem case_000370_covered :
    RowPropertyParametricCovered case_000370_rank.val case_000370_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000370_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000371_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000371_mask : SignMask := ⟨54, by decide⟩
private def case_000371_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000371_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000371_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000371_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (148/9) }
private def case_000371_firstLine : StrictLin2 := { a := -1, b := 1, c := (-71/13) }
private def case_000371_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000371_rankWord :
    rankPairWord? case_000371_word = some case_000371_rank := by
  decide

private theorem case_000371_unrank :
    unrankPairWord case_000371_rank = case_000371_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000371_word case_000371_rank).1
    case_000371_rankWord |>.symm

private theorem case_000371_seqChoice :
    translationChoiceSeq case_000371_word case_000371_mask = case_000371_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000371_seqAtRank :
    translationSeqAtRankMask case_000371_rank case_000371_mask = case_000371_seq := by
  rw [translationSeqAtRankMask, case_000371_unrank]
  exact case_000371_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000371_bAtRank :
    translationBAtRankMask case_000371_rank case_000371_mask = case_000371_b := by
  rw [translationBAtRankMask, case_000371_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000371_b, case_000371_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000371_firstLine_eq :
    case_000371_support.firstLine case_000371_seq case_000371_b = case_000371_firstLine := by
  norm_num [case_000371_firstLine, case_000371_support, case_000371_seq, case_000371_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000371_secondLine_eq :
    case_000371_support.secondLine case_000371_seq case_000371_b = case_000371_secondLine := by
  norm_num [case_000371_secondLine, case_000371_support, case_000371_seq, case_000371_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000371_sourceAgrees :
    SourceAgrees case_000371_support case_000371_rank.val case_000371_mask := by
  intro hlt
  have hrank : (⟨case_000371_rank.val, hlt⟩ : Fin numPairWords) = case_000371_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000371_rank.val, hlt⟩ case_000371_mask =
        case_000371_seq := by
    simpa [hrank] using case_000371_seqAtRank
  simp [SourceChecks, hseq, case_000371_support,
    checkTranslationConstraintSource, case_000371_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000371_rows :
    OppOneMinusVarFirstRows case_000371_support case_000371_rank.val case_000371_mask := by
  intro hlt
  have hrank : (⟨case_000371_rank.val, hlt⟩ : Fin numPairWords) = case_000371_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000371_rank.val, hlt⟩ case_000371_mask =
        case_000371_seq := by
    simpa [hrank] using case_000371_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000371_rank.val, hlt⟩ case_000371_mask =
        case_000371_b := by
    simpa [hrank] using case_000371_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000371_support case_000371_rank.val hlt
          case_000371_mask = case_000371_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000371_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000371_support case_000371_rank.val hlt
          case_000371_mask = case_000371_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000371_secondLine_eq]
  have case_000371_rowFirst :
      OppPosRow (FirstLineAt case_000371_support case_000371_rank.val hlt case_000371_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000371_firstLine, OppPosRow]
  have case_000371_fixedSecond :
      FixedRow (SecondLineAt case_000371_support case_000371_rank.val hlt case_000371_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000371_secondLine, FixedRow]
  exact ⟨case_000371_rowFirst, case_000371_fixedSecond⟩

private theorem case_000371_existsRows :
    ExistsOppOneMinusVarFirstRows case_000371_rank.val case_000371_mask :=
  ⟨case_000371_support, case_000371_sourceAgrees, case_000371_rows⟩

private theorem case_000371_covered :
    RowPropertyParametricCovered case_000371_rank.val case_000371_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000371_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000372_rank : Fin numPairWords := ⟨120, by decide⟩
private def case_000372_mask : SignMask := ⟨55, by decide⟩
private def case_000372_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000372_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000372_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000372_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (148/9) }
private def case_000372_firstLine : StrictLin2 := { a := -1, b := 1, c := (-35/13) }
private def case_000372_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000372_rankWord :
    rankPairWord? case_000372_word = some case_000372_rank := by
  decide

private theorem case_000372_unrank :
    unrankPairWord case_000372_rank = case_000372_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000372_word case_000372_rank).1
    case_000372_rankWord |>.symm

private theorem case_000372_seqChoice :
    translationChoiceSeq case_000372_word case_000372_mask = case_000372_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000372_seqAtRank :
    translationSeqAtRankMask case_000372_rank case_000372_mask = case_000372_seq := by
  rw [translationSeqAtRankMask, case_000372_unrank]
  exact case_000372_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000372_bAtRank :
    translationBAtRankMask case_000372_rank case_000372_mask = case_000372_b := by
  rw [translationBAtRankMask, case_000372_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000372_b, case_000372_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000372_firstLine_eq :
    case_000372_support.firstLine case_000372_seq case_000372_b = case_000372_firstLine := by
  norm_num [case_000372_firstLine, case_000372_support, case_000372_seq, case_000372_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000372_secondLine_eq :
    case_000372_support.secondLine case_000372_seq case_000372_b = case_000372_secondLine := by
  norm_num [case_000372_secondLine, case_000372_support, case_000372_seq, case_000372_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000372_sourceAgrees :
    SourceAgrees case_000372_support case_000372_rank.val case_000372_mask := by
  intro hlt
  have hrank : (⟨case_000372_rank.val, hlt⟩ : Fin numPairWords) = case_000372_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000372_rank.val, hlt⟩ case_000372_mask =
        case_000372_seq := by
    simpa [hrank] using case_000372_seqAtRank
  simp [SourceChecks, hseq, case_000372_support,
    checkTranslationConstraintSource, case_000372_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000372_rows :
    OppOneMinusVarFirstRows case_000372_support case_000372_rank.val case_000372_mask := by
  intro hlt
  have hrank : (⟨case_000372_rank.val, hlt⟩ : Fin numPairWords) = case_000372_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000372_rank.val, hlt⟩ case_000372_mask =
        case_000372_seq := by
    simpa [hrank] using case_000372_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000372_rank.val, hlt⟩ case_000372_mask =
        case_000372_b := by
    simpa [hrank] using case_000372_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000372_support case_000372_rank.val hlt
          case_000372_mask = case_000372_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000372_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000372_support case_000372_rank.val hlt
          case_000372_mask = case_000372_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000372_secondLine_eq]
  have case_000372_rowFirst :
      OppPosRow (FirstLineAt case_000372_support case_000372_rank.val hlt case_000372_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000372_firstLine, OppPosRow]
  have case_000372_fixedSecond :
      FixedRow (SecondLineAt case_000372_support case_000372_rank.val hlt case_000372_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000372_secondLine, FixedRow]
  exact ⟨case_000372_rowFirst, case_000372_fixedSecond⟩

private theorem case_000372_existsRows :
    ExistsOppOneMinusVarFirstRows case_000372_rank.val case_000372_mask :=
  ⟨case_000372_support, case_000372_sourceAgrees, case_000372_rows⟩

private theorem case_000372_covered :
    RowPropertyParametricCovered case_000372_rank.val case_000372_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000372_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000373_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000373_mask : SignMask := ⟨8, by decide⟩
private def case_000373_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000373_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000373_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000373_b : Vec3 Rat := { x := (-4/9), y := -4, z := (-164/9) }
private def case_000373_firstLine : StrictLin2 := { a := -1, b := -1, c := -99 }
private def case_000373_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000373_rankWord :
    rankPairWord? case_000373_word = some case_000373_rank := by
  decide

private theorem case_000373_unrank :
    unrankPairWord case_000373_rank = case_000373_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000373_word case_000373_rank).1
    case_000373_rankWord |>.symm

private theorem case_000373_seqChoice :
    translationChoiceSeq case_000373_word case_000373_mask = case_000373_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000373_seqAtRank :
    translationSeqAtRankMask case_000373_rank case_000373_mask = case_000373_seq := by
  rw [translationSeqAtRankMask, case_000373_unrank]
  exact case_000373_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000373_bAtRank :
    translationBAtRankMask case_000373_rank case_000373_mask = case_000373_b := by
  rw [translationBAtRankMask, case_000373_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000373_b, case_000373_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000373_firstLine_eq :
    case_000373_support.firstLine case_000373_seq case_000373_b = case_000373_firstLine := by
  norm_num [case_000373_firstLine, case_000373_support, case_000373_seq, case_000373_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000373_secondLine_eq :
    case_000373_support.secondLine case_000373_seq case_000373_b = case_000373_secondLine := by
  norm_num [case_000373_secondLine, case_000373_support, case_000373_seq, case_000373_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000373_sourceAgrees :
    SourceAgrees case_000373_support case_000373_rank.val case_000373_mask := by
  intro hlt
  have hrank : (⟨case_000373_rank.val, hlt⟩ : Fin numPairWords) = case_000373_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000373_rank.val, hlt⟩ case_000373_mask =
        case_000373_seq := by
    simpa [hrank] using case_000373_seqAtRank
  simp [SourceChecks, hseq, case_000373_support,
    checkTranslationConstraintSource, case_000373_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000373_rows :
    EqEqPosVarFirstRows case_000373_support case_000373_rank.val case_000373_mask := by
  intro hlt
  have hrank : (⟨case_000373_rank.val, hlt⟩ : Fin numPairWords) = case_000373_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000373_rank.val, hlt⟩ case_000373_mask =
        case_000373_seq := by
    simpa [hrank] using case_000373_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000373_rank.val, hlt⟩ case_000373_mask =
        case_000373_b := by
    simpa [hrank] using case_000373_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000373_support case_000373_rank.val hlt
          case_000373_mask = case_000373_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000373_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000373_support case_000373_rank.val hlt
          case_000373_mask = case_000373_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000373_secondLine_eq]
  have case_000373_rowFirst :
      EqEqPosRow (FirstLineAt case_000373_support case_000373_rank.val hlt case_000373_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000373_firstLine, EqEqPosRow]
  have case_000373_fixedSecond :
      FixedRow (SecondLineAt case_000373_support case_000373_rank.val hlt case_000373_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000373_secondLine, FixedRow]
  exact ⟨case_000373_rowFirst, case_000373_fixedSecond⟩

private theorem case_000373_existsRows :
    ExistsEqEqPosVarFirstRows case_000373_rank.val case_000373_mask :=
  ⟨case_000373_support, case_000373_sourceAgrees, case_000373_rows⟩

private theorem case_000373_covered :
    RowPropertyParametricCovered case_000373_rank.val case_000373_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000373_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000374_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000374_mask : SignMask := ⟨9, by decide⟩
private def case_000374_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000374_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000374_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000374_b : Vec3 Rat := { x := (-4/9), y := 4, z := (-164/9) }
private def case_000374_firstLine : StrictLin2 := { a := -1, b := -1, c := -63 }
private def case_000374_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000374_rankWord :
    rankPairWord? case_000374_word = some case_000374_rank := by
  decide

private theorem case_000374_unrank :
    unrankPairWord case_000374_rank = case_000374_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000374_word case_000374_rank).1
    case_000374_rankWord |>.symm

private theorem case_000374_seqChoice :
    translationChoiceSeq case_000374_word case_000374_mask = case_000374_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000374_seqAtRank :
    translationSeqAtRankMask case_000374_rank case_000374_mask = case_000374_seq := by
  rw [translationSeqAtRankMask, case_000374_unrank]
  exact case_000374_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000374_bAtRank :
    translationBAtRankMask case_000374_rank case_000374_mask = case_000374_b := by
  rw [translationBAtRankMask, case_000374_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000374_b, case_000374_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000374_firstLine_eq :
    case_000374_support.firstLine case_000374_seq case_000374_b = case_000374_firstLine := by
  norm_num [case_000374_firstLine, case_000374_support, case_000374_seq, case_000374_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000374_secondLine_eq :
    case_000374_support.secondLine case_000374_seq case_000374_b = case_000374_secondLine := by
  norm_num [case_000374_secondLine, case_000374_support, case_000374_seq, case_000374_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000374_sourceAgrees :
    SourceAgrees case_000374_support case_000374_rank.val case_000374_mask := by
  intro hlt
  have hrank : (⟨case_000374_rank.val, hlt⟩ : Fin numPairWords) = case_000374_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000374_rank.val, hlt⟩ case_000374_mask =
        case_000374_seq := by
    simpa [hrank] using case_000374_seqAtRank
  simp [SourceChecks, hseq, case_000374_support,
    checkTranslationConstraintSource, case_000374_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000374_rows :
    EqEqPosVarFirstRows case_000374_support case_000374_rank.val case_000374_mask := by
  intro hlt
  have hrank : (⟨case_000374_rank.val, hlt⟩ : Fin numPairWords) = case_000374_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000374_rank.val, hlt⟩ case_000374_mask =
        case_000374_seq := by
    simpa [hrank] using case_000374_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000374_rank.val, hlt⟩ case_000374_mask =
        case_000374_b := by
    simpa [hrank] using case_000374_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000374_support case_000374_rank.val hlt
          case_000374_mask = case_000374_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000374_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000374_support case_000374_rank.val hlt
          case_000374_mask = case_000374_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000374_secondLine_eq]
  have case_000374_rowFirst :
      EqEqPosRow (FirstLineAt case_000374_support case_000374_rank.val hlt case_000374_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000374_firstLine, EqEqPosRow]
  have case_000374_fixedSecond :
      FixedRow (SecondLineAt case_000374_support case_000374_rank.val hlt case_000374_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000374_secondLine, FixedRow]
  exact ⟨case_000374_rowFirst, case_000374_fixedSecond⟩

private theorem case_000374_existsRows :
    ExistsEqEqPosVarFirstRows case_000374_rank.val case_000374_mask :=
  ⟨case_000374_support, case_000374_sourceAgrees, case_000374_rows⟩

private theorem case_000374_covered :
    RowPropertyParametricCovered case_000374_rank.val case_000374_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000374_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000375_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000375_mask : SignMask := ⟨13, by decide⟩
private def case_000375_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000375_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000375_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000375_b : Vec3 Rat := { x := (-52/9), y := (28/3), z := (-116/9) }
private def case_000375_firstLine : StrictLin2 := { a := (-13/5), b := (-13/5), c := -9 }
private def case_000375_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000375_rankWord :
    rankPairWord? case_000375_word = some case_000375_rank := by
  decide

private theorem case_000375_unrank :
    unrankPairWord case_000375_rank = case_000375_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000375_word case_000375_rank).1
    case_000375_rankWord |>.symm

private theorem case_000375_seqChoice :
    translationChoiceSeq case_000375_word case_000375_mask = case_000375_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000375_seqAtRank :
    translationSeqAtRankMask case_000375_rank case_000375_mask = case_000375_seq := by
  rw [translationSeqAtRankMask, case_000375_unrank]
  exact case_000375_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000375_bAtRank :
    translationBAtRankMask case_000375_rank case_000375_mask = case_000375_b := by
  rw [translationBAtRankMask, case_000375_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000375_b, case_000375_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000375_firstLine_eq :
    case_000375_support.firstLine case_000375_seq case_000375_b = case_000375_firstLine := by
  norm_num [case_000375_firstLine, case_000375_support, case_000375_seq, case_000375_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000375_secondLine_eq :
    case_000375_support.secondLine case_000375_seq case_000375_b = case_000375_secondLine := by
  norm_num [case_000375_secondLine, case_000375_support, case_000375_seq, case_000375_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000375_sourceAgrees :
    SourceAgrees case_000375_support case_000375_rank.val case_000375_mask := by
  intro hlt
  have hrank : (⟨case_000375_rank.val, hlt⟩ : Fin numPairWords) = case_000375_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000375_rank.val, hlt⟩ case_000375_mask =
        case_000375_seq := by
    simpa [hrank] using case_000375_seqAtRank
  simp [SourceChecks, hseq, case_000375_support,
    checkTranslationConstraintSource, case_000375_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000375_rows :
    EqEqPosVarFirstRows case_000375_support case_000375_rank.val case_000375_mask := by
  intro hlt
  have hrank : (⟨case_000375_rank.val, hlt⟩ : Fin numPairWords) = case_000375_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000375_rank.val, hlt⟩ case_000375_mask =
        case_000375_seq := by
    simpa [hrank] using case_000375_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000375_rank.val, hlt⟩ case_000375_mask =
        case_000375_b := by
    simpa [hrank] using case_000375_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000375_support case_000375_rank.val hlt
          case_000375_mask = case_000375_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000375_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000375_support case_000375_rank.val hlt
          case_000375_mask = case_000375_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000375_secondLine_eq]
  have case_000375_rowFirst :
      EqEqPosRow (FirstLineAt case_000375_support case_000375_rank.val hlt case_000375_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000375_firstLine, EqEqPosRow]
  have case_000375_fixedSecond :
      FixedRow (SecondLineAt case_000375_support case_000375_rank.val hlt case_000375_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000375_secondLine, FixedRow]
  exact ⟨case_000375_rowFirst, case_000375_fixedSecond⟩

private theorem case_000375_existsRows :
    ExistsEqEqPosVarFirstRows case_000375_rank.val case_000375_mask :=
  ⟨case_000375_support, case_000375_sourceAgrees, case_000375_rows⟩

private theorem case_000375_covered :
    RowPropertyParametricCovered case_000375_rank.val case_000375_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000375_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000376_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000376_mask : SignMask := ⟨24, by decide⟩
private def case_000376_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000376_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000376_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000376_b : Vec3 Rat := { x := (-52/9), y := (-28/3), z := (-116/9) }
private def case_000376_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_000376_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000376_rankWord :
    rankPairWord? case_000376_word = some case_000376_rank := by
  decide

private theorem case_000376_unrank :
    unrankPairWord case_000376_rank = case_000376_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000376_word case_000376_rank).1
    case_000376_rankWord |>.symm

private theorem case_000376_seqChoice :
    translationChoiceSeq case_000376_word case_000376_mask = case_000376_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000376_seqAtRank :
    translationSeqAtRankMask case_000376_rank case_000376_mask = case_000376_seq := by
  rw [translationSeqAtRankMask, case_000376_unrank]
  exact case_000376_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000376_bAtRank :
    translationBAtRankMask case_000376_rank case_000376_mask = case_000376_b := by
  rw [translationBAtRankMask, case_000376_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000376_b, case_000376_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000376_firstLine_eq :
    case_000376_support.firstLine case_000376_seq case_000376_b = case_000376_firstLine := by
  norm_num [case_000376_firstLine, case_000376_support, case_000376_seq, case_000376_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000376_secondLine_eq :
    case_000376_support.secondLine case_000376_seq case_000376_b = case_000376_secondLine := by
  norm_num [case_000376_secondLine, case_000376_support, case_000376_seq, case_000376_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000376_sourceAgrees :
    SourceAgrees case_000376_support case_000376_rank.val case_000376_mask := by
  intro hlt
  have hrank : (⟨case_000376_rank.val, hlt⟩ : Fin numPairWords) = case_000376_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000376_rank.val, hlt⟩ case_000376_mask =
        case_000376_seq := by
    simpa [hrank] using case_000376_seqAtRank
  simp [SourceChecks, hseq, case_000376_support,
    checkTranslationConstraintSource, case_000376_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000376_rows :
    EqEqPosVarFirstRows case_000376_support case_000376_rank.val case_000376_mask := by
  intro hlt
  have hrank : (⟨case_000376_rank.val, hlt⟩ : Fin numPairWords) = case_000376_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000376_rank.val, hlt⟩ case_000376_mask =
        case_000376_seq := by
    simpa [hrank] using case_000376_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000376_rank.val, hlt⟩ case_000376_mask =
        case_000376_b := by
    simpa [hrank] using case_000376_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000376_support case_000376_rank.val hlt
          case_000376_mask = case_000376_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000376_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000376_support case_000376_rank.val hlt
          case_000376_mask = case_000376_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000376_secondLine_eq]
  have case_000376_rowFirst :
      EqEqPosRow (FirstLineAt case_000376_support case_000376_rank.val hlt case_000376_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000376_firstLine, EqEqPosRow]
  have case_000376_fixedSecond :
      FixedRow (SecondLineAt case_000376_support case_000376_rank.val hlt case_000376_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000376_secondLine, FixedRow]
  exact ⟨case_000376_rowFirst, case_000376_fixedSecond⟩

private theorem case_000376_existsRows :
    ExistsEqEqPosVarFirstRows case_000376_rank.val case_000376_mask :=
  ⟨case_000376_support, case_000376_sourceAgrees, case_000376_rows⟩

private theorem case_000376_covered :
    RowPropertyParametricCovered case_000376_rank.val case_000376_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000376_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000377_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000377_mask : SignMask := ⟨30, by decide⟩
private def case_000377_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000377_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000377_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000377_b : Vec3 Rat := { x := (-100/9), y := -4, z := (4/9) }
private def case_000377_firstLine : StrictLin2 := { a := (-25/17), b := (-25/17), c := (-57/17) }
private def case_000377_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000377_rankWord :
    rankPairWord? case_000377_word = some case_000377_rank := by
  decide

private theorem case_000377_unrank :
    unrankPairWord case_000377_rank = case_000377_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000377_word case_000377_rank).1
    case_000377_rankWord |>.symm

private theorem case_000377_seqChoice :
    translationChoiceSeq case_000377_word case_000377_mask = case_000377_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000377_seqAtRank :
    translationSeqAtRankMask case_000377_rank case_000377_mask = case_000377_seq := by
  rw [translationSeqAtRankMask, case_000377_unrank]
  exact case_000377_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000377_bAtRank :
    translationBAtRankMask case_000377_rank case_000377_mask = case_000377_b := by
  rw [translationBAtRankMask, case_000377_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000377_b, case_000377_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000377_firstLine_eq :
    case_000377_support.firstLine case_000377_seq case_000377_b = case_000377_firstLine := by
  norm_num [case_000377_firstLine, case_000377_support, case_000377_seq, case_000377_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000377_secondLine_eq :
    case_000377_support.secondLine case_000377_seq case_000377_b = case_000377_secondLine := by
  norm_num [case_000377_secondLine, case_000377_support, case_000377_seq, case_000377_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000377_sourceAgrees :
    SourceAgrees case_000377_support case_000377_rank.val case_000377_mask := by
  intro hlt
  have hrank : (⟨case_000377_rank.val, hlt⟩ : Fin numPairWords) = case_000377_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000377_rank.val, hlt⟩ case_000377_mask =
        case_000377_seq := by
    simpa [hrank] using case_000377_seqAtRank
  simp [SourceChecks, hseq, case_000377_support,
    checkTranslationConstraintSource, case_000377_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000377_rows :
    EqEqPosVarFirstRows case_000377_support case_000377_rank.val case_000377_mask := by
  intro hlt
  have hrank : (⟨case_000377_rank.val, hlt⟩ : Fin numPairWords) = case_000377_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000377_rank.val, hlt⟩ case_000377_mask =
        case_000377_seq := by
    simpa [hrank] using case_000377_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000377_rank.val, hlt⟩ case_000377_mask =
        case_000377_b := by
    simpa [hrank] using case_000377_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000377_support case_000377_rank.val hlt
          case_000377_mask = case_000377_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000377_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000377_support case_000377_rank.val hlt
          case_000377_mask = case_000377_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000377_secondLine_eq]
  have case_000377_rowFirst :
      EqEqPosRow (FirstLineAt case_000377_support case_000377_rank.val hlt case_000377_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000377_firstLine, EqEqPosRow]
  have case_000377_fixedSecond :
      FixedRow (SecondLineAt case_000377_support case_000377_rank.val hlt case_000377_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000377_secondLine, FixedRow]
  exact ⟨case_000377_rowFirst, case_000377_fixedSecond⟩

private theorem case_000377_existsRows :
    ExistsEqEqPosVarFirstRows case_000377_rank.val case_000377_mask :=
  ⟨case_000377_support, case_000377_sourceAgrees, case_000377_rows⟩

private theorem case_000377_covered :
    RowPropertyParametricCovered case_000377_rank.val case_000377_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000377_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000378_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000378_mask : SignMask := ⟨31, by decide⟩
private def case_000378_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000378_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000378_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000378_b : Vec3 Rat := { x := (-100/9), y := 4, z := (4/9) }
private def case_000378_firstLine : StrictLin2 := { a := (-5/7), b := (-5/7), c := (-37/7) }
private def case_000378_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000378_rankWord :
    rankPairWord? case_000378_word = some case_000378_rank := by
  decide

private theorem case_000378_unrank :
    unrankPairWord case_000378_rank = case_000378_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000378_word case_000378_rank).1
    case_000378_rankWord |>.symm

private theorem case_000378_seqChoice :
    translationChoiceSeq case_000378_word case_000378_mask = case_000378_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000378_seqAtRank :
    translationSeqAtRankMask case_000378_rank case_000378_mask = case_000378_seq := by
  rw [translationSeqAtRankMask, case_000378_unrank]
  exact case_000378_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000378_bAtRank :
    translationBAtRankMask case_000378_rank case_000378_mask = case_000378_b := by
  rw [translationBAtRankMask, case_000378_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000378_b, case_000378_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000378_firstLine_eq :
    case_000378_support.firstLine case_000378_seq case_000378_b = case_000378_firstLine := by
  norm_num [case_000378_firstLine, case_000378_support, case_000378_seq, case_000378_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000378_secondLine_eq :
    case_000378_support.secondLine case_000378_seq case_000378_b = case_000378_secondLine := by
  norm_num [case_000378_secondLine, case_000378_support, case_000378_seq, case_000378_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000378_sourceAgrees :
    SourceAgrees case_000378_support case_000378_rank.val case_000378_mask := by
  intro hlt
  have hrank : (⟨case_000378_rank.val, hlt⟩ : Fin numPairWords) = case_000378_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000378_rank.val, hlt⟩ case_000378_mask =
        case_000378_seq := by
    simpa [hrank] using case_000378_seqAtRank
  simp [SourceChecks, hseq, case_000378_support,
    checkTranslationConstraintSource, case_000378_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000378_rows :
    EqEqPosVarFirstRows case_000378_support case_000378_rank.val case_000378_mask := by
  intro hlt
  have hrank : (⟨case_000378_rank.val, hlt⟩ : Fin numPairWords) = case_000378_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000378_rank.val, hlt⟩ case_000378_mask =
        case_000378_seq := by
    simpa [hrank] using case_000378_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000378_rank.val, hlt⟩ case_000378_mask =
        case_000378_b := by
    simpa [hrank] using case_000378_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000378_support case_000378_rank.val hlt
          case_000378_mask = case_000378_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000378_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000378_support case_000378_rank.val hlt
          case_000378_mask = case_000378_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000378_secondLine_eq]
  have case_000378_rowFirst :
      EqEqPosRow (FirstLineAt case_000378_support case_000378_rank.val hlt case_000378_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000378_firstLine, EqEqPosRow]
  have case_000378_fixedSecond :
      FixedRow (SecondLineAt case_000378_support case_000378_rank.val hlt case_000378_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000378_secondLine, FixedRow]
  exact ⟨case_000378_rowFirst, case_000378_fixedSecond⟩

private theorem case_000378_existsRows :
    ExistsEqEqPosVarFirstRows case_000378_rank.val case_000378_mask :=
  ⟨case_000378_support, case_000378_sourceAgrees, case_000378_rows⟩

private theorem case_000378_covered :
    RowPropertyParametricCovered case_000378_rank.val case_000378_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000378_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000379_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000379_mask : SignMask := ⟨54, by decide⟩
private def case_000379_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000379_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000379_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000379_b : Vec3 Rat := { x := (-68/9), y := -4, z := (164/9) }
private def case_000379_firstLine : StrictLin2 := { a := -1, b := 1, c := (-83/17) }
private def case_000379_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000379_rankWord :
    rankPairWord? case_000379_word = some case_000379_rank := by
  decide

private theorem case_000379_unrank :
    unrankPairWord case_000379_rank = case_000379_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000379_word case_000379_rank).1
    case_000379_rankWord |>.symm

private theorem case_000379_seqChoice :
    translationChoiceSeq case_000379_word case_000379_mask = case_000379_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000379_seqAtRank :
    translationSeqAtRankMask case_000379_rank case_000379_mask = case_000379_seq := by
  rw [translationSeqAtRankMask, case_000379_unrank]
  exact case_000379_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000379_bAtRank :
    translationBAtRankMask case_000379_rank case_000379_mask = case_000379_b := by
  rw [translationBAtRankMask, case_000379_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000379_b, case_000379_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000379_firstLine_eq :
    case_000379_support.firstLine case_000379_seq case_000379_b = case_000379_firstLine := by
  norm_num [case_000379_firstLine, case_000379_support, case_000379_seq, case_000379_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000379_secondLine_eq :
    case_000379_support.secondLine case_000379_seq case_000379_b = case_000379_secondLine := by
  norm_num [case_000379_secondLine, case_000379_support, case_000379_seq, case_000379_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000379_sourceAgrees :
    SourceAgrees case_000379_support case_000379_rank.val case_000379_mask := by
  intro hlt
  have hrank : (⟨case_000379_rank.val, hlt⟩ : Fin numPairWords) = case_000379_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000379_rank.val, hlt⟩ case_000379_mask =
        case_000379_seq := by
    simpa [hrank] using case_000379_seqAtRank
  simp [SourceChecks, hseq, case_000379_support,
    checkTranslationConstraintSource, case_000379_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000379_rows :
    OppOneMinusVarFirstRows case_000379_support case_000379_rank.val case_000379_mask := by
  intro hlt
  have hrank : (⟨case_000379_rank.val, hlt⟩ : Fin numPairWords) = case_000379_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000379_rank.val, hlt⟩ case_000379_mask =
        case_000379_seq := by
    simpa [hrank] using case_000379_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000379_rank.val, hlt⟩ case_000379_mask =
        case_000379_b := by
    simpa [hrank] using case_000379_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000379_support case_000379_rank.val hlt
          case_000379_mask = case_000379_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000379_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000379_support case_000379_rank.val hlt
          case_000379_mask = case_000379_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000379_secondLine_eq]
  have case_000379_rowFirst :
      OppPosRow (FirstLineAt case_000379_support case_000379_rank.val hlt case_000379_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000379_firstLine, OppPosRow]
  have case_000379_fixedSecond :
      FixedRow (SecondLineAt case_000379_support case_000379_rank.val hlt case_000379_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000379_secondLine, FixedRow]
  exact ⟨case_000379_rowFirst, case_000379_fixedSecond⟩

private theorem case_000379_existsRows :
    ExistsOppOneMinusVarFirstRows case_000379_rank.val case_000379_mask :=
  ⟨case_000379_support, case_000379_sourceAgrees, case_000379_rows⟩

private theorem case_000379_covered :
    RowPropertyParametricCovered case_000379_rank.val case_000379_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000379_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000380_rank : Fin numPairWords := ⟨122, by decide⟩
private def case_000380_mask : SignMask := ⟨55, by decide⟩
private def case_000380_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000380_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000380_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000380_b : Vec3 Rat := { x := (-68/9), y := 4, z := (164/9) }
private def case_000380_firstLine : StrictLin2 := { a := -1, b := 1, c := (-47/17) }
private def case_000380_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000380_rankWord :
    rankPairWord? case_000380_word = some case_000380_rank := by
  decide

private theorem case_000380_unrank :
    unrankPairWord case_000380_rank = case_000380_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000380_word case_000380_rank).1
    case_000380_rankWord |>.symm

private theorem case_000380_seqChoice :
    translationChoiceSeq case_000380_word case_000380_mask = case_000380_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000380_seqAtRank :
    translationSeqAtRankMask case_000380_rank case_000380_mask = case_000380_seq := by
  rw [translationSeqAtRankMask, case_000380_unrank]
  exact case_000380_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000380_bAtRank :
    translationBAtRankMask case_000380_rank case_000380_mask = case_000380_b := by
  rw [translationBAtRankMask, case_000380_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000380_b, case_000380_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000380_firstLine_eq :
    case_000380_support.firstLine case_000380_seq case_000380_b = case_000380_firstLine := by
  norm_num [case_000380_firstLine, case_000380_support, case_000380_seq, case_000380_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000380_secondLine_eq :
    case_000380_support.secondLine case_000380_seq case_000380_b = case_000380_secondLine := by
  norm_num [case_000380_secondLine, case_000380_support, case_000380_seq, case_000380_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000380_sourceAgrees :
    SourceAgrees case_000380_support case_000380_rank.val case_000380_mask := by
  intro hlt
  have hrank : (⟨case_000380_rank.val, hlt⟩ : Fin numPairWords) = case_000380_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000380_rank.val, hlt⟩ case_000380_mask =
        case_000380_seq := by
    simpa [hrank] using case_000380_seqAtRank
  simp [SourceChecks, hseq, case_000380_support,
    checkTranslationConstraintSource, case_000380_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000380_rows :
    OppOneMinusVarFirstRows case_000380_support case_000380_rank.val case_000380_mask := by
  intro hlt
  have hrank : (⟨case_000380_rank.val, hlt⟩ : Fin numPairWords) = case_000380_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000380_rank.val, hlt⟩ case_000380_mask =
        case_000380_seq := by
    simpa [hrank] using case_000380_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000380_rank.val, hlt⟩ case_000380_mask =
        case_000380_b := by
    simpa [hrank] using case_000380_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000380_support case_000380_rank.val hlt
          case_000380_mask = case_000380_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000380_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000380_support case_000380_rank.val hlt
          case_000380_mask = case_000380_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000380_secondLine_eq]
  have case_000380_rowFirst :
      OppPosRow (FirstLineAt case_000380_support case_000380_rank.val hlt case_000380_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000380_firstLine, OppPosRow]
  have case_000380_fixedSecond :
      FixedRow (SecondLineAt case_000380_support case_000380_rank.val hlt case_000380_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000380_secondLine, FixedRow]
  exact ⟨case_000380_rowFirst, case_000380_fixedSecond⟩

private theorem case_000380_existsRows :
    ExistsOppOneMinusVarFirstRows case_000380_rank.val case_000380_mask :=
  ⟨case_000380_support, case_000380_sourceAgrees, case_000380_rows⟩

private theorem case_000380_covered :
    RowPropertyParametricCovered case_000380_rank.val case_000380_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000380_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000381_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000381_mask : SignMask := ⟨8, by decide⟩
private def case_000381_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000381_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000381_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000381_b : Vec3 Rat := { x := -4, y := (-68/9), z := (-164/9) }
private def case_000381_firstLine : StrictLin2 := { a := -1, b := -1, c := (-107/9) }
private def case_000381_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000381_rankWord :
    rankPairWord? case_000381_word = some case_000381_rank := by
  decide

private theorem case_000381_unrank :
    unrankPairWord case_000381_rank = case_000381_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000381_word case_000381_rank).1
    case_000381_rankWord |>.symm

private theorem case_000381_seqChoice :
    translationChoiceSeq case_000381_word case_000381_mask = case_000381_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000381_seqAtRank :
    translationSeqAtRankMask case_000381_rank case_000381_mask = case_000381_seq := by
  rw [translationSeqAtRankMask, case_000381_unrank]
  exact case_000381_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000381_bAtRank :
    translationBAtRankMask case_000381_rank case_000381_mask = case_000381_b := by
  rw [translationBAtRankMask, case_000381_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000381_b, case_000381_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000381_firstLine_eq :
    case_000381_support.firstLine case_000381_seq case_000381_b = case_000381_firstLine := by
  norm_num [case_000381_firstLine, case_000381_support, case_000381_seq, case_000381_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000381_secondLine_eq :
    case_000381_support.secondLine case_000381_seq case_000381_b = case_000381_secondLine := by
  norm_num [case_000381_secondLine, case_000381_support, case_000381_seq, case_000381_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000381_sourceAgrees :
    SourceAgrees case_000381_support case_000381_rank.val case_000381_mask := by
  intro hlt
  have hrank : (⟨case_000381_rank.val, hlt⟩ : Fin numPairWords) = case_000381_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000381_rank.val, hlt⟩ case_000381_mask =
        case_000381_seq := by
    simpa [hrank] using case_000381_seqAtRank
  simp [SourceChecks, hseq, case_000381_support,
    checkTranslationConstraintSource, case_000381_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000381_rows :
    EqEqPosVarFirstRows case_000381_support case_000381_rank.val case_000381_mask := by
  intro hlt
  have hrank : (⟨case_000381_rank.val, hlt⟩ : Fin numPairWords) = case_000381_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000381_rank.val, hlt⟩ case_000381_mask =
        case_000381_seq := by
    simpa [hrank] using case_000381_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000381_rank.val, hlt⟩ case_000381_mask =
        case_000381_b := by
    simpa [hrank] using case_000381_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000381_support case_000381_rank.val hlt
          case_000381_mask = case_000381_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000381_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000381_support case_000381_rank.val hlt
          case_000381_mask = case_000381_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000381_secondLine_eq]
  have case_000381_rowFirst :
      EqEqPosRow (FirstLineAt case_000381_support case_000381_rank.val hlt case_000381_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000381_firstLine, EqEqPosRow]
  have case_000381_fixedSecond :
      FixedRow (SecondLineAt case_000381_support case_000381_rank.val hlt case_000381_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000381_secondLine, FixedRow]
  exact ⟨case_000381_rowFirst, case_000381_fixedSecond⟩

private theorem case_000381_existsRows :
    ExistsEqEqPosVarFirstRows case_000381_rank.val case_000381_mask :=
  ⟨case_000381_support, case_000381_sourceAgrees, case_000381_rows⟩

private theorem case_000381_covered :
    RowPropertyParametricCovered case_000381_rank.val case_000381_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000381_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000382_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000382_mask : SignMask := ⟨9, by decide⟩
private def case_000382_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000382_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000382_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000382_b : Vec3 Rat := { x := -4, y := (4/9), z := (-164/9) }
private def case_000382_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/9) }
private def case_000382_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000382_rankWord :
    rankPairWord? case_000382_word = some case_000382_rank := by
  decide

private theorem case_000382_unrank :
    unrankPairWord case_000382_rank = case_000382_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000382_word case_000382_rank).1
    case_000382_rankWord |>.symm

private theorem case_000382_seqChoice :
    translationChoiceSeq case_000382_word case_000382_mask = case_000382_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000382_seqAtRank :
    translationSeqAtRankMask case_000382_rank case_000382_mask = case_000382_seq := by
  rw [translationSeqAtRankMask, case_000382_unrank]
  exact case_000382_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000382_bAtRank :
    translationBAtRankMask case_000382_rank case_000382_mask = case_000382_b := by
  rw [translationBAtRankMask, case_000382_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000382_b, case_000382_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000382_firstLine_eq :
    case_000382_support.firstLine case_000382_seq case_000382_b = case_000382_firstLine := by
  norm_num [case_000382_firstLine, case_000382_support, case_000382_seq, case_000382_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000382_secondLine_eq :
    case_000382_support.secondLine case_000382_seq case_000382_b = case_000382_secondLine := by
  norm_num [case_000382_secondLine, case_000382_support, case_000382_seq, case_000382_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000382_sourceAgrees :
    SourceAgrees case_000382_support case_000382_rank.val case_000382_mask := by
  intro hlt
  have hrank : (⟨case_000382_rank.val, hlt⟩ : Fin numPairWords) = case_000382_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000382_rank.val, hlt⟩ case_000382_mask =
        case_000382_seq := by
    simpa [hrank] using case_000382_seqAtRank
  simp [SourceChecks, hseq, case_000382_support,
    checkTranslationConstraintSource, case_000382_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000382_rows :
    EqEqPosVarFirstRows case_000382_support case_000382_rank.val case_000382_mask := by
  intro hlt
  have hrank : (⟨case_000382_rank.val, hlt⟩ : Fin numPairWords) = case_000382_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000382_rank.val, hlt⟩ case_000382_mask =
        case_000382_seq := by
    simpa [hrank] using case_000382_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000382_rank.val, hlt⟩ case_000382_mask =
        case_000382_b := by
    simpa [hrank] using case_000382_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000382_support case_000382_rank.val hlt
          case_000382_mask = case_000382_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000382_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000382_support case_000382_rank.val hlt
          case_000382_mask = case_000382_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000382_secondLine_eq]
  have case_000382_rowFirst :
      EqEqPosRow (FirstLineAt case_000382_support case_000382_rank.val hlt case_000382_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000382_firstLine, EqEqPosRow]
  have case_000382_fixedSecond :
      FixedRow (SecondLineAt case_000382_support case_000382_rank.val hlt case_000382_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000382_secondLine, FixedRow]
  exact ⟨case_000382_rowFirst, case_000382_fixedSecond⟩

private theorem case_000382_existsRows :
    ExistsEqEqPosVarFirstRows case_000382_rank.val case_000382_mask :=
  ⟨case_000382_support, case_000382_sourceAgrees, case_000382_rows⟩

private theorem case_000382_covered :
    RowPropertyParametricCovered case_000382_rank.val case_000382_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000382_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000383_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000383_mask : SignMask := ⟨13, by decide⟩
private def case_000383_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000383_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000383_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000383_b : Vec3 Rat := { x := (-28/3), y := (52/9), z := (-116/9) }
private def case_000383_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000383_secondLine : StrictLin2 := { a := (-189/370), b := (-189/370), c := (-451/185) }

private theorem case_000383_rankWord :
    rankPairWord? case_000383_word = some case_000383_rank := by
  decide

private theorem case_000383_unrank :
    unrankPairWord case_000383_rank = case_000383_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000383_word case_000383_rank).1
    case_000383_rankWord |>.symm

private theorem case_000383_seqChoice :
    translationChoiceSeq case_000383_word case_000383_mask = case_000383_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000383_seqAtRank :
    translationSeqAtRankMask case_000383_rank case_000383_mask = case_000383_seq := by
  rw [translationSeqAtRankMask, case_000383_unrank]
  exact case_000383_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000383_bAtRank :
    translationBAtRankMask case_000383_rank case_000383_mask = case_000383_b := by
  rw [translationBAtRankMask, case_000383_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000383_b, case_000383_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000383_firstLine_eq :
    case_000383_support.firstLine case_000383_seq case_000383_b = case_000383_firstLine := by
  norm_num [case_000383_firstLine, case_000383_support, case_000383_seq, case_000383_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000383_secondLine_eq :
    case_000383_support.secondLine case_000383_seq case_000383_b = case_000383_secondLine := by
  norm_num [case_000383_secondLine, case_000383_support, case_000383_seq, case_000383_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000383_sourceAgrees :
    SourceAgrees case_000383_support case_000383_rank.val case_000383_mask := by
  intro hlt
  have hrank : (⟨case_000383_rank.val, hlt⟩ : Fin numPairWords) = case_000383_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000383_rank.val, hlt⟩ case_000383_mask =
        case_000383_seq := by
    simpa [hrank] using case_000383_seqAtRank
  simp [SourceChecks, hseq, case_000383_support,
    checkTranslationConstraintSource, case_000383_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000383_rows :
    EqEqPosVarSecondRows case_000383_support case_000383_rank.val case_000383_mask := by
  intro hlt
  have hrank : (⟨case_000383_rank.val, hlt⟩ : Fin numPairWords) = case_000383_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000383_rank.val, hlt⟩ case_000383_mask =
        case_000383_seq := by
    simpa [hrank] using case_000383_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000383_rank.val, hlt⟩ case_000383_mask =
        case_000383_b := by
    simpa [hrank] using case_000383_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000383_support case_000383_rank.val hlt
          case_000383_mask = case_000383_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000383_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000383_support case_000383_rank.val hlt
          case_000383_mask = case_000383_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000383_secondLine_eq]
  have case_000383_fixedFirst :
      FixedRow (FirstLineAt case_000383_support case_000383_rank.val hlt case_000383_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000383_firstLine, FixedRow]
  have case_000383_rowSecond :
      EqEqPosRow (SecondLineAt case_000383_support case_000383_rank.val hlt case_000383_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000383_secondLine, EqEqPosRow]
  exact ⟨case_000383_fixedFirst, case_000383_rowSecond⟩

private theorem case_000383_existsRows :
    ExistsEqEqPosVarSecondRows case_000383_rank.val case_000383_mask :=
  ⟨case_000383_support, case_000383_sourceAgrees, case_000383_rows⟩

private theorem case_000383_covered :
    RowPropertyParametricCovered case_000383_rank.val case_000383_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000383_existsRows

inductive Group011Covered : Nat -> SignMask -> Prop
  | case_000352 : Group011Covered case_000352_rank.val case_000352_mask
  | case_000353 : Group011Covered case_000353_rank.val case_000353_mask
  | case_000354 : Group011Covered case_000354_rank.val case_000354_mask
  | case_000355 : Group011Covered case_000355_rank.val case_000355_mask
  | case_000356 : Group011Covered case_000356_rank.val case_000356_mask
  | case_000357 : Group011Covered case_000357_rank.val case_000357_mask
  | case_000358 : Group011Covered case_000358_rank.val case_000358_mask
  | case_000359 : Group011Covered case_000359_rank.val case_000359_mask
  | case_000360 : Group011Covered case_000360_rank.val case_000360_mask
  | case_000361 : Group011Covered case_000361_rank.val case_000361_mask
  | case_000362 : Group011Covered case_000362_rank.val case_000362_mask
  | case_000363 : Group011Covered case_000363_rank.val case_000363_mask
  | case_000364 : Group011Covered case_000364_rank.val case_000364_mask
  | case_000365 : Group011Covered case_000365_rank.val case_000365_mask
  | case_000366 : Group011Covered case_000366_rank.val case_000366_mask
  | case_000367 : Group011Covered case_000367_rank.val case_000367_mask
  | case_000368 : Group011Covered case_000368_rank.val case_000368_mask
  | case_000369 : Group011Covered case_000369_rank.val case_000369_mask
  | case_000370 : Group011Covered case_000370_rank.val case_000370_mask
  | case_000371 : Group011Covered case_000371_rank.val case_000371_mask
  | case_000372 : Group011Covered case_000372_rank.val case_000372_mask
  | case_000373 : Group011Covered case_000373_rank.val case_000373_mask
  | case_000374 : Group011Covered case_000374_rank.val case_000374_mask
  | case_000375 : Group011Covered case_000375_rank.val case_000375_mask
  | case_000376 : Group011Covered case_000376_rank.val case_000376_mask
  | case_000377 : Group011Covered case_000377_rank.val case_000377_mask
  | case_000378 : Group011Covered case_000378_rank.val case_000378_mask
  | case_000379 : Group011Covered case_000379_rank.val case_000379_mask
  | case_000380 : Group011Covered case_000380_rank.val case_000380_mask
  | case_000381 : Group011Covered case_000381_rank.val case_000381_mask
  | case_000382 : Group011Covered case_000382_rank.val case_000382_mask
  | case_000383 : Group011Covered case_000383_rank.val case_000383_mask

theorem Group011GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group011Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000352 =>
      exact RowPropertyParametricCovered.kills case_000352_covered
  | case_000353 =>
      exact RowPropertyParametricCovered.kills case_000353_covered
  | case_000354 =>
      exact RowPropertyParametricCovered.kills case_000354_covered
  | case_000355 =>
      exact RowPropertyParametricCovered.kills case_000355_covered
  | case_000356 =>
      exact RowPropertyParametricCovered.kills case_000356_covered
  | case_000357 =>
      exact RowPropertyParametricCovered.kills case_000357_covered
  | case_000358 =>
      exact RowPropertyParametricCovered.kills case_000358_covered
  | case_000359 =>
      exact RowPropertyParametricCovered.kills case_000359_covered
  | case_000360 =>
      exact RowPropertyParametricCovered.kills case_000360_covered
  | case_000361 =>
      exact RowPropertyParametricCovered.kills case_000361_covered
  | case_000362 =>
      exact RowPropertyParametricCovered.kills case_000362_covered
  | case_000363 =>
      exact RowPropertyParametricCovered.kills case_000363_covered
  | case_000364 =>
      exact RowPropertyParametricCovered.kills case_000364_covered
  | case_000365 =>
      exact RowPropertyParametricCovered.kills case_000365_covered
  | case_000366 =>
      exact RowPropertyParametricCovered.kills case_000366_covered
  | case_000367 =>
      exact RowPropertyParametricCovered.kills case_000367_covered
  | case_000368 =>
      exact RowPropertyParametricCovered.kills case_000368_covered
  | case_000369 =>
      exact RowPropertyParametricCovered.kills case_000369_covered
  | case_000370 =>
      exact RowPropertyParametricCovered.kills case_000370_covered
  | case_000371 =>
      exact RowPropertyParametricCovered.kills case_000371_covered
  | case_000372 =>
      exact RowPropertyParametricCovered.kills case_000372_covered
  | case_000373 =>
      exact RowPropertyParametricCovered.kills case_000373_covered
  | case_000374 =>
      exact RowPropertyParametricCovered.kills case_000374_covered
  | case_000375 =>
      exact RowPropertyParametricCovered.kills case_000375_covered
  | case_000376 =>
      exact RowPropertyParametricCovered.kills case_000376_covered
  | case_000377 =>
      exact RowPropertyParametricCovered.kills case_000377_covered
  | case_000378 =>
      exact RowPropertyParametricCovered.kills case_000378_covered
  | case_000379 =>
      exact RowPropertyParametricCovered.kills case_000379_covered
  | case_000380 =>
      exact RowPropertyParametricCovered.kills case_000380_covered
  | case_000381 =>
      exact RowPropertyParametricCovered.kills case_000381_covered
  | case_000382 =>
      exact RowPropertyParametricCovered.kills case_000382_covered
  | case_000383 =>
      exact RowPropertyParametricCovered.kills case_000383_covered

theorem Group011_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group011
