import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group010

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
private def case_000320_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000320_mask : SignMask := ⟨18, by decide⟩
private def case_000320_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000320_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000320_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000320_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (20/9) }
private def case_000320_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000320_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000320_rankWord :
    rankPairWord? case_000320_word = some case_000320_rank := by
  decide

private theorem case_000320_unrank :
    unrankPairWord case_000320_rank = case_000320_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000320_word case_000320_rank).1
    case_000320_rankWord |>.symm

private theorem case_000320_seqChoice :
    translationChoiceSeq case_000320_word case_000320_mask = case_000320_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000320_seqAtRank :
    translationSeqAtRankMask case_000320_rank case_000320_mask = case_000320_seq := by
  rw [translationSeqAtRankMask, case_000320_unrank]
  exact case_000320_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000320_bAtRank :
    translationBAtRankMask case_000320_rank case_000320_mask = case_000320_b := by
  rw [translationBAtRankMask, case_000320_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000320_b, case_000320_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000320_firstLine_eq :
    case_000320_support.firstLine case_000320_seq case_000320_b = case_000320_firstLine := by
  norm_num [case_000320_firstLine, case_000320_support, case_000320_seq, case_000320_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000320_secondLine_eq :
    case_000320_support.secondLine case_000320_seq case_000320_b = case_000320_secondLine := by
  norm_num [case_000320_secondLine, case_000320_support, case_000320_seq, case_000320_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000320_sourceAgrees :
    SourceAgrees case_000320_support case_000320_rank.val case_000320_mask := by
  intro hlt
  have hrank : (⟨case_000320_rank.val, hlt⟩ : Fin numPairWords) = case_000320_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000320_rank.val, hlt⟩ case_000320_mask =
        case_000320_seq := by
    simpa [hrank] using case_000320_seqAtRank
  simp [SourceChecks, hseq, case_000320_support,
    checkTranslationConstraintSource, case_000320_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000320_rows :
    EqEqPosVarFirstRows case_000320_support case_000320_rank.val case_000320_mask := by
  intro hlt
  have hrank : (⟨case_000320_rank.val, hlt⟩ : Fin numPairWords) = case_000320_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000320_rank.val, hlt⟩ case_000320_mask =
        case_000320_seq := by
    simpa [hrank] using case_000320_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000320_rank.val, hlt⟩ case_000320_mask =
        case_000320_b := by
    simpa [hrank] using case_000320_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000320_support case_000320_rank.val hlt
          case_000320_mask = case_000320_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000320_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000320_support case_000320_rank.val hlt
          case_000320_mask = case_000320_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000320_secondLine_eq]
  have case_000320_rowFirst :
      EqEqPosRow (FirstLineAt case_000320_support case_000320_rank.val hlt case_000320_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000320_firstLine, EqEqPosRow]
  have case_000320_fixedSecond :
      FixedRow (SecondLineAt case_000320_support case_000320_rank.val hlt case_000320_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000320_secondLine, FixedRow]
  exact ⟨case_000320_rowFirst, case_000320_fixedSecond⟩

private theorem case_000320_existsRows :
    ExistsEqEqPosVarFirstRows case_000320_rank.val case_000320_mask :=
  ⟨case_000320_support, case_000320_sourceAgrees, case_000320_rows⟩

private theorem case_000320_covered :
    RowPropertyParametricCovered case_000320_rank.val case_000320_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000320_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000321_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000321_mask : SignMask := ⟨22, by decide⟩
private def case_000321_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000321_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000321_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000321_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (68/9) }
private def case_000321_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000321_secondLine : StrictLin2 := { a := (-9/50), b := (-9/50), c := (-3/5) }

private theorem case_000321_rankWord :
    rankPairWord? case_000321_word = some case_000321_rank := by
  decide

private theorem case_000321_unrank :
    unrankPairWord case_000321_rank = case_000321_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000321_word case_000321_rank).1
    case_000321_rankWord |>.symm

private theorem case_000321_seqChoice :
    translationChoiceSeq case_000321_word case_000321_mask = case_000321_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000321_seqAtRank :
    translationSeqAtRankMask case_000321_rank case_000321_mask = case_000321_seq := by
  rw [translationSeqAtRankMask, case_000321_unrank]
  exact case_000321_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000321_bAtRank :
    translationBAtRankMask case_000321_rank case_000321_mask = case_000321_b := by
  rw [translationBAtRankMask, case_000321_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000321_b, case_000321_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000321_firstLine_eq :
    case_000321_support.firstLine case_000321_seq case_000321_b = case_000321_firstLine := by
  norm_num [case_000321_firstLine, case_000321_support, case_000321_seq, case_000321_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000321_secondLine_eq :
    case_000321_support.secondLine case_000321_seq case_000321_b = case_000321_secondLine := by
  norm_num [case_000321_secondLine, case_000321_support, case_000321_seq, case_000321_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000321_sourceAgrees :
    SourceAgrees case_000321_support case_000321_rank.val case_000321_mask := by
  intro hlt
  have hrank : (⟨case_000321_rank.val, hlt⟩ : Fin numPairWords) = case_000321_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000321_rank.val, hlt⟩ case_000321_mask =
        case_000321_seq := by
    simpa [hrank] using case_000321_seqAtRank
  simp [SourceChecks, hseq, case_000321_support,
    checkTranslationConstraintSource, case_000321_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000321_rows :
    EqEqPosVarSecondRows case_000321_support case_000321_rank.val case_000321_mask := by
  intro hlt
  have hrank : (⟨case_000321_rank.val, hlt⟩ : Fin numPairWords) = case_000321_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000321_rank.val, hlt⟩ case_000321_mask =
        case_000321_seq := by
    simpa [hrank] using case_000321_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000321_rank.val, hlt⟩ case_000321_mask =
        case_000321_b := by
    simpa [hrank] using case_000321_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000321_support case_000321_rank.val hlt
          case_000321_mask = case_000321_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000321_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000321_support case_000321_rank.val hlt
          case_000321_mask = case_000321_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000321_secondLine_eq]
  have case_000321_fixedFirst :
      FixedRow (FirstLineAt case_000321_support case_000321_rank.val hlt case_000321_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000321_firstLine, FixedRow]
  have case_000321_rowSecond :
      EqEqPosRow (SecondLineAt case_000321_support case_000321_rank.val hlt case_000321_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000321_secondLine, EqEqPosRow]
  exact ⟨case_000321_fixedFirst, case_000321_rowSecond⟩

private theorem case_000321_existsRows :
    ExistsEqEqPosVarSecondRows case_000321_rank.val case_000321_mask :=
  ⟨case_000321_support, case_000321_sourceAgrees, case_000321_rows⟩

private theorem case_000321_covered :
    RowPropertyParametricCovered case_000321_rank.val case_000321_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000321_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000322_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000322_mask : SignMask := ⟨24, by decide⟩
private def case_000322_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000322_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000322_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000322_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000322_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000322_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000322_rankWord :
    rankPairWord? case_000322_word = some case_000322_rank := by
  decide

private theorem case_000322_unrank :
    unrankPairWord case_000322_rank = case_000322_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000322_word case_000322_rank).1
    case_000322_rankWord |>.symm

private theorem case_000322_seqChoice :
    translationChoiceSeq case_000322_word case_000322_mask = case_000322_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000322_seqAtRank :
    translationSeqAtRankMask case_000322_rank case_000322_mask = case_000322_seq := by
  rw [translationSeqAtRankMask, case_000322_unrank]
  exact case_000322_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000322_bAtRank :
    translationBAtRankMask case_000322_rank case_000322_mask = case_000322_b := by
  rw [translationBAtRankMask, case_000322_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000322_b, case_000322_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000322_firstLine_eq :
    case_000322_support.firstLine case_000322_seq case_000322_b = case_000322_firstLine := by
  norm_num [case_000322_firstLine, case_000322_support, case_000322_seq, case_000322_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000322_secondLine_eq :
    case_000322_support.secondLine case_000322_seq case_000322_b = case_000322_secondLine := by
  norm_num [case_000322_secondLine, case_000322_support, case_000322_seq, case_000322_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000322_sourceAgrees :
    SourceAgrees case_000322_support case_000322_rank.val case_000322_mask := by
  intro hlt
  have hrank : (⟨case_000322_rank.val, hlt⟩ : Fin numPairWords) = case_000322_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000322_rank.val, hlt⟩ case_000322_mask =
        case_000322_seq := by
    simpa [hrank] using case_000322_seqAtRank
  simp [SourceChecks, hseq, case_000322_support,
    checkTranslationConstraintSource, case_000322_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000322_rows :
    EqEqPosVarFirstRows case_000322_support case_000322_rank.val case_000322_mask := by
  intro hlt
  have hrank : (⟨case_000322_rank.val, hlt⟩ : Fin numPairWords) = case_000322_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000322_rank.val, hlt⟩ case_000322_mask =
        case_000322_seq := by
    simpa [hrank] using case_000322_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000322_rank.val, hlt⟩ case_000322_mask =
        case_000322_b := by
    simpa [hrank] using case_000322_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000322_support case_000322_rank.val hlt
          case_000322_mask = case_000322_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000322_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000322_support case_000322_rank.val hlt
          case_000322_mask = case_000322_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000322_secondLine_eq]
  have case_000322_rowFirst :
      EqEqPosRow (FirstLineAt case_000322_support case_000322_rank.val hlt case_000322_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000322_firstLine, EqEqPosRow]
  have case_000322_fixedSecond :
      FixedRow (SecondLineAt case_000322_support case_000322_rank.val hlt case_000322_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000322_secondLine, FixedRow]
  exact ⟨case_000322_rowFirst, case_000322_fixedSecond⟩

private theorem case_000322_existsRows :
    ExistsEqEqPosVarFirstRows case_000322_rank.val case_000322_mask :=
  ⟨case_000322_support, case_000322_sourceAgrees, case_000322_rows⟩

private theorem case_000322_covered :
    RowPropertyParametricCovered case_000322_rank.val case_000322_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000322_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000323_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000323_mask : SignMask := ⟨28, by decide⟩
private def case_000323_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000323_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000323_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000323_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (-52/9) }
private def case_000323_firstLine : StrictLin2 := { a := (37/19), b := (37/19), c := (-149/19) }
private def case_000323_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000323_rankWord :
    rankPairWord? case_000323_word = some case_000323_rank := by
  decide

private theorem case_000323_unrank :
    unrankPairWord case_000323_rank = case_000323_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000323_word case_000323_rank).1
    case_000323_rankWord |>.symm

private theorem case_000323_seqChoice :
    translationChoiceSeq case_000323_word case_000323_mask = case_000323_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000323_seqAtRank :
    translationSeqAtRankMask case_000323_rank case_000323_mask = case_000323_seq := by
  rw [translationSeqAtRankMask, case_000323_unrank]
  exact case_000323_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000323_bAtRank :
    translationBAtRankMask case_000323_rank case_000323_mask = case_000323_b := by
  rw [translationBAtRankMask, case_000323_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000323_b, case_000323_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000323_firstLine_eq :
    case_000323_support.firstLine case_000323_seq case_000323_b = case_000323_firstLine := by
  norm_num [case_000323_firstLine, case_000323_support, case_000323_seq, case_000323_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000323_secondLine_eq :
    case_000323_support.secondLine case_000323_seq case_000323_b = case_000323_secondLine := by
  norm_num [case_000323_secondLine, case_000323_support, case_000323_seq, case_000323_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000323_sourceAgrees :
    SourceAgrees case_000323_support case_000323_rank.val case_000323_mask := by
  intro hlt
  have hrank : (⟨case_000323_rank.val, hlt⟩ : Fin numPairWords) = case_000323_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000323_rank.val, hlt⟩ case_000323_mask =
        case_000323_seq := by
    simpa [hrank] using case_000323_seqAtRank
  simp [SourceChecks, hseq, case_000323_support,
    checkTranslationConstraintSource, case_000323_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000323_rows :
    EqEqNegVarFirstRows case_000323_support case_000323_rank.val case_000323_mask := by
  intro hlt
  have hrank : (⟨case_000323_rank.val, hlt⟩ : Fin numPairWords) = case_000323_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000323_rank.val, hlt⟩ case_000323_mask =
        case_000323_seq := by
    simpa [hrank] using case_000323_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000323_rank.val, hlt⟩ case_000323_mask =
        case_000323_b := by
    simpa [hrank] using case_000323_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000323_support case_000323_rank.val hlt
          case_000323_mask = case_000323_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000323_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000323_support case_000323_rank.val hlt
          case_000323_mask = case_000323_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000323_secondLine_eq]
  have case_000323_rowFirst :
      EqEqNegRow (FirstLineAt case_000323_support case_000323_rank.val hlt case_000323_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000323_firstLine, EqEqNegRow]
  have case_000323_fixedSecond :
      FixedRow (SecondLineAt case_000323_support case_000323_rank.val hlt case_000323_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000323_secondLine, FixedRow]
  exact ⟨case_000323_rowFirst, case_000323_fixedSecond⟩

private theorem case_000323_existsRows :
    ExistsEqEqNegVarFirstRows case_000323_rank.val case_000323_mask :=
  ⟨case_000323_support, case_000323_sourceAgrees, case_000323_rows⟩

private theorem case_000323_covered :
    RowPropertyParametricCovered case_000323_rank.val case_000323_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000323_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000324_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000324_mask : SignMask := ⟨29, by decide⟩
private def case_000324_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000324_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000324_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000324_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (-52/9) }
private def case_000324_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000324_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_000324_rankWord :
    rankPairWord? case_000324_word = some case_000324_rank := by
  decide

private theorem case_000324_unrank :
    unrankPairWord case_000324_rank = case_000324_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000324_word case_000324_rank).1
    case_000324_rankWord |>.symm

private theorem case_000324_seqChoice :
    translationChoiceSeq case_000324_word case_000324_mask = case_000324_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000324_seqAtRank :
    translationSeqAtRankMask case_000324_rank case_000324_mask = case_000324_seq := by
  rw [translationSeqAtRankMask, case_000324_unrank]
  exact case_000324_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000324_bAtRank :
    translationBAtRankMask case_000324_rank case_000324_mask = case_000324_b := by
  rw [translationBAtRankMask, case_000324_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000324_b, case_000324_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000324_firstLine_eq :
    case_000324_support.firstLine case_000324_seq case_000324_b = case_000324_firstLine := by
  norm_num [case_000324_firstLine, case_000324_support, case_000324_seq, case_000324_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000324_secondLine_eq :
    case_000324_support.secondLine case_000324_seq case_000324_b = case_000324_secondLine := by
  norm_num [case_000324_secondLine, case_000324_support, case_000324_seq, case_000324_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000324_sourceAgrees :
    SourceAgrees case_000324_support case_000324_rank.val case_000324_mask := by
  intro hlt
  have hrank : (⟨case_000324_rank.val, hlt⟩ : Fin numPairWords) = case_000324_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000324_rank.val, hlt⟩ case_000324_mask =
        case_000324_seq := by
    simpa [hrank] using case_000324_seqAtRank
  simp [SourceChecks, hseq, case_000324_support,
    checkTranslationConstraintSource, case_000324_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000324_rows :
    EqEqPosVarSecondRows case_000324_support case_000324_rank.val case_000324_mask := by
  intro hlt
  have hrank : (⟨case_000324_rank.val, hlt⟩ : Fin numPairWords) = case_000324_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000324_rank.val, hlt⟩ case_000324_mask =
        case_000324_seq := by
    simpa [hrank] using case_000324_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000324_rank.val, hlt⟩ case_000324_mask =
        case_000324_b := by
    simpa [hrank] using case_000324_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000324_support case_000324_rank.val hlt
          case_000324_mask = case_000324_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000324_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000324_support case_000324_rank.val hlt
          case_000324_mask = case_000324_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000324_secondLine_eq]
  have case_000324_fixedFirst :
      FixedRow (FirstLineAt case_000324_support case_000324_rank.val hlt case_000324_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000324_firstLine, FixedRow]
  have case_000324_rowSecond :
      EqEqPosRow (SecondLineAt case_000324_support case_000324_rank.val hlt case_000324_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000324_secondLine, EqEqPosRow]
  exact ⟨case_000324_fixedFirst, case_000324_rowSecond⟩

private theorem case_000324_existsRows :
    ExistsEqEqPosVarSecondRows case_000324_rank.val case_000324_mask :=
  ⟨case_000324_support, case_000324_sourceAgrees, case_000324_rows⟩

private theorem case_000324_covered :
    RowPropertyParametricCovered case_000324_rank.val case_000324_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000324_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000325_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000325_mask : SignMask := ⟨30, by decide⟩
private def case_000325_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000325_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000325_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000325_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (20/9) }
private def case_000325_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000325_secondLine : StrictLin2 := { a := (-9/74), b := (-9/74), c := (-15/37) }

private theorem case_000325_rankWord :
    rankPairWord? case_000325_word = some case_000325_rank := by
  decide

private theorem case_000325_unrank :
    unrankPairWord case_000325_rank = case_000325_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000325_word case_000325_rank).1
    case_000325_rankWord |>.symm

private theorem case_000325_seqChoice :
    translationChoiceSeq case_000325_word case_000325_mask = case_000325_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000325_seqAtRank :
    translationSeqAtRankMask case_000325_rank case_000325_mask = case_000325_seq := by
  rw [translationSeqAtRankMask, case_000325_unrank]
  exact case_000325_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000325_bAtRank :
    translationBAtRankMask case_000325_rank case_000325_mask = case_000325_b := by
  rw [translationBAtRankMask, case_000325_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000325_b, case_000325_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000325_firstLine_eq :
    case_000325_support.firstLine case_000325_seq case_000325_b = case_000325_firstLine := by
  norm_num [case_000325_firstLine, case_000325_support, case_000325_seq, case_000325_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000325_secondLine_eq :
    case_000325_support.secondLine case_000325_seq case_000325_b = case_000325_secondLine := by
  norm_num [case_000325_secondLine, case_000325_support, case_000325_seq, case_000325_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000325_sourceAgrees :
    SourceAgrees case_000325_support case_000325_rank.val case_000325_mask := by
  intro hlt
  have hrank : (⟨case_000325_rank.val, hlt⟩ : Fin numPairWords) = case_000325_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000325_rank.val, hlt⟩ case_000325_mask =
        case_000325_seq := by
    simpa [hrank] using case_000325_seqAtRank
  simp [SourceChecks, hseq, case_000325_support,
    checkTranslationConstraintSource, case_000325_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000325_rows :
    EqEqPosVarSecondRows case_000325_support case_000325_rank.val case_000325_mask := by
  intro hlt
  have hrank : (⟨case_000325_rank.val, hlt⟩ : Fin numPairWords) = case_000325_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000325_rank.val, hlt⟩ case_000325_mask =
        case_000325_seq := by
    simpa [hrank] using case_000325_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000325_rank.val, hlt⟩ case_000325_mask =
        case_000325_b := by
    simpa [hrank] using case_000325_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000325_support case_000325_rank.val hlt
          case_000325_mask = case_000325_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000325_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000325_support case_000325_rank.val hlt
          case_000325_mask = case_000325_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000325_secondLine_eq]
  have case_000325_fixedFirst :
      FixedRow (FirstLineAt case_000325_support case_000325_rank.val hlt case_000325_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000325_firstLine, FixedRow]
  have case_000325_rowSecond :
      EqEqPosRow (SecondLineAt case_000325_support case_000325_rank.val hlt case_000325_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000325_secondLine, EqEqPosRow]
  exact ⟨case_000325_fixedFirst, case_000325_rowSecond⟩

private theorem case_000325_existsRows :
    ExistsEqEqPosVarSecondRows case_000325_rank.val case_000325_mask :=
  ⟨case_000325_support, case_000325_sourceAgrees, case_000325_rows⟩

private theorem case_000325_covered :
    RowPropertyParametricCovered case_000325_rank.val case_000325_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000325_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000326_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000326_mask : SignMask := ⟨31, by decide⟩
private def case_000326_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000326_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000326_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000326_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (20/9) }
private def case_000326_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000326_secondLine : StrictLin2 := { a := (-333/2090), b := (-333/2090), c := (-1428/1045) }

private theorem case_000326_rankWord :
    rankPairWord? case_000326_word = some case_000326_rank := by
  decide

private theorem case_000326_unrank :
    unrankPairWord case_000326_rank = case_000326_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000326_word case_000326_rank).1
    case_000326_rankWord |>.symm

private theorem case_000326_seqChoice :
    translationChoiceSeq case_000326_word case_000326_mask = case_000326_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000326_seqAtRank :
    translationSeqAtRankMask case_000326_rank case_000326_mask = case_000326_seq := by
  rw [translationSeqAtRankMask, case_000326_unrank]
  exact case_000326_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000326_bAtRank :
    translationBAtRankMask case_000326_rank case_000326_mask = case_000326_b := by
  rw [translationBAtRankMask, case_000326_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000326_b, case_000326_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000326_firstLine_eq :
    case_000326_support.firstLine case_000326_seq case_000326_b = case_000326_firstLine := by
  norm_num [case_000326_firstLine, case_000326_support, case_000326_seq, case_000326_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000326_secondLine_eq :
    case_000326_support.secondLine case_000326_seq case_000326_b = case_000326_secondLine := by
  norm_num [case_000326_secondLine, case_000326_support, case_000326_seq, case_000326_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000326_sourceAgrees :
    SourceAgrees case_000326_support case_000326_rank.val case_000326_mask := by
  intro hlt
  have hrank : (⟨case_000326_rank.val, hlt⟩ : Fin numPairWords) = case_000326_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000326_rank.val, hlt⟩ case_000326_mask =
        case_000326_seq := by
    simpa [hrank] using case_000326_seqAtRank
  simp [SourceChecks, hseq, case_000326_support,
    checkTranslationConstraintSource, case_000326_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000326_rows :
    EqEqPosVarSecondRows case_000326_support case_000326_rank.val case_000326_mask := by
  intro hlt
  have hrank : (⟨case_000326_rank.val, hlt⟩ : Fin numPairWords) = case_000326_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000326_rank.val, hlt⟩ case_000326_mask =
        case_000326_seq := by
    simpa [hrank] using case_000326_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000326_rank.val, hlt⟩ case_000326_mask =
        case_000326_b := by
    simpa [hrank] using case_000326_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000326_support case_000326_rank.val hlt
          case_000326_mask = case_000326_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000326_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000326_support case_000326_rank.val hlt
          case_000326_mask = case_000326_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000326_secondLine_eq]
  have case_000326_fixedFirst :
      FixedRow (FirstLineAt case_000326_support case_000326_rank.val hlt case_000326_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000326_firstLine, FixedRow]
  have case_000326_rowSecond :
      EqEqPosRow (SecondLineAt case_000326_support case_000326_rank.val hlt case_000326_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000326_secondLine, EqEqPosRow]
  exact ⟨case_000326_fixedFirst, case_000326_rowSecond⟩

private theorem case_000326_existsRows :
    ExistsEqEqPosVarSecondRows case_000326_rank.val case_000326_mask :=
  ⟨case_000326_support, case_000326_sourceAgrees, case_000326_rows⟩

private theorem case_000326_covered :
    RowPropertyParametricCovered case_000326_rank.val case_000326_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000326_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000327_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000327_mask : SignMask := ⟨45, by decide⟩
private def case_000327_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000327_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000327_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000327_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000327_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000327_secondLine : StrictLin2 := { a := (-5/26), b := (5/26), c := (-12/13) }

private theorem case_000327_rankWord :
    rankPairWord? case_000327_word = some case_000327_rank := by
  decide

private theorem case_000327_unrank :
    unrankPairWord case_000327_rank = case_000327_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000327_word case_000327_rank).1
    case_000327_rankWord |>.symm

private theorem case_000327_seqChoice :
    translationChoiceSeq case_000327_word case_000327_mask = case_000327_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000327_seqAtRank :
    translationSeqAtRankMask case_000327_rank case_000327_mask = case_000327_seq := by
  rw [translationSeqAtRankMask, case_000327_unrank]
  exact case_000327_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000327_bAtRank :
    translationBAtRankMask case_000327_rank case_000327_mask = case_000327_b := by
  rw [translationBAtRankMask, case_000327_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000327_b, case_000327_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000327_firstLine_eq :
    case_000327_support.firstLine case_000327_seq case_000327_b = case_000327_firstLine := by
  norm_num [case_000327_firstLine, case_000327_support, case_000327_seq, case_000327_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000327_secondLine_eq :
    case_000327_support.secondLine case_000327_seq case_000327_b = case_000327_secondLine := by
  norm_num [case_000327_secondLine, case_000327_support, case_000327_seq, case_000327_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000327_sourceAgrees :
    SourceAgrees case_000327_support case_000327_rank.val case_000327_mask := by
  intro hlt
  have hrank : (⟨case_000327_rank.val, hlt⟩ : Fin numPairWords) = case_000327_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000327_rank.val, hlt⟩ case_000327_mask =
        case_000327_seq := by
    simpa [hrank] using case_000327_seqAtRank
  simp [SourceChecks, hseq, case_000327_support,
    checkTranslationConstraintSource, case_000327_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000327_rows :
    OppOneMinusVarSecondRows case_000327_support case_000327_rank.val case_000327_mask := by
  intro hlt
  have hrank : (⟨case_000327_rank.val, hlt⟩ : Fin numPairWords) = case_000327_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000327_rank.val, hlt⟩ case_000327_mask =
        case_000327_seq := by
    simpa [hrank] using case_000327_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000327_rank.val, hlt⟩ case_000327_mask =
        case_000327_b := by
    simpa [hrank] using case_000327_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000327_support case_000327_rank.val hlt
          case_000327_mask = case_000327_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000327_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000327_support case_000327_rank.val hlt
          case_000327_mask = case_000327_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000327_secondLine_eq]
  have case_000327_fixedFirst :
      FixedRow (FirstLineAt case_000327_support case_000327_rank.val hlt case_000327_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000327_firstLine, FixedRow]
  have case_000327_rowSecond :
      OppPosRow (SecondLineAt case_000327_support case_000327_rank.val hlt case_000327_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000327_secondLine, OppPosRow]
  exact ⟨case_000327_fixedFirst, case_000327_rowSecond⟩

private theorem case_000327_existsRows :
    ExistsOppOneMinusVarSecondRows case_000327_rank.val case_000327_mask :=
  ⟨case_000327_support, case_000327_sourceAgrees, case_000327_rows⟩

private theorem case_000327_covered :
    RowPropertyParametricCovered case_000327_rank.val case_000327_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000327_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000328_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000328_mask : SignMask := ⟨54, by decide⟩
private def case_000328_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000328_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000328_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000328_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (116/9) }
private def case_000328_firstLine : StrictLin2 := { a := (-13/11), b := (-13/11), c := (-89/33) }
private def case_000328_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000328_rankWord :
    rankPairWord? case_000328_word = some case_000328_rank := by
  decide

private theorem case_000328_unrank :
    unrankPairWord case_000328_rank = case_000328_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000328_word case_000328_rank).1
    case_000328_rankWord |>.symm

private theorem case_000328_seqChoice :
    translationChoiceSeq case_000328_word case_000328_mask = case_000328_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000328_seqAtRank :
    translationSeqAtRankMask case_000328_rank case_000328_mask = case_000328_seq := by
  rw [translationSeqAtRankMask, case_000328_unrank]
  exact case_000328_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000328_bAtRank :
    translationBAtRankMask case_000328_rank case_000328_mask = case_000328_b := by
  rw [translationBAtRankMask, case_000328_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000328_b, case_000328_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000328_firstLine_eq :
    case_000328_support.firstLine case_000328_seq case_000328_b = case_000328_firstLine := by
  norm_num [case_000328_firstLine, case_000328_support, case_000328_seq, case_000328_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000328_secondLine_eq :
    case_000328_support.secondLine case_000328_seq case_000328_b = case_000328_secondLine := by
  norm_num [case_000328_secondLine, case_000328_support, case_000328_seq, case_000328_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000328_sourceAgrees :
    SourceAgrees case_000328_support case_000328_rank.val case_000328_mask := by
  intro hlt
  have hrank : (⟨case_000328_rank.val, hlt⟩ : Fin numPairWords) = case_000328_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000328_rank.val, hlt⟩ case_000328_mask =
        case_000328_seq := by
    simpa [hrank] using case_000328_seqAtRank
  simp [SourceChecks, hseq, case_000328_support,
    checkTranslationConstraintSource, case_000328_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000328_rows :
    EqEqPosVarFirstRows case_000328_support case_000328_rank.val case_000328_mask := by
  intro hlt
  have hrank : (⟨case_000328_rank.val, hlt⟩ : Fin numPairWords) = case_000328_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000328_rank.val, hlt⟩ case_000328_mask =
        case_000328_seq := by
    simpa [hrank] using case_000328_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000328_rank.val, hlt⟩ case_000328_mask =
        case_000328_b := by
    simpa [hrank] using case_000328_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000328_support case_000328_rank.val hlt
          case_000328_mask = case_000328_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000328_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000328_support case_000328_rank.val hlt
          case_000328_mask = case_000328_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000328_secondLine_eq]
  have case_000328_rowFirst :
      EqEqPosRow (FirstLineAt case_000328_support case_000328_rank.val hlt case_000328_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000328_firstLine, EqEqPosRow]
  have case_000328_fixedSecond :
      FixedRow (SecondLineAt case_000328_support case_000328_rank.val hlt case_000328_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000328_secondLine, FixedRow]
  exact ⟨case_000328_rowFirst, case_000328_fixedSecond⟩

private theorem case_000328_existsRows :
    ExistsEqEqPosVarFirstRows case_000328_rank.val case_000328_mask :=
  ⟨case_000328_support, case_000328_sourceAgrees, case_000328_rows⟩

private theorem case_000328_covered :
    RowPropertyParametricCovered case_000328_rank.val case_000328_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000328_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000329_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000329_mask : SignMask := ⟨55, by decide⟩
private def case_000329_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000329_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000329_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000329_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000329_firstLine : StrictLin2 := { a := (-13/29), b := (-13/29), c := (-185/87) }
private def case_000329_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000329_rankWord :
    rankPairWord? case_000329_word = some case_000329_rank := by
  decide

private theorem case_000329_unrank :
    unrankPairWord case_000329_rank = case_000329_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000329_word case_000329_rank).1
    case_000329_rankWord |>.symm

private theorem case_000329_seqChoice :
    translationChoiceSeq case_000329_word case_000329_mask = case_000329_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000329_seqAtRank :
    translationSeqAtRankMask case_000329_rank case_000329_mask = case_000329_seq := by
  rw [translationSeqAtRankMask, case_000329_unrank]
  exact case_000329_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000329_bAtRank :
    translationBAtRankMask case_000329_rank case_000329_mask = case_000329_b := by
  rw [translationBAtRankMask, case_000329_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000329_b, case_000329_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000329_firstLine_eq :
    case_000329_support.firstLine case_000329_seq case_000329_b = case_000329_firstLine := by
  norm_num [case_000329_firstLine, case_000329_support, case_000329_seq, case_000329_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000329_secondLine_eq :
    case_000329_support.secondLine case_000329_seq case_000329_b = case_000329_secondLine := by
  norm_num [case_000329_secondLine, case_000329_support, case_000329_seq, case_000329_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000329_sourceAgrees :
    SourceAgrees case_000329_support case_000329_rank.val case_000329_mask := by
  intro hlt
  have hrank : (⟨case_000329_rank.val, hlt⟩ : Fin numPairWords) = case_000329_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000329_rank.val, hlt⟩ case_000329_mask =
        case_000329_seq := by
    simpa [hrank] using case_000329_seqAtRank
  simp [SourceChecks, hseq, case_000329_support,
    checkTranslationConstraintSource, case_000329_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000329_rows :
    EqEqPosVarFirstRows case_000329_support case_000329_rank.val case_000329_mask := by
  intro hlt
  have hrank : (⟨case_000329_rank.val, hlt⟩ : Fin numPairWords) = case_000329_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000329_rank.val, hlt⟩ case_000329_mask =
        case_000329_seq := by
    simpa [hrank] using case_000329_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000329_rank.val, hlt⟩ case_000329_mask =
        case_000329_b := by
    simpa [hrank] using case_000329_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000329_support case_000329_rank.val hlt
          case_000329_mask = case_000329_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000329_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000329_support case_000329_rank.val hlt
          case_000329_mask = case_000329_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000329_secondLine_eq]
  have case_000329_rowFirst :
      EqEqPosRow (FirstLineAt case_000329_support case_000329_rank.val hlt case_000329_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000329_firstLine, EqEqPosRow]
  have case_000329_fixedSecond :
      FixedRow (SecondLineAt case_000329_support case_000329_rank.val hlt case_000329_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000329_secondLine, FixedRow]
  exact ⟨case_000329_rowFirst, case_000329_fixedSecond⟩

private theorem case_000329_existsRows :
    ExistsEqEqPosVarFirstRows case_000329_rank.val case_000329_mask :=
  ⟨case_000329_support, case_000329_sourceAgrees, case_000329_rows⟩

private theorem case_000329_covered :
    RowPropertyParametricCovered case_000329_rank.val case_000329_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000329_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000330_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000330_mask : SignMask := ⟨63, by decide⟩
private def case_000330_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000330_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000330_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000330_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000330_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000330_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000330_rankWord :
    rankPairWord? case_000330_word = some case_000330_rank := by
  decide

private theorem case_000330_unrank :
    unrankPairWord case_000330_rank = case_000330_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000330_word case_000330_rank).1
    case_000330_rankWord |>.symm

private theorem case_000330_seqChoice :
    translationChoiceSeq case_000330_word case_000330_mask = case_000330_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000330_seqAtRank :
    translationSeqAtRankMask case_000330_rank case_000330_mask = case_000330_seq := by
  rw [translationSeqAtRankMask, case_000330_unrank]
  exact case_000330_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000330_bAtRank :
    translationBAtRankMask case_000330_rank case_000330_mask = case_000330_b := by
  rw [translationBAtRankMask, case_000330_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000330_b, case_000330_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000330_firstLine_eq :
    case_000330_support.firstLine case_000330_seq case_000330_b = case_000330_firstLine := by
  norm_num [case_000330_firstLine, case_000330_support, case_000330_seq, case_000330_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000330_secondLine_eq :
    case_000330_support.secondLine case_000330_seq case_000330_b = case_000330_secondLine := by
  norm_num [case_000330_secondLine, case_000330_support, case_000330_seq, case_000330_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000330_sourceAgrees :
    SourceAgrees case_000330_support case_000330_rank.val case_000330_mask := by
  intro hlt
  have hrank : (⟨case_000330_rank.val, hlt⟩ : Fin numPairWords) = case_000330_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000330_rank.val, hlt⟩ case_000330_mask =
        case_000330_seq := by
    simpa [hrank] using case_000330_seqAtRank
  simp [SourceChecks, hseq, case_000330_support,
    checkTranslationConstraintSource, case_000330_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000330_rows :
    EqEqPosVarFirstRows case_000330_support case_000330_rank.val case_000330_mask := by
  intro hlt
  have hrank : (⟨case_000330_rank.val, hlt⟩ : Fin numPairWords) = case_000330_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000330_rank.val, hlt⟩ case_000330_mask =
        case_000330_seq := by
    simpa [hrank] using case_000330_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000330_rank.val, hlt⟩ case_000330_mask =
        case_000330_b := by
    simpa [hrank] using case_000330_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000330_support case_000330_rank.val hlt
          case_000330_mask = case_000330_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000330_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000330_support case_000330_rank.val hlt
          case_000330_mask = case_000330_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000330_secondLine_eq]
  have case_000330_rowFirst :
      EqEqPosRow (FirstLineAt case_000330_support case_000330_rank.val hlt case_000330_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000330_firstLine, EqEqPosRow]
  have case_000330_fixedSecond :
      FixedRow (SecondLineAt case_000330_support case_000330_rank.val hlt case_000330_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000330_secondLine, FixedRow]
  exact ⟨case_000330_rowFirst, case_000330_fixedSecond⟩

private theorem case_000330_existsRows :
    ExistsEqEqPosVarFirstRows case_000330_rank.val case_000330_mask :=
  ⟨case_000330_support, case_000330_sourceAgrees, case_000330_rows⟩

private theorem case_000330_covered :
    RowPropertyParametricCovered case_000330_rank.val case_000330_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000330_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000331_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000331_mask : SignMask := ⟨8, by decide⟩
private def case_000331_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000331_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000331_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000331_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-116/9) }
private def case_000331_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000331_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000331_rankWord :
    rankPairWord? case_000331_word = some case_000331_rank := by
  decide

private theorem case_000331_unrank :
    unrankPairWord case_000331_rank = case_000331_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000331_word case_000331_rank).1
    case_000331_rankWord |>.symm

private theorem case_000331_seqChoice :
    translationChoiceSeq case_000331_word case_000331_mask = case_000331_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000331_seqAtRank :
    translationSeqAtRankMask case_000331_rank case_000331_mask = case_000331_seq := by
  rw [translationSeqAtRankMask, case_000331_unrank]
  exact case_000331_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000331_bAtRank :
    translationBAtRankMask case_000331_rank case_000331_mask = case_000331_b := by
  rw [translationBAtRankMask, case_000331_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000331_b, case_000331_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000331_firstLine_eq :
    case_000331_support.firstLine case_000331_seq case_000331_b = case_000331_firstLine := by
  norm_num [case_000331_firstLine, case_000331_support, case_000331_seq, case_000331_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000331_secondLine_eq :
    case_000331_support.secondLine case_000331_seq case_000331_b = case_000331_secondLine := by
  norm_num [case_000331_secondLine, case_000331_support, case_000331_seq, case_000331_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000331_sourceAgrees :
    SourceAgrees case_000331_support case_000331_rank.val case_000331_mask := by
  intro hlt
  have hrank : (⟨case_000331_rank.val, hlt⟩ : Fin numPairWords) = case_000331_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000331_rank.val, hlt⟩ case_000331_mask =
        case_000331_seq := by
    simpa [hrank] using case_000331_seqAtRank
  simp [SourceChecks, hseq, case_000331_support,
    checkTranslationConstraintSource, case_000331_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000331_rows :
    EqEqPosVarFirstRows case_000331_support case_000331_rank.val case_000331_mask := by
  intro hlt
  have hrank : (⟨case_000331_rank.val, hlt⟩ : Fin numPairWords) = case_000331_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000331_rank.val, hlt⟩ case_000331_mask =
        case_000331_seq := by
    simpa [hrank] using case_000331_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000331_rank.val, hlt⟩ case_000331_mask =
        case_000331_b := by
    simpa [hrank] using case_000331_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000331_support case_000331_rank.val hlt
          case_000331_mask = case_000331_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000331_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000331_support case_000331_rank.val hlt
          case_000331_mask = case_000331_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000331_secondLine_eq]
  have case_000331_rowFirst :
      EqEqPosRow (FirstLineAt case_000331_support case_000331_rank.val hlt case_000331_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000331_firstLine, EqEqPosRow]
  have case_000331_fixedSecond :
      FixedRow (SecondLineAt case_000331_support case_000331_rank.val hlt case_000331_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000331_secondLine, FixedRow]
  exact ⟨case_000331_rowFirst, case_000331_fixedSecond⟩

private theorem case_000331_existsRows :
    ExistsEqEqPosVarFirstRows case_000331_rank.val case_000331_mask :=
  ⟨case_000331_support, case_000331_sourceAgrees, case_000331_rows⟩

private theorem case_000331_covered :
    RowPropertyParametricCovered case_000331_rank.val case_000331_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000331_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000332_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000332_mask : SignMask := ⟨9, by decide⟩
private def case_000332_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000332_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000332_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000332_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-116/9) }
private def case_000332_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000332_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000332_rankWord :
    rankPairWord? case_000332_word = some case_000332_rank := by
  decide

private theorem case_000332_unrank :
    unrankPairWord case_000332_rank = case_000332_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000332_word case_000332_rank).1
    case_000332_rankWord |>.symm

private theorem case_000332_seqChoice :
    translationChoiceSeq case_000332_word case_000332_mask = case_000332_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000332_seqAtRank :
    translationSeqAtRankMask case_000332_rank case_000332_mask = case_000332_seq := by
  rw [translationSeqAtRankMask, case_000332_unrank]
  exact case_000332_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000332_bAtRank :
    translationBAtRankMask case_000332_rank case_000332_mask = case_000332_b := by
  rw [translationBAtRankMask, case_000332_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000332_b, case_000332_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000332_firstLine_eq :
    case_000332_support.firstLine case_000332_seq case_000332_b = case_000332_firstLine := by
  norm_num [case_000332_firstLine, case_000332_support, case_000332_seq, case_000332_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000332_secondLine_eq :
    case_000332_support.secondLine case_000332_seq case_000332_b = case_000332_secondLine := by
  norm_num [case_000332_secondLine, case_000332_support, case_000332_seq, case_000332_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000332_sourceAgrees :
    SourceAgrees case_000332_support case_000332_rank.val case_000332_mask := by
  intro hlt
  have hrank : (⟨case_000332_rank.val, hlt⟩ : Fin numPairWords) = case_000332_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000332_rank.val, hlt⟩ case_000332_mask =
        case_000332_seq := by
    simpa [hrank] using case_000332_seqAtRank
  simp [SourceChecks, hseq, case_000332_support,
    checkTranslationConstraintSource, case_000332_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000332_rows :
    EqEqPosVarFirstRows case_000332_support case_000332_rank.val case_000332_mask := by
  intro hlt
  have hrank : (⟨case_000332_rank.val, hlt⟩ : Fin numPairWords) = case_000332_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000332_rank.val, hlt⟩ case_000332_mask =
        case_000332_seq := by
    simpa [hrank] using case_000332_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000332_rank.val, hlt⟩ case_000332_mask =
        case_000332_b := by
    simpa [hrank] using case_000332_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000332_support case_000332_rank.val hlt
          case_000332_mask = case_000332_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000332_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000332_support case_000332_rank.val hlt
          case_000332_mask = case_000332_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000332_secondLine_eq]
  have case_000332_rowFirst :
      EqEqPosRow (FirstLineAt case_000332_support case_000332_rank.val hlt case_000332_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000332_firstLine, EqEqPosRow]
  have case_000332_fixedSecond :
      FixedRow (SecondLineAt case_000332_support case_000332_rank.val hlt case_000332_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000332_secondLine, FixedRow]
  exact ⟨case_000332_rowFirst, case_000332_fixedSecond⟩

private theorem case_000332_existsRows :
    ExistsEqEqPosVarFirstRows case_000332_rank.val case_000332_mask :=
  ⟨case_000332_support, case_000332_sourceAgrees, case_000332_rows⟩

private theorem case_000332_covered :
    RowPropertyParametricCovered case_000332_rank.val case_000332_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000332_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000333_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000333_mask : SignMask := ⟨13, by decide⟩
private def case_000333_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000333_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000333_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000333_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-68/9) }
private def case_000333_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000333_secondLine : StrictLin2 := { a := (-9/68), b := (-9/68), c := (-9/34) }

private theorem case_000333_rankWord :
    rankPairWord? case_000333_word = some case_000333_rank := by
  decide

private theorem case_000333_unrank :
    unrankPairWord case_000333_rank = case_000333_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000333_word case_000333_rank).1
    case_000333_rankWord |>.symm

private theorem case_000333_seqChoice :
    translationChoiceSeq case_000333_word case_000333_mask = case_000333_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000333_seqAtRank :
    translationSeqAtRankMask case_000333_rank case_000333_mask = case_000333_seq := by
  rw [translationSeqAtRankMask, case_000333_unrank]
  exact case_000333_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000333_bAtRank :
    translationBAtRankMask case_000333_rank case_000333_mask = case_000333_b := by
  rw [translationBAtRankMask, case_000333_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000333_b, case_000333_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000333_firstLine_eq :
    case_000333_support.firstLine case_000333_seq case_000333_b = case_000333_firstLine := by
  norm_num [case_000333_firstLine, case_000333_support, case_000333_seq, case_000333_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000333_secondLine_eq :
    case_000333_support.secondLine case_000333_seq case_000333_b = case_000333_secondLine := by
  norm_num [case_000333_secondLine, case_000333_support, case_000333_seq, case_000333_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000333_sourceAgrees :
    SourceAgrees case_000333_support case_000333_rank.val case_000333_mask := by
  intro hlt
  have hrank : (⟨case_000333_rank.val, hlt⟩ : Fin numPairWords) = case_000333_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000333_rank.val, hlt⟩ case_000333_mask =
        case_000333_seq := by
    simpa [hrank] using case_000333_seqAtRank
  simp [SourceChecks, hseq, case_000333_support,
    checkTranslationConstraintSource, case_000333_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000333_rows :
    EqEqPosVarSecondRows case_000333_support case_000333_rank.val case_000333_mask := by
  intro hlt
  have hrank : (⟨case_000333_rank.val, hlt⟩ : Fin numPairWords) = case_000333_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000333_rank.val, hlt⟩ case_000333_mask =
        case_000333_seq := by
    simpa [hrank] using case_000333_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000333_rank.val, hlt⟩ case_000333_mask =
        case_000333_b := by
    simpa [hrank] using case_000333_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000333_support case_000333_rank.val hlt
          case_000333_mask = case_000333_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000333_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000333_support case_000333_rank.val hlt
          case_000333_mask = case_000333_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000333_secondLine_eq]
  have case_000333_fixedFirst :
      FixedRow (FirstLineAt case_000333_support case_000333_rank.val hlt case_000333_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000333_firstLine, FixedRow]
  have case_000333_rowSecond :
      EqEqPosRow (SecondLineAt case_000333_support case_000333_rank.val hlt case_000333_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000333_secondLine, EqEqPosRow]
  exact ⟨case_000333_fixedFirst, case_000333_rowSecond⟩

private theorem case_000333_existsRows :
    ExistsEqEqPosVarSecondRows case_000333_rank.val case_000333_mask :=
  ⟨case_000333_support, case_000333_sourceAgrees, case_000333_rows⟩

private theorem case_000333_covered :
    RowPropertyParametricCovered case_000333_rank.val case_000333_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000333_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000334_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000334_mask : SignMask := ⟨18, by decide⟩
private def case_000334_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000334_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000334_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpm
private def case_000334_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (20/9) }
private def case_000334_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000334_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000334_rankWord :
    rankPairWord? case_000334_word = some case_000334_rank := by
  decide

private theorem case_000334_unrank :
    unrankPairWord case_000334_rank = case_000334_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000334_word case_000334_rank).1
    case_000334_rankWord |>.symm

private theorem case_000334_seqChoice :
    translationChoiceSeq case_000334_word case_000334_mask = case_000334_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000334_seqAtRank :
    translationSeqAtRankMask case_000334_rank case_000334_mask = case_000334_seq := by
  rw [translationSeqAtRankMask, case_000334_unrank]
  exact case_000334_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000334_bAtRank :
    translationBAtRankMask case_000334_rank case_000334_mask = case_000334_b := by
  rw [translationBAtRankMask, case_000334_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000334_b, case_000334_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000334_firstLine_eq :
    case_000334_support.firstLine case_000334_seq case_000334_b = case_000334_firstLine := by
  norm_num [case_000334_firstLine, case_000334_support, case_000334_seq, case_000334_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000334_secondLine_eq :
    case_000334_support.secondLine case_000334_seq case_000334_b = case_000334_secondLine := by
  norm_num [case_000334_secondLine, case_000334_support, case_000334_seq, case_000334_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000334_sourceAgrees :
    SourceAgrees case_000334_support case_000334_rank.val case_000334_mask := by
  intro hlt
  have hrank : (⟨case_000334_rank.val, hlt⟩ : Fin numPairWords) = case_000334_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000334_rank.val, hlt⟩ case_000334_mask =
        case_000334_seq := by
    simpa [hrank] using case_000334_seqAtRank
  simp [SourceChecks, hseq, case_000334_support,
    checkTranslationConstraintSource, case_000334_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000334_rows :
    EqEqPosVarFirstRows case_000334_support case_000334_rank.val case_000334_mask := by
  intro hlt
  have hrank : (⟨case_000334_rank.val, hlt⟩ : Fin numPairWords) = case_000334_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000334_rank.val, hlt⟩ case_000334_mask =
        case_000334_seq := by
    simpa [hrank] using case_000334_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000334_rank.val, hlt⟩ case_000334_mask =
        case_000334_b := by
    simpa [hrank] using case_000334_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000334_support case_000334_rank.val hlt
          case_000334_mask = case_000334_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000334_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000334_support case_000334_rank.val hlt
          case_000334_mask = case_000334_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000334_secondLine_eq]
  have case_000334_rowFirst :
      EqEqPosRow (FirstLineAt case_000334_support case_000334_rank.val hlt case_000334_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000334_firstLine, EqEqPosRow]
  have case_000334_fixedSecond :
      FixedRow (SecondLineAt case_000334_support case_000334_rank.val hlt case_000334_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000334_secondLine, FixedRow]
  exact ⟨case_000334_rowFirst, case_000334_fixedSecond⟩

private theorem case_000334_existsRows :
    ExistsEqEqPosVarFirstRows case_000334_rank.val case_000334_mask :=
  ⟨case_000334_support, case_000334_sourceAgrees, case_000334_rows⟩

private theorem case_000334_covered :
    RowPropertyParametricCovered case_000334_rank.val case_000334_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000334_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000335_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000335_mask : SignMask := ⟨24, by decide⟩
private def case_000335_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000335_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000335_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000335_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (-68/9) }
private def case_000335_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000335_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000335_rankWord :
    rankPairWord? case_000335_word = some case_000335_rank := by
  decide

private theorem case_000335_unrank :
    unrankPairWord case_000335_rank = case_000335_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000335_word case_000335_rank).1
    case_000335_rankWord |>.symm

private theorem case_000335_seqChoice :
    translationChoiceSeq case_000335_word case_000335_mask = case_000335_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000335_seqAtRank :
    translationSeqAtRankMask case_000335_rank case_000335_mask = case_000335_seq := by
  rw [translationSeqAtRankMask, case_000335_unrank]
  exact case_000335_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000335_bAtRank :
    translationBAtRankMask case_000335_rank case_000335_mask = case_000335_b := by
  rw [translationBAtRankMask, case_000335_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000335_b, case_000335_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000335_firstLine_eq :
    case_000335_support.firstLine case_000335_seq case_000335_b = case_000335_firstLine := by
  norm_num [case_000335_firstLine, case_000335_support, case_000335_seq, case_000335_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000335_secondLine_eq :
    case_000335_support.secondLine case_000335_seq case_000335_b = case_000335_secondLine := by
  norm_num [case_000335_secondLine, case_000335_support, case_000335_seq, case_000335_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000335_sourceAgrees :
    SourceAgrees case_000335_support case_000335_rank.val case_000335_mask := by
  intro hlt
  have hrank : (⟨case_000335_rank.val, hlt⟩ : Fin numPairWords) = case_000335_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000335_rank.val, hlt⟩ case_000335_mask =
        case_000335_seq := by
    simpa [hrank] using case_000335_seqAtRank
  simp [SourceChecks, hseq, case_000335_support,
    checkTranslationConstraintSource, case_000335_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000335_rows :
    EqEqPosVarFirstRows case_000335_support case_000335_rank.val case_000335_mask := by
  intro hlt
  have hrank : (⟨case_000335_rank.val, hlt⟩ : Fin numPairWords) = case_000335_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000335_rank.val, hlt⟩ case_000335_mask =
        case_000335_seq := by
    simpa [hrank] using case_000335_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000335_rank.val, hlt⟩ case_000335_mask =
        case_000335_b := by
    simpa [hrank] using case_000335_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000335_support case_000335_rank.val hlt
          case_000335_mask = case_000335_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000335_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000335_support case_000335_rank.val hlt
          case_000335_mask = case_000335_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000335_secondLine_eq]
  have case_000335_rowFirst :
      EqEqPosRow (FirstLineAt case_000335_support case_000335_rank.val hlt case_000335_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000335_firstLine, EqEqPosRow]
  have case_000335_fixedSecond :
      FixedRow (SecondLineAt case_000335_support case_000335_rank.val hlt case_000335_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000335_secondLine, FixedRow]
  exact ⟨case_000335_rowFirst, case_000335_fixedSecond⟩

private theorem case_000335_existsRows :
    ExistsEqEqPosVarFirstRows case_000335_rank.val case_000335_mask :=
  ⟨case_000335_support, case_000335_sourceAgrees, case_000335_rows⟩

private theorem case_000335_covered :
    RowPropertyParametricCovered case_000335_rank.val case_000335_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000335_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000336_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000336_mask : SignMask := ⟨28, by decide⟩
private def case_000336_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000336_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000336_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000336_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (-20/9) }
private def case_000336_firstLine : StrictLin2 := { a := (37/19), b := (37/19), c := (-149/19) }
private def case_000336_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000336_rankWord :
    rankPairWord? case_000336_word = some case_000336_rank := by
  decide

private theorem case_000336_unrank :
    unrankPairWord case_000336_rank = case_000336_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000336_word case_000336_rank).1
    case_000336_rankWord |>.symm

private theorem case_000336_seqChoice :
    translationChoiceSeq case_000336_word case_000336_mask = case_000336_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000336_seqAtRank :
    translationSeqAtRankMask case_000336_rank case_000336_mask = case_000336_seq := by
  rw [translationSeqAtRankMask, case_000336_unrank]
  exact case_000336_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000336_bAtRank :
    translationBAtRankMask case_000336_rank case_000336_mask = case_000336_b := by
  rw [translationBAtRankMask, case_000336_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000336_b, case_000336_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000336_firstLine_eq :
    case_000336_support.firstLine case_000336_seq case_000336_b = case_000336_firstLine := by
  norm_num [case_000336_firstLine, case_000336_support, case_000336_seq, case_000336_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000336_secondLine_eq :
    case_000336_support.secondLine case_000336_seq case_000336_b = case_000336_secondLine := by
  norm_num [case_000336_secondLine, case_000336_support, case_000336_seq, case_000336_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000336_sourceAgrees :
    SourceAgrees case_000336_support case_000336_rank.val case_000336_mask := by
  intro hlt
  have hrank : (⟨case_000336_rank.val, hlt⟩ : Fin numPairWords) = case_000336_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000336_rank.val, hlt⟩ case_000336_mask =
        case_000336_seq := by
    simpa [hrank] using case_000336_seqAtRank
  simp [SourceChecks, hseq, case_000336_support,
    checkTranslationConstraintSource, case_000336_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000336_rows :
    EqEqNegVarFirstRows case_000336_support case_000336_rank.val case_000336_mask := by
  intro hlt
  have hrank : (⟨case_000336_rank.val, hlt⟩ : Fin numPairWords) = case_000336_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000336_rank.val, hlt⟩ case_000336_mask =
        case_000336_seq := by
    simpa [hrank] using case_000336_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000336_rank.val, hlt⟩ case_000336_mask =
        case_000336_b := by
    simpa [hrank] using case_000336_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000336_support case_000336_rank.val hlt
          case_000336_mask = case_000336_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000336_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000336_support case_000336_rank.val hlt
          case_000336_mask = case_000336_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000336_secondLine_eq]
  have case_000336_rowFirst :
      EqEqNegRow (FirstLineAt case_000336_support case_000336_rank.val hlt case_000336_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000336_firstLine, EqEqNegRow]
  have case_000336_fixedSecond :
      FixedRow (SecondLineAt case_000336_support case_000336_rank.val hlt case_000336_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000336_secondLine, FixedRow]
  exact ⟨case_000336_rowFirst, case_000336_fixedSecond⟩

private theorem case_000336_existsRows :
    ExistsEqEqNegVarFirstRows case_000336_rank.val case_000336_mask :=
  ⟨case_000336_support, case_000336_sourceAgrees, case_000336_rows⟩

private theorem case_000336_covered :
    RowPropertyParametricCovered case_000336_rank.val case_000336_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000336_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000337_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000337_mask : SignMask := ⟨29, by decide⟩
private def case_000337_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000337_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000337_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000337_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (-20/9) }
private def case_000337_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000337_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000337_rankWord :
    rankPairWord? case_000337_word = some case_000337_rank := by
  decide

private theorem case_000337_unrank :
    unrankPairWord case_000337_rank = case_000337_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000337_word case_000337_rank).1
    case_000337_rankWord |>.symm

private theorem case_000337_seqChoice :
    translationChoiceSeq case_000337_word case_000337_mask = case_000337_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000337_seqAtRank :
    translationSeqAtRankMask case_000337_rank case_000337_mask = case_000337_seq := by
  rw [translationSeqAtRankMask, case_000337_unrank]
  exact case_000337_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000337_bAtRank :
    translationBAtRankMask case_000337_rank case_000337_mask = case_000337_b := by
  rw [translationBAtRankMask, case_000337_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000337_b, case_000337_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000337_firstLine_eq :
    case_000337_support.firstLine case_000337_seq case_000337_b = case_000337_firstLine := by
  norm_num [case_000337_firstLine, case_000337_support, case_000337_seq, case_000337_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000337_secondLine_eq :
    case_000337_support.secondLine case_000337_seq case_000337_b = case_000337_secondLine := by
  norm_num [case_000337_secondLine, case_000337_support, case_000337_seq, case_000337_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000337_sourceAgrees :
    SourceAgrees case_000337_support case_000337_rank.val case_000337_mask := by
  intro hlt
  have hrank : (⟨case_000337_rank.val, hlt⟩ : Fin numPairWords) = case_000337_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000337_rank.val, hlt⟩ case_000337_mask =
        case_000337_seq := by
    simpa [hrank] using case_000337_seqAtRank
  simp [SourceChecks, hseq, case_000337_support,
    checkTranslationConstraintSource, case_000337_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000337_rows :
    EqEqPosVarSecondRows case_000337_support case_000337_rank.val case_000337_mask := by
  intro hlt
  have hrank : (⟨case_000337_rank.val, hlt⟩ : Fin numPairWords) = case_000337_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000337_rank.val, hlt⟩ case_000337_mask =
        case_000337_seq := by
    simpa [hrank] using case_000337_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000337_rank.val, hlt⟩ case_000337_mask =
        case_000337_b := by
    simpa [hrank] using case_000337_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000337_support case_000337_rank.val hlt
          case_000337_mask = case_000337_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000337_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000337_support case_000337_rank.val hlt
          case_000337_mask = case_000337_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000337_secondLine_eq]
  have case_000337_fixedFirst :
      FixedRow (FirstLineAt case_000337_support case_000337_rank.val hlt case_000337_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000337_firstLine, FixedRow]
  have case_000337_rowSecond :
      EqEqPosRow (SecondLineAt case_000337_support case_000337_rank.val hlt case_000337_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000337_secondLine, EqEqPosRow]
  exact ⟨case_000337_fixedFirst, case_000337_rowSecond⟩

private theorem case_000337_existsRows :
    ExistsEqEqPosVarSecondRows case_000337_rank.val case_000337_mask :=
  ⟨case_000337_support, case_000337_sourceAgrees, case_000337_rows⟩

private theorem case_000337_covered :
    RowPropertyParametricCovered case_000337_rank.val case_000337_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000337_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000338_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000338_mask : SignMask := ⟨30, by decide⟩
private def case_000338_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000338_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000338_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000338_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (52/9) }
private def case_000338_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000338_secondLine : StrictLin2 := { a := (-9/74), b := (-9/74), c := (-15/37) }

private theorem case_000338_rankWord :
    rankPairWord? case_000338_word = some case_000338_rank := by
  decide

private theorem case_000338_unrank :
    unrankPairWord case_000338_rank = case_000338_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000338_word case_000338_rank).1
    case_000338_rankWord |>.symm

private theorem case_000338_seqChoice :
    translationChoiceSeq case_000338_word case_000338_mask = case_000338_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000338_seqAtRank :
    translationSeqAtRankMask case_000338_rank case_000338_mask = case_000338_seq := by
  rw [translationSeqAtRankMask, case_000338_unrank]
  exact case_000338_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000338_bAtRank :
    translationBAtRankMask case_000338_rank case_000338_mask = case_000338_b := by
  rw [translationBAtRankMask, case_000338_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000338_b, case_000338_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000338_firstLine_eq :
    case_000338_support.firstLine case_000338_seq case_000338_b = case_000338_firstLine := by
  norm_num [case_000338_firstLine, case_000338_support, case_000338_seq, case_000338_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000338_secondLine_eq :
    case_000338_support.secondLine case_000338_seq case_000338_b = case_000338_secondLine := by
  norm_num [case_000338_secondLine, case_000338_support, case_000338_seq, case_000338_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000338_sourceAgrees :
    SourceAgrees case_000338_support case_000338_rank.val case_000338_mask := by
  intro hlt
  have hrank : (⟨case_000338_rank.val, hlt⟩ : Fin numPairWords) = case_000338_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000338_rank.val, hlt⟩ case_000338_mask =
        case_000338_seq := by
    simpa [hrank] using case_000338_seqAtRank
  simp [SourceChecks, hseq, case_000338_support,
    checkTranslationConstraintSource, case_000338_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000338_rows :
    EqEqPosVarSecondRows case_000338_support case_000338_rank.val case_000338_mask := by
  intro hlt
  have hrank : (⟨case_000338_rank.val, hlt⟩ : Fin numPairWords) = case_000338_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000338_rank.val, hlt⟩ case_000338_mask =
        case_000338_seq := by
    simpa [hrank] using case_000338_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000338_rank.val, hlt⟩ case_000338_mask =
        case_000338_b := by
    simpa [hrank] using case_000338_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000338_support case_000338_rank.val hlt
          case_000338_mask = case_000338_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000338_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000338_support case_000338_rank.val hlt
          case_000338_mask = case_000338_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000338_secondLine_eq]
  have case_000338_fixedFirst :
      FixedRow (FirstLineAt case_000338_support case_000338_rank.val hlt case_000338_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000338_firstLine, FixedRow]
  have case_000338_rowSecond :
      EqEqPosRow (SecondLineAt case_000338_support case_000338_rank.val hlt case_000338_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000338_secondLine, EqEqPosRow]
  exact ⟨case_000338_fixedFirst, case_000338_rowSecond⟩

private theorem case_000338_existsRows :
    ExistsEqEqPosVarSecondRows case_000338_rank.val case_000338_mask :=
  ⟨case_000338_support, case_000338_sourceAgrees, case_000338_rows⟩

private theorem case_000338_covered :
    RowPropertyParametricCovered case_000338_rank.val case_000338_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000338_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000339_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000339_mask : SignMask := ⟨31, by decide⟩
private def case_000339_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000339_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000339_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000339_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (52/9) }
private def case_000339_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000339_secondLine : StrictLin2 := { a := (-333/2090), b := (-333/2090), c := (-1428/1045) }

private theorem case_000339_rankWord :
    rankPairWord? case_000339_word = some case_000339_rank := by
  decide

private theorem case_000339_unrank :
    unrankPairWord case_000339_rank = case_000339_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000339_word case_000339_rank).1
    case_000339_rankWord |>.symm

private theorem case_000339_seqChoice :
    translationChoiceSeq case_000339_word case_000339_mask = case_000339_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000339_seqAtRank :
    translationSeqAtRankMask case_000339_rank case_000339_mask = case_000339_seq := by
  rw [translationSeqAtRankMask, case_000339_unrank]
  exact case_000339_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000339_bAtRank :
    translationBAtRankMask case_000339_rank case_000339_mask = case_000339_b := by
  rw [translationBAtRankMask, case_000339_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000339_b, case_000339_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000339_firstLine_eq :
    case_000339_support.firstLine case_000339_seq case_000339_b = case_000339_firstLine := by
  norm_num [case_000339_firstLine, case_000339_support, case_000339_seq, case_000339_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000339_secondLine_eq :
    case_000339_support.secondLine case_000339_seq case_000339_b = case_000339_secondLine := by
  norm_num [case_000339_secondLine, case_000339_support, case_000339_seq, case_000339_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000339_sourceAgrees :
    SourceAgrees case_000339_support case_000339_rank.val case_000339_mask := by
  intro hlt
  have hrank : (⟨case_000339_rank.val, hlt⟩ : Fin numPairWords) = case_000339_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000339_rank.val, hlt⟩ case_000339_mask =
        case_000339_seq := by
    simpa [hrank] using case_000339_seqAtRank
  simp [SourceChecks, hseq, case_000339_support,
    checkTranslationConstraintSource, case_000339_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000339_rows :
    EqEqPosVarSecondRows case_000339_support case_000339_rank.val case_000339_mask := by
  intro hlt
  have hrank : (⟨case_000339_rank.val, hlt⟩ : Fin numPairWords) = case_000339_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000339_rank.val, hlt⟩ case_000339_mask =
        case_000339_seq := by
    simpa [hrank] using case_000339_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000339_rank.val, hlt⟩ case_000339_mask =
        case_000339_b := by
    simpa [hrank] using case_000339_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000339_support case_000339_rank.val hlt
          case_000339_mask = case_000339_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000339_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000339_support case_000339_rank.val hlt
          case_000339_mask = case_000339_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000339_secondLine_eq]
  have case_000339_fixedFirst :
      FixedRow (FirstLineAt case_000339_support case_000339_rank.val hlt case_000339_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000339_firstLine, FixedRow]
  have case_000339_rowSecond :
      EqEqPosRow (SecondLineAt case_000339_support case_000339_rank.val hlt case_000339_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000339_secondLine, EqEqPosRow]
  exact ⟨case_000339_fixedFirst, case_000339_rowSecond⟩

private theorem case_000339_existsRows :
    ExistsEqEqPosVarSecondRows case_000339_rank.val case_000339_mask :=
  ⟨case_000339_support, case_000339_sourceAgrees, case_000339_rows⟩

private theorem case_000339_covered :
    RowPropertyParametricCovered case_000339_rank.val case_000339_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000339_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000340_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000340_mask : SignMask := ⟨45, by decide⟩
private def case_000340_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000340_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000340_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000340_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-20/9) }
private def case_000340_firstLine : StrictLin2 := { a := (-13/11), b := (-13/11), c := (-89/33) }
private def case_000340_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000340_rankWord :
    rankPairWord? case_000340_word = some case_000340_rank := by
  decide

private theorem case_000340_unrank :
    unrankPairWord case_000340_rank = case_000340_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000340_word case_000340_rank).1
    case_000340_rankWord |>.symm

private theorem case_000340_seqChoice :
    translationChoiceSeq case_000340_word case_000340_mask = case_000340_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000340_seqAtRank :
    translationSeqAtRankMask case_000340_rank case_000340_mask = case_000340_seq := by
  rw [translationSeqAtRankMask, case_000340_unrank]
  exact case_000340_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000340_bAtRank :
    translationBAtRankMask case_000340_rank case_000340_mask = case_000340_b := by
  rw [translationBAtRankMask, case_000340_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000340_b, case_000340_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000340_firstLine_eq :
    case_000340_support.firstLine case_000340_seq case_000340_b = case_000340_firstLine := by
  norm_num [case_000340_firstLine, case_000340_support, case_000340_seq, case_000340_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000340_secondLine_eq :
    case_000340_support.secondLine case_000340_seq case_000340_b = case_000340_secondLine := by
  norm_num [case_000340_secondLine, case_000340_support, case_000340_seq, case_000340_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000340_sourceAgrees :
    SourceAgrees case_000340_support case_000340_rank.val case_000340_mask := by
  intro hlt
  have hrank : (⟨case_000340_rank.val, hlt⟩ : Fin numPairWords) = case_000340_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000340_rank.val, hlt⟩ case_000340_mask =
        case_000340_seq := by
    simpa [hrank] using case_000340_seqAtRank
  simp [SourceChecks, hseq, case_000340_support,
    checkTranslationConstraintSource, case_000340_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000340_rows :
    EqEqPosVarFirstRows case_000340_support case_000340_rank.val case_000340_mask := by
  intro hlt
  have hrank : (⟨case_000340_rank.val, hlt⟩ : Fin numPairWords) = case_000340_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000340_rank.val, hlt⟩ case_000340_mask =
        case_000340_seq := by
    simpa [hrank] using case_000340_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000340_rank.val, hlt⟩ case_000340_mask =
        case_000340_b := by
    simpa [hrank] using case_000340_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000340_support case_000340_rank.val hlt
          case_000340_mask = case_000340_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000340_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000340_support case_000340_rank.val hlt
          case_000340_mask = case_000340_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000340_secondLine_eq]
  have case_000340_rowFirst :
      EqEqPosRow (FirstLineAt case_000340_support case_000340_rank.val hlt case_000340_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000340_firstLine, EqEqPosRow]
  have case_000340_fixedSecond :
      FixedRow (SecondLineAt case_000340_support case_000340_rank.val hlt case_000340_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000340_secondLine, FixedRow]
  exact ⟨case_000340_rowFirst, case_000340_fixedSecond⟩

private theorem case_000340_existsRows :
    ExistsEqEqPosVarFirstRows case_000340_rank.val case_000340_mask :=
  ⟨case_000340_support, case_000340_sourceAgrees, case_000340_rows⟩

private theorem case_000340_covered :
    RowPropertyParametricCovered case_000340_rank.val case_000340_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000340_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000341_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000341_mask : SignMask := ⟨47, by decide⟩
private def case_000341_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000341_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000341_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000341_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (52/9) }
private def case_000341_firstLine : StrictLin2 := { a := (-13/29), b := (-13/29), c := (-185/87) }
private def case_000341_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000341_rankWord :
    rankPairWord? case_000341_word = some case_000341_rank := by
  decide

private theorem case_000341_unrank :
    unrankPairWord case_000341_rank = case_000341_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000341_word case_000341_rank).1
    case_000341_rankWord |>.symm

private theorem case_000341_seqChoice :
    translationChoiceSeq case_000341_word case_000341_mask = case_000341_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000341_seqAtRank :
    translationSeqAtRankMask case_000341_rank case_000341_mask = case_000341_seq := by
  rw [translationSeqAtRankMask, case_000341_unrank]
  exact case_000341_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000341_bAtRank :
    translationBAtRankMask case_000341_rank case_000341_mask = case_000341_b := by
  rw [translationBAtRankMask, case_000341_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000341_b, case_000341_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000341_firstLine_eq :
    case_000341_support.firstLine case_000341_seq case_000341_b = case_000341_firstLine := by
  norm_num [case_000341_firstLine, case_000341_support, case_000341_seq, case_000341_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000341_secondLine_eq :
    case_000341_support.secondLine case_000341_seq case_000341_b = case_000341_secondLine := by
  norm_num [case_000341_secondLine, case_000341_support, case_000341_seq, case_000341_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000341_sourceAgrees :
    SourceAgrees case_000341_support case_000341_rank.val case_000341_mask := by
  intro hlt
  have hrank : (⟨case_000341_rank.val, hlt⟩ : Fin numPairWords) = case_000341_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000341_rank.val, hlt⟩ case_000341_mask =
        case_000341_seq := by
    simpa [hrank] using case_000341_seqAtRank
  simp [SourceChecks, hseq, case_000341_support,
    checkTranslationConstraintSource, case_000341_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000341_rows :
    EqEqPosVarFirstRows case_000341_support case_000341_rank.val case_000341_mask := by
  intro hlt
  have hrank : (⟨case_000341_rank.val, hlt⟩ : Fin numPairWords) = case_000341_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000341_rank.val, hlt⟩ case_000341_mask =
        case_000341_seq := by
    simpa [hrank] using case_000341_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000341_rank.val, hlt⟩ case_000341_mask =
        case_000341_b := by
    simpa [hrank] using case_000341_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000341_support case_000341_rank.val hlt
          case_000341_mask = case_000341_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000341_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000341_support case_000341_rank.val hlt
          case_000341_mask = case_000341_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000341_secondLine_eq]
  have case_000341_rowFirst :
      EqEqPosRow (FirstLineAt case_000341_support case_000341_rank.val hlt case_000341_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000341_firstLine, EqEqPosRow]
  have case_000341_fixedSecond :
      FixedRow (SecondLineAt case_000341_support case_000341_rank.val hlt case_000341_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000341_secondLine, FixedRow]
  exact ⟨case_000341_rowFirst, case_000341_fixedSecond⟩

private theorem case_000341_existsRows :
    ExistsEqEqPosVarFirstRows case_000341_rank.val case_000341_mask :=
  ⟨case_000341_support, case_000341_sourceAgrees, case_000341_rows⟩

private theorem case_000341_covered :
    RowPropertyParametricCovered case_000341_rank.val case_000341_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000341_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000342_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000342_mask : SignMask := ⟨54, by decide⟩
private def case_000342_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000342_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000342_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpm
private def case_000342_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (116/9) }
private def case_000342_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000342_secondLine : StrictLin2 := { a := (-5/26), b := (5/26), c := -2 }

private theorem case_000342_rankWord :
    rankPairWord? case_000342_word = some case_000342_rank := by
  decide

private theorem case_000342_unrank :
    unrankPairWord case_000342_rank = case_000342_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000342_word case_000342_rank).1
    case_000342_rankWord |>.symm

private theorem case_000342_seqChoice :
    translationChoiceSeq case_000342_word case_000342_mask = case_000342_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000342_seqAtRank :
    translationSeqAtRankMask case_000342_rank case_000342_mask = case_000342_seq := by
  rw [translationSeqAtRankMask, case_000342_unrank]
  exact case_000342_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000342_bAtRank :
    translationBAtRankMask case_000342_rank case_000342_mask = case_000342_b := by
  rw [translationBAtRankMask, case_000342_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000342_b, case_000342_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000342_firstLine_eq :
    case_000342_support.firstLine case_000342_seq case_000342_b = case_000342_firstLine := by
  norm_num [case_000342_firstLine, case_000342_support, case_000342_seq, case_000342_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000342_secondLine_eq :
    case_000342_support.secondLine case_000342_seq case_000342_b = case_000342_secondLine := by
  norm_num [case_000342_secondLine, case_000342_support, case_000342_seq, case_000342_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000342_sourceAgrees :
    SourceAgrees case_000342_support case_000342_rank.val case_000342_mask := by
  intro hlt
  have hrank : (⟨case_000342_rank.val, hlt⟩ : Fin numPairWords) = case_000342_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000342_rank.val, hlt⟩ case_000342_mask =
        case_000342_seq := by
    simpa [hrank] using case_000342_seqAtRank
  simp [SourceChecks, hseq, case_000342_support,
    checkTranslationConstraintSource, case_000342_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000342_rows :
    OppOneMinusVarSecondRows case_000342_support case_000342_rank.val case_000342_mask := by
  intro hlt
  have hrank : (⟨case_000342_rank.val, hlt⟩ : Fin numPairWords) = case_000342_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000342_rank.val, hlt⟩ case_000342_mask =
        case_000342_seq := by
    simpa [hrank] using case_000342_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000342_rank.val, hlt⟩ case_000342_mask =
        case_000342_b := by
    simpa [hrank] using case_000342_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000342_support case_000342_rank.val hlt
          case_000342_mask = case_000342_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000342_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000342_support case_000342_rank.val hlt
          case_000342_mask = case_000342_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000342_secondLine_eq]
  have case_000342_fixedFirst :
      FixedRow (FirstLineAt case_000342_support case_000342_rank.val hlt case_000342_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000342_firstLine, FixedRow]
  have case_000342_rowSecond :
      OppPosRow (SecondLineAt case_000342_support case_000342_rank.val hlt case_000342_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000342_secondLine, OppPosRow]
  exact ⟨case_000342_fixedFirst, case_000342_rowSecond⟩

private theorem case_000342_existsRows :
    ExistsOppOneMinusVarSecondRows case_000342_rank.val case_000342_mask :=
  ⟨case_000342_support, case_000342_sourceAgrees, case_000342_rows⟩

private theorem case_000342_covered :
    RowPropertyParametricCovered case_000342_rank.val case_000342_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000342_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000343_rank : Fin numPairWords := ⟨87, by decide⟩
private def case_000343_mask : SignMask := ⟨63, by decide⟩
private def case_000343_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000343_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000343_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000343_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (100/9) }
private def case_000343_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000343_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000343_rankWord :
    rankPairWord? case_000343_word = some case_000343_rank := by
  decide

private theorem case_000343_unrank :
    unrankPairWord case_000343_rank = case_000343_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000343_word case_000343_rank).1
    case_000343_rankWord |>.symm

private theorem case_000343_seqChoice :
    translationChoiceSeq case_000343_word case_000343_mask = case_000343_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000343_seqAtRank :
    translationSeqAtRankMask case_000343_rank case_000343_mask = case_000343_seq := by
  rw [translationSeqAtRankMask, case_000343_unrank]
  exact case_000343_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000343_bAtRank :
    translationBAtRankMask case_000343_rank case_000343_mask = case_000343_b := by
  rw [translationBAtRankMask, case_000343_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000343_b, case_000343_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000343_firstLine_eq :
    case_000343_support.firstLine case_000343_seq case_000343_b = case_000343_firstLine := by
  norm_num [case_000343_firstLine, case_000343_support, case_000343_seq, case_000343_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000343_secondLine_eq :
    case_000343_support.secondLine case_000343_seq case_000343_b = case_000343_secondLine := by
  norm_num [case_000343_secondLine, case_000343_support, case_000343_seq, case_000343_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000343_sourceAgrees :
    SourceAgrees case_000343_support case_000343_rank.val case_000343_mask := by
  intro hlt
  have hrank : (⟨case_000343_rank.val, hlt⟩ : Fin numPairWords) = case_000343_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000343_rank.val, hlt⟩ case_000343_mask =
        case_000343_seq := by
    simpa [hrank] using case_000343_seqAtRank
  simp [SourceChecks, hseq, case_000343_support,
    checkTranslationConstraintSource, case_000343_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000343_rows :
    EqEqPosVarFirstRows case_000343_support case_000343_rank.val case_000343_mask := by
  intro hlt
  have hrank : (⟨case_000343_rank.val, hlt⟩ : Fin numPairWords) = case_000343_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000343_rank.val, hlt⟩ case_000343_mask =
        case_000343_seq := by
    simpa [hrank] using case_000343_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000343_rank.val, hlt⟩ case_000343_mask =
        case_000343_b := by
    simpa [hrank] using case_000343_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000343_support case_000343_rank.val hlt
          case_000343_mask = case_000343_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000343_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000343_support case_000343_rank.val hlt
          case_000343_mask = case_000343_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000343_secondLine_eq]
  have case_000343_rowFirst :
      EqEqPosRow (FirstLineAt case_000343_support case_000343_rank.val hlt case_000343_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000343_firstLine, EqEqPosRow]
  have case_000343_fixedSecond :
      FixedRow (SecondLineAt case_000343_support case_000343_rank.val hlt case_000343_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000343_secondLine, FixedRow]
  exact ⟨case_000343_rowFirst, case_000343_fixedSecond⟩

private theorem case_000343_existsRows :
    ExistsEqEqPosVarFirstRows case_000343_rank.val case_000343_mask :=
  ⟨case_000343_support, case_000343_sourceAgrees, case_000343_rows⟩

private theorem case_000343_covered :
    RowPropertyParametricCovered case_000343_rank.val case_000343_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000343_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000344_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000344_mask : SignMask := ⟨8, by decide⟩
private def case_000344_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000344_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000344_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000344_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000344_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000344_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000344_rankWord :
    rankPairWord? case_000344_word = some case_000344_rank := by
  decide

private theorem case_000344_unrank :
    unrankPairWord case_000344_rank = case_000344_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000344_word case_000344_rank).1
    case_000344_rankWord |>.symm

private theorem case_000344_seqChoice :
    translationChoiceSeq case_000344_word case_000344_mask = case_000344_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000344_seqAtRank :
    translationSeqAtRankMask case_000344_rank case_000344_mask = case_000344_seq := by
  rw [translationSeqAtRankMask, case_000344_unrank]
  exact case_000344_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000344_bAtRank :
    translationBAtRankMask case_000344_rank case_000344_mask = case_000344_b := by
  rw [translationBAtRankMask, case_000344_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000344_b, case_000344_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000344_firstLine_eq :
    case_000344_support.firstLine case_000344_seq case_000344_b = case_000344_firstLine := by
  norm_num [case_000344_firstLine, case_000344_support, case_000344_seq, case_000344_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000344_secondLine_eq :
    case_000344_support.secondLine case_000344_seq case_000344_b = case_000344_secondLine := by
  norm_num [case_000344_secondLine, case_000344_support, case_000344_seq, case_000344_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000344_sourceAgrees :
    SourceAgrees case_000344_support case_000344_rank.val case_000344_mask := by
  intro hlt
  have hrank : (⟨case_000344_rank.val, hlt⟩ : Fin numPairWords) = case_000344_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000344_rank.val, hlt⟩ case_000344_mask =
        case_000344_seq := by
    simpa [hrank] using case_000344_seqAtRank
  simp [SourceChecks, hseq, case_000344_support,
    checkTranslationConstraintSource, case_000344_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000344_rows :
    EqEqPosVarFirstRows case_000344_support case_000344_rank.val case_000344_mask := by
  intro hlt
  have hrank : (⟨case_000344_rank.val, hlt⟩ : Fin numPairWords) = case_000344_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000344_rank.val, hlt⟩ case_000344_mask =
        case_000344_seq := by
    simpa [hrank] using case_000344_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000344_rank.val, hlt⟩ case_000344_mask =
        case_000344_b := by
    simpa [hrank] using case_000344_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000344_support case_000344_rank.val hlt
          case_000344_mask = case_000344_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000344_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000344_support case_000344_rank.val hlt
          case_000344_mask = case_000344_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000344_secondLine_eq]
  have case_000344_rowFirst :
      EqEqPosRow (FirstLineAt case_000344_support case_000344_rank.val hlt case_000344_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000344_firstLine, EqEqPosRow]
  have case_000344_fixedSecond :
      FixedRow (SecondLineAt case_000344_support case_000344_rank.val hlt case_000344_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000344_secondLine, FixedRow]
  exact ⟨case_000344_rowFirst, case_000344_fixedSecond⟩

private theorem case_000344_existsRows :
    ExistsEqEqPosVarFirstRows case_000344_rank.val case_000344_mask :=
  ⟨case_000344_support, case_000344_sourceAgrees, case_000344_rows⟩

private theorem case_000344_covered :
    RowPropertyParametricCovered case_000344_rank.val case_000344_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000344_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000345_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000345_mask : SignMask := ⟨9, by decide⟩
private def case_000345_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000345_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000345_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000345_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000345_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000345_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000345_rankWord :
    rankPairWord? case_000345_word = some case_000345_rank := by
  decide

private theorem case_000345_unrank :
    unrankPairWord case_000345_rank = case_000345_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000345_word case_000345_rank).1
    case_000345_rankWord |>.symm

private theorem case_000345_seqChoice :
    translationChoiceSeq case_000345_word case_000345_mask = case_000345_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000345_seqAtRank :
    translationSeqAtRankMask case_000345_rank case_000345_mask = case_000345_seq := by
  rw [translationSeqAtRankMask, case_000345_unrank]
  exact case_000345_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000345_bAtRank :
    translationBAtRankMask case_000345_rank case_000345_mask = case_000345_b := by
  rw [translationBAtRankMask, case_000345_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000345_b, case_000345_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000345_firstLine_eq :
    case_000345_support.firstLine case_000345_seq case_000345_b = case_000345_firstLine := by
  norm_num [case_000345_firstLine, case_000345_support, case_000345_seq, case_000345_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000345_secondLine_eq :
    case_000345_support.secondLine case_000345_seq case_000345_b = case_000345_secondLine := by
  norm_num [case_000345_secondLine, case_000345_support, case_000345_seq, case_000345_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000345_sourceAgrees :
    SourceAgrees case_000345_support case_000345_rank.val case_000345_mask := by
  intro hlt
  have hrank : (⟨case_000345_rank.val, hlt⟩ : Fin numPairWords) = case_000345_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000345_rank.val, hlt⟩ case_000345_mask =
        case_000345_seq := by
    simpa [hrank] using case_000345_seqAtRank
  simp [SourceChecks, hseq, case_000345_support,
    checkTranslationConstraintSource, case_000345_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000345_rows :
    EqEqPosVarFirstRows case_000345_support case_000345_rank.val case_000345_mask := by
  intro hlt
  have hrank : (⟨case_000345_rank.val, hlt⟩ : Fin numPairWords) = case_000345_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000345_rank.val, hlt⟩ case_000345_mask =
        case_000345_seq := by
    simpa [hrank] using case_000345_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000345_rank.val, hlt⟩ case_000345_mask =
        case_000345_b := by
    simpa [hrank] using case_000345_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000345_support case_000345_rank.val hlt
          case_000345_mask = case_000345_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000345_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000345_support case_000345_rank.val hlt
          case_000345_mask = case_000345_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000345_secondLine_eq]
  have case_000345_rowFirst :
      EqEqPosRow (FirstLineAt case_000345_support case_000345_rank.val hlt case_000345_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000345_firstLine, EqEqPosRow]
  have case_000345_fixedSecond :
      FixedRow (SecondLineAt case_000345_support case_000345_rank.val hlt case_000345_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000345_secondLine, FixedRow]
  exact ⟨case_000345_rowFirst, case_000345_fixedSecond⟩

private theorem case_000345_existsRows :
    ExistsEqEqPosVarFirstRows case_000345_rank.val case_000345_mask :=
  ⟨case_000345_support, case_000345_sourceAgrees, case_000345_rows⟩

private theorem case_000345_covered :
    RowPropertyParametricCovered case_000345_rank.val case_000345_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000345_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000346_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000346_mask : SignMask := ⟨13, by decide⟩
private def case_000346_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000346_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000346_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000346_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000346_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000346_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000346_rankWord :
    rankPairWord? case_000346_word = some case_000346_rank := by
  decide

private theorem case_000346_unrank :
    unrankPairWord case_000346_rank = case_000346_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000346_word case_000346_rank).1
    case_000346_rankWord |>.symm

private theorem case_000346_seqChoice :
    translationChoiceSeq case_000346_word case_000346_mask = case_000346_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000346_seqAtRank :
    translationSeqAtRankMask case_000346_rank case_000346_mask = case_000346_seq := by
  rw [translationSeqAtRankMask, case_000346_unrank]
  exact case_000346_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000346_bAtRank :
    translationBAtRankMask case_000346_rank case_000346_mask = case_000346_b := by
  rw [translationBAtRankMask, case_000346_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000346_b, case_000346_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000346_firstLine_eq :
    case_000346_support.firstLine case_000346_seq case_000346_b = case_000346_firstLine := by
  norm_num [case_000346_firstLine, case_000346_support, case_000346_seq, case_000346_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000346_secondLine_eq :
    case_000346_support.secondLine case_000346_seq case_000346_b = case_000346_secondLine := by
  norm_num [case_000346_secondLine, case_000346_support, case_000346_seq, case_000346_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000346_sourceAgrees :
    SourceAgrees case_000346_support case_000346_rank.val case_000346_mask := by
  intro hlt
  have hrank : (⟨case_000346_rank.val, hlt⟩ : Fin numPairWords) = case_000346_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000346_rank.val, hlt⟩ case_000346_mask =
        case_000346_seq := by
    simpa [hrank] using case_000346_seqAtRank
  simp [SourceChecks, hseq, case_000346_support,
    checkTranslationConstraintSource, case_000346_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000346_rows :
    EqEqPosVarSecondRows case_000346_support case_000346_rank.val case_000346_mask := by
  intro hlt
  have hrank : (⟨case_000346_rank.val, hlt⟩ : Fin numPairWords) = case_000346_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000346_rank.val, hlt⟩ case_000346_mask =
        case_000346_seq := by
    simpa [hrank] using case_000346_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000346_rank.val, hlt⟩ case_000346_mask =
        case_000346_b := by
    simpa [hrank] using case_000346_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000346_support case_000346_rank.val hlt
          case_000346_mask = case_000346_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000346_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000346_support case_000346_rank.val hlt
          case_000346_mask = case_000346_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000346_secondLine_eq]
  have case_000346_fixedFirst :
      FixedRow (FirstLineAt case_000346_support case_000346_rank.val hlt case_000346_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000346_firstLine, FixedRow]
  have case_000346_rowSecond :
      EqEqPosRow (SecondLineAt case_000346_support case_000346_rank.val hlt case_000346_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000346_secondLine, EqEqPosRow]
  exact ⟨case_000346_fixedFirst, case_000346_rowSecond⟩

private theorem case_000346_existsRows :
    ExistsEqEqPosVarSecondRows case_000346_rank.val case_000346_mask :=
  ⟨case_000346_support, case_000346_sourceAgrees, case_000346_rows⟩

private theorem case_000346_covered :
    RowPropertyParametricCovered case_000346_rank.val case_000346_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000346_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000347_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000347_mask : SignMask := ⟨16, by decide⟩
private def case_000347_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000347_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000347_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000347_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000347_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000347_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000347_rankWord :
    rankPairWord? case_000347_word = some case_000347_rank := by
  decide

private theorem case_000347_unrank :
    unrankPairWord case_000347_rank = case_000347_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000347_word case_000347_rank).1
    case_000347_rankWord |>.symm

private theorem case_000347_seqChoice :
    translationChoiceSeq case_000347_word case_000347_mask = case_000347_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000347_seqAtRank :
    translationSeqAtRankMask case_000347_rank case_000347_mask = case_000347_seq := by
  rw [translationSeqAtRankMask, case_000347_unrank]
  exact case_000347_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000347_bAtRank :
    translationBAtRankMask case_000347_rank case_000347_mask = case_000347_b := by
  rw [translationBAtRankMask, case_000347_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000347_b, case_000347_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000347_firstLine_eq :
    case_000347_support.firstLine case_000347_seq case_000347_b = case_000347_firstLine := by
  norm_num [case_000347_firstLine, case_000347_support, case_000347_seq, case_000347_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000347_secondLine_eq :
    case_000347_support.secondLine case_000347_seq case_000347_b = case_000347_secondLine := by
  norm_num [case_000347_secondLine, case_000347_support, case_000347_seq, case_000347_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000347_sourceAgrees :
    SourceAgrees case_000347_support case_000347_rank.val case_000347_mask := by
  intro hlt
  have hrank : (⟨case_000347_rank.val, hlt⟩ : Fin numPairWords) = case_000347_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000347_rank.val, hlt⟩ case_000347_mask =
        case_000347_seq := by
    simpa [hrank] using case_000347_seqAtRank
  simp [SourceChecks, hseq, case_000347_support,
    checkTranslationConstraintSource, case_000347_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000347_rows :
    EqEqPosVarFirstRows case_000347_support case_000347_rank.val case_000347_mask := by
  intro hlt
  have hrank : (⟨case_000347_rank.val, hlt⟩ : Fin numPairWords) = case_000347_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000347_rank.val, hlt⟩ case_000347_mask =
        case_000347_seq := by
    simpa [hrank] using case_000347_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000347_rank.val, hlt⟩ case_000347_mask =
        case_000347_b := by
    simpa [hrank] using case_000347_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000347_support case_000347_rank.val hlt
          case_000347_mask = case_000347_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000347_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000347_support case_000347_rank.val hlt
          case_000347_mask = case_000347_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000347_secondLine_eq]
  have case_000347_rowFirst :
      EqEqPosRow (FirstLineAt case_000347_support case_000347_rank.val hlt case_000347_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000347_firstLine, EqEqPosRow]
  have case_000347_fixedSecond :
      FixedRow (SecondLineAt case_000347_support case_000347_rank.val hlt case_000347_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000347_secondLine, FixedRow]
  exact ⟨case_000347_rowFirst, case_000347_fixedSecond⟩

private theorem case_000347_existsRows :
    ExistsEqEqPosVarFirstRows case_000347_rank.val case_000347_mask :=
  ⟨case_000347_support, case_000347_sourceAgrees, case_000347_rows⟩

private theorem case_000347_covered :
    RowPropertyParametricCovered case_000347_rank.val case_000347_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000347_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000348_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000348_mask : SignMask := ⟨18, by decide⟩
private def case_000348_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000348_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000348_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000348_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000348_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000348_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000348_rankWord :
    rankPairWord? case_000348_word = some case_000348_rank := by
  decide

private theorem case_000348_unrank :
    unrankPairWord case_000348_rank = case_000348_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000348_word case_000348_rank).1
    case_000348_rankWord |>.symm

private theorem case_000348_seqChoice :
    translationChoiceSeq case_000348_word case_000348_mask = case_000348_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000348_seqAtRank :
    translationSeqAtRankMask case_000348_rank case_000348_mask = case_000348_seq := by
  rw [translationSeqAtRankMask, case_000348_unrank]
  exact case_000348_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000348_bAtRank :
    translationBAtRankMask case_000348_rank case_000348_mask = case_000348_b := by
  rw [translationBAtRankMask, case_000348_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000348_b, case_000348_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000348_firstLine_eq :
    case_000348_support.firstLine case_000348_seq case_000348_b = case_000348_firstLine := by
  norm_num [case_000348_firstLine, case_000348_support, case_000348_seq, case_000348_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000348_secondLine_eq :
    case_000348_support.secondLine case_000348_seq case_000348_b = case_000348_secondLine := by
  norm_num [case_000348_secondLine, case_000348_support, case_000348_seq, case_000348_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000348_sourceAgrees :
    SourceAgrees case_000348_support case_000348_rank.val case_000348_mask := by
  intro hlt
  have hrank : (⟨case_000348_rank.val, hlt⟩ : Fin numPairWords) = case_000348_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000348_rank.val, hlt⟩ case_000348_mask =
        case_000348_seq := by
    simpa [hrank] using case_000348_seqAtRank
  simp [SourceChecks, hseq, case_000348_support,
    checkTranslationConstraintSource, case_000348_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000348_rows :
    EqEqPosVarFirstRows case_000348_support case_000348_rank.val case_000348_mask := by
  intro hlt
  have hrank : (⟨case_000348_rank.val, hlt⟩ : Fin numPairWords) = case_000348_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000348_rank.val, hlt⟩ case_000348_mask =
        case_000348_seq := by
    simpa [hrank] using case_000348_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000348_rank.val, hlt⟩ case_000348_mask =
        case_000348_b := by
    simpa [hrank] using case_000348_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000348_support case_000348_rank.val hlt
          case_000348_mask = case_000348_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000348_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000348_support case_000348_rank.val hlt
          case_000348_mask = case_000348_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000348_secondLine_eq]
  have case_000348_rowFirst :
      EqEqPosRow (FirstLineAt case_000348_support case_000348_rank.val hlt case_000348_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000348_firstLine, EqEqPosRow]
  have case_000348_fixedSecond :
      FixedRow (SecondLineAt case_000348_support case_000348_rank.val hlt case_000348_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000348_secondLine, FixedRow]
  exact ⟨case_000348_rowFirst, case_000348_fixedSecond⟩

private theorem case_000348_existsRows :
    ExistsEqEqPosVarFirstRows case_000348_rank.val case_000348_mask :=
  ⟨case_000348_support, case_000348_sourceAgrees, case_000348_rows⟩

private theorem case_000348_covered :
    RowPropertyParametricCovered case_000348_rank.val case_000348_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000348_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000349_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000349_mask : SignMask := ⟨22, by decide⟩
private def case_000349_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000349_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000349_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000349_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000349_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000349_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_000349_rankWord :
    rankPairWord? case_000349_word = some case_000349_rank := by
  decide

private theorem case_000349_unrank :
    unrankPairWord case_000349_rank = case_000349_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000349_word case_000349_rank).1
    case_000349_rankWord |>.symm

private theorem case_000349_seqChoice :
    translationChoiceSeq case_000349_word case_000349_mask = case_000349_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000349_seqAtRank :
    translationSeqAtRankMask case_000349_rank case_000349_mask = case_000349_seq := by
  rw [translationSeqAtRankMask, case_000349_unrank]
  exact case_000349_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000349_bAtRank :
    translationBAtRankMask case_000349_rank case_000349_mask = case_000349_b := by
  rw [translationBAtRankMask, case_000349_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000349_b, case_000349_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000349_firstLine_eq :
    case_000349_support.firstLine case_000349_seq case_000349_b = case_000349_firstLine := by
  norm_num [case_000349_firstLine, case_000349_support, case_000349_seq, case_000349_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000349_secondLine_eq :
    case_000349_support.secondLine case_000349_seq case_000349_b = case_000349_secondLine := by
  norm_num [case_000349_secondLine, case_000349_support, case_000349_seq, case_000349_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000349_sourceAgrees :
    SourceAgrees case_000349_support case_000349_rank.val case_000349_mask := by
  intro hlt
  have hrank : (⟨case_000349_rank.val, hlt⟩ : Fin numPairWords) = case_000349_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000349_rank.val, hlt⟩ case_000349_mask =
        case_000349_seq := by
    simpa [hrank] using case_000349_seqAtRank
  simp [SourceChecks, hseq, case_000349_support,
    checkTranslationConstraintSource, case_000349_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000349_rows :
    EqEqPosVarSecondRows case_000349_support case_000349_rank.val case_000349_mask := by
  intro hlt
  have hrank : (⟨case_000349_rank.val, hlt⟩ : Fin numPairWords) = case_000349_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000349_rank.val, hlt⟩ case_000349_mask =
        case_000349_seq := by
    simpa [hrank] using case_000349_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000349_rank.val, hlt⟩ case_000349_mask =
        case_000349_b := by
    simpa [hrank] using case_000349_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000349_support case_000349_rank.val hlt
          case_000349_mask = case_000349_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000349_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000349_support case_000349_rank.val hlt
          case_000349_mask = case_000349_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000349_secondLine_eq]
  have case_000349_fixedFirst :
      FixedRow (FirstLineAt case_000349_support case_000349_rank.val hlt case_000349_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000349_firstLine, FixedRow]
  have case_000349_rowSecond :
      EqEqPosRow (SecondLineAt case_000349_support case_000349_rank.val hlt case_000349_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000349_secondLine, EqEqPosRow]
  exact ⟨case_000349_fixedFirst, case_000349_rowSecond⟩

private theorem case_000349_existsRows :
    ExistsEqEqPosVarSecondRows case_000349_rank.val case_000349_mask :=
  ⟨case_000349_support, case_000349_sourceAgrees, case_000349_rows⟩

private theorem case_000349_covered :
    RowPropertyParametricCovered case_000349_rank.val case_000349_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000349_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000350_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000350_mask : SignMask := ⟨24, by decide⟩
private def case_000350_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000350_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000350_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000350_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000350_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000350_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000350_rankWord :
    rankPairWord? case_000350_word = some case_000350_rank := by
  decide

private theorem case_000350_unrank :
    unrankPairWord case_000350_rank = case_000350_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000350_word case_000350_rank).1
    case_000350_rankWord |>.symm

private theorem case_000350_seqChoice :
    translationChoiceSeq case_000350_word case_000350_mask = case_000350_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000350_seqAtRank :
    translationSeqAtRankMask case_000350_rank case_000350_mask = case_000350_seq := by
  rw [translationSeqAtRankMask, case_000350_unrank]
  exact case_000350_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000350_bAtRank :
    translationBAtRankMask case_000350_rank case_000350_mask = case_000350_b := by
  rw [translationBAtRankMask, case_000350_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000350_b, case_000350_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000350_firstLine_eq :
    case_000350_support.firstLine case_000350_seq case_000350_b = case_000350_firstLine := by
  norm_num [case_000350_firstLine, case_000350_support, case_000350_seq, case_000350_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000350_secondLine_eq :
    case_000350_support.secondLine case_000350_seq case_000350_b = case_000350_secondLine := by
  norm_num [case_000350_secondLine, case_000350_support, case_000350_seq, case_000350_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000350_sourceAgrees :
    SourceAgrees case_000350_support case_000350_rank.val case_000350_mask := by
  intro hlt
  have hrank : (⟨case_000350_rank.val, hlt⟩ : Fin numPairWords) = case_000350_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000350_rank.val, hlt⟩ case_000350_mask =
        case_000350_seq := by
    simpa [hrank] using case_000350_seqAtRank
  simp [SourceChecks, hseq, case_000350_support,
    checkTranslationConstraintSource, case_000350_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000350_rows :
    EqEqPosVarFirstRows case_000350_support case_000350_rank.val case_000350_mask := by
  intro hlt
  have hrank : (⟨case_000350_rank.val, hlt⟩ : Fin numPairWords) = case_000350_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000350_rank.val, hlt⟩ case_000350_mask =
        case_000350_seq := by
    simpa [hrank] using case_000350_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000350_rank.val, hlt⟩ case_000350_mask =
        case_000350_b := by
    simpa [hrank] using case_000350_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000350_support case_000350_rank.val hlt
          case_000350_mask = case_000350_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000350_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000350_support case_000350_rank.val hlt
          case_000350_mask = case_000350_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000350_secondLine_eq]
  have case_000350_rowFirst :
      EqEqPosRow (FirstLineAt case_000350_support case_000350_rank.val hlt case_000350_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000350_firstLine, EqEqPosRow]
  have case_000350_fixedSecond :
      FixedRow (SecondLineAt case_000350_support case_000350_rank.val hlt case_000350_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000350_secondLine, FixedRow]
  exact ⟨case_000350_rowFirst, case_000350_fixedSecond⟩

private theorem case_000350_existsRows :
    ExistsEqEqPosVarFirstRows case_000350_rank.val case_000350_mask :=
  ⟨case_000350_support, case_000350_sourceAgrees, case_000350_rows⟩

private theorem case_000350_covered :
    RowPropertyParametricCovered case_000350_rank.val case_000350_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000350_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000351_rank : Fin numPairWords := ⟨89, by decide⟩
private def case_000351_mask : SignMask := ⟨28, by decide⟩
private def case_000351_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000351_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000351_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
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
private def case_000351_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000351_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000351_secondLine : StrictLin2 := { a := (1/4), b := (-1/4), c := (-1/2) }

private theorem case_000351_rankWord :
    rankPairWord? case_000351_word = some case_000351_rank := by
  decide

private theorem case_000351_unrank :
    unrankPairWord case_000351_rank = case_000351_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000351_word case_000351_rank).1
    case_000351_rankWord |>.symm

private theorem case_000351_seqChoice :
    translationChoiceSeq case_000351_word case_000351_mask = case_000351_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000351_seqAtRank :
    translationSeqAtRankMask case_000351_rank case_000351_mask = case_000351_seq := by
  rw [translationSeqAtRankMask, case_000351_unrank]
  exact case_000351_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000351_bAtRank :
    translationBAtRankMask case_000351_rank case_000351_mask = case_000351_b := by
  rw [translationBAtRankMask, case_000351_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000351_b, case_000351_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000351_firstLine_eq :
    case_000351_support.firstLine case_000351_seq case_000351_b = case_000351_firstLine := by
  norm_num [case_000351_firstLine, case_000351_support, case_000351_seq, case_000351_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000351_secondLine_eq :
    case_000351_support.secondLine case_000351_seq case_000351_b = case_000351_secondLine := by
  norm_num [case_000351_secondLine, case_000351_support, case_000351_seq, case_000351_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000351_sourceAgrees :
    SourceAgrees case_000351_support case_000351_rank.val case_000351_mask := by
  intro hlt
  have hrank : (⟨case_000351_rank.val, hlt⟩ : Fin numPairWords) = case_000351_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000351_rank.val, hlt⟩ case_000351_mask =
        case_000351_seq := by
    simpa [hrank] using case_000351_seqAtRank
  simp [SourceChecks, hseq, case_000351_support,
    checkTranslationConstraintSource, case_000351_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000351_rows :
    OppMinusOneVarSecondRows case_000351_support case_000351_rank.val case_000351_mask := by
  intro hlt
  have hrank : (⟨case_000351_rank.val, hlt⟩ : Fin numPairWords) = case_000351_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000351_rank.val, hlt⟩ case_000351_mask =
        case_000351_seq := by
    simpa [hrank] using case_000351_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000351_rank.val, hlt⟩ case_000351_mask =
        case_000351_b := by
    simpa [hrank] using case_000351_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000351_support case_000351_rank.val hlt
          case_000351_mask = case_000351_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000351_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000351_support case_000351_rank.val hlt
          case_000351_mask = case_000351_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000351_secondLine_eq]
  have case_000351_fixedFirst :
      FixedRow (FirstLineAt case_000351_support case_000351_rank.val hlt case_000351_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000351_firstLine, FixedRow]
  have case_000351_rowSecond :
      OppNegRow (SecondLineAt case_000351_support case_000351_rank.val hlt case_000351_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000351_secondLine, OppNegRow]
  exact ⟨case_000351_fixedFirst, case_000351_rowSecond⟩

private theorem case_000351_existsRows :
    ExistsOppMinusOneVarSecondRows case_000351_rank.val case_000351_mask :=
  ⟨case_000351_support, case_000351_sourceAgrees, case_000351_rows⟩

private theorem case_000351_covered :
    RowPropertyParametricCovered case_000351_rank.val case_000351_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000351_existsRows

inductive Group010Covered : Nat -> SignMask -> Prop
  | case_000320 : Group010Covered case_000320_rank.val case_000320_mask
  | case_000321 : Group010Covered case_000321_rank.val case_000321_mask
  | case_000322 : Group010Covered case_000322_rank.val case_000322_mask
  | case_000323 : Group010Covered case_000323_rank.val case_000323_mask
  | case_000324 : Group010Covered case_000324_rank.val case_000324_mask
  | case_000325 : Group010Covered case_000325_rank.val case_000325_mask
  | case_000326 : Group010Covered case_000326_rank.val case_000326_mask
  | case_000327 : Group010Covered case_000327_rank.val case_000327_mask
  | case_000328 : Group010Covered case_000328_rank.val case_000328_mask
  | case_000329 : Group010Covered case_000329_rank.val case_000329_mask
  | case_000330 : Group010Covered case_000330_rank.val case_000330_mask
  | case_000331 : Group010Covered case_000331_rank.val case_000331_mask
  | case_000332 : Group010Covered case_000332_rank.val case_000332_mask
  | case_000333 : Group010Covered case_000333_rank.val case_000333_mask
  | case_000334 : Group010Covered case_000334_rank.val case_000334_mask
  | case_000335 : Group010Covered case_000335_rank.val case_000335_mask
  | case_000336 : Group010Covered case_000336_rank.val case_000336_mask
  | case_000337 : Group010Covered case_000337_rank.val case_000337_mask
  | case_000338 : Group010Covered case_000338_rank.val case_000338_mask
  | case_000339 : Group010Covered case_000339_rank.val case_000339_mask
  | case_000340 : Group010Covered case_000340_rank.val case_000340_mask
  | case_000341 : Group010Covered case_000341_rank.val case_000341_mask
  | case_000342 : Group010Covered case_000342_rank.val case_000342_mask
  | case_000343 : Group010Covered case_000343_rank.val case_000343_mask
  | case_000344 : Group010Covered case_000344_rank.val case_000344_mask
  | case_000345 : Group010Covered case_000345_rank.val case_000345_mask
  | case_000346 : Group010Covered case_000346_rank.val case_000346_mask
  | case_000347 : Group010Covered case_000347_rank.val case_000347_mask
  | case_000348 : Group010Covered case_000348_rank.val case_000348_mask
  | case_000349 : Group010Covered case_000349_rank.val case_000349_mask
  | case_000350 : Group010Covered case_000350_rank.val case_000350_mask
  | case_000351 : Group010Covered case_000351_rank.val case_000351_mask

theorem Group010GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group010Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000320 =>
      exact RowPropertyParametricCovered.kills case_000320_covered
  | case_000321 =>
      exact RowPropertyParametricCovered.kills case_000321_covered
  | case_000322 =>
      exact RowPropertyParametricCovered.kills case_000322_covered
  | case_000323 =>
      exact RowPropertyParametricCovered.kills case_000323_covered
  | case_000324 =>
      exact RowPropertyParametricCovered.kills case_000324_covered
  | case_000325 =>
      exact RowPropertyParametricCovered.kills case_000325_covered
  | case_000326 =>
      exact RowPropertyParametricCovered.kills case_000326_covered
  | case_000327 =>
      exact RowPropertyParametricCovered.kills case_000327_covered
  | case_000328 =>
      exact RowPropertyParametricCovered.kills case_000328_covered
  | case_000329 =>
      exact RowPropertyParametricCovered.kills case_000329_covered
  | case_000330 =>
      exact RowPropertyParametricCovered.kills case_000330_covered
  | case_000331 =>
      exact RowPropertyParametricCovered.kills case_000331_covered
  | case_000332 =>
      exact RowPropertyParametricCovered.kills case_000332_covered
  | case_000333 =>
      exact RowPropertyParametricCovered.kills case_000333_covered
  | case_000334 =>
      exact RowPropertyParametricCovered.kills case_000334_covered
  | case_000335 =>
      exact RowPropertyParametricCovered.kills case_000335_covered
  | case_000336 =>
      exact RowPropertyParametricCovered.kills case_000336_covered
  | case_000337 =>
      exact RowPropertyParametricCovered.kills case_000337_covered
  | case_000338 =>
      exact RowPropertyParametricCovered.kills case_000338_covered
  | case_000339 =>
      exact RowPropertyParametricCovered.kills case_000339_covered
  | case_000340 =>
      exact RowPropertyParametricCovered.kills case_000340_covered
  | case_000341 =>
      exact RowPropertyParametricCovered.kills case_000341_covered
  | case_000342 =>
      exact RowPropertyParametricCovered.kills case_000342_covered
  | case_000343 =>
      exact RowPropertyParametricCovered.kills case_000343_covered
  | case_000344 =>
      exact RowPropertyParametricCovered.kills case_000344_covered
  | case_000345 =>
      exact RowPropertyParametricCovered.kills case_000345_covered
  | case_000346 =>
      exact RowPropertyParametricCovered.kills case_000346_covered
  | case_000347 =>
      exact RowPropertyParametricCovered.kills case_000347_covered
  | case_000348 =>
      exact RowPropertyParametricCovered.kills case_000348_covered
  | case_000349 =>
      exact RowPropertyParametricCovered.kills case_000349_covered
  | case_000350 =>
      exact RowPropertyParametricCovered.kills case_000350_covered
  | case_000351 =>
      exact RowPropertyParametricCovered.kills case_000351_covered

theorem Group010_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group010
