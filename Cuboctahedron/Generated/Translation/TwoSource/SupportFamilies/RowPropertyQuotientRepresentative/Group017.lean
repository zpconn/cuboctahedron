import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group017

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
private def case_000544_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000544_mask : SignMask := ⟨24, by decide⟩
private def case_000544_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000544_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000544_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000544_b : Vec3 Rat := { x := (-220/27), y := (-380/27), z := (-284/27) }
private def case_000544_firstLine : StrictLin2 := { a := -1, b := -1, c := (-277/55) }
private def case_000544_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000544_rankWord :
    rankPairWord? case_000544_word = some case_000544_rank := by
  decide

private theorem case_000544_unrank :
    unrankPairWord case_000544_rank = case_000544_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000544_word case_000544_rank).1
    case_000544_rankWord |>.symm

private theorem case_000544_seqChoice :
    translationChoiceSeq case_000544_word case_000544_mask = case_000544_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000544_seqAtRank :
    translationSeqAtRankMask case_000544_rank case_000544_mask = case_000544_seq := by
  rw [translationSeqAtRankMask, case_000544_unrank]
  exact case_000544_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000544_bAtRank :
    translationBAtRankMask case_000544_rank case_000544_mask = case_000544_b := by
  rw [translationBAtRankMask, case_000544_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000544_b, case_000544_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000544_firstLine_eq :
    case_000544_support.firstLine case_000544_seq case_000544_b = case_000544_firstLine := by
  norm_num [case_000544_firstLine, case_000544_support, case_000544_seq, case_000544_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000544_secondLine_eq :
    case_000544_support.secondLine case_000544_seq case_000544_b = case_000544_secondLine := by
  norm_num [case_000544_secondLine, case_000544_support, case_000544_seq, case_000544_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000544_sourceAgrees :
    SourceAgrees case_000544_support case_000544_rank.val case_000544_mask := by
  intro hlt
  have hrank : (⟨case_000544_rank.val, hlt⟩ : Fin numPairWords) = case_000544_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000544_rank.val, hlt⟩ case_000544_mask =
        case_000544_seq := by
    simpa [hrank] using case_000544_seqAtRank
  simp [SourceChecks, hseq, case_000544_support,
    checkTranslationConstraintSource, case_000544_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000544_rows :
    EqEqPosVarFirstRows case_000544_support case_000544_rank.val case_000544_mask := by
  intro hlt
  have hrank : (⟨case_000544_rank.val, hlt⟩ : Fin numPairWords) = case_000544_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000544_rank.val, hlt⟩ case_000544_mask =
        case_000544_seq := by
    simpa [hrank] using case_000544_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000544_rank.val, hlt⟩ case_000544_mask =
        case_000544_b := by
    simpa [hrank] using case_000544_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000544_support case_000544_rank.val hlt
          case_000544_mask = case_000544_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000544_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000544_support case_000544_rank.val hlt
          case_000544_mask = case_000544_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000544_secondLine_eq]
  have case_000544_rowFirst :
      EqEqPosRow (FirstLineAt case_000544_support case_000544_rank.val hlt case_000544_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000544_firstLine, EqEqPosRow]
  have case_000544_fixedSecond :
      FixedRow (SecondLineAt case_000544_support case_000544_rank.val hlt case_000544_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000544_secondLine, FixedRow]
  exact ⟨case_000544_rowFirst, case_000544_fixedSecond⟩

private theorem case_000544_existsRows :
    ExistsEqEqPosVarFirstRows case_000544_rank.val case_000544_mask :=
  ⟨case_000544_support, case_000544_sourceAgrees, case_000544_rows⟩

private theorem case_000544_covered :
    RowPropertyParametricCovered case_000544_rank.val case_000544_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000544_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000545_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000545_mask : SignMask := ⟨30, by decide⟩
private def case_000545_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000545_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000545_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000545_b : Vec3 Rat := { x := (-364/27), y := (-236/27), z := (76/27) }
private def case_000545_firstLine : StrictLin2 := { a := (-91/51), b := (-91/51), c := (-251/51) }
private def case_000545_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000545_rankWord :
    rankPairWord? case_000545_word = some case_000545_rank := by
  decide

private theorem case_000545_unrank :
    unrankPairWord case_000545_rank = case_000545_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000545_word case_000545_rank).1
    case_000545_rankWord |>.symm

private theorem case_000545_seqChoice :
    translationChoiceSeq case_000545_word case_000545_mask = case_000545_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000545_seqAtRank :
    translationSeqAtRankMask case_000545_rank case_000545_mask = case_000545_seq := by
  rw [translationSeqAtRankMask, case_000545_unrank]
  exact case_000545_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000545_bAtRank :
    translationBAtRankMask case_000545_rank case_000545_mask = case_000545_b := by
  rw [translationBAtRankMask, case_000545_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000545_b, case_000545_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000545_firstLine_eq :
    case_000545_support.firstLine case_000545_seq case_000545_b = case_000545_firstLine := by
  norm_num [case_000545_firstLine, case_000545_support, case_000545_seq, case_000545_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000545_secondLine_eq :
    case_000545_support.secondLine case_000545_seq case_000545_b = case_000545_secondLine := by
  norm_num [case_000545_secondLine, case_000545_support, case_000545_seq, case_000545_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000545_sourceAgrees :
    SourceAgrees case_000545_support case_000545_rank.val case_000545_mask := by
  intro hlt
  have hrank : (⟨case_000545_rank.val, hlt⟩ : Fin numPairWords) = case_000545_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000545_rank.val, hlt⟩ case_000545_mask =
        case_000545_seq := by
    simpa [hrank] using case_000545_seqAtRank
  simp [SourceChecks, hseq, case_000545_support,
    checkTranslationConstraintSource, case_000545_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000545_rows :
    EqEqPosVarFirstRows case_000545_support case_000545_rank.val case_000545_mask := by
  intro hlt
  have hrank : (⟨case_000545_rank.val, hlt⟩ : Fin numPairWords) = case_000545_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000545_rank.val, hlt⟩ case_000545_mask =
        case_000545_seq := by
    simpa [hrank] using case_000545_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000545_rank.val, hlt⟩ case_000545_mask =
        case_000545_b := by
    simpa [hrank] using case_000545_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000545_support case_000545_rank.val hlt
          case_000545_mask = case_000545_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000545_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000545_support case_000545_rank.val hlt
          case_000545_mask = case_000545_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000545_secondLine_eq]
  have case_000545_rowFirst :
      EqEqPosRow (FirstLineAt case_000545_support case_000545_rank.val hlt case_000545_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000545_firstLine, EqEqPosRow]
  have case_000545_fixedSecond :
      FixedRow (SecondLineAt case_000545_support case_000545_rank.val hlt case_000545_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000545_secondLine, FixedRow]
  exact ⟨case_000545_rowFirst, case_000545_fixedSecond⟩

private theorem case_000545_existsRows :
    ExistsEqEqPosVarFirstRows case_000545_rank.val case_000545_mask :=
  ⟨case_000545_support, case_000545_sourceAgrees, case_000545_rows⟩

private theorem case_000545_covered :
    RowPropertyParametricCovered case_000545_rank.val case_000545_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000545_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000546_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000546_mask : SignMask := ⟨54, by decide⟩
private def case_000546_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000546_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000546_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000546_b : Vec3 Rat := { x := (-44/27), y := (-76/27), z := (332/27) }
private def case_000546_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000546_secondLine : StrictLin2 := { a := (-33/50), b := (-33/50), c := (-63/25) }

private theorem case_000546_rankWord :
    rankPairWord? case_000546_word = some case_000546_rank := by
  decide

private theorem case_000546_unrank :
    unrankPairWord case_000546_rank = case_000546_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000546_word case_000546_rank).1
    case_000546_rankWord |>.symm

private theorem case_000546_seqChoice :
    translationChoiceSeq case_000546_word case_000546_mask = case_000546_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000546_seqAtRank :
    translationSeqAtRankMask case_000546_rank case_000546_mask = case_000546_seq := by
  rw [translationSeqAtRankMask, case_000546_unrank]
  exact case_000546_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000546_bAtRank :
    translationBAtRankMask case_000546_rank case_000546_mask = case_000546_b := by
  rw [translationBAtRankMask, case_000546_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000546_b, case_000546_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000546_firstLine_eq :
    case_000546_support.firstLine case_000546_seq case_000546_b = case_000546_firstLine := by
  norm_num [case_000546_firstLine, case_000546_support, case_000546_seq, case_000546_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000546_secondLine_eq :
    case_000546_support.secondLine case_000546_seq case_000546_b = case_000546_secondLine := by
  norm_num [case_000546_secondLine, case_000546_support, case_000546_seq, case_000546_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000546_sourceAgrees :
    SourceAgrees case_000546_support case_000546_rank.val case_000546_mask := by
  intro hlt
  have hrank : (⟨case_000546_rank.val, hlt⟩ : Fin numPairWords) = case_000546_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000546_rank.val, hlt⟩ case_000546_mask =
        case_000546_seq := by
    simpa [hrank] using case_000546_seqAtRank
  simp [SourceChecks, hseq, case_000546_support,
    checkTranslationConstraintSource, case_000546_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000546_rows :
    EqEqPosVarSecondRows case_000546_support case_000546_rank.val case_000546_mask := by
  intro hlt
  have hrank : (⟨case_000546_rank.val, hlt⟩ : Fin numPairWords) = case_000546_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000546_rank.val, hlt⟩ case_000546_mask =
        case_000546_seq := by
    simpa [hrank] using case_000546_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000546_rank.val, hlt⟩ case_000546_mask =
        case_000546_b := by
    simpa [hrank] using case_000546_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000546_support case_000546_rank.val hlt
          case_000546_mask = case_000546_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000546_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000546_support case_000546_rank.val hlt
          case_000546_mask = case_000546_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000546_secondLine_eq]
  have case_000546_fixedFirst :
      FixedRow (FirstLineAt case_000546_support case_000546_rank.val hlt case_000546_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000546_firstLine, FixedRow]
  have case_000546_rowSecond :
      EqEqPosRow (SecondLineAt case_000546_support case_000546_rank.val hlt case_000546_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000546_secondLine, EqEqPosRow]
  exact ⟨case_000546_fixedFirst, case_000546_rowSecond⟩

private theorem case_000546_existsRows :
    ExistsEqEqPosVarSecondRows case_000546_rank.val case_000546_mask :=
  ⟨case_000546_support, case_000546_sourceAgrees, case_000546_rows⟩

private theorem case_000546_covered :
    RowPropertyParametricCovered case_000546_rank.val case_000546_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000546_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000547_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000547_mask : SignMask := ⟨7, by decide⟩
private def case_000547_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000547_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000547_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000547_b : Vec3 Rat := { x := (-220/27), y := (412/27), z := (220/27) }
private def case_000547_firstLine : StrictLin2 := { a := 1, b := 1, c := (-261/55) }
private def case_000547_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000547_rankWord :
    rankPairWord? case_000547_word = some case_000547_rank := by
  decide

private theorem case_000547_unrank :
    unrankPairWord case_000547_rank = case_000547_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000547_word case_000547_rank).1
    case_000547_rankWord |>.symm

private theorem case_000547_seqChoice :
    translationChoiceSeq case_000547_word case_000547_mask = case_000547_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000547_seqAtRank :
    translationSeqAtRankMask case_000547_rank case_000547_mask = case_000547_seq := by
  rw [translationSeqAtRankMask, case_000547_unrank]
  exact case_000547_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000547_bAtRank :
    translationBAtRankMask case_000547_rank case_000547_mask = case_000547_b := by
  rw [translationBAtRankMask, case_000547_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000547_b, case_000547_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000547_firstLine_eq :
    case_000547_support.firstLine case_000547_seq case_000547_b = case_000547_firstLine := by
  norm_num [case_000547_firstLine, case_000547_support, case_000547_seq, case_000547_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000547_secondLine_eq :
    case_000547_support.secondLine case_000547_seq case_000547_b = case_000547_secondLine := by
  norm_num [case_000547_secondLine, case_000547_support, case_000547_seq, case_000547_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000547_sourceAgrees :
    SourceAgrees case_000547_support case_000547_rank.val case_000547_mask := by
  intro hlt
  have hrank : (⟨case_000547_rank.val, hlt⟩ : Fin numPairWords) = case_000547_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000547_rank.val, hlt⟩ case_000547_mask =
        case_000547_seq := by
    simpa [hrank] using case_000547_seqAtRank
  simp [SourceChecks, hseq, case_000547_support,
    checkTranslationConstraintSource, case_000547_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000547_rows :
    EqEqNegVarFirstRows case_000547_support case_000547_rank.val case_000547_mask := by
  intro hlt
  have hrank : (⟨case_000547_rank.val, hlt⟩ : Fin numPairWords) = case_000547_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000547_rank.val, hlt⟩ case_000547_mask =
        case_000547_seq := by
    simpa [hrank] using case_000547_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000547_rank.val, hlt⟩ case_000547_mask =
        case_000547_b := by
    simpa [hrank] using case_000547_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000547_support case_000547_rank.val hlt
          case_000547_mask = case_000547_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000547_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000547_support case_000547_rank.val hlt
          case_000547_mask = case_000547_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000547_secondLine_eq]
  have case_000547_rowFirst :
      EqEqNegRow (FirstLineAt case_000547_support case_000547_rank.val hlt case_000547_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000547_firstLine, EqEqNegRow]
  have case_000547_fixedSecond :
      FixedRow (SecondLineAt case_000547_support case_000547_rank.val hlt case_000547_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000547_secondLine, FixedRow]
  exact ⟨case_000547_rowFirst, case_000547_fixedSecond⟩

private theorem case_000547_existsRows :
    ExistsEqEqNegVarFirstRows case_000547_rank.val case_000547_mask :=
  ⟨case_000547_support, case_000547_sourceAgrees, case_000547_rows⟩

private theorem case_000547_covered :
    RowPropertyParametricCovered case_000547_rank.val case_000547_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000547_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000548_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000548_mask : SignMask := ⟨9, by decide⟩
private def case_000548_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000548_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000548_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000548_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000548_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000548_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000548_rankWord :
    rankPairWord? case_000548_word = some case_000548_rank := by
  decide

private theorem case_000548_unrank :
    unrankPairWord case_000548_rank = case_000548_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000548_word case_000548_rank).1
    case_000548_rankWord |>.symm

private theorem case_000548_seqChoice :
    translationChoiceSeq case_000548_word case_000548_mask = case_000548_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000548_seqAtRank :
    translationSeqAtRankMask case_000548_rank case_000548_mask = case_000548_seq := by
  rw [translationSeqAtRankMask, case_000548_unrank]
  exact case_000548_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000548_bAtRank :
    translationBAtRankMask case_000548_rank case_000548_mask = case_000548_b := by
  rw [translationBAtRankMask, case_000548_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000548_b, case_000548_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000548_firstLine_eq :
    case_000548_support.firstLine case_000548_seq case_000548_b = case_000548_firstLine := by
  norm_num [case_000548_firstLine, case_000548_support, case_000548_seq, case_000548_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000548_secondLine_eq :
    case_000548_support.secondLine case_000548_seq case_000548_b = case_000548_secondLine := by
  norm_num [case_000548_secondLine, case_000548_support, case_000548_seq, case_000548_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000548_sourceAgrees :
    SourceAgrees case_000548_support case_000548_rank.val case_000548_mask := by
  intro hlt
  have hrank : (⟨case_000548_rank.val, hlt⟩ : Fin numPairWords) = case_000548_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000548_rank.val, hlt⟩ case_000548_mask =
        case_000548_seq := by
    simpa [hrank] using case_000548_seqAtRank
  simp [SourceChecks, hseq, case_000548_support,
    checkTranslationConstraintSource, case_000548_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000548_rows :
    EqEqPosVarFirstRows case_000548_support case_000548_rank.val case_000548_mask := by
  intro hlt
  have hrank : (⟨case_000548_rank.val, hlt⟩ : Fin numPairWords) = case_000548_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000548_rank.val, hlt⟩ case_000548_mask =
        case_000548_seq := by
    simpa [hrank] using case_000548_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000548_rank.val, hlt⟩ case_000548_mask =
        case_000548_b := by
    simpa [hrank] using case_000548_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000548_support case_000548_rank.val hlt
          case_000548_mask = case_000548_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000548_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000548_support case_000548_rank.val hlt
          case_000548_mask = case_000548_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000548_secondLine_eq]
  have case_000548_rowFirst :
      EqEqPosRow (FirstLineAt case_000548_support case_000548_rank.val hlt case_000548_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000548_firstLine, EqEqPosRow]
  have case_000548_fixedSecond :
      FixedRow (SecondLineAt case_000548_support case_000548_rank.val hlt case_000548_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000548_secondLine, FixedRow]
  exact ⟨case_000548_rowFirst, case_000548_fixedSecond⟩

private theorem case_000548_existsRows :
    ExistsEqEqPosVarFirstRows case_000548_rank.val case_000548_mask :=
  ⟨case_000548_support, case_000548_sourceAgrees, case_000548_rows⟩

private theorem case_000548_covered :
    RowPropertyParametricCovered case_000548_rank.val case_000548_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000548_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000549_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000549_mask : SignMask := ⟨13, by decide⟩
private def case_000549_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000549_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000549_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000549_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000549_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000549_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000549_rankWord :
    rankPairWord? case_000549_word = some case_000549_rank := by
  decide

private theorem case_000549_unrank :
    unrankPairWord case_000549_rank = case_000549_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000549_word case_000549_rank).1
    case_000549_rankWord |>.symm

private theorem case_000549_seqChoice :
    translationChoiceSeq case_000549_word case_000549_mask = case_000549_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000549_seqAtRank :
    translationSeqAtRankMask case_000549_rank case_000549_mask = case_000549_seq := by
  rw [translationSeqAtRankMask, case_000549_unrank]
  exact case_000549_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000549_bAtRank :
    translationBAtRankMask case_000549_rank case_000549_mask = case_000549_b := by
  rw [translationBAtRankMask, case_000549_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000549_b, case_000549_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000549_firstLine_eq :
    case_000549_support.firstLine case_000549_seq case_000549_b = case_000549_firstLine := by
  norm_num [case_000549_firstLine, case_000549_support, case_000549_seq, case_000549_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000549_secondLine_eq :
    case_000549_support.secondLine case_000549_seq case_000549_b = case_000549_secondLine := by
  norm_num [case_000549_secondLine, case_000549_support, case_000549_seq, case_000549_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000549_sourceAgrees :
    SourceAgrees case_000549_support case_000549_rank.val case_000549_mask := by
  intro hlt
  have hrank : (⟨case_000549_rank.val, hlt⟩ : Fin numPairWords) = case_000549_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000549_rank.val, hlt⟩ case_000549_mask =
        case_000549_seq := by
    simpa [hrank] using case_000549_seqAtRank
  simp [SourceChecks, hseq, case_000549_support,
    checkTranslationConstraintSource, case_000549_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000549_rows :
    OppMinusOneVarFirstRows case_000549_support case_000549_rank.val case_000549_mask := by
  intro hlt
  have hrank : (⟨case_000549_rank.val, hlt⟩ : Fin numPairWords) = case_000549_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000549_rank.val, hlt⟩ case_000549_mask =
        case_000549_seq := by
    simpa [hrank] using case_000549_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000549_rank.val, hlt⟩ case_000549_mask =
        case_000549_b := by
    simpa [hrank] using case_000549_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000549_support case_000549_rank.val hlt
          case_000549_mask = case_000549_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000549_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000549_support case_000549_rank.val hlt
          case_000549_mask = case_000549_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000549_secondLine_eq]
  have case_000549_rowFirst :
      OppNegRow (FirstLineAt case_000549_support case_000549_rank.val hlt case_000549_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000549_firstLine, OppNegRow]
  have case_000549_fixedSecond :
      FixedRow (SecondLineAt case_000549_support case_000549_rank.val hlt case_000549_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000549_secondLine, FixedRow]
  exact ⟨case_000549_rowFirst, case_000549_fixedSecond⟩

private theorem case_000549_existsRows :
    ExistsOppMinusOneVarFirstRows case_000549_rank.val case_000549_mask :=
  ⟨case_000549_support, case_000549_sourceAgrees, case_000549_rows⟩

private theorem case_000549_covered :
    RowPropertyParametricCovered case_000549_rank.val case_000549_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000549_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000550_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000550_mask : SignMask := ⟨22, by decide⟩
private def case_000550_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000550_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000550_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000550_b : Vec3 Rat := { x := (-268/27), y := (-44/27), z := (268/27) }
private def case_000550_firstLine : StrictLin2 := { a := -1, b := 1, c := (-89/67) }
private def case_000550_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000550_rankWord :
    rankPairWord? case_000550_word = some case_000550_rank := by
  decide

private theorem case_000550_unrank :
    unrankPairWord case_000550_rank = case_000550_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000550_word case_000550_rank).1
    case_000550_rankWord |>.symm

private theorem case_000550_seqChoice :
    translationChoiceSeq case_000550_word case_000550_mask = case_000550_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000550_seqAtRank :
    translationSeqAtRankMask case_000550_rank case_000550_mask = case_000550_seq := by
  rw [translationSeqAtRankMask, case_000550_unrank]
  exact case_000550_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000550_bAtRank :
    translationBAtRankMask case_000550_rank case_000550_mask = case_000550_b := by
  rw [translationBAtRankMask, case_000550_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000550_b, case_000550_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000550_firstLine_eq :
    case_000550_support.firstLine case_000550_seq case_000550_b = case_000550_firstLine := by
  norm_num [case_000550_firstLine, case_000550_support, case_000550_seq, case_000550_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000550_secondLine_eq :
    case_000550_support.secondLine case_000550_seq case_000550_b = case_000550_secondLine := by
  norm_num [case_000550_secondLine, case_000550_support, case_000550_seq, case_000550_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000550_sourceAgrees :
    SourceAgrees case_000550_support case_000550_rank.val case_000550_mask := by
  intro hlt
  have hrank : (⟨case_000550_rank.val, hlt⟩ : Fin numPairWords) = case_000550_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000550_rank.val, hlt⟩ case_000550_mask =
        case_000550_seq := by
    simpa [hrank] using case_000550_seqAtRank
  simp [SourceChecks, hseq, case_000550_support,
    checkTranslationConstraintSource, case_000550_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000550_rows :
    OppOneMinusVarFirstRows case_000550_support case_000550_rank.val case_000550_mask := by
  intro hlt
  have hrank : (⟨case_000550_rank.val, hlt⟩ : Fin numPairWords) = case_000550_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000550_rank.val, hlt⟩ case_000550_mask =
        case_000550_seq := by
    simpa [hrank] using case_000550_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000550_rank.val, hlt⟩ case_000550_mask =
        case_000550_b := by
    simpa [hrank] using case_000550_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000550_support case_000550_rank.val hlt
          case_000550_mask = case_000550_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000550_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000550_support case_000550_rank.val hlt
          case_000550_mask = case_000550_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000550_secondLine_eq]
  have case_000550_rowFirst :
      OppPosRow (FirstLineAt case_000550_support case_000550_rank.val hlt case_000550_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000550_firstLine, OppPosRow]
  have case_000550_fixedSecond :
      FixedRow (SecondLineAt case_000550_support case_000550_rank.val hlt case_000550_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000550_secondLine, FixedRow]
  exact ⟨case_000550_rowFirst, case_000550_fixedSecond⟩

private theorem case_000550_existsRows :
    ExistsOppOneMinusVarFirstRows case_000550_rank.val case_000550_mask :=
  ⟨case_000550_support, case_000550_sourceAgrees, case_000550_rows⟩

private theorem case_000550_covered :
    RowPropertyParametricCovered case_000550_rank.val case_000550_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000550_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000551_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000551_mask : SignMask := ⟨24, by decide⟩
private def case_000551_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000551_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000551_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000551_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000551_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000551_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000551_rankWord :
    rankPairWord? case_000551_word = some case_000551_rank := by
  decide

private theorem case_000551_unrank :
    unrankPairWord case_000551_rank = case_000551_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000551_word case_000551_rank).1
    case_000551_rankWord |>.symm

private theorem case_000551_seqChoice :
    translationChoiceSeq case_000551_word case_000551_mask = case_000551_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000551_seqAtRank :
    translationSeqAtRankMask case_000551_rank case_000551_mask = case_000551_seq := by
  rw [translationSeqAtRankMask, case_000551_unrank]
  exact case_000551_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000551_bAtRank :
    translationBAtRankMask case_000551_rank case_000551_mask = case_000551_b := by
  rw [translationBAtRankMask, case_000551_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000551_b, case_000551_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000551_firstLine_eq :
    case_000551_support.firstLine case_000551_seq case_000551_b = case_000551_firstLine := by
  norm_num [case_000551_firstLine, case_000551_support, case_000551_seq, case_000551_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000551_secondLine_eq :
    case_000551_support.secondLine case_000551_seq case_000551_b = case_000551_secondLine := by
  norm_num [case_000551_secondLine, case_000551_support, case_000551_seq, case_000551_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000551_sourceAgrees :
    SourceAgrees case_000551_support case_000551_rank.val case_000551_mask := by
  intro hlt
  have hrank : (⟨case_000551_rank.val, hlt⟩ : Fin numPairWords) = case_000551_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000551_rank.val, hlt⟩ case_000551_mask =
        case_000551_seq := by
    simpa [hrank] using case_000551_seqAtRank
  simp [SourceChecks, hseq, case_000551_support,
    checkTranslationConstraintSource, case_000551_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000551_rows :
    EqEqPosVarFirstRows case_000551_support case_000551_rank.val case_000551_mask := by
  intro hlt
  have hrank : (⟨case_000551_rank.val, hlt⟩ : Fin numPairWords) = case_000551_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000551_rank.val, hlt⟩ case_000551_mask =
        case_000551_seq := by
    simpa [hrank] using case_000551_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000551_rank.val, hlt⟩ case_000551_mask =
        case_000551_b := by
    simpa [hrank] using case_000551_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000551_support case_000551_rank.val hlt
          case_000551_mask = case_000551_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000551_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000551_support case_000551_rank.val hlt
          case_000551_mask = case_000551_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000551_secondLine_eq]
  have case_000551_rowFirst :
      EqEqPosRow (FirstLineAt case_000551_support case_000551_rank.val hlt case_000551_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000551_firstLine, EqEqPosRow]
  have case_000551_fixedSecond :
      FixedRow (SecondLineAt case_000551_support case_000551_rank.val hlt case_000551_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000551_secondLine, FixedRow]
  exact ⟨case_000551_rowFirst, case_000551_fixedSecond⟩

private theorem case_000551_existsRows :
    ExistsEqEqPosVarFirstRows case_000551_rank.val case_000551_mask :=
  ⟨case_000551_support, case_000551_sourceAgrees, case_000551_rows⟩

private theorem case_000551_covered :
    RowPropertyParametricCovered case_000551_rank.val case_000551_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000551_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000552_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000552_mask : SignMask := ⟨28, by decide⟩
private def case_000552_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000552_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000552_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000552_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000552_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000552_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000552_rankWord :
    rankPairWord? case_000552_word = some case_000552_rank := by
  decide

private theorem case_000552_unrank :
    unrankPairWord case_000552_rank = case_000552_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000552_word case_000552_rank).1
    case_000552_rankWord |>.symm

private theorem case_000552_seqChoice :
    translationChoiceSeq case_000552_word case_000552_mask = case_000552_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000552_seqAtRank :
    translationSeqAtRankMask case_000552_rank case_000552_mask = case_000552_seq := by
  rw [translationSeqAtRankMask, case_000552_unrank]
  exact case_000552_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000552_bAtRank :
    translationBAtRankMask case_000552_rank case_000552_mask = case_000552_b := by
  rw [translationBAtRankMask, case_000552_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000552_b, case_000552_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000552_firstLine_eq :
    case_000552_support.firstLine case_000552_seq case_000552_b = case_000552_firstLine := by
  norm_num [case_000552_firstLine, case_000552_support, case_000552_seq, case_000552_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000552_secondLine_eq :
    case_000552_support.secondLine case_000552_seq case_000552_b = case_000552_secondLine := by
  norm_num [case_000552_secondLine, case_000552_support, case_000552_seq, case_000552_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000552_sourceAgrees :
    SourceAgrees case_000552_support case_000552_rank.val case_000552_mask := by
  intro hlt
  have hrank : (⟨case_000552_rank.val, hlt⟩ : Fin numPairWords) = case_000552_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000552_rank.val, hlt⟩ case_000552_mask =
        case_000552_seq := by
    simpa [hrank] using case_000552_seqAtRank
  simp [SourceChecks, hseq, case_000552_support,
    checkTranslationConstraintSource, case_000552_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000552_rows :
    OppOneMinusVarFirstRows case_000552_support case_000552_rank.val case_000552_mask := by
  intro hlt
  have hrank : (⟨case_000552_rank.val, hlt⟩ : Fin numPairWords) = case_000552_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000552_rank.val, hlt⟩ case_000552_mask =
        case_000552_seq := by
    simpa [hrank] using case_000552_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000552_rank.val, hlt⟩ case_000552_mask =
        case_000552_b := by
    simpa [hrank] using case_000552_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000552_support case_000552_rank.val hlt
          case_000552_mask = case_000552_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000552_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000552_support case_000552_rank.val hlt
          case_000552_mask = case_000552_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000552_secondLine_eq]
  have case_000552_rowFirst :
      OppPosRow (FirstLineAt case_000552_support case_000552_rank.val hlt case_000552_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000552_firstLine, OppPosRow]
  have case_000552_fixedSecond :
      FixedRow (SecondLineAt case_000552_support case_000552_rank.val hlt case_000552_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000552_secondLine, FixedRow]
  exact ⟨case_000552_rowFirst, case_000552_fixedSecond⟩

private theorem case_000552_existsRows :
    ExistsOppOneMinusVarFirstRows case_000552_rank.val case_000552_mask :=
  ⟨case_000552_support, case_000552_sourceAgrees, case_000552_rows⟩

private theorem case_000552_covered :
    RowPropertyParametricCovered case_000552_rank.val case_000552_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000552_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000553_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000553_mask : SignMask := ⟨30, by decide⟩
private def case_000553_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000553_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000553_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000553_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (20/9) }
private def case_000553_firstLine : StrictLin2 := { a := (-29/21), b := (-29/21), c := (-61/21) }
private def case_000553_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000553_rankWord :
    rankPairWord? case_000553_word = some case_000553_rank := by
  decide

private theorem case_000553_unrank :
    unrankPairWord case_000553_rank = case_000553_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000553_word case_000553_rank).1
    case_000553_rankWord |>.symm

private theorem case_000553_seqChoice :
    translationChoiceSeq case_000553_word case_000553_mask = case_000553_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000553_seqAtRank :
    translationSeqAtRankMask case_000553_rank case_000553_mask = case_000553_seq := by
  rw [translationSeqAtRankMask, case_000553_unrank]
  exact case_000553_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000553_bAtRank :
    translationBAtRankMask case_000553_rank case_000553_mask = case_000553_b := by
  rw [translationBAtRankMask, case_000553_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000553_b, case_000553_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000553_firstLine_eq :
    case_000553_support.firstLine case_000553_seq case_000553_b = case_000553_firstLine := by
  norm_num [case_000553_firstLine, case_000553_support, case_000553_seq, case_000553_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000553_secondLine_eq :
    case_000553_support.secondLine case_000553_seq case_000553_b = case_000553_secondLine := by
  norm_num [case_000553_secondLine, case_000553_support, case_000553_seq, case_000553_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000553_sourceAgrees :
    SourceAgrees case_000553_support case_000553_rank.val case_000553_mask := by
  intro hlt
  have hrank : (⟨case_000553_rank.val, hlt⟩ : Fin numPairWords) = case_000553_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000553_rank.val, hlt⟩ case_000553_mask =
        case_000553_seq := by
    simpa [hrank] using case_000553_seqAtRank
  simp [SourceChecks, hseq, case_000553_support,
    checkTranslationConstraintSource, case_000553_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000553_rows :
    EqEqPosVarFirstRows case_000553_support case_000553_rank.val case_000553_mask := by
  intro hlt
  have hrank : (⟨case_000553_rank.val, hlt⟩ : Fin numPairWords) = case_000553_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000553_rank.val, hlt⟩ case_000553_mask =
        case_000553_seq := by
    simpa [hrank] using case_000553_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000553_rank.val, hlt⟩ case_000553_mask =
        case_000553_b := by
    simpa [hrank] using case_000553_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000553_support case_000553_rank.val hlt
          case_000553_mask = case_000553_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000553_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000553_support case_000553_rank.val hlt
          case_000553_mask = case_000553_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000553_secondLine_eq]
  have case_000553_rowFirst :
      EqEqPosRow (FirstLineAt case_000553_support case_000553_rank.val hlt case_000553_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000553_firstLine, EqEqPosRow]
  have case_000553_fixedSecond :
      FixedRow (SecondLineAt case_000553_support case_000553_rank.val hlt case_000553_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000553_secondLine, FixedRow]
  exact ⟨case_000553_rowFirst, case_000553_fixedSecond⟩

private theorem case_000553_existsRows :
    ExistsEqEqPosVarFirstRows case_000553_rank.val case_000553_mask :=
  ⟨case_000553_support, case_000553_sourceAgrees, case_000553_rows⟩

private theorem case_000553_covered :
    RowPropertyParametricCovered case_000553_rank.val case_000553_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000553_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000554_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000554_mask : SignMask := ⟨31, by decide⟩
private def case_000554_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000554_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000554_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000554_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000554_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000554_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000554_rankWord :
    rankPairWord? case_000554_word = some case_000554_rank := by
  decide

private theorem case_000554_unrank :
    unrankPairWord case_000554_rank = case_000554_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000554_word case_000554_rank).1
    case_000554_rankWord |>.symm

private theorem case_000554_seqChoice :
    translationChoiceSeq case_000554_word case_000554_mask = case_000554_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000554_seqAtRank :
    translationSeqAtRankMask case_000554_rank case_000554_mask = case_000554_seq := by
  rw [translationSeqAtRankMask, case_000554_unrank]
  exact case_000554_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000554_bAtRank :
    translationBAtRankMask case_000554_rank case_000554_mask = case_000554_b := by
  rw [translationBAtRankMask, case_000554_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000554_b, case_000554_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000554_firstLine_eq :
    case_000554_support.firstLine case_000554_seq case_000554_b = case_000554_firstLine := by
  norm_num [case_000554_firstLine, case_000554_support, case_000554_seq, case_000554_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000554_secondLine_eq :
    case_000554_support.secondLine case_000554_seq case_000554_b = case_000554_secondLine := by
  norm_num [case_000554_secondLine, case_000554_support, case_000554_seq, case_000554_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000554_sourceAgrees :
    SourceAgrees case_000554_support case_000554_rank.val case_000554_mask := by
  intro hlt
  have hrank : (⟨case_000554_rank.val, hlt⟩ : Fin numPairWords) = case_000554_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000554_rank.val, hlt⟩ case_000554_mask =
        case_000554_seq := by
    simpa [hrank] using case_000554_seqAtRank
  simp [SourceChecks, hseq, case_000554_support,
    checkTranslationConstraintSource, case_000554_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000554_rows :
    EqEqPosVarFirstRows case_000554_support case_000554_rank.val case_000554_mask := by
  intro hlt
  have hrank : (⟨case_000554_rank.val, hlt⟩ : Fin numPairWords) = case_000554_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000554_rank.val, hlt⟩ case_000554_mask =
        case_000554_seq := by
    simpa [hrank] using case_000554_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000554_rank.val, hlt⟩ case_000554_mask =
        case_000554_b := by
    simpa [hrank] using case_000554_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000554_support case_000554_rank.val hlt
          case_000554_mask = case_000554_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000554_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000554_support case_000554_rank.val hlt
          case_000554_mask = case_000554_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000554_secondLine_eq]
  have case_000554_rowFirst :
      EqEqPosRow (FirstLineAt case_000554_support case_000554_rank.val hlt case_000554_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000554_firstLine, EqEqPosRow]
  have case_000554_fixedSecond :
      FixedRow (SecondLineAt case_000554_support case_000554_rank.val hlt case_000554_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000554_secondLine, FixedRow]
  exact ⟨case_000554_rowFirst, case_000554_fixedSecond⟩

private theorem case_000554_existsRows :
    ExistsEqEqPosVarFirstRows case_000554_rank.val case_000554_mask :=
  ⟨case_000554_support, case_000554_sourceAgrees, case_000554_rows⟩

private theorem case_000554_covered :
    RowPropertyParametricCovered case_000554_rank.val case_000554_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000554_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000555_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000555_mask : SignMask := ⟨54, by decide⟩
private def case_000555_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000555_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000555_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000555_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (116/9) }
private def case_000555_firstLine : StrictLin2 := { a := (-10/21), b := (-10/21), c := (-4/7) }
private def case_000555_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000555_rankWord :
    rankPairWord? case_000555_word = some case_000555_rank := by
  decide

private theorem case_000555_unrank :
    unrankPairWord case_000555_rank = case_000555_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000555_word case_000555_rank).1
    case_000555_rankWord |>.symm

private theorem case_000555_seqChoice :
    translationChoiceSeq case_000555_word case_000555_mask = case_000555_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000555_seqAtRank :
    translationSeqAtRankMask case_000555_rank case_000555_mask = case_000555_seq := by
  rw [translationSeqAtRankMask, case_000555_unrank]
  exact case_000555_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000555_bAtRank :
    translationBAtRankMask case_000555_rank case_000555_mask = case_000555_b := by
  rw [translationBAtRankMask, case_000555_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000555_b, case_000555_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000555_firstLine_eq :
    case_000555_support.firstLine case_000555_seq case_000555_b = case_000555_firstLine := by
  norm_num [case_000555_firstLine, case_000555_support, case_000555_seq, case_000555_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000555_secondLine_eq :
    case_000555_support.secondLine case_000555_seq case_000555_b = case_000555_secondLine := by
  norm_num [case_000555_secondLine, case_000555_support, case_000555_seq, case_000555_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000555_sourceAgrees :
    SourceAgrees case_000555_support case_000555_rank.val case_000555_mask := by
  intro hlt
  have hrank : (⟨case_000555_rank.val, hlt⟩ : Fin numPairWords) = case_000555_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000555_rank.val, hlt⟩ case_000555_mask =
        case_000555_seq := by
    simpa [hrank] using case_000555_seqAtRank
  simp [SourceChecks, hseq, case_000555_support,
    checkTranslationConstraintSource, case_000555_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000555_rows :
    EqEqPosVarFirstRows case_000555_support case_000555_rank.val case_000555_mask := by
  intro hlt
  have hrank : (⟨case_000555_rank.val, hlt⟩ : Fin numPairWords) = case_000555_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000555_rank.val, hlt⟩ case_000555_mask =
        case_000555_seq := by
    simpa [hrank] using case_000555_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000555_rank.val, hlt⟩ case_000555_mask =
        case_000555_b := by
    simpa [hrank] using case_000555_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000555_support case_000555_rank.val hlt
          case_000555_mask = case_000555_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000555_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000555_support case_000555_rank.val hlt
          case_000555_mask = case_000555_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000555_secondLine_eq]
  have case_000555_rowFirst :
      EqEqPosRow (FirstLineAt case_000555_support case_000555_rank.val hlt case_000555_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000555_firstLine, EqEqPosRow]
  have case_000555_fixedSecond :
      FixedRow (SecondLineAt case_000555_support case_000555_rank.val hlt case_000555_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000555_secondLine, FixedRow]
  exact ⟨case_000555_rowFirst, case_000555_fixedSecond⟩

private theorem case_000555_existsRows :
    ExistsEqEqPosVarFirstRows case_000555_rank.val case_000555_mask :=
  ⟨case_000555_support, case_000555_sourceAgrees, case_000555_rows⟩

private theorem case_000555_covered :
    RowPropertyParametricCovered case_000555_rank.val case_000555_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000555_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000556_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000556_mask : SignMask := ⟨55, by decide⟩
private def case_000556_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000556_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000556_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000556_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000556_firstLine : StrictLin2 := { a := (-10/39), b := (-10/39), c := (-16/13) }
private def case_000556_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000556_rankWord :
    rankPairWord? case_000556_word = some case_000556_rank := by
  decide

private theorem case_000556_unrank :
    unrankPairWord case_000556_rank = case_000556_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000556_word case_000556_rank).1
    case_000556_rankWord |>.symm

private theorem case_000556_seqChoice :
    translationChoiceSeq case_000556_word case_000556_mask = case_000556_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000556_seqAtRank :
    translationSeqAtRankMask case_000556_rank case_000556_mask = case_000556_seq := by
  rw [translationSeqAtRankMask, case_000556_unrank]
  exact case_000556_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000556_bAtRank :
    translationBAtRankMask case_000556_rank case_000556_mask = case_000556_b := by
  rw [translationBAtRankMask, case_000556_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000556_b, case_000556_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000556_firstLine_eq :
    case_000556_support.firstLine case_000556_seq case_000556_b = case_000556_firstLine := by
  norm_num [case_000556_firstLine, case_000556_support, case_000556_seq, case_000556_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000556_secondLine_eq :
    case_000556_support.secondLine case_000556_seq case_000556_b = case_000556_secondLine := by
  norm_num [case_000556_secondLine, case_000556_support, case_000556_seq, case_000556_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000556_sourceAgrees :
    SourceAgrees case_000556_support case_000556_rank.val case_000556_mask := by
  intro hlt
  have hrank : (⟨case_000556_rank.val, hlt⟩ : Fin numPairWords) = case_000556_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000556_rank.val, hlt⟩ case_000556_mask =
        case_000556_seq := by
    simpa [hrank] using case_000556_seqAtRank
  simp [SourceChecks, hseq, case_000556_support,
    checkTranslationConstraintSource, case_000556_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000556_rows :
    EqEqPosVarFirstRows case_000556_support case_000556_rank.val case_000556_mask := by
  intro hlt
  have hrank : (⟨case_000556_rank.val, hlt⟩ : Fin numPairWords) = case_000556_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000556_rank.val, hlt⟩ case_000556_mask =
        case_000556_seq := by
    simpa [hrank] using case_000556_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000556_rank.val, hlt⟩ case_000556_mask =
        case_000556_b := by
    simpa [hrank] using case_000556_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000556_support case_000556_rank.val hlt
          case_000556_mask = case_000556_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000556_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000556_support case_000556_rank.val hlt
          case_000556_mask = case_000556_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000556_secondLine_eq]
  have case_000556_rowFirst :
      EqEqPosRow (FirstLineAt case_000556_support case_000556_rank.val hlt case_000556_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000556_firstLine, EqEqPosRow]
  have case_000556_fixedSecond :
      FixedRow (SecondLineAt case_000556_support case_000556_rank.val hlt case_000556_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000556_secondLine, FixedRow]
  exact ⟨case_000556_rowFirst, case_000556_fixedSecond⟩

private theorem case_000556_existsRows :
    ExistsEqEqPosVarFirstRows case_000556_rank.val case_000556_mask :=
  ⟨case_000556_support, case_000556_sourceAgrees, case_000556_rows⟩

private theorem case_000556_covered :
    RowPropertyParametricCovered case_000556_rank.val case_000556_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000556_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000557_rank : Fin numPairWords := ⟨323, by decide⟩
private def case_000557_mask : SignMask := ⟨62, by decide⟩
private def case_000557_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000557_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000557_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000557_b : Vec3 Rat := { x := (-140/27), y := (-268/27), z := (140/27) }
private def case_000557_firstLine : StrictLin2 := { a := (-35/3), b := (-35/3), c := (-163/3) }
private def case_000557_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000557_rankWord :
    rankPairWord? case_000557_word = some case_000557_rank := by
  decide

private theorem case_000557_unrank :
    unrankPairWord case_000557_rank = case_000557_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000557_word case_000557_rank).1
    case_000557_rankWord |>.symm

private theorem case_000557_seqChoice :
    translationChoiceSeq case_000557_word case_000557_mask = case_000557_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000557_seqAtRank :
    translationSeqAtRankMask case_000557_rank case_000557_mask = case_000557_seq := by
  rw [translationSeqAtRankMask, case_000557_unrank]
  exact case_000557_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000557_bAtRank :
    translationBAtRankMask case_000557_rank case_000557_mask = case_000557_b := by
  rw [translationBAtRankMask, case_000557_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000557_b, case_000557_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000557_firstLine_eq :
    case_000557_support.firstLine case_000557_seq case_000557_b = case_000557_firstLine := by
  norm_num [case_000557_firstLine, case_000557_support, case_000557_seq, case_000557_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000557_secondLine_eq :
    case_000557_support.secondLine case_000557_seq case_000557_b = case_000557_secondLine := by
  norm_num [case_000557_secondLine, case_000557_support, case_000557_seq, case_000557_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000557_sourceAgrees :
    SourceAgrees case_000557_support case_000557_rank.val case_000557_mask := by
  intro hlt
  have hrank : (⟨case_000557_rank.val, hlt⟩ : Fin numPairWords) = case_000557_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000557_rank.val, hlt⟩ case_000557_mask =
        case_000557_seq := by
    simpa [hrank] using case_000557_seqAtRank
  simp [SourceChecks, hseq, case_000557_support,
    checkTranslationConstraintSource, case_000557_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000557_rows :
    EqEqPosVarFirstRows case_000557_support case_000557_rank.val case_000557_mask := by
  intro hlt
  have hrank : (⟨case_000557_rank.val, hlt⟩ : Fin numPairWords) = case_000557_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000557_rank.val, hlt⟩ case_000557_mask =
        case_000557_seq := by
    simpa [hrank] using case_000557_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000557_rank.val, hlt⟩ case_000557_mask =
        case_000557_b := by
    simpa [hrank] using case_000557_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000557_support case_000557_rank.val hlt
          case_000557_mask = case_000557_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000557_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000557_support case_000557_rank.val hlt
          case_000557_mask = case_000557_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000557_secondLine_eq]
  have case_000557_rowFirst :
      EqEqPosRow (FirstLineAt case_000557_support case_000557_rank.val hlt case_000557_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000557_firstLine, EqEqPosRow]
  have case_000557_fixedSecond :
      FixedRow (SecondLineAt case_000557_support case_000557_rank.val hlt case_000557_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000557_secondLine, FixedRow]
  exact ⟨case_000557_rowFirst, case_000557_fixedSecond⟩

private theorem case_000557_existsRows :
    ExistsEqEqPosVarFirstRows case_000557_rank.val case_000557_mask :=
  ⟨case_000557_support, case_000557_sourceAgrees, case_000557_rows⟩

private theorem case_000557_covered :
    RowPropertyParametricCovered case_000557_rank.val case_000557_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000557_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000558_rank : Fin numPairWords := ⟨357, by decide⟩
private def case_000558_mask : SignMask := ⟨7, by decide⟩
private def case_000558_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000558_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000558_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000558_b : Vec3 Rat := { x := (-580/81), y := (1348/81), z := (868/81) }
private def case_000558_firstLine : StrictLin2 := { a := (-290/699), b := (-290/699), c := (-176/233) }
private def case_000558_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000558_rankWord :
    rankPairWord? case_000558_word = some case_000558_rank := by
  decide

private theorem case_000558_unrank :
    unrankPairWord case_000558_rank = case_000558_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000558_word case_000558_rank).1
    case_000558_rankWord |>.symm

private theorem case_000558_seqChoice :
    translationChoiceSeq case_000558_word case_000558_mask = case_000558_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000558_seqAtRank :
    translationSeqAtRankMask case_000558_rank case_000558_mask = case_000558_seq := by
  rw [translationSeqAtRankMask, case_000558_unrank]
  exact case_000558_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000558_bAtRank :
    translationBAtRankMask case_000558_rank case_000558_mask = case_000558_b := by
  rw [translationBAtRankMask, case_000558_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000558_b, case_000558_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000558_firstLine_eq :
    case_000558_support.firstLine case_000558_seq case_000558_b = case_000558_firstLine := by
  norm_num [case_000558_firstLine, case_000558_support, case_000558_seq, case_000558_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000558_secondLine_eq :
    case_000558_support.secondLine case_000558_seq case_000558_b = case_000558_secondLine := by
  norm_num [case_000558_secondLine, case_000558_support, case_000558_seq, case_000558_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000558_sourceAgrees :
    SourceAgrees case_000558_support case_000558_rank.val case_000558_mask := by
  intro hlt
  have hrank : (⟨case_000558_rank.val, hlt⟩ : Fin numPairWords) = case_000558_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000558_rank.val, hlt⟩ case_000558_mask =
        case_000558_seq := by
    simpa [hrank] using case_000558_seqAtRank
  simp [SourceChecks, hseq, case_000558_support,
    checkTranslationConstraintSource, case_000558_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000558_rows :
    EqEqPosVarFirstRows case_000558_support case_000558_rank.val case_000558_mask := by
  intro hlt
  have hrank : (⟨case_000558_rank.val, hlt⟩ : Fin numPairWords) = case_000558_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000558_rank.val, hlt⟩ case_000558_mask =
        case_000558_seq := by
    simpa [hrank] using case_000558_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000558_rank.val, hlt⟩ case_000558_mask =
        case_000558_b := by
    simpa [hrank] using case_000558_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000558_support case_000558_rank.val hlt
          case_000558_mask = case_000558_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000558_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000558_support case_000558_rank.val hlt
          case_000558_mask = case_000558_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000558_secondLine_eq]
  have case_000558_rowFirst :
      EqEqPosRow (FirstLineAt case_000558_support case_000558_rank.val hlt case_000558_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000558_firstLine, EqEqPosRow]
  have case_000558_fixedSecond :
      FixedRow (SecondLineAt case_000558_support case_000558_rank.val hlt case_000558_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000558_secondLine, FixedRow]
  exact ⟨case_000558_rowFirst, case_000558_fixedSecond⟩

private theorem case_000558_existsRows :
    ExistsEqEqPosVarFirstRows case_000558_rank.val case_000558_mask :=
  ⟨case_000558_support, case_000558_sourceAgrees, case_000558_rows⟩

private theorem case_000558_covered :
    RowPropertyParametricCovered case_000558_rank.val case_000558_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000558_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000559_rank : Fin numPairWords := ⟨357, by decide⟩
private def case_000559_mask : SignMask := ⟨13, by decide⟩
private def case_000559_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000559_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000559_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000559_b : Vec3 Rat := { x := (-820/81), y := (1012/81), z := (-404/81) }
private def case_000559_firstLine : StrictLin2 := { a := 1, b := -1, c := (-503/205) }
private def case_000559_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000559_rankWord :
    rankPairWord? case_000559_word = some case_000559_rank := by
  decide

private theorem case_000559_unrank :
    unrankPairWord case_000559_rank = case_000559_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000559_word case_000559_rank).1
    case_000559_rankWord |>.symm

private theorem case_000559_seqChoice :
    translationChoiceSeq case_000559_word case_000559_mask = case_000559_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000559_seqAtRank :
    translationSeqAtRankMask case_000559_rank case_000559_mask = case_000559_seq := by
  rw [translationSeqAtRankMask, case_000559_unrank]
  exact case_000559_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000559_bAtRank :
    translationBAtRankMask case_000559_rank case_000559_mask = case_000559_b := by
  rw [translationBAtRankMask, case_000559_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000559_b, case_000559_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000559_firstLine_eq :
    case_000559_support.firstLine case_000559_seq case_000559_b = case_000559_firstLine := by
  norm_num [case_000559_firstLine, case_000559_support, case_000559_seq, case_000559_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000559_secondLine_eq :
    case_000559_support.secondLine case_000559_seq case_000559_b = case_000559_secondLine := by
  norm_num [case_000559_secondLine, case_000559_support, case_000559_seq, case_000559_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000559_sourceAgrees :
    SourceAgrees case_000559_support case_000559_rank.val case_000559_mask := by
  intro hlt
  have hrank : (⟨case_000559_rank.val, hlt⟩ : Fin numPairWords) = case_000559_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000559_rank.val, hlt⟩ case_000559_mask =
        case_000559_seq := by
    simpa [hrank] using case_000559_seqAtRank
  simp [SourceChecks, hseq, case_000559_support,
    checkTranslationConstraintSource, case_000559_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000559_rows :
    OppMinusOneVarFirstRows case_000559_support case_000559_rank.val case_000559_mask := by
  intro hlt
  have hrank : (⟨case_000559_rank.val, hlt⟩ : Fin numPairWords) = case_000559_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000559_rank.val, hlt⟩ case_000559_mask =
        case_000559_seq := by
    simpa [hrank] using case_000559_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000559_rank.val, hlt⟩ case_000559_mask =
        case_000559_b := by
    simpa [hrank] using case_000559_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000559_support case_000559_rank.val hlt
          case_000559_mask = case_000559_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000559_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000559_support case_000559_rank.val hlt
          case_000559_mask = case_000559_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000559_secondLine_eq]
  have case_000559_rowFirst :
      OppNegRow (FirstLineAt case_000559_support case_000559_rank.val hlt case_000559_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000559_firstLine, OppNegRow]
  have case_000559_fixedSecond :
      FixedRow (SecondLineAt case_000559_support case_000559_rank.val hlt case_000559_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000559_secondLine, FixedRow]
  exact ⟨case_000559_rowFirst, case_000559_fixedSecond⟩

private theorem case_000559_existsRows :
    ExistsOppMinusOneVarFirstRows case_000559_rank.val case_000559_mask :=
  ⟨case_000559_support, case_000559_sourceAgrees, case_000559_rows⟩

private theorem case_000559_covered :
    RowPropertyParametricCovered case_000559_rank.val case_000559_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000559_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000560_rank : Fin numPairWords := ⟨357, by decide⟩
private def case_000560_mask : SignMask := ⟨22, by decide⟩
private def case_000560_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000560_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000560_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000560_b : Vec3 Rat := { x := (-724/81), y := (-20/81), z := (1012/81) }
private def case_000560_firstLine : StrictLin2 := { a := -1, b := 1, c := (-335/181) }
private def case_000560_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000560_rankWord :
    rankPairWord? case_000560_word = some case_000560_rank := by
  decide

private theorem case_000560_unrank :
    unrankPairWord case_000560_rank = case_000560_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000560_word case_000560_rank).1
    case_000560_rankWord |>.symm

private theorem case_000560_seqChoice :
    translationChoiceSeq case_000560_word case_000560_mask = case_000560_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000560_seqAtRank :
    translationSeqAtRankMask case_000560_rank case_000560_mask = case_000560_seq := by
  rw [translationSeqAtRankMask, case_000560_unrank]
  exact case_000560_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000560_bAtRank :
    translationBAtRankMask case_000560_rank case_000560_mask = case_000560_b := by
  rw [translationBAtRankMask, case_000560_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000560_b, case_000560_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000560_firstLine_eq :
    case_000560_support.firstLine case_000560_seq case_000560_b = case_000560_firstLine := by
  norm_num [case_000560_firstLine, case_000560_support, case_000560_seq, case_000560_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000560_secondLine_eq :
    case_000560_support.secondLine case_000560_seq case_000560_b = case_000560_secondLine := by
  norm_num [case_000560_secondLine, case_000560_support, case_000560_seq, case_000560_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000560_sourceAgrees :
    SourceAgrees case_000560_support case_000560_rank.val case_000560_mask := by
  intro hlt
  have hrank : (⟨case_000560_rank.val, hlt⟩ : Fin numPairWords) = case_000560_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000560_rank.val, hlt⟩ case_000560_mask =
        case_000560_seq := by
    simpa [hrank] using case_000560_seqAtRank
  simp [SourceChecks, hseq, case_000560_support,
    checkTranslationConstraintSource, case_000560_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000560_rows :
    OppOneMinusVarFirstRows case_000560_support case_000560_rank.val case_000560_mask := by
  intro hlt
  have hrank : (⟨case_000560_rank.val, hlt⟩ : Fin numPairWords) = case_000560_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000560_rank.val, hlt⟩ case_000560_mask =
        case_000560_seq := by
    simpa [hrank] using case_000560_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000560_rank.val, hlt⟩ case_000560_mask =
        case_000560_b := by
    simpa [hrank] using case_000560_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000560_support case_000560_rank.val hlt
          case_000560_mask = case_000560_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000560_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000560_support case_000560_rank.val hlt
          case_000560_mask = case_000560_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000560_secondLine_eq]
  have case_000560_rowFirst :
      OppPosRow (FirstLineAt case_000560_support case_000560_rank.val hlt case_000560_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000560_firstLine, OppPosRow]
  have case_000560_fixedSecond :
      FixedRow (SecondLineAt case_000560_support case_000560_rank.val hlt case_000560_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000560_secondLine, FixedRow]
  exact ⟨case_000560_rowFirst, case_000560_fixedSecond⟩

private theorem case_000560_existsRows :
    ExistsOppOneMinusVarFirstRows case_000560_rank.val case_000560_mask :=
  ⟨case_000560_support, case_000560_sourceAgrees, case_000560_rows⟩

private theorem case_000560_covered :
    RowPropertyParametricCovered case_000560_rank.val case_000560_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000560_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000561_rank : Fin numPairWords := ⟨357, by decide⟩
private def case_000561_mask : SignMask := ⟨28, by decide⟩
private def case_000561_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000561_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000561_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000561_b : Vec3 Rat := { x := (-964/81), y := (-356/81), z := (-260/81) }
private def case_000561_firstLine : StrictLin2 := { a := (241/87), b := (241/87), c := (-299/29) }
private def case_000561_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000561_rankWord :
    rankPairWord? case_000561_word = some case_000561_rank := by
  decide

private theorem case_000561_unrank :
    unrankPairWord case_000561_rank = case_000561_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000561_word case_000561_rank).1
    case_000561_rankWord |>.symm

private theorem case_000561_seqChoice :
    translationChoiceSeq case_000561_word case_000561_mask = case_000561_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000561_seqAtRank :
    translationSeqAtRankMask case_000561_rank case_000561_mask = case_000561_seq := by
  rw [translationSeqAtRankMask, case_000561_unrank]
  exact case_000561_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000561_bAtRank :
    translationBAtRankMask case_000561_rank case_000561_mask = case_000561_b := by
  rw [translationBAtRankMask, case_000561_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000561_b, case_000561_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000561_firstLine_eq :
    case_000561_support.firstLine case_000561_seq case_000561_b = case_000561_firstLine := by
  norm_num [case_000561_firstLine, case_000561_support, case_000561_seq, case_000561_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000561_secondLine_eq :
    case_000561_support.secondLine case_000561_seq case_000561_b = case_000561_secondLine := by
  norm_num [case_000561_secondLine, case_000561_support, case_000561_seq, case_000561_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000561_sourceAgrees :
    SourceAgrees case_000561_support case_000561_rank.val case_000561_mask := by
  intro hlt
  have hrank : (⟨case_000561_rank.val, hlt⟩ : Fin numPairWords) = case_000561_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000561_rank.val, hlt⟩ case_000561_mask =
        case_000561_seq := by
    simpa [hrank] using case_000561_seqAtRank
  simp [SourceChecks, hseq, case_000561_support,
    checkTranslationConstraintSource, case_000561_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000561_rows :
    EqEqNegVarFirstRows case_000561_support case_000561_rank.val case_000561_mask := by
  intro hlt
  have hrank : (⟨case_000561_rank.val, hlt⟩ : Fin numPairWords) = case_000561_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000561_rank.val, hlt⟩ case_000561_mask =
        case_000561_seq := by
    simpa [hrank] using case_000561_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000561_rank.val, hlt⟩ case_000561_mask =
        case_000561_b := by
    simpa [hrank] using case_000561_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000561_support case_000561_rank.val hlt
          case_000561_mask = case_000561_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000561_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000561_support case_000561_rank.val hlt
          case_000561_mask = case_000561_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000561_secondLine_eq]
  have case_000561_rowFirst :
      EqEqNegRow (FirstLineAt case_000561_support case_000561_rank.val hlt case_000561_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000561_firstLine, EqEqNegRow]
  have case_000561_fixedSecond :
      FixedRow (SecondLineAt case_000561_support case_000561_rank.val hlt case_000561_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000561_secondLine, FixedRow]
  exact ⟨case_000561_rowFirst, case_000561_fixedSecond⟩

private theorem case_000561_existsRows :
    ExistsEqEqNegVarFirstRows case_000561_rank.val case_000561_mask :=
  ⟨case_000561_support, case_000561_sourceAgrees, case_000561_rows⟩

private theorem case_000561_covered :
    RowPropertyParametricCovered case_000561_rank.val case_000561_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000561_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=0ef1248979a51a72226ced64e0cd085ba836f78524dfad98ea5b8d5c95f5fa61`. -/
private def case_000562_rank : Fin numPairWords := ⟨357, by decide⟩
private def case_000562_mask : SignMask := ⟨30, by decide⟩
private def case_000562_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000562_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000562_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000562_b : Vec3 Rat := { x := (-964/81), y := (-356/81), z := (388/81) }
private def case_000562_firstLine : StrictLin2 := { a := (241/89), b := 0, c := (-367/89) }
private def case_000562_secondLine : StrictLin2 := { a := (-81/356), b := 0, c := (5103/85796) }

private theorem case_000562_rankWord :
    rankPairWord? case_000562_word = some case_000562_rank := by
  decide

private theorem case_000562_unrank :
    unrankPairWord case_000562_rank = case_000562_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000562_word case_000562_rank).1
    case_000562_rankWord |>.symm

private theorem case_000562_seqChoice :
    translationChoiceSeq case_000562_word case_000562_mask = case_000562_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000562_seqAtRank :
    translationSeqAtRankMask case_000562_rank case_000562_mask = case_000562_seq := by
  rw [translationSeqAtRankMask, case_000562_unrank]
  exact case_000562_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000562_bAtRank :
    translationBAtRankMask case_000562_rank case_000562_mask = case_000562_b := by
  rw [translationBAtRankMask, case_000562_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000562_b, case_000562_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000562_firstLine_eq :
    case_000562_support.firstLine case_000562_seq case_000562_b = case_000562_firstLine := by
  norm_num [case_000562_firstLine, case_000562_support, case_000562_seq, case_000562_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000562_secondLine_eq :
    case_000562_support.secondLine case_000562_seq case_000562_b = case_000562_secondLine := by
  norm_num [case_000562_secondLine, case_000562_support, case_000562_seq, case_000562_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000562_sourceAgrees :
    SourceAgrees case_000562_support case_000562_rank.val case_000562_mask := by
  intro hlt
  have hrank : (⟨case_000562_rank.val, hlt⟩ : Fin numPairWords) = case_000562_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000562_rank.val, hlt⟩ case_000562_mask =
        case_000562_seq := by
    simpa [hrank] using case_000562_seqAtRank
  simp [SourceChecks, hseq, case_000562_support,
    checkTranslationConstraintSource, case_000562_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000562_rows :
    AxisAOnlyRows case_000562_support case_000562_rank.val case_000562_mask := by
  intro hlt
  have hrank : (⟨case_000562_rank.val, hlt⟩ : Fin numPairWords) = case_000562_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000562_rank.val, hlt⟩ case_000562_mask =
        case_000562_seq := by
    simpa [hrank] using case_000562_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000562_rank.val, hlt⟩ case_000562_mask =
        case_000562_b := by
    simpa [hrank] using case_000562_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000562_support case_000562_rank.val hlt
          case_000562_mask = case_000562_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000562_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000562_support case_000562_rank.val hlt
          case_000562_mask = case_000562_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000562_secondLine_eq]
  have case_000562_firstBZero :
      (FirstLineAt case_000562_support case_000562_rank.val hlt case_000562_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000562_firstLine]
  have case_000562_secondBZero :
      (SecondLineAt case_000562_support case_000562_rank.val hlt case_000562_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000562_secondLine]
  have case_000562_aProductNeg :
      (FirstLineAt case_000562_support case_000562_rank.val hlt case_000562_mask).a *
          (SecondLineAt case_000562_support case_000562_rank.val hlt case_000562_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000562_firstLine, case_000562_secondLine]
  have case_000562_weightedCNonpos :
      (SupportPair.multipliersAt case_000562_support
          case_000562_rank.val hlt case_000562_mask).1 *
          (FirstLineAt case_000562_support case_000562_rank.val hlt case_000562_mask).c +
        (SupportPair.multipliersAt case_000562_support
          case_000562_rank.val hlt case_000562_mask).2 *
          (SecondLineAt case_000562_support case_000562_rank.val hlt case_000562_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_000562_firstLine_eq,
      case_000562_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_000562_firstLine, case_000562_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_000562_firstBZero, case_000562_secondBZero,
    case_000562_aProductNeg, case_000562_weightedCNonpos⟩

private theorem case_000562_existsRows :
    ExistsAxisAOnlyRows case_000562_rank.val case_000562_mask :=
  ⟨case_000562_support, case_000562_sourceAgrees, case_000562_rows⟩

private theorem case_000562_covered :
    RowPropertyParametricCovered case_000562_rank.val case_000562_mask :=
  RowPropertyParametricCovered.axisAOnly case_000562_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000563_rank : Fin numPairWords := ⟨357, by decide⟩
private def case_000563_mask : SignMask := ⟨54, by decide⟩
private def case_000563_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000563_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000563_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000563_b : Vec3 Rat := { x := (-260/81), y := (-580/81), z := (836/81) }
private def case_000563_firstLine : StrictLin2 := { a := -1, b := 1, c := (-643/65) }
private def case_000563_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000563_rankWord :
    rankPairWord? case_000563_word = some case_000563_rank := by
  decide

private theorem case_000563_unrank :
    unrankPairWord case_000563_rank = case_000563_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000563_word case_000563_rank).1
    case_000563_rankWord |>.symm

private theorem case_000563_seqChoice :
    translationChoiceSeq case_000563_word case_000563_mask = case_000563_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000563_seqAtRank :
    translationSeqAtRankMask case_000563_rank case_000563_mask = case_000563_seq := by
  rw [translationSeqAtRankMask, case_000563_unrank]
  exact case_000563_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000563_bAtRank :
    translationBAtRankMask case_000563_rank case_000563_mask = case_000563_b := by
  rw [translationBAtRankMask, case_000563_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000563_b, case_000563_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000563_firstLine_eq :
    case_000563_support.firstLine case_000563_seq case_000563_b = case_000563_firstLine := by
  norm_num [case_000563_firstLine, case_000563_support, case_000563_seq, case_000563_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000563_secondLine_eq :
    case_000563_support.secondLine case_000563_seq case_000563_b = case_000563_secondLine := by
  norm_num [case_000563_secondLine, case_000563_support, case_000563_seq, case_000563_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000563_sourceAgrees :
    SourceAgrees case_000563_support case_000563_rank.val case_000563_mask := by
  intro hlt
  have hrank : (⟨case_000563_rank.val, hlt⟩ : Fin numPairWords) = case_000563_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000563_rank.val, hlt⟩ case_000563_mask =
        case_000563_seq := by
    simpa [hrank] using case_000563_seqAtRank
  simp [SourceChecks, hseq, case_000563_support,
    checkTranslationConstraintSource, case_000563_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000563_rows :
    OppOneMinusVarFirstRows case_000563_support case_000563_rank.val case_000563_mask := by
  intro hlt
  have hrank : (⟨case_000563_rank.val, hlt⟩ : Fin numPairWords) = case_000563_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000563_rank.val, hlt⟩ case_000563_mask =
        case_000563_seq := by
    simpa [hrank] using case_000563_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000563_rank.val, hlt⟩ case_000563_mask =
        case_000563_b := by
    simpa [hrank] using case_000563_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000563_support case_000563_rank.val hlt
          case_000563_mask = case_000563_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000563_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000563_support case_000563_rank.val hlt
          case_000563_mask = case_000563_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000563_secondLine_eq]
  have case_000563_rowFirst :
      OppPosRow (FirstLineAt case_000563_support case_000563_rank.val hlt case_000563_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000563_firstLine, OppPosRow]
  have case_000563_fixedSecond :
      FixedRow (SecondLineAt case_000563_support case_000563_rank.val hlt case_000563_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000563_secondLine, FixedRow]
  exact ⟨case_000563_rowFirst, case_000563_fixedSecond⟩

private theorem case_000563_existsRows :
    ExistsOppOneMinusVarFirstRows case_000563_rank.val case_000563_mask :=
  ⟨case_000563_support, case_000563_sourceAgrees, case_000563_rows⟩

private theorem case_000563_covered :
    RowPropertyParametricCovered case_000563_rank.val case_000563_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000563_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000564_rank : Fin numPairWords := ⟨357, by decide⟩
private def case_000564_mask : SignMask := ⟨56, by decide⟩
private def case_000564_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000564_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000564_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000564_b : Vec3 Rat := { x := (-68/81), y := (-1348/81), z := (-868/81) }
private def case_000564_firstLine : StrictLin2 := { a := -1, b := -1, c := (-1091/17) }
private def case_000564_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000564_rankWord :
    rankPairWord? case_000564_word = some case_000564_rank := by
  decide

private theorem case_000564_unrank :
    unrankPairWord case_000564_rank = case_000564_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000564_word case_000564_rank).1
    case_000564_rankWord |>.symm

private theorem case_000564_seqChoice :
    translationChoiceSeq case_000564_word case_000564_mask = case_000564_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000564_seqAtRank :
    translationSeqAtRankMask case_000564_rank case_000564_mask = case_000564_seq := by
  rw [translationSeqAtRankMask, case_000564_unrank]
  exact case_000564_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000564_bAtRank :
    translationBAtRankMask case_000564_rank case_000564_mask = case_000564_b := by
  rw [translationBAtRankMask, case_000564_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000564_b, case_000564_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000564_firstLine_eq :
    case_000564_support.firstLine case_000564_seq case_000564_b = case_000564_firstLine := by
  norm_num [case_000564_firstLine, case_000564_support, case_000564_seq, case_000564_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000564_secondLine_eq :
    case_000564_support.secondLine case_000564_seq case_000564_b = case_000564_secondLine := by
  norm_num [case_000564_secondLine, case_000564_support, case_000564_seq, case_000564_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000564_sourceAgrees :
    SourceAgrees case_000564_support case_000564_rank.val case_000564_mask := by
  intro hlt
  have hrank : (⟨case_000564_rank.val, hlt⟩ : Fin numPairWords) = case_000564_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000564_rank.val, hlt⟩ case_000564_mask =
        case_000564_seq := by
    simpa [hrank] using case_000564_seqAtRank
  simp [SourceChecks, hseq, case_000564_support,
    checkTranslationConstraintSource, case_000564_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000564_rows :
    EqEqPosVarFirstRows case_000564_support case_000564_rank.val case_000564_mask := by
  intro hlt
  have hrank : (⟨case_000564_rank.val, hlt⟩ : Fin numPairWords) = case_000564_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000564_rank.val, hlt⟩ case_000564_mask =
        case_000564_seq := by
    simpa [hrank] using case_000564_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000564_rank.val, hlt⟩ case_000564_mask =
        case_000564_b := by
    simpa [hrank] using case_000564_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000564_support case_000564_rank.val hlt
          case_000564_mask = case_000564_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000564_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000564_support case_000564_rank.val hlt
          case_000564_mask = case_000564_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000564_secondLine_eq]
  have case_000564_rowFirst :
      EqEqPosRow (FirstLineAt case_000564_support case_000564_rank.val hlt case_000564_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000564_firstLine, EqEqPosRow]
  have case_000564_fixedSecond :
      FixedRow (SecondLineAt case_000564_support case_000564_rank.val hlt case_000564_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000564_secondLine, FixedRow]
  exact ⟨case_000564_rowFirst, case_000564_fixedSecond⟩

private theorem case_000564_existsRows :
    ExistsEqEqPosVarFirstRows case_000564_rank.val case_000564_mask :=
  ⟨case_000564_support, case_000564_sourceAgrees, case_000564_rows⟩

private theorem case_000564_covered :
    RowPropertyParametricCovered case_000564_rank.val case_000564_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000564_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000565_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000565_mask : SignMask := ⟨9, by decide⟩
private def case_000565_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000565_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000565_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000565_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000565_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000565_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000565_rankWord :
    rankPairWord? case_000565_word = some case_000565_rank := by
  decide

private theorem case_000565_unrank :
    unrankPairWord case_000565_rank = case_000565_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000565_word case_000565_rank).1
    case_000565_rankWord |>.symm

private theorem case_000565_seqChoice :
    translationChoiceSeq case_000565_word case_000565_mask = case_000565_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000565_seqAtRank :
    translationSeqAtRankMask case_000565_rank case_000565_mask = case_000565_seq := by
  rw [translationSeqAtRankMask, case_000565_unrank]
  exact case_000565_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000565_bAtRank :
    translationBAtRankMask case_000565_rank case_000565_mask = case_000565_b := by
  rw [translationBAtRankMask, case_000565_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000565_b, case_000565_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000565_firstLine_eq :
    case_000565_support.firstLine case_000565_seq case_000565_b = case_000565_firstLine := by
  norm_num [case_000565_firstLine, case_000565_support, case_000565_seq, case_000565_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000565_secondLine_eq :
    case_000565_support.secondLine case_000565_seq case_000565_b = case_000565_secondLine := by
  norm_num [case_000565_secondLine, case_000565_support, case_000565_seq, case_000565_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000565_sourceAgrees :
    SourceAgrees case_000565_support case_000565_rank.val case_000565_mask := by
  intro hlt
  have hrank : (⟨case_000565_rank.val, hlt⟩ : Fin numPairWords) = case_000565_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000565_rank.val, hlt⟩ case_000565_mask =
        case_000565_seq := by
    simpa [hrank] using case_000565_seqAtRank
  simp [SourceChecks, hseq, case_000565_support,
    checkTranslationConstraintSource, case_000565_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000565_rows :
    EqEqPosVarFirstRows case_000565_support case_000565_rank.val case_000565_mask := by
  intro hlt
  have hrank : (⟨case_000565_rank.val, hlt⟩ : Fin numPairWords) = case_000565_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000565_rank.val, hlt⟩ case_000565_mask =
        case_000565_seq := by
    simpa [hrank] using case_000565_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000565_rank.val, hlt⟩ case_000565_mask =
        case_000565_b := by
    simpa [hrank] using case_000565_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000565_support case_000565_rank.val hlt
          case_000565_mask = case_000565_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000565_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000565_support case_000565_rank.val hlt
          case_000565_mask = case_000565_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000565_secondLine_eq]
  have case_000565_rowFirst :
      EqEqPosRow (FirstLineAt case_000565_support case_000565_rank.val hlt case_000565_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000565_firstLine, EqEqPosRow]
  have case_000565_fixedSecond :
      FixedRow (SecondLineAt case_000565_support case_000565_rank.val hlt case_000565_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000565_secondLine, FixedRow]
  exact ⟨case_000565_rowFirst, case_000565_fixedSecond⟩

private theorem case_000565_existsRows :
    ExistsEqEqPosVarFirstRows case_000565_rank.val case_000565_mask :=
  ⟨case_000565_support, case_000565_sourceAgrees, case_000565_rows⟩

private theorem case_000565_covered :
    RowPropertyParametricCovered case_000565_rank.val case_000565_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000565_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000566_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000566_mask : SignMask := ⟨13, by decide⟩
private def case_000566_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000566_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000566_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000566_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000566_firstLine : StrictLin2 := { a := (-25/33), b := (-25/33), c := (-101/33) }
private def case_000566_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000566_rankWord :
    rankPairWord? case_000566_word = some case_000566_rank := by
  decide

private theorem case_000566_unrank :
    unrankPairWord case_000566_rank = case_000566_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000566_word case_000566_rank).1
    case_000566_rankWord |>.symm

private theorem case_000566_seqChoice :
    translationChoiceSeq case_000566_word case_000566_mask = case_000566_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000566_seqAtRank :
    translationSeqAtRankMask case_000566_rank case_000566_mask = case_000566_seq := by
  rw [translationSeqAtRankMask, case_000566_unrank]
  exact case_000566_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000566_bAtRank :
    translationBAtRankMask case_000566_rank case_000566_mask = case_000566_b := by
  rw [translationBAtRankMask, case_000566_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000566_b, case_000566_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000566_firstLine_eq :
    case_000566_support.firstLine case_000566_seq case_000566_b = case_000566_firstLine := by
  norm_num [case_000566_firstLine, case_000566_support, case_000566_seq, case_000566_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000566_secondLine_eq :
    case_000566_support.secondLine case_000566_seq case_000566_b = case_000566_secondLine := by
  norm_num [case_000566_secondLine, case_000566_support, case_000566_seq, case_000566_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000566_sourceAgrees :
    SourceAgrees case_000566_support case_000566_rank.val case_000566_mask := by
  intro hlt
  have hrank : (⟨case_000566_rank.val, hlt⟩ : Fin numPairWords) = case_000566_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000566_rank.val, hlt⟩ case_000566_mask =
        case_000566_seq := by
    simpa [hrank] using case_000566_seqAtRank
  simp [SourceChecks, hseq, case_000566_support,
    checkTranslationConstraintSource, case_000566_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000566_rows :
    EqEqPosVarFirstRows case_000566_support case_000566_rank.val case_000566_mask := by
  intro hlt
  have hrank : (⟨case_000566_rank.val, hlt⟩ : Fin numPairWords) = case_000566_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000566_rank.val, hlt⟩ case_000566_mask =
        case_000566_seq := by
    simpa [hrank] using case_000566_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000566_rank.val, hlt⟩ case_000566_mask =
        case_000566_b := by
    simpa [hrank] using case_000566_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000566_support case_000566_rank.val hlt
          case_000566_mask = case_000566_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000566_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000566_support case_000566_rank.val hlt
          case_000566_mask = case_000566_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000566_secondLine_eq]
  have case_000566_rowFirst :
      EqEqPosRow (FirstLineAt case_000566_support case_000566_rank.val hlt case_000566_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000566_firstLine, EqEqPosRow]
  have case_000566_fixedSecond :
      FixedRow (SecondLineAt case_000566_support case_000566_rank.val hlt case_000566_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000566_secondLine, FixedRow]
  exact ⟨case_000566_rowFirst, case_000566_fixedSecond⟩

private theorem case_000566_existsRows :
    ExistsEqEqPosVarFirstRows case_000566_rank.val case_000566_mask :=
  ⟨case_000566_support, case_000566_sourceAgrees, case_000566_rows⟩

private theorem case_000566_covered :
    RowPropertyParametricCovered case_000566_rank.val case_000566_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000566_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000567_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000567_mask : SignMask := ⟨16, by decide⟩
private def case_000567_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000567_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000567_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000567_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (-52/9) }
private def case_000567_firstLine : StrictLin2 := { a := -1, b := -1, c := -19 }
private def case_000567_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000567_rankWord :
    rankPairWord? case_000567_word = some case_000567_rank := by
  decide

private theorem case_000567_unrank :
    unrankPairWord case_000567_rank = case_000567_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000567_word case_000567_rank).1
    case_000567_rankWord |>.symm

private theorem case_000567_seqChoice :
    translationChoiceSeq case_000567_word case_000567_mask = case_000567_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000567_seqAtRank :
    translationSeqAtRankMask case_000567_rank case_000567_mask = case_000567_seq := by
  rw [translationSeqAtRankMask, case_000567_unrank]
  exact case_000567_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000567_bAtRank :
    translationBAtRankMask case_000567_rank case_000567_mask = case_000567_b := by
  rw [translationBAtRankMask, case_000567_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000567_b, case_000567_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000567_firstLine_eq :
    case_000567_support.firstLine case_000567_seq case_000567_b = case_000567_firstLine := by
  norm_num [case_000567_firstLine, case_000567_support, case_000567_seq, case_000567_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000567_secondLine_eq :
    case_000567_support.secondLine case_000567_seq case_000567_b = case_000567_secondLine := by
  norm_num [case_000567_secondLine, case_000567_support, case_000567_seq, case_000567_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000567_sourceAgrees :
    SourceAgrees case_000567_support case_000567_rank.val case_000567_mask := by
  intro hlt
  have hrank : (⟨case_000567_rank.val, hlt⟩ : Fin numPairWords) = case_000567_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000567_rank.val, hlt⟩ case_000567_mask =
        case_000567_seq := by
    simpa [hrank] using case_000567_seqAtRank
  simp [SourceChecks, hseq, case_000567_support,
    checkTranslationConstraintSource, case_000567_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000567_rows :
    EqEqPosVarFirstRows case_000567_support case_000567_rank.val case_000567_mask := by
  intro hlt
  have hrank : (⟨case_000567_rank.val, hlt⟩ : Fin numPairWords) = case_000567_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000567_rank.val, hlt⟩ case_000567_mask =
        case_000567_seq := by
    simpa [hrank] using case_000567_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000567_rank.val, hlt⟩ case_000567_mask =
        case_000567_b := by
    simpa [hrank] using case_000567_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000567_support case_000567_rank.val hlt
          case_000567_mask = case_000567_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000567_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000567_support case_000567_rank.val hlt
          case_000567_mask = case_000567_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000567_secondLine_eq]
  have case_000567_rowFirst :
      EqEqPosRow (FirstLineAt case_000567_support case_000567_rank.val hlt case_000567_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000567_firstLine, EqEqPosRow]
  have case_000567_fixedSecond :
      FixedRow (SecondLineAt case_000567_support case_000567_rank.val hlt case_000567_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000567_secondLine, FixedRow]
  exact ⟨case_000567_rowFirst, case_000567_fixedSecond⟩

private theorem case_000567_existsRows :
    ExistsEqEqPosVarFirstRows case_000567_rank.val case_000567_mask :=
  ⟨case_000567_support, case_000567_sourceAgrees, case_000567_rows⟩

private theorem case_000567_covered :
    RowPropertyParametricCovered case_000567_rank.val case_000567_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000567_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000568_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000568_mask : SignMask := ⟨18, by decide⟩
private def case_000568_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000568_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000568_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000568_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (20/9) }
private def case_000568_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/5) }
private def case_000568_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000568_rankWord :
    rankPairWord? case_000568_word = some case_000568_rank := by
  decide

private theorem case_000568_unrank :
    unrankPairWord case_000568_rank = case_000568_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000568_word case_000568_rank).1
    case_000568_rankWord |>.symm

private theorem case_000568_seqChoice :
    translationChoiceSeq case_000568_word case_000568_mask = case_000568_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000568_seqAtRank :
    translationSeqAtRankMask case_000568_rank case_000568_mask = case_000568_seq := by
  rw [translationSeqAtRankMask, case_000568_unrank]
  exact case_000568_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000568_bAtRank :
    translationBAtRankMask case_000568_rank case_000568_mask = case_000568_b := by
  rw [translationBAtRankMask, case_000568_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000568_b, case_000568_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000568_firstLine_eq :
    case_000568_support.firstLine case_000568_seq case_000568_b = case_000568_firstLine := by
  norm_num [case_000568_firstLine, case_000568_support, case_000568_seq, case_000568_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000568_secondLine_eq :
    case_000568_support.secondLine case_000568_seq case_000568_b = case_000568_secondLine := by
  norm_num [case_000568_secondLine, case_000568_support, case_000568_seq, case_000568_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000568_sourceAgrees :
    SourceAgrees case_000568_support case_000568_rank.val case_000568_mask := by
  intro hlt
  have hrank : (⟨case_000568_rank.val, hlt⟩ : Fin numPairWords) = case_000568_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000568_rank.val, hlt⟩ case_000568_mask =
        case_000568_seq := by
    simpa [hrank] using case_000568_seqAtRank
  simp [SourceChecks, hseq, case_000568_support,
    checkTranslationConstraintSource, case_000568_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000568_rows :
    EqEqPosVarFirstRows case_000568_support case_000568_rank.val case_000568_mask := by
  intro hlt
  have hrank : (⟨case_000568_rank.val, hlt⟩ : Fin numPairWords) = case_000568_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000568_rank.val, hlt⟩ case_000568_mask =
        case_000568_seq := by
    simpa [hrank] using case_000568_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000568_rank.val, hlt⟩ case_000568_mask =
        case_000568_b := by
    simpa [hrank] using case_000568_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000568_support case_000568_rank.val hlt
          case_000568_mask = case_000568_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000568_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000568_support case_000568_rank.val hlt
          case_000568_mask = case_000568_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000568_secondLine_eq]
  have case_000568_rowFirst :
      EqEqPosRow (FirstLineAt case_000568_support case_000568_rank.val hlt case_000568_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000568_firstLine, EqEqPosRow]
  have case_000568_fixedSecond :
      FixedRow (SecondLineAt case_000568_support case_000568_rank.val hlt case_000568_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000568_secondLine, FixedRow]
  exact ⟨case_000568_rowFirst, case_000568_fixedSecond⟩

private theorem case_000568_existsRows :
    ExistsEqEqPosVarFirstRows case_000568_rank.val case_000568_mask :=
  ⟨case_000568_support, case_000568_sourceAgrees, case_000568_rows⟩

private theorem case_000568_covered :
    RowPropertyParametricCovered case_000568_rank.val case_000568_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000568_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000569_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000569_mask : SignMask := ⟨22, by decide⟩
private def case_000569_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000569_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000569_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000569_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (68/9) }
private def case_000569_firstLine : StrictLin2 := { a := (-17/9), b := (-17/9), c := (-49/9) }
private def case_000569_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000569_rankWord :
    rankPairWord? case_000569_word = some case_000569_rank := by
  decide

private theorem case_000569_unrank :
    unrankPairWord case_000569_rank = case_000569_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000569_word case_000569_rank).1
    case_000569_rankWord |>.symm

private theorem case_000569_seqChoice :
    translationChoiceSeq case_000569_word case_000569_mask = case_000569_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000569_seqAtRank :
    translationSeqAtRankMask case_000569_rank case_000569_mask = case_000569_seq := by
  rw [translationSeqAtRankMask, case_000569_unrank]
  exact case_000569_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000569_bAtRank :
    translationBAtRankMask case_000569_rank case_000569_mask = case_000569_b := by
  rw [translationBAtRankMask, case_000569_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000569_b, case_000569_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000569_firstLine_eq :
    case_000569_support.firstLine case_000569_seq case_000569_b = case_000569_firstLine := by
  norm_num [case_000569_firstLine, case_000569_support, case_000569_seq, case_000569_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000569_secondLine_eq :
    case_000569_support.secondLine case_000569_seq case_000569_b = case_000569_secondLine := by
  norm_num [case_000569_secondLine, case_000569_support, case_000569_seq, case_000569_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000569_sourceAgrees :
    SourceAgrees case_000569_support case_000569_rank.val case_000569_mask := by
  intro hlt
  have hrank : (⟨case_000569_rank.val, hlt⟩ : Fin numPairWords) = case_000569_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000569_rank.val, hlt⟩ case_000569_mask =
        case_000569_seq := by
    simpa [hrank] using case_000569_seqAtRank
  simp [SourceChecks, hseq, case_000569_support,
    checkTranslationConstraintSource, case_000569_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000569_rows :
    EqEqPosVarFirstRows case_000569_support case_000569_rank.val case_000569_mask := by
  intro hlt
  have hrank : (⟨case_000569_rank.val, hlt⟩ : Fin numPairWords) = case_000569_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000569_rank.val, hlt⟩ case_000569_mask =
        case_000569_seq := by
    simpa [hrank] using case_000569_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000569_rank.val, hlt⟩ case_000569_mask =
        case_000569_b := by
    simpa [hrank] using case_000569_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000569_support case_000569_rank.val hlt
          case_000569_mask = case_000569_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000569_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000569_support case_000569_rank.val hlt
          case_000569_mask = case_000569_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000569_secondLine_eq]
  have case_000569_rowFirst :
      EqEqPosRow (FirstLineAt case_000569_support case_000569_rank.val hlt case_000569_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000569_firstLine, EqEqPosRow]
  have case_000569_fixedSecond :
      FixedRow (SecondLineAt case_000569_support case_000569_rank.val hlt case_000569_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000569_secondLine, FixedRow]
  exact ⟨case_000569_rowFirst, case_000569_fixedSecond⟩

private theorem case_000569_existsRows :
    ExistsEqEqPosVarFirstRows case_000569_rank.val case_000569_mask :=
  ⟨case_000569_support, case_000569_sourceAgrees, case_000569_rows⟩

private theorem case_000569_covered :
    RowPropertyParametricCovered case_000569_rank.val case_000569_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000569_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000570_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000570_mask : SignMask := ⟨24, by decide⟩
private def case_000570_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000570_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000570_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000570_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000570_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000570_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000570_rankWord :
    rankPairWord? case_000570_word = some case_000570_rank := by
  decide

private theorem case_000570_unrank :
    unrankPairWord case_000570_rank = case_000570_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000570_word case_000570_rank).1
    case_000570_rankWord |>.symm

private theorem case_000570_seqChoice :
    translationChoiceSeq case_000570_word case_000570_mask = case_000570_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000570_seqAtRank :
    translationSeqAtRankMask case_000570_rank case_000570_mask = case_000570_seq := by
  rw [translationSeqAtRankMask, case_000570_unrank]
  exact case_000570_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000570_bAtRank :
    translationBAtRankMask case_000570_rank case_000570_mask = case_000570_b := by
  rw [translationBAtRankMask, case_000570_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000570_b, case_000570_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000570_firstLine_eq :
    case_000570_support.firstLine case_000570_seq case_000570_b = case_000570_firstLine := by
  norm_num [case_000570_firstLine, case_000570_support, case_000570_seq, case_000570_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000570_secondLine_eq :
    case_000570_support.secondLine case_000570_seq case_000570_b = case_000570_secondLine := by
  norm_num [case_000570_secondLine, case_000570_support, case_000570_seq, case_000570_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000570_sourceAgrees :
    SourceAgrees case_000570_support case_000570_rank.val case_000570_mask := by
  intro hlt
  have hrank : (⟨case_000570_rank.val, hlt⟩ : Fin numPairWords) = case_000570_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000570_rank.val, hlt⟩ case_000570_mask =
        case_000570_seq := by
    simpa [hrank] using case_000570_seqAtRank
  simp [SourceChecks, hseq, case_000570_support,
    checkTranslationConstraintSource, case_000570_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000570_rows :
    EqEqPosVarFirstRows case_000570_support case_000570_rank.val case_000570_mask := by
  intro hlt
  have hrank : (⟨case_000570_rank.val, hlt⟩ : Fin numPairWords) = case_000570_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000570_rank.val, hlt⟩ case_000570_mask =
        case_000570_seq := by
    simpa [hrank] using case_000570_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000570_rank.val, hlt⟩ case_000570_mask =
        case_000570_b := by
    simpa [hrank] using case_000570_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000570_support case_000570_rank.val hlt
          case_000570_mask = case_000570_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000570_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000570_support case_000570_rank.val hlt
          case_000570_mask = case_000570_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000570_secondLine_eq]
  have case_000570_rowFirst :
      EqEqPosRow (FirstLineAt case_000570_support case_000570_rank.val hlt case_000570_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000570_firstLine, EqEqPosRow]
  have case_000570_fixedSecond :
      FixedRow (SecondLineAt case_000570_support case_000570_rank.val hlt case_000570_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000570_secondLine, FixedRow]
  exact ⟨case_000570_rowFirst, case_000570_fixedSecond⟩

private theorem case_000570_existsRows :
    ExistsEqEqPosVarFirstRows case_000570_rank.val case_000570_mask :=
  ⟨case_000570_support, case_000570_sourceAgrees, case_000570_rows⟩

private theorem case_000570_covered :
    RowPropertyParametricCovered case_000570_rank.val case_000570_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000570_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000571_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000571_mask : SignMask := ⟨28, by decide⟩
private def case_000571_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000571_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000571_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000571_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000571_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000571_secondLine : StrictLin2 := { a := (9/52), b := (-9/52), c := (-9/26) }

private theorem case_000571_rankWord :
    rankPairWord? case_000571_word = some case_000571_rank := by
  decide

private theorem case_000571_unrank :
    unrankPairWord case_000571_rank = case_000571_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000571_word case_000571_rank).1
    case_000571_rankWord |>.symm

private theorem case_000571_seqChoice :
    translationChoiceSeq case_000571_word case_000571_mask = case_000571_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000571_seqAtRank :
    translationSeqAtRankMask case_000571_rank case_000571_mask = case_000571_seq := by
  rw [translationSeqAtRankMask, case_000571_unrank]
  exact case_000571_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000571_bAtRank :
    translationBAtRankMask case_000571_rank case_000571_mask = case_000571_b := by
  rw [translationBAtRankMask, case_000571_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000571_b, case_000571_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000571_firstLine_eq :
    case_000571_support.firstLine case_000571_seq case_000571_b = case_000571_firstLine := by
  norm_num [case_000571_firstLine, case_000571_support, case_000571_seq, case_000571_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000571_secondLine_eq :
    case_000571_support.secondLine case_000571_seq case_000571_b = case_000571_secondLine := by
  norm_num [case_000571_secondLine, case_000571_support, case_000571_seq, case_000571_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000571_sourceAgrees :
    SourceAgrees case_000571_support case_000571_rank.val case_000571_mask := by
  intro hlt
  have hrank : (⟨case_000571_rank.val, hlt⟩ : Fin numPairWords) = case_000571_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000571_rank.val, hlt⟩ case_000571_mask =
        case_000571_seq := by
    simpa [hrank] using case_000571_seqAtRank
  simp [SourceChecks, hseq, case_000571_support,
    checkTranslationConstraintSource, case_000571_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000571_rows :
    OppMinusOneVarSecondRows case_000571_support case_000571_rank.val case_000571_mask := by
  intro hlt
  have hrank : (⟨case_000571_rank.val, hlt⟩ : Fin numPairWords) = case_000571_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000571_rank.val, hlt⟩ case_000571_mask =
        case_000571_seq := by
    simpa [hrank] using case_000571_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000571_rank.val, hlt⟩ case_000571_mask =
        case_000571_b := by
    simpa [hrank] using case_000571_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000571_support case_000571_rank.val hlt
          case_000571_mask = case_000571_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000571_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000571_support case_000571_rank.val hlt
          case_000571_mask = case_000571_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000571_secondLine_eq]
  have case_000571_fixedFirst :
      FixedRow (FirstLineAt case_000571_support case_000571_rank.val hlt case_000571_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000571_firstLine, FixedRow]
  have case_000571_rowSecond :
      OppNegRow (SecondLineAt case_000571_support case_000571_rank.val hlt case_000571_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000571_secondLine, OppNegRow]
  exact ⟨case_000571_fixedFirst, case_000571_rowSecond⟩

private theorem case_000571_existsRows :
    ExistsOppMinusOneVarSecondRows case_000571_rank.val case_000571_mask :=
  ⟨case_000571_support, case_000571_sourceAgrees, case_000571_rows⟩

private theorem case_000571_covered :
    RowPropertyParametricCovered case_000571_rank.val case_000571_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000571_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000572_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000572_mask : SignMask := ⟨30, by decide⟩
private def case_000572_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000572_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000572_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000572_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (20/9) }
private def case_000572_firstLine : StrictLin2 := { a := (-29/21), b := (-29/21), c := (-61/21) }
private def case_000572_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000572_rankWord :
    rankPairWord? case_000572_word = some case_000572_rank := by
  decide

private theorem case_000572_unrank :
    unrankPairWord case_000572_rank = case_000572_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000572_word case_000572_rank).1
    case_000572_rankWord |>.symm

private theorem case_000572_seqChoice :
    translationChoiceSeq case_000572_word case_000572_mask = case_000572_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000572_seqAtRank :
    translationSeqAtRankMask case_000572_rank case_000572_mask = case_000572_seq := by
  rw [translationSeqAtRankMask, case_000572_unrank]
  exact case_000572_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000572_bAtRank :
    translationBAtRankMask case_000572_rank case_000572_mask = case_000572_b := by
  rw [translationBAtRankMask, case_000572_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000572_b, case_000572_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000572_firstLine_eq :
    case_000572_support.firstLine case_000572_seq case_000572_b = case_000572_firstLine := by
  norm_num [case_000572_firstLine, case_000572_support, case_000572_seq, case_000572_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000572_secondLine_eq :
    case_000572_support.secondLine case_000572_seq case_000572_b = case_000572_secondLine := by
  norm_num [case_000572_secondLine, case_000572_support, case_000572_seq, case_000572_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000572_sourceAgrees :
    SourceAgrees case_000572_support case_000572_rank.val case_000572_mask := by
  intro hlt
  have hrank : (⟨case_000572_rank.val, hlt⟩ : Fin numPairWords) = case_000572_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000572_rank.val, hlt⟩ case_000572_mask =
        case_000572_seq := by
    simpa [hrank] using case_000572_seqAtRank
  simp [SourceChecks, hseq, case_000572_support,
    checkTranslationConstraintSource, case_000572_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000572_rows :
    EqEqPosVarFirstRows case_000572_support case_000572_rank.val case_000572_mask := by
  intro hlt
  have hrank : (⟨case_000572_rank.val, hlt⟩ : Fin numPairWords) = case_000572_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000572_rank.val, hlt⟩ case_000572_mask =
        case_000572_seq := by
    simpa [hrank] using case_000572_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000572_rank.val, hlt⟩ case_000572_mask =
        case_000572_b := by
    simpa [hrank] using case_000572_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000572_support case_000572_rank.val hlt
          case_000572_mask = case_000572_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000572_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000572_support case_000572_rank.val hlt
          case_000572_mask = case_000572_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000572_secondLine_eq]
  have case_000572_rowFirst :
      EqEqPosRow (FirstLineAt case_000572_support case_000572_rank.val hlt case_000572_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000572_firstLine, EqEqPosRow]
  have case_000572_fixedSecond :
      FixedRow (SecondLineAt case_000572_support case_000572_rank.val hlt case_000572_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000572_secondLine, FixedRow]
  exact ⟨case_000572_rowFirst, case_000572_fixedSecond⟩

private theorem case_000572_existsRows :
    ExistsEqEqPosVarFirstRows case_000572_rank.val case_000572_mask :=
  ⟨case_000572_support, case_000572_sourceAgrees, case_000572_rows⟩

private theorem case_000572_covered :
    RowPropertyParametricCovered case_000572_rank.val case_000572_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000572_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000573_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000573_mask : SignMask := ⟨31, by decide⟩
private def case_000573_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000573_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000573_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000573_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000573_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000573_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000573_rankWord :
    rankPairWord? case_000573_word = some case_000573_rank := by
  decide

private theorem case_000573_unrank :
    unrankPairWord case_000573_rank = case_000573_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000573_word case_000573_rank).1
    case_000573_rankWord |>.symm

private theorem case_000573_seqChoice :
    translationChoiceSeq case_000573_word case_000573_mask = case_000573_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000573_seqAtRank :
    translationSeqAtRankMask case_000573_rank case_000573_mask = case_000573_seq := by
  rw [translationSeqAtRankMask, case_000573_unrank]
  exact case_000573_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000573_bAtRank :
    translationBAtRankMask case_000573_rank case_000573_mask = case_000573_b := by
  rw [translationBAtRankMask, case_000573_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000573_b, case_000573_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000573_firstLine_eq :
    case_000573_support.firstLine case_000573_seq case_000573_b = case_000573_firstLine := by
  norm_num [case_000573_firstLine, case_000573_support, case_000573_seq, case_000573_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000573_secondLine_eq :
    case_000573_support.secondLine case_000573_seq case_000573_b = case_000573_secondLine := by
  norm_num [case_000573_secondLine, case_000573_support, case_000573_seq, case_000573_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000573_sourceAgrees :
    SourceAgrees case_000573_support case_000573_rank.val case_000573_mask := by
  intro hlt
  have hrank : (⟨case_000573_rank.val, hlt⟩ : Fin numPairWords) = case_000573_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000573_rank.val, hlt⟩ case_000573_mask =
        case_000573_seq := by
    simpa [hrank] using case_000573_seqAtRank
  simp [SourceChecks, hseq, case_000573_support,
    checkTranslationConstraintSource, case_000573_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000573_rows :
    EqEqPosVarFirstRows case_000573_support case_000573_rank.val case_000573_mask := by
  intro hlt
  have hrank : (⟨case_000573_rank.val, hlt⟩ : Fin numPairWords) = case_000573_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000573_rank.val, hlt⟩ case_000573_mask =
        case_000573_seq := by
    simpa [hrank] using case_000573_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000573_rank.val, hlt⟩ case_000573_mask =
        case_000573_b := by
    simpa [hrank] using case_000573_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000573_support case_000573_rank.val hlt
          case_000573_mask = case_000573_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000573_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000573_support case_000573_rank.val hlt
          case_000573_mask = case_000573_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000573_secondLine_eq]
  have case_000573_rowFirst :
      EqEqPosRow (FirstLineAt case_000573_support case_000573_rank.val hlt case_000573_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000573_firstLine, EqEqPosRow]
  have case_000573_fixedSecond :
      FixedRow (SecondLineAt case_000573_support case_000573_rank.val hlt case_000573_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000573_secondLine, FixedRow]
  exact ⟨case_000573_rowFirst, case_000573_fixedSecond⟩

private theorem case_000573_existsRows :
    ExistsEqEqPosVarFirstRows case_000573_rank.val case_000573_mask :=
  ⟨case_000573_support, case_000573_sourceAgrees, case_000573_rows⟩

private theorem case_000573_covered :
    RowPropertyParametricCovered case_000573_rank.val case_000573_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000573_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000574_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000574_mask : SignMask := ⟨45, by decide⟩
private def case_000574_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000574_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000574_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000574_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (-20/9) }
private def case_000574_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_000574_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000574_rankWord :
    rankPairWord? case_000574_word = some case_000574_rank := by
  decide

private theorem case_000574_unrank :
    unrankPairWord case_000574_rank = case_000574_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000574_word case_000574_rank).1
    case_000574_rankWord |>.symm

private theorem case_000574_seqChoice :
    translationChoiceSeq case_000574_word case_000574_mask = case_000574_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000574_seqAtRank :
    translationSeqAtRankMask case_000574_rank case_000574_mask = case_000574_seq := by
  rw [translationSeqAtRankMask, case_000574_unrank]
  exact case_000574_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000574_bAtRank :
    translationBAtRankMask case_000574_rank case_000574_mask = case_000574_b := by
  rw [translationBAtRankMask, case_000574_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000574_b, case_000574_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000574_firstLine_eq :
    case_000574_support.firstLine case_000574_seq case_000574_b = case_000574_firstLine := by
  norm_num [case_000574_firstLine, case_000574_support, case_000574_seq, case_000574_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000574_secondLine_eq :
    case_000574_support.secondLine case_000574_seq case_000574_b = case_000574_secondLine := by
  norm_num [case_000574_secondLine, case_000574_support, case_000574_seq, case_000574_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000574_sourceAgrees :
    SourceAgrees case_000574_support case_000574_rank.val case_000574_mask := by
  intro hlt
  have hrank : (⟨case_000574_rank.val, hlt⟩ : Fin numPairWords) = case_000574_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000574_rank.val, hlt⟩ case_000574_mask =
        case_000574_seq := by
    simpa [hrank] using case_000574_seqAtRank
  simp [SourceChecks, hseq, case_000574_support,
    checkTranslationConstraintSource, case_000574_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000574_rows :
    OppMinusOneVarFirstRows case_000574_support case_000574_rank.val case_000574_mask := by
  intro hlt
  have hrank : (⟨case_000574_rank.val, hlt⟩ : Fin numPairWords) = case_000574_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000574_rank.val, hlt⟩ case_000574_mask =
        case_000574_seq := by
    simpa [hrank] using case_000574_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000574_rank.val, hlt⟩ case_000574_mask =
        case_000574_b := by
    simpa [hrank] using case_000574_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000574_support case_000574_rank.val hlt
          case_000574_mask = case_000574_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000574_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000574_support case_000574_rank.val hlt
          case_000574_mask = case_000574_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000574_secondLine_eq]
  have case_000574_rowFirst :
      OppNegRow (FirstLineAt case_000574_support case_000574_rank.val hlt case_000574_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000574_firstLine, OppNegRow]
  have case_000574_fixedSecond :
      FixedRow (SecondLineAt case_000574_support case_000574_rank.val hlt case_000574_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000574_secondLine, FixedRow]
  exact ⟨case_000574_rowFirst, case_000574_fixedSecond⟩

private theorem case_000574_existsRows :
    ExistsOppMinusOneVarFirstRows case_000574_rank.val case_000574_mask :=
  ⟨case_000574_support, case_000574_sourceAgrees, case_000574_rows⟩

private theorem case_000574_covered :
    RowPropertyParametricCovered case_000574_rank.val case_000574_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000574_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000575_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000575_mask : SignMask := ⟨47, by decide⟩
private def case_000575_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000575_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000575_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000575_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (52/9) }
private def case_000575_firstLine : StrictLin2 := { a := 1, b := -1, c := (-35/13) }
private def case_000575_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000575_rankWord :
    rankPairWord? case_000575_word = some case_000575_rank := by
  decide

private theorem case_000575_unrank :
    unrankPairWord case_000575_rank = case_000575_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000575_word case_000575_rank).1
    case_000575_rankWord |>.symm

private theorem case_000575_seqChoice :
    translationChoiceSeq case_000575_word case_000575_mask = case_000575_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000575_seqAtRank :
    translationSeqAtRankMask case_000575_rank case_000575_mask = case_000575_seq := by
  rw [translationSeqAtRankMask, case_000575_unrank]
  exact case_000575_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000575_bAtRank :
    translationBAtRankMask case_000575_rank case_000575_mask = case_000575_b := by
  rw [translationBAtRankMask, case_000575_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000575_b, case_000575_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000575_firstLine_eq :
    case_000575_support.firstLine case_000575_seq case_000575_b = case_000575_firstLine := by
  norm_num [case_000575_firstLine, case_000575_support, case_000575_seq, case_000575_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000575_secondLine_eq :
    case_000575_support.secondLine case_000575_seq case_000575_b = case_000575_secondLine := by
  norm_num [case_000575_secondLine, case_000575_support, case_000575_seq, case_000575_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000575_sourceAgrees :
    SourceAgrees case_000575_support case_000575_rank.val case_000575_mask := by
  intro hlt
  have hrank : (⟨case_000575_rank.val, hlt⟩ : Fin numPairWords) = case_000575_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000575_rank.val, hlt⟩ case_000575_mask =
        case_000575_seq := by
    simpa [hrank] using case_000575_seqAtRank
  simp [SourceChecks, hseq, case_000575_support,
    checkTranslationConstraintSource, case_000575_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000575_rows :
    OppMinusOneVarFirstRows case_000575_support case_000575_rank.val case_000575_mask := by
  intro hlt
  have hrank : (⟨case_000575_rank.val, hlt⟩ : Fin numPairWords) = case_000575_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000575_rank.val, hlt⟩ case_000575_mask =
        case_000575_seq := by
    simpa [hrank] using case_000575_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000575_rank.val, hlt⟩ case_000575_mask =
        case_000575_b := by
    simpa [hrank] using case_000575_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000575_support case_000575_rank.val hlt
          case_000575_mask = case_000575_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000575_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000575_support case_000575_rank.val hlt
          case_000575_mask = case_000575_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000575_secondLine_eq]
  have case_000575_rowFirst :
      OppNegRow (FirstLineAt case_000575_support case_000575_rank.val hlt case_000575_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000575_firstLine, OppNegRow]
  have case_000575_fixedSecond :
      FixedRow (SecondLineAt case_000575_support case_000575_rank.val hlt case_000575_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000575_secondLine, FixedRow]
  exact ⟨case_000575_rowFirst, case_000575_fixedSecond⟩

private theorem case_000575_existsRows :
    ExistsOppMinusOneVarFirstRows case_000575_rank.val case_000575_mask :=
  ⟨case_000575_support, case_000575_sourceAgrees, case_000575_rows⟩

private theorem case_000575_covered :
    RowPropertyParametricCovered case_000575_rank.val case_000575_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000575_existsRows

inductive Group017Covered : Nat -> SignMask -> Prop
  | case_000544 : Group017Covered case_000544_rank.val case_000544_mask
  | case_000545 : Group017Covered case_000545_rank.val case_000545_mask
  | case_000546 : Group017Covered case_000546_rank.val case_000546_mask
  | case_000547 : Group017Covered case_000547_rank.val case_000547_mask
  | case_000548 : Group017Covered case_000548_rank.val case_000548_mask
  | case_000549 : Group017Covered case_000549_rank.val case_000549_mask
  | case_000550 : Group017Covered case_000550_rank.val case_000550_mask
  | case_000551 : Group017Covered case_000551_rank.val case_000551_mask
  | case_000552 : Group017Covered case_000552_rank.val case_000552_mask
  | case_000553 : Group017Covered case_000553_rank.val case_000553_mask
  | case_000554 : Group017Covered case_000554_rank.val case_000554_mask
  | case_000555 : Group017Covered case_000555_rank.val case_000555_mask
  | case_000556 : Group017Covered case_000556_rank.val case_000556_mask
  | case_000557 : Group017Covered case_000557_rank.val case_000557_mask
  | case_000558 : Group017Covered case_000558_rank.val case_000558_mask
  | case_000559 : Group017Covered case_000559_rank.val case_000559_mask
  | case_000560 : Group017Covered case_000560_rank.val case_000560_mask
  | case_000561 : Group017Covered case_000561_rank.val case_000561_mask
  | case_000562 : Group017Covered case_000562_rank.val case_000562_mask
  | case_000563 : Group017Covered case_000563_rank.val case_000563_mask
  | case_000564 : Group017Covered case_000564_rank.val case_000564_mask
  | case_000565 : Group017Covered case_000565_rank.val case_000565_mask
  | case_000566 : Group017Covered case_000566_rank.val case_000566_mask
  | case_000567 : Group017Covered case_000567_rank.val case_000567_mask
  | case_000568 : Group017Covered case_000568_rank.val case_000568_mask
  | case_000569 : Group017Covered case_000569_rank.val case_000569_mask
  | case_000570 : Group017Covered case_000570_rank.val case_000570_mask
  | case_000571 : Group017Covered case_000571_rank.val case_000571_mask
  | case_000572 : Group017Covered case_000572_rank.val case_000572_mask
  | case_000573 : Group017Covered case_000573_rank.val case_000573_mask
  | case_000574 : Group017Covered case_000574_rank.val case_000574_mask
  | case_000575 : Group017Covered case_000575_rank.val case_000575_mask

theorem Group017GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group017Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000544 =>
      exact RowPropertyParametricCovered.kills case_000544_covered
  | case_000545 =>
      exact RowPropertyParametricCovered.kills case_000545_covered
  | case_000546 =>
      exact RowPropertyParametricCovered.kills case_000546_covered
  | case_000547 =>
      exact RowPropertyParametricCovered.kills case_000547_covered
  | case_000548 =>
      exact RowPropertyParametricCovered.kills case_000548_covered
  | case_000549 =>
      exact RowPropertyParametricCovered.kills case_000549_covered
  | case_000550 =>
      exact RowPropertyParametricCovered.kills case_000550_covered
  | case_000551 =>
      exact RowPropertyParametricCovered.kills case_000551_covered
  | case_000552 =>
      exact RowPropertyParametricCovered.kills case_000552_covered
  | case_000553 =>
      exact RowPropertyParametricCovered.kills case_000553_covered
  | case_000554 =>
      exact RowPropertyParametricCovered.kills case_000554_covered
  | case_000555 =>
      exact RowPropertyParametricCovered.kills case_000555_covered
  | case_000556 =>
      exact RowPropertyParametricCovered.kills case_000556_covered
  | case_000557 =>
      exact RowPropertyParametricCovered.kills case_000557_covered
  | case_000558 =>
      exact RowPropertyParametricCovered.kills case_000558_covered
  | case_000559 =>
      exact RowPropertyParametricCovered.kills case_000559_covered
  | case_000560 =>
      exact RowPropertyParametricCovered.kills case_000560_covered
  | case_000561 =>
      exact RowPropertyParametricCovered.kills case_000561_covered
  | case_000562 =>
      exact RowPropertyParametricCovered.kills case_000562_covered
  | case_000563 =>
      exact RowPropertyParametricCovered.kills case_000563_covered
  | case_000564 =>
      exact RowPropertyParametricCovered.kills case_000564_covered
  | case_000565 =>
      exact RowPropertyParametricCovered.kills case_000565_covered
  | case_000566 =>
      exact RowPropertyParametricCovered.kills case_000566_covered
  | case_000567 =>
      exact RowPropertyParametricCovered.kills case_000567_covered
  | case_000568 =>
      exact RowPropertyParametricCovered.kills case_000568_covered
  | case_000569 =>
      exact RowPropertyParametricCovered.kills case_000569_covered
  | case_000570 =>
      exact RowPropertyParametricCovered.kills case_000570_covered
  | case_000571 =>
      exact RowPropertyParametricCovered.kills case_000571_covered
  | case_000572 =>
      exact RowPropertyParametricCovered.kills case_000572_covered
  | case_000573 =>
      exact RowPropertyParametricCovered.kills case_000573_covered
  | case_000574 =>
      exact RowPropertyParametricCovered.kills case_000574_covered
  | case_000575 =>
      exact RowPropertyParametricCovered.kills case_000575_covered

theorem Group017_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group017
