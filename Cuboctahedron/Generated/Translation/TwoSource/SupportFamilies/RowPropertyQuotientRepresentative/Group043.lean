import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group043

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
private def case_001376_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001376_mask : SignMask := ⟨47, by decide⟩
private def case_001376_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001376_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001376_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_001376_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (52/9) }
private def case_001376_firstLine : StrictLin2 := { a := (-26/63), b := (-26/63), c := (-16/21) }
private def case_001376_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001376_rankWord :
    rankPairWord? case_001376_word = some case_001376_rank := by
  decide

private theorem case_001376_unrank :
    unrankPairWord case_001376_rank = case_001376_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001376_word case_001376_rank).1
    case_001376_rankWord |>.symm

private theorem case_001376_seqChoice :
    translationChoiceSeq case_001376_word case_001376_mask = case_001376_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001376_seqAtRank :
    translationSeqAtRankMask case_001376_rank case_001376_mask = case_001376_seq := by
  rw [translationSeqAtRankMask, case_001376_unrank]
  exact case_001376_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001376_bAtRank :
    translationBAtRankMask case_001376_rank case_001376_mask = case_001376_b := by
  rw [translationBAtRankMask, case_001376_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001376_b, case_001376_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001376_firstLine_eq :
    case_001376_support.firstLine case_001376_seq case_001376_b = case_001376_firstLine := by
  norm_num [case_001376_firstLine, case_001376_support, case_001376_seq, case_001376_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001376_secondLine_eq :
    case_001376_support.secondLine case_001376_seq case_001376_b = case_001376_secondLine := by
  norm_num [case_001376_secondLine, case_001376_support, case_001376_seq, case_001376_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001376_sourceAgrees :
    SourceAgrees case_001376_support case_001376_rank.val case_001376_mask := by
  intro hlt
  have hrank : (⟨case_001376_rank.val, hlt⟩ : Fin numPairWords) = case_001376_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001376_rank.val, hlt⟩ case_001376_mask =
        case_001376_seq := by
    simpa [hrank] using case_001376_seqAtRank
  simp [SourceChecks, hseq, case_001376_support,
    checkTranslationConstraintSource, case_001376_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001376_rows :
    EqEqPosVarFirstRows case_001376_support case_001376_rank.val case_001376_mask := by
  intro hlt
  have hrank : (⟨case_001376_rank.val, hlt⟩ : Fin numPairWords) = case_001376_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001376_rank.val, hlt⟩ case_001376_mask =
        case_001376_seq := by
    simpa [hrank] using case_001376_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001376_rank.val, hlt⟩ case_001376_mask =
        case_001376_b := by
    simpa [hrank] using case_001376_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001376_support case_001376_rank.val hlt
          case_001376_mask = case_001376_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001376_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001376_support case_001376_rank.val hlt
          case_001376_mask = case_001376_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001376_secondLine_eq]
  have case_001376_rowFirst :
      EqEqPosRow (FirstLineAt case_001376_support case_001376_rank.val hlt case_001376_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001376_firstLine, EqEqPosRow]
  have case_001376_fixedSecond :
      FixedRow (SecondLineAt case_001376_support case_001376_rank.val hlt case_001376_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001376_secondLine, FixedRow]
  exact ⟨case_001376_rowFirst, case_001376_fixedSecond⟩

private theorem case_001376_existsRows :
    ExistsEqEqPosVarFirstRows case_001376_rank.val case_001376_mask :=
  ⟨case_001376_support, case_001376_sourceAgrees, case_001376_rows⟩

private theorem case_001376_covered :
    RowPropertyParametricCovered case_001376_rank.val case_001376_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001376_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001377_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001377_mask : SignMask := ⟨54, by decide⟩
private def case_001377_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001377_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001377_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001377_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (116/9) }
private def case_001377_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001377_secondLine : StrictLin2 := { a := (-15/154), b := (-15/154), c := (-48/77) }

private theorem case_001377_rankWord :
    rankPairWord? case_001377_word = some case_001377_rank := by
  decide

private theorem case_001377_unrank :
    unrankPairWord case_001377_rank = case_001377_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001377_word case_001377_rank).1
    case_001377_rankWord |>.symm

private theorem case_001377_seqChoice :
    translationChoiceSeq case_001377_word case_001377_mask = case_001377_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001377_seqAtRank :
    translationSeqAtRankMask case_001377_rank case_001377_mask = case_001377_seq := by
  rw [translationSeqAtRankMask, case_001377_unrank]
  exact case_001377_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001377_bAtRank :
    translationBAtRankMask case_001377_rank case_001377_mask = case_001377_b := by
  rw [translationBAtRankMask, case_001377_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001377_b, case_001377_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001377_firstLine_eq :
    case_001377_support.firstLine case_001377_seq case_001377_b = case_001377_firstLine := by
  norm_num [case_001377_firstLine, case_001377_support, case_001377_seq, case_001377_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001377_secondLine_eq :
    case_001377_support.secondLine case_001377_seq case_001377_b = case_001377_secondLine := by
  norm_num [case_001377_secondLine, case_001377_support, case_001377_seq, case_001377_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001377_sourceAgrees :
    SourceAgrees case_001377_support case_001377_rank.val case_001377_mask := by
  intro hlt
  have hrank : (⟨case_001377_rank.val, hlt⟩ : Fin numPairWords) = case_001377_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001377_rank.val, hlt⟩ case_001377_mask =
        case_001377_seq := by
    simpa [hrank] using case_001377_seqAtRank
  simp [SourceChecks, hseq, case_001377_support,
    checkTranslationConstraintSource, case_001377_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001377_rows :
    EqEqPosVarSecondRows case_001377_support case_001377_rank.val case_001377_mask := by
  intro hlt
  have hrank : (⟨case_001377_rank.val, hlt⟩ : Fin numPairWords) = case_001377_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001377_rank.val, hlt⟩ case_001377_mask =
        case_001377_seq := by
    simpa [hrank] using case_001377_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001377_rank.val, hlt⟩ case_001377_mask =
        case_001377_b := by
    simpa [hrank] using case_001377_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001377_support case_001377_rank.val hlt
          case_001377_mask = case_001377_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001377_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001377_support case_001377_rank.val hlt
          case_001377_mask = case_001377_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001377_secondLine_eq]
  have case_001377_fixedFirst :
      FixedRow (FirstLineAt case_001377_support case_001377_rank.val hlt case_001377_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001377_firstLine, FixedRow]
  have case_001377_rowSecond :
      EqEqPosRow (SecondLineAt case_001377_support case_001377_rank.val hlt case_001377_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001377_secondLine, EqEqPosRow]
  exact ⟨case_001377_fixedFirst, case_001377_rowSecond⟩

private theorem case_001377_existsRows :
    ExistsEqEqPosVarSecondRows case_001377_rank.val case_001377_mask :=
  ⟨case_001377_support, case_001377_sourceAgrees, case_001377_rows⟩

private theorem case_001377_covered :
    RowPropertyParametricCovered case_001377_rank.val case_001377_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001377_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001378_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001378_mask : SignMask := ⟨55, by decide⟩
private def case_001378_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001378_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001378_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001378_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_001378_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001378_secondLine : StrictLin2 := { a := (-15/754), b := (-15/754), c := (-9/29) }

private theorem case_001378_rankWord :
    rankPairWord? case_001378_word = some case_001378_rank := by
  decide

private theorem case_001378_unrank :
    unrankPairWord case_001378_rank = case_001378_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001378_word case_001378_rank).1
    case_001378_rankWord |>.symm

private theorem case_001378_seqChoice :
    translationChoiceSeq case_001378_word case_001378_mask = case_001378_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001378_seqAtRank :
    translationSeqAtRankMask case_001378_rank case_001378_mask = case_001378_seq := by
  rw [translationSeqAtRankMask, case_001378_unrank]
  exact case_001378_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001378_bAtRank :
    translationBAtRankMask case_001378_rank case_001378_mask = case_001378_b := by
  rw [translationBAtRankMask, case_001378_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001378_b, case_001378_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001378_firstLine_eq :
    case_001378_support.firstLine case_001378_seq case_001378_b = case_001378_firstLine := by
  norm_num [case_001378_firstLine, case_001378_support, case_001378_seq, case_001378_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001378_secondLine_eq :
    case_001378_support.secondLine case_001378_seq case_001378_b = case_001378_secondLine := by
  norm_num [case_001378_secondLine, case_001378_support, case_001378_seq, case_001378_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001378_sourceAgrees :
    SourceAgrees case_001378_support case_001378_rank.val case_001378_mask := by
  intro hlt
  have hrank : (⟨case_001378_rank.val, hlt⟩ : Fin numPairWords) = case_001378_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001378_rank.val, hlt⟩ case_001378_mask =
        case_001378_seq := by
    simpa [hrank] using case_001378_seqAtRank
  simp [SourceChecks, hseq, case_001378_support,
    checkTranslationConstraintSource, case_001378_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001378_rows :
    EqEqPosVarSecondRows case_001378_support case_001378_rank.val case_001378_mask := by
  intro hlt
  have hrank : (⟨case_001378_rank.val, hlt⟩ : Fin numPairWords) = case_001378_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001378_rank.val, hlt⟩ case_001378_mask =
        case_001378_seq := by
    simpa [hrank] using case_001378_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001378_rank.val, hlt⟩ case_001378_mask =
        case_001378_b := by
    simpa [hrank] using case_001378_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001378_support case_001378_rank.val hlt
          case_001378_mask = case_001378_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001378_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001378_support case_001378_rank.val hlt
          case_001378_mask = case_001378_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001378_secondLine_eq]
  have case_001378_fixedFirst :
      FixedRow (FirstLineAt case_001378_support case_001378_rank.val hlt case_001378_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001378_firstLine, FixedRow]
  have case_001378_rowSecond :
      EqEqPosRow (SecondLineAt case_001378_support case_001378_rank.val hlt case_001378_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001378_secondLine, EqEqPosRow]
  exact ⟨case_001378_fixedFirst, case_001378_rowSecond⟩

private theorem case_001378_existsRows :
    ExistsEqEqPosVarSecondRows case_001378_rank.val case_001378_mask :=
  ⟨case_001378_support, case_001378_sourceAgrees, case_001378_rows⟩

private theorem case_001378_covered :
    RowPropertyParametricCovered case_001378_rank.val case_001378_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001378_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001379_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001379_mask : SignMask := ⟨8, by decide⟩
private def case_001379_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001379_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001379_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tpmp
private def case_001379_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-116/9) }
private def case_001379_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_001379_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001379_rankWord :
    rankPairWord? case_001379_word = some case_001379_rank := by
  decide

private theorem case_001379_unrank :
    unrankPairWord case_001379_rank = case_001379_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001379_word case_001379_rank).1
    case_001379_rankWord |>.symm

private theorem case_001379_seqChoice :
    translationChoiceSeq case_001379_word case_001379_mask = case_001379_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001379_seqAtRank :
    translationSeqAtRankMask case_001379_rank case_001379_mask = case_001379_seq := by
  rw [translationSeqAtRankMask, case_001379_unrank]
  exact case_001379_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001379_bAtRank :
    translationBAtRankMask case_001379_rank case_001379_mask = case_001379_b := by
  rw [translationBAtRankMask, case_001379_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001379_b, case_001379_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001379_firstLine_eq :
    case_001379_support.firstLine case_001379_seq case_001379_b = case_001379_firstLine := by
  norm_num [case_001379_firstLine, case_001379_support, case_001379_seq, case_001379_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001379_secondLine_eq :
    case_001379_support.secondLine case_001379_seq case_001379_b = case_001379_secondLine := by
  norm_num [case_001379_secondLine, case_001379_support, case_001379_seq, case_001379_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001379_sourceAgrees :
    SourceAgrees case_001379_support case_001379_rank.val case_001379_mask := by
  intro hlt
  have hrank : (⟨case_001379_rank.val, hlt⟩ : Fin numPairWords) = case_001379_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001379_rank.val, hlt⟩ case_001379_mask =
        case_001379_seq := by
    simpa [hrank] using case_001379_seqAtRank
  simp [SourceChecks, hseq, case_001379_support,
    checkTranslationConstraintSource, case_001379_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001379_rows :
    EqEqPosVarFirstRows case_001379_support case_001379_rank.val case_001379_mask := by
  intro hlt
  have hrank : (⟨case_001379_rank.val, hlt⟩ : Fin numPairWords) = case_001379_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001379_rank.val, hlt⟩ case_001379_mask =
        case_001379_seq := by
    simpa [hrank] using case_001379_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001379_rank.val, hlt⟩ case_001379_mask =
        case_001379_b := by
    simpa [hrank] using case_001379_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001379_support case_001379_rank.val hlt
          case_001379_mask = case_001379_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001379_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001379_support case_001379_rank.val hlt
          case_001379_mask = case_001379_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001379_secondLine_eq]
  have case_001379_rowFirst :
      EqEqPosRow (FirstLineAt case_001379_support case_001379_rank.val hlt case_001379_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001379_firstLine, EqEqPosRow]
  have case_001379_fixedSecond :
      FixedRow (SecondLineAt case_001379_support case_001379_rank.val hlt case_001379_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001379_secondLine, FixedRow]
  exact ⟨case_001379_rowFirst, case_001379_fixedSecond⟩

private theorem case_001379_existsRows :
    ExistsEqEqPosVarFirstRows case_001379_rank.val case_001379_mask :=
  ⟨case_001379_support, case_001379_sourceAgrees, case_001379_rows⟩

private theorem case_001379_covered :
    RowPropertyParametricCovered case_001379_rank.val case_001379_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001379_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001380_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001380_mask : SignMask := ⟨13, by decide⟩
private def case_001380_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001380_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001380_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001380_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-100/9) }
private def case_001380_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001380_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_001380_rankWord :
    rankPairWord? case_001380_word = some case_001380_rank := by
  decide

private theorem case_001380_unrank :
    unrankPairWord case_001380_rank = case_001380_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001380_word case_001380_rank).1
    case_001380_rankWord |>.symm

private theorem case_001380_seqChoice :
    translationChoiceSeq case_001380_word case_001380_mask = case_001380_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001380_seqAtRank :
    translationSeqAtRankMask case_001380_rank case_001380_mask = case_001380_seq := by
  rw [translationSeqAtRankMask, case_001380_unrank]
  exact case_001380_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001380_bAtRank :
    translationBAtRankMask case_001380_rank case_001380_mask = case_001380_b := by
  rw [translationBAtRankMask, case_001380_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001380_b, case_001380_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001380_firstLine_eq :
    case_001380_support.firstLine case_001380_seq case_001380_b = case_001380_firstLine := by
  norm_num [case_001380_firstLine, case_001380_support, case_001380_seq, case_001380_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001380_secondLine_eq :
    case_001380_support.secondLine case_001380_seq case_001380_b = case_001380_secondLine := by
  norm_num [case_001380_secondLine, case_001380_support, case_001380_seq, case_001380_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001380_sourceAgrees :
    SourceAgrees case_001380_support case_001380_rank.val case_001380_mask := by
  intro hlt
  have hrank : (⟨case_001380_rank.val, hlt⟩ : Fin numPairWords) = case_001380_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001380_rank.val, hlt⟩ case_001380_mask =
        case_001380_seq := by
    simpa [hrank] using case_001380_seqAtRank
  simp [SourceChecks, hseq, case_001380_support,
    checkTranslationConstraintSource, case_001380_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001380_rows :
    EqEqPosVarSecondRows case_001380_support case_001380_rank.val case_001380_mask := by
  intro hlt
  have hrank : (⟨case_001380_rank.val, hlt⟩ : Fin numPairWords) = case_001380_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001380_rank.val, hlt⟩ case_001380_mask =
        case_001380_seq := by
    simpa [hrank] using case_001380_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001380_rank.val, hlt⟩ case_001380_mask =
        case_001380_b := by
    simpa [hrank] using case_001380_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001380_support case_001380_rank.val hlt
          case_001380_mask = case_001380_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001380_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001380_support case_001380_rank.val hlt
          case_001380_mask = case_001380_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001380_secondLine_eq]
  have case_001380_fixedFirst :
      FixedRow (FirstLineAt case_001380_support case_001380_rank.val hlt case_001380_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001380_firstLine, FixedRow]
  have case_001380_rowSecond :
      EqEqPosRow (SecondLineAt case_001380_support case_001380_rank.val hlt case_001380_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001380_secondLine, EqEqPosRow]
  exact ⟨case_001380_fixedFirst, case_001380_rowSecond⟩

private theorem case_001380_existsRows :
    ExistsEqEqPosVarSecondRows case_001380_rank.val case_001380_mask :=
  ⟨case_001380_support, case_001380_sourceAgrees, case_001380_rows⟩

private theorem case_001380_covered :
    RowPropertyParametricCovered case_001380_rank.val case_001380_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001380_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001381_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001381_mask : SignMask := ⟨16, by decide⟩
private def case_001381_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001381_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001381_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001381_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (-20/9) }
private def case_001381_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_001381_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001381_rankWord :
    rankPairWord? case_001381_word = some case_001381_rank := by
  decide

private theorem case_001381_unrank :
    unrankPairWord case_001381_rank = case_001381_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001381_word case_001381_rank).1
    case_001381_rankWord |>.symm

private theorem case_001381_seqChoice :
    translationChoiceSeq case_001381_word case_001381_mask = case_001381_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001381_seqAtRank :
    translationSeqAtRankMask case_001381_rank case_001381_mask = case_001381_seq := by
  rw [translationSeqAtRankMask, case_001381_unrank]
  exact case_001381_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001381_bAtRank :
    translationBAtRankMask case_001381_rank case_001381_mask = case_001381_b := by
  rw [translationBAtRankMask, case_001381_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001381_b, case_001381_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001381_firstLine_eq :
    case_001381_support.firstLine case_001381_seq case_001381_b = case_001381_firstLine := by
  norm_num [case_001381_firstLine, case_001381_support, case_001381_seq, case_001381_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001381_secondLine_eq :
    case_001381_support.secondLine case_001381_seq case_001381_b = case_001381_secondLine := by
  norm_num [case_001381_secondLine, case_001381_support, case_001381_seq, case_001381_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001381_sourceAgrees :
    SourceAgrees case_001381_support case_001381_rank.val case_001381_mask := by
  intro hlt
  have hrank : (⟨case_001381_rank.val, hlt⟩ : Fin numPairWords) = case_001381_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001381_rank.val, hlt⟩ case_001381_mask =
        case_001381_seq := by
    simpa [hrank] using case_001381_seqAtRank
  simp [SourceChecks, hseq, case_001381_support,
    checkTranslationConstraintSource, case_001381_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001381_rows :
    EqEqPosVarFirstRows case_001381_support case_001381_rank.val case_001381_mask := by
  intro hlt
  have hrank : (⟨case_001381_rank.val, hlt⟩ : Fin numPairWords) = case_001381_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001381_rank.val, hlt⟩ case_001381_mask =
        case_001381_seq := by
    simpa [hrank] using case_001381_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001381_rank.val, hlt⟩ case_001381_mask =
        case_001381_b := by
    simpa [hrank] using case_001381_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001381_support case_001381_rank.val hlt
          case_001381_mask = case_001381_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001381_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001381_support case_001381_rank.val hlt
          case_001381_mask = case_001381_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001381_secondLine_eq]
  have case_001381_rowFirst :
      EqEqPosRow (FirstLineAt case_001381_support case_001381_rank.val hlt case_001381_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001381_firstLine, EqEqPosRow]
  have case_001381_fixedSecond :
      FixedRow (SecondLineAt case_001381_support case_001381_rank.val hlt case_001381_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001381_secondLine, FixedRow]
  exact ⟨case_001381_rowFirst, case_001381_fixedSecond⟩

private theorem case_001381_existsRows :
    ExistsEqEqPosVarFirstRows case_001381_rank.val case_001381_mask :=
  ⟨case_001381_support, case_001381_sourceAgrees, case_001381_rows⟩

private theorem case_001381_covered :
    RowPropertyParametricCovered case_001381_rank.val case_001381_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001381_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001382_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001382_mask : SignMask := ⟨18, by decide⟩
private def case_001382_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001382_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001382_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001382_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (52/9) }
private def case_001382_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_001382_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001382_rankWord :
    rankPairWord? case_001382_word = some case_001382_rank := by
  decide

private theorem case_001382_unrank :
    unrankPairWord case_001382_rank = case_001382_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001382_word case_001382_rank).1
    case_001382_rankWord |>.symm

private theorem case_001382_seqChoice :
    translationChoiceSeq case_001382_word case_001382_mask = case_001382_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001382_seqAtRank :
    translationSeqAtRankMask case_001382_rank case_001382_mask = case_001382_seq := by
  rw [translationSeqAtRankMask, case_001382_unrank]
  exact case_001382_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001382_bAtRank :
    translationBAtRankMask case_001382_rank case_001382_mask = case_001382_b := by
  rw [translationBAtRankMask, case_001382_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001382_b, case_001382_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001382_firstLine_eq :
    case_001382_support.firstLine case_001382_seq case_001382_b = case_001382_firstLine := by
  norm_num [case_001382_firstLine, case_001382_support, case_001382_seq, case_001382_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001382_secondLine_eq :
    case_001382_support.secondLine case_001382_seq case_001382_b = case_001382_secondLine := by
  norm_num [case_001382_secondLine, case_001382_support, case_001382_seq, case_001382_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001382_sourceAgrees :
    SourceAgrees case_001382_support case_001382_rank.val case_001382_mask := by
  intro hlt
  have hrank : (⟨case_001382_rank.val, hlt⟩ : Fin numPairWords) = case_001382_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001382_rank.val, hlt⟩ case_001382_mask =
        case_001382_seq := by
    simpa [hrank] using case_001382_seqAtRank
  simp [SourceChecks, hseq, case_001382_support,
    checkTranslationConstraintSource, case_001382_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001382_rows :
    EqEqPosVarFirstRows case_001382_support case_001382_rank.val case_001382_mask := by
  intro hlt
  have hrank : (⟨case_001382_rank.val, hlt⟩ : Fin numPairWords) = case_001382_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001382_rank.val, hlt⟩ case_001382_mask =
        case_001382_seq := by
    simpa [hrank] using case_001382_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001382_rank.val, hlt⟩ case_001382_mask =
        case_001382_b := by
    simpa [hrank] using case_001382_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001382_support case_001382_rank.val hlt
          case_001382_mask = case_001382_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001382_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001382_support case_001382_rank.val hlt
          case_001382_mask = case_001382_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001382_secondLine_eq]
  have case_001382_rowFirst :
      EqEqPosRow (FirstLineAt case_001382_support case_001382_rank.val hlt case_001382_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001382_firstLine, EqEqPosRow]
  have case_001382_fixedSecond :
      FixedRow (SecondLineAt case_001382_support case_001382_rank.val hlt case_001382_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001382_secondLine, FixedRow]
  exact ⟨case_001382_rowFirst, case_001382_fixedSecond⟩

private theorem case_001382_existsRows :
    ExistsEqEqPosVarFirstRows case_001382_rank.val case_001382_mask :=
  ⟨case_001382_support, case_001382_sourceAgrees, case_001382_rows⟩

private theorem case_001382_covered :
    RowPropertyParametricCovered case_001382_rank.val case_001382_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001382_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001383_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001383_mask : SignMask := ⟨24, by decide⟩
private def case_001383_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001383_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001383_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001383_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (-68/9) }
private def case_001383_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_001383_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001383_rankWord :
    rankPairWord? case_001383_word = some case_001383_rank := by
  decide

private theorem case_001383_unrank :
    unrankPairWord case_001383_rank = case_001383_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001383_word case_001383_rank).1
    case_001383_rankWord |>.symm

private theorem case_001383_seqChoice :
    translationChoiceSeq case_001383_word case_001383_mask = case_001383_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001383_seqAtRank :
    translationSeqAtRankMask case_001383_rank case_001383_mask = case_001383_seq := by
  rw [translationSeqAtRankMask, case_001383_unrank]
  exact case_001383_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001383_bAtRank :
    translationBAtRankMask case_001383_rank case_001383_mask = case_001383_b := by
  rw [translationBAtRankMask, case_001383_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001383_b, case_001383_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001383_firstLine_eq :
    case_001383_support.firstLine case_001383_seq case_001383_b = case_001383_firstLine := by
  norm_num [case_001383_firstLine, case_001383_support, case_001383_seq, case_001383_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001383_secondLine_eq :
    case_001383_support.secondLine case_001383_seq case_001383_b = case_001383_secondLine := by
  norm_num [case_001383_secondLine, case_001383_support, case_001383_seq, case_001383_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001383_sourceAgrees :
    SourceAgrees case_001383_support case_001383_rank.val case_001383_mask := by
  intro hlt
  have hrank : (⟨case_001383_rank.val, hlt⟩ : Fin numPairWords) = case_001383_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001383_rank.val, hlt⟩ case_001383_mask =
        case_001383_seq := by
    simpa [hrank] using case_001383_seqAtRank
  simp [SourceChecks, hseq, case_001383_support,
    checkTranslationConstraintSource, case_001383_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001383_rows :
    EqEqPosVarFirstRows case_001383_support case_001383_rank.val case_001383_mask := by
  intro hlt
  have hrank : (⟨case_001383_rank.val, hlt⟩ : Fin numPairWords) = case_001383_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001383_rank.val, hlt⟩ case_001383_mask =
        case_001383_seq := by
    simpa [hrank] using case_001383_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001383_rank.val, hlt⟩ case_001383_mask =
        case_001383_b := by
    simpa [hrank] using case_001383_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001383_support case_001383_rank.val hlt
          case_001383_mask = case_001383_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001383_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001383_support case_001383_rank.val hlt
          case_001383_mask = case_001383_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001383_secondLine_eq]
  have case_001383_rowFirst :
      EqEqPosRow (FirstLineAt case_001383_support case_001383_rank.val hlt case_001383_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001383_firstLine, EqEqPosRow]
  have case_001383_fixedSecond :
      FixedRow (SecondLineAt case_001383_support case_001383_rank.val hlt case_001383_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001383_secondLine, FixedRow]
  exact ⟨case_001383_rowFirst, case_001383_fixedSecond⟩

private theorem case_001383_existsRows :
    ExistsEqEqPosVarFirstRows case_001383_rank.val case_001383_mask :=
  ⟨case_001383_support, case_001383_sourceAgrees, case_001383_rows⟩

private theorem case_001383_covered :
    RowPropertyParametricCovered case_001383_rank.val case_001383_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001383_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001384_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001384_mask : SignMask := ⟨29, by decide⟩
private def case_001384_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001384_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001384_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001384_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-52/9) }
private def case_001384_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001384_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_001384_rankWord :
    rankPairWord? case_001384_word = some case_001384_rank := by
  decide

private theorem case_001384_unrank :
    unrankPairWord case_001384_rank = case_001384_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001384_word case_001384_rank).1
    case_001384_rankWord |>.symm

private theorem case_001384_seqChoice :
    translationChoiceSeq case_001384_word case_001384_mask = case_001384_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001384_seqAtRank :
    translationSeqAtRankMask case_001384_rank case_001384_mask = case_001384_seq := by
  rw [translationSeqAtRankMask, case_001384_unrank]
  exact case_001384_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001384_bAtRank :
    translationBAtRankMask case_001384_rank case_001384_mask = case_001384_b := by
  rw [translationBAtRankMask, case_001384_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001384_b, case_001384_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001384_firstLine_eq :
    case_001384_support.firstLine case_001384_seq case_001384_b = case_001384_firstLine := by
  norm_num [case_001384_firstLine, case_001384_support, case_001384_seq, case_001384_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001384_secondLine_eq :
    case_001384_support.secondLine case_001384_seq case_001384_b = case_001384_secondLine := by
  norm_num [case_001384_secondLine, case_001384_support, case_001384_seq, case_001384_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001384_sourceAgrees :
    SourceAgrees case_001384_support case_001384_rank.val case_001384_mask := by
  intro hlt
  have hrank : (⟨case_001384_rank.val, hlt⟩ : Fin numPairWords) = case_001384_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001384_rank.val, hlt⟩ case_001384_mask =
        case_001384_seq := by
    simpa [hrank] using case_001384_seqAtRank
  simp [SourceChecks, hseq, case_001384_support,
    checkTranslationConstraintSource, case_001384_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001384_rows :
    EqEqPosVarSecondRows case_001384_support case_001384_rank.val case_001384_mask := by
  intro hlt
  have hrank : (⟨case_001384_rank.val, hlt⟩ : Fin numPairWords) = case_001384_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001384_rank.val, hlt⟩ case_001384_mask =
        case_001384_seq := by
    simpa [hrank] using case_001384_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001384_rank.val, hlt⟩ case_001384_mask =
        case_001384_b := by
    simpa [hrank] using case_001384_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001384_support case_001384_rank.val hlt
          case_001384_mask = case_001384_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001384_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001384_support case_001384_rank.val hlt
          case_001384_mask = case_001384_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001384_secondLine_eq]
  have case_001384_fixedFirst :
      FixedRow (FirstLineAt case_001384_support case_001384_rank.val hlt case_001384_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001384_firstLine, FixedRow]
  have case_001384_rowSecond :
      EqEqPosRow (SecondLineAt case_001384_support case_001384_rank.val hlt case_001384_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001384_secondLine, EqEqPosRow]
  exact ⟨case_001384_fixedFirst, case_001384_rowSecond⟩

private theorem case_001384_existsRows :
    ExistsEqEqPosVarSecondRows case_001384_rank.val case_001384_mask :=
  ⟨case_001384_support, case_001384_sourceAgrees, case_001384_rows⟩

private theorem case_001384_covered :
    RowPropertyParametricCovered case_001384_rank.val case_001384_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001384_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001385_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001385_mask : SignMask := ⟨30, by decide⟩
private def case_001385_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001385_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001385_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001385_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (20/9) }
private def case_001385_firstLine : StrictLin2 := { a := (29/19), b := (-29/19), c := (-125/19) }
private def case_001385_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001385_rankWord :
    rankPairWord? case_001385_word = some case_001385_rank := by
  decide

private theorem case_001385_unrank :
    unrankPairWord case_001385_rank = case_001385_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001385_word case_001385_rank).1
    case_001385_rankWord |>.symm

private theorem case_001385_seqChoice :
    translationChoiceSeq case_001385_word case_001385_mask = case_001385_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001385_seqAtRank :
    translationSeqAtRankMask case_001385_rank case_001385_mask = case_001385_seq := by
  rw [translationSeqAtRankMask, case_001385_unrank]
  exact case_001385_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001385_bAtRank :
    translationBAtRankMask case_001385_rank case_001385_mask = case_001385_b := by
  rw [translationBAtRankMask, case_001385_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001385_b, case_001385_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001385_firstLine_eq :
    case_001385_support.firstLine case_001385_seq case_001385_b = case_001385_firstLine := by
  norm_num [case_001385_firstLine, case_001385_support, case_001385_seq, case_001385_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001385_secondLine_eq :
    case_001385_support.secondLine case_001385_seq case_001385_b = case_001385_secondLine := by
  norm_num [case_001385_secondLine, case_001385_support, case_001385_seq, case_001385_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001385_sourceAgrees :
    SourceAgrees case_001385_support case_001385_rank.val case_001385_mask := by
  intro hlt
  have hrank : (⟨case_001385_rank.val, hlt⟩ : Fin numPairWords) = case_001385_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001385_rank.val, hlt⟩ case_001385_mask =
        case_001385_seq := by
    simpa [hrank] using case_001385_seqAtRank
  simp [SourceChecks, hseq, case_001385_support,
    checkTranslationConstraintSource, case_001385_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001385_rows :
    OppMinusOneVarFirstRows case_001385_support case_001385_rank.val case_001385_mask := by
  intro hlt
  have hrank : (⟨case_001385_rank.val, hlt⟩ : Fin numPairWords) = case_001385_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001385_rank.val, hlt⟩ case_001385_mask =
        case_001385_seq := by
    simpa [hrank] using case_001385_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001385_rank.val, hlt⟩ case_001385_mask =
        case_001385_b := by
    simpa [hrank] using case_001385_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001385_support case_001385_rank.val hlt
          case_001385_mask = case_001385_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001385_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001385_support case_001385_rank.val hlt
          case_001385_mask = case_001385_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001385_secondLine_eq]
  have case_001385_rowFirst :
      OppNegRow (FirstLineAt case_001385_support case_001385_rank.val hlt case_001385_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001385_firstLine, OppNegRow]
  have case_001385_fixedSecond :
      FixedRow (SecondLineAt case_001385_support case_001385_rank.val hlt case_001385_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001385_secondLine, FixedRow]
  exact ⟨case_001385_rowFirst, case_001385_fixedSecond⟩

private theorem case_001385_existsRows :
    ExistsOppMinusOneVarFirstRows case_001385_rank.val case_001385_mask :=
  ⟨case_001385_support, case_001385_sourceAgrees, case_001385_rows⟩

private theorem case_001385_covered :
    RowPropertyParametricCovered case_001385_rank.val case_001385_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001385_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001386_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001386_mask : SignMask := ⟨31, by decide⟩
private def case_001386_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001386_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001386_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001386_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (20/9) }
private def case_001386_firstLine : StrictLin2 := { a := (-29/11), b := (-29/11), c := (-61/11) }
private def case_001386_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001386_rankWord :
    rankPairWord? case_001386_word = some case_001386_rank := by
  decide

private theorem case_001386_unrank :
    unrankPairWord case_001386_rank = case_001386_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001386_word case_001386_rank).1
    case_001386_rankWord |>.symm

private theorem case_001386_seqChoice :
    translationChoiceSeq case_001386_word case_001386_mask = case_001386_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001386_seqAtRank :
    translationSeqAtRankMask case_001386_rank case_001386_mask = case_001386_seq := by
  rw [translationSeqAtRankMask, case_001386_unrank]
  exact case_001386_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001386_bAtRank :
    translationBAtRankMask case_001386_rank case_001386_mask = case_001386_b := by
  rw [translationBAtRankMask, case_001386_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001386_b, case_001386_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001386_firstLine_eq :
    case_001386_support.firstLine case_001386_seq case_001386_b = case_001386_firstLine := by
  norm_num [case_001386_firstLine, case_001386_support, case_001386_seq, case_001386_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001386_secondLine_eq :
    case_001386_support.secondLine case_001386_seq case_001386_b = case_001386_secondLine := by
  norm_num [case_001386_secondLine, case_001386_support, case_001386_seq, case_001386_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001386_sourceAgrees :
    SourceAgrees case_001386_support case_001386_rank.val case_001386_mask := by
  intro hlt
  have hrank : (⟨case_001386_rank.val, hlt⟩ : Fin numPairWords) = case_001386_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001386_rank.val, hlt⟩ case_001386_mask =
        case_001386_seq := by
    simpa [hrank] using case_001386_seqAtRank
  simp [SourceChecks, hseq, case_001386_support,
    checkTranslationConstraintSource, case_001386_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001386_rows :
    EqEqPosVarFirstRows case_001386_support case_001386_rank.val case_001386_mask := by
  intro hlt
  have hrank : (⟨case_001386_rank.val, hlt⟩ : Fin numPairWords) = case_001386_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001386_rank.val, hlt⟩ case_001386_mask =
        case_001386_seq := by
    simpa [hrank] using case_001386_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001386_rank.val, hlt⟩ case_001386_mask =
        case_001386_b := by
    simpa [hrank] using case_001386_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001386_support case_001386_rank.val hlt
          case_001386_mask = case_001386_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001386_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001386_support case_001386_rank.val hlt
          case_001386_mask = case_001386_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001386_secondLine_eq]
  have case_001386_rowFirst :
      EqEqPosRow (FirstLineAt case_001386_support case_001386_rank.val hlt case_001386_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001386_firstLine, EqEqPosRow]
  have case_001386_fixedSecond :
      FixedRow (SecondLineAt case_001386_support case_001386_rank.val hlt case_001386_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001386_secondLine, FixedRow]
  exact ⟨case_001386_rowFirst, case_001386_fixedSecond⟩

private theorem case_001386_existsRows :
    ExistsEqEqPosVarFirstRows case_001386_rank.val case_001386_mask :=
  ⟨case_001386_support, case_001386_sourceAgrees, case_001386_rows⟩

private theorem case_001386_covered :
    RowPropertyParametricCovered case_001386_rank.val case_001386_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001386_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001387_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001387_mask : SignMask := ⟨45, by decide⟩
private def case_001387_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001387_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001387_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001387_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (-52/9) }
private def case_001387_firstLine : StrictLin2 := { a := 1, b := -1, c := -19 }
private def case_001387_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001387_rankWord :
    rankPairWord? case_001387_word = some case_001387_rank := by
  decide

private theorem case_001387_unrank :
    unrankPairWord case_001387_rank = case_001387_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001387_word case_001387_rank).1
    case_001387_rankWord |>.symm

private theorem case_001387_seqChoice :
    translationChoiceSeq case_001387_word case_001387_mask = case_001387_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001387_seqAtRank :
    translationSeqAtRankMask case_001387_rank case_001387_mask = case_001387_seq := by
  rw [translationSeqAtRankMask, case_001387_unrank]
  exact case_001387_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001387_bAtRank :
    translationBAtRankMask case_001387_rank case_001387_mask = case_001387_b := by
  rw [translationBAtRankMask, case_001387_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001387_b, case_001387_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001387_firstLine_eq :
    case_001387_support.firstLine case_001387_seq case_001387_b = case_001387_firstLine := by
  norm_num [case_001387_firstLine, case_001387_support, case_001387_seq, case_001387_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001387_secondLine_eq :
    case_001387_support.secondLine case_001387_seq case_001387_b = case_001387_secondLine := by
  norm_num [case_001387_secondLine, case_001387_support, case_001387_seq, case_001387_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001387_sourceAgrees :
    SourceAgrees case_001387_support case_001387_rank.val case_001387_mask := by
  intro hlt
  have hrank : (⟨case_001387_rank.val, hlt⟩ : Fin numPairWords) = case_001387_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001387_rank.val, hlt⟩ case_001387_mask =
        case_001387_seq := by
    simpa [hrank] using case_001387_seqAtRank
  simp [SourceChecks, hseq, case_001387_support,
    checkTranslationConstraintSource, case_001387_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001387_rows :
    OppMinusOneVarFirstRows case_001387_support case_001387_rank.val case_001387_mask := by
  intro hlt
  have hrank : (⟨case_001387_rank.val, hlt⟩ : Fin numPairWords) = case_001387_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001387_rank.val, hlt⟩ case_001387_mask =
        case_001387_seq := by
    simpa [hrank] using case_001387_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001387_rank.val, hlt⟩ case_001387_mask =
        case_001387_b := by
    simpa [hrank] using case_001387_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001387_support case_001387_rank.val hlt
          case_001387_mask = case_001387_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001387_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001387_support case_001387_rank.val hlt
          case_001387_mask = case_001387_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001387_secondLine_eq]
  have case_001387_rowFirst :
      OppNegRow (FirstLineAt case_001387_support case_001387_rank.val hlt case_001387_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001387_firstLine, OppNegRow]
  have case_001387_fixedSecond :
      FixedRow (SecondLineAt case_001387_support case_001387_rank.val hlt case_001387_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001387_secondLine, FixedRow]
  exact ⟨case_001387_rowFirst, case_001387_fixedSecond⟩

private theorem case_001387_existsRows :
    ExistsOppMinusOneVarFirstRows case_001387_rank.val case_001387_mask :=
  ⟨case_001387_support, case_001387_sourceAgrees, case_001387_rows⟩

private theorem case_001387_covered :
    RowPropertyParametricCovered case_001387_rank.val case_001387_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001387_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001388_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001388_mask : SignMask := ⟨47, by decide⟩
private def case_001388_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001388_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001388_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001388_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (20/9) }
private def case_001388_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/5) }
private def case_001388_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001388_rankWord :
    rankPairWord? case_001388_word = some case_001388_rank := by
  decide

private theorem case_001388_unrank :
    unrankPairWord case_001388_rank = case_001388_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001388_word case_001388_rank).1
    case_001388_rankWord |>.symm

private theorem case_001388_seqChoice :
    translationChoiceSeq case_001388_word case_001388_mask = case_001388_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001388_seqAtRank :
    translationSeqAtRankMask case_001388_rank case_001388_mask = case_001388_seq := by
  rw [translationSeqAtRankMask, case_001388_unrank]
  exact case_001388_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001388_bAtRank :
    translationBAtRankMask case_001388_rank case_001388_mask = case_001388_b := by
  rw [translationBAtRankMask, case_001388_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001388_b, case_001388_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001388_firstLine_eq :
    case_001388_support.firstLine case_001388_seq case_001388_b = case_001388_firstLine := by
  norm_num [case_001388_firstLine, case_001388_support, case_001388_seq, case_001388_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001388_secondLine_eq :
    case_001388_support.secondLine case_001388_seq case_001388_b = case_001388_secondLine := by
  norm_num [case_001388_secondLine, case_001388_support, case_001388_seq, case_001388_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001388_sourceAgrees :
    SourceAgrees case_001388_support case_001388_rank.val case_001388_mask := by
  intro hlt
  have hrank : (⟨case_001388_rank.val, hlt⟩ : Fin numPairWords) = case_001388_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001388_rank.val, hlt⟩ case_001388_mask =
        case_001388_seq := by
    simpa [hrank] using case_001388_seqAtRank
  simp [SourceChecks, hseq, case_001388_support,
    checkTranslationConstraintSource, case_001388_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001388_rows :
    OppMinusOneVarFirstRows case_001388_support case_001388_rank.val case_001388_mask := by
  intro hlt
  have hrank : (⟨case_001388_rank.val, hlt⟩ : Fin numPairWords) = case_001388_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001388_rank.val, hlt⟩ case_001388_mask =
        case_001388_seq := by
    simpa [hrank] using case_001388_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001388_rank.val, hlt⟩ case_001388_mask =
        case_001388_b := by
    simpa [hrank] using case_001388_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001388_support case_001388_rank.val hlt
          case_001388_mask = case_001388_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001388_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001388_support case_001388_rank.val hlt
          case_001388_mask = case_001388_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001388_secondLine_eq]
  have case_001388_rowFirst :
      OppNegRow (FirstLineAt case_001388_support case_001388_rank.val hlt case_001388_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001388_firstLine, OppNegRow]
  have case_001388_fixedSecond :
      FixedRow (SecondLineAt case_001388_support case_001388_rank.val hlt case_001388_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001388_secondLine, FixedRow]
  exact ⟨case_001388_rowFirst, case_001388_fixedSecond⟩

private theorem case_001388_existsRows :
    ExistsOppMinusOneVarFirstRows case_001388_rank.val case_001388_mask :=
  ⟨case_001388_support, case_001388_sourceAgrees, case_001388_rows⟩

private theorem case_001388_covered :
    RowPropertyParametricCovered case_001388_rank.val case_001388_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001388_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001389_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001389_mask : SignMask := ⟨54, by decide⟩
private def case_001389_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001389_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001389_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001389_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (116/9) }
private def case_001389_firstLine : StrictLin2 := { a := (-5/19), b := (-5/19), c := (-161/57) }
private def case_001389_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001389_rankWord :
    rankPairWord? case_001389_word = some case_001389_rank := by
  decide

private theorem case_001389_unrank :
    unrankPairWord case_001389_rank = case_001389_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001389_word case_001389_rank).1
    case_001389_rankWord |>.symm

private theorem case_001389_seqChoice :
    translationChoiceSeq case_001389_word case_001389_mask = case_001389_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001389_seqAtRank :
    translationSeqAtRankMask case_001389_rank case_001389_mask = case_001389_seq := by
  rw [translationSeqAtRankMask, case_001389_unrank]
  exact case_001389_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001389_bAtRank :
    translationBAtRankMask case_001389_rank case_001389_mask = case_001389_b := by
  rw [translationBAtRankMask, case_001389_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001389_b, case_001389_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001389_firstLine_eq :
    case_001389_support.firstLine case_001389_seq case_001389_b = case_001389_firstLine := by
  norm_num [case_001389_firstLine, case_001389_support, case_001389_seq, case_001389_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001389_secondLine_eq :
    case_001389_support.secondLine case_001389_seq case_001389_b = case_001389_secondLine := by
  norm_num [case_001389_secondLine, case_001389_support, case_001389_seq, case_001389_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001389_sourceAgrees :
    SourceAgrees case_001389_support case_001389_rank.val case_001389_mask := by
  intro hlt
  have hrank : (⟨case_001389_rank.val, hlt⟩ : Fin numPairWords) = case_001389_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001389_rank.val, hlt⟩ case_001389_mask =
        case_001389_seq := by
    simpa [hrank] using case_001389_seqAtRank
  simp [SourceChecks, hseq, case_001389_support,
    checkTranslationConstraintSource, case_001389_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001389_rows :
    EqEqPosVarFirstRows case_001389_support case_001389_rank.val case_001389_mask := by
  intro hlt
  have hrank : (⟨case_001389_rank.val, hlt⟩ : Fin numPairWords) = case_001389_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001389_rank.val, hlt⟩ case_001389_mask =
        case_001389_seq := by
    simpa [hrank] using case_001389_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001389_rank.val, hlt⟩ case_001389_mask =
        case_001389_b := by
    simpa [hrank] using case_001389_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001389_support case_001389_rank.val hlt
          case_001389_mask = case_001389_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001389_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001389_support case_001389_rank.val hlt
          case_001389_mask = case_001389_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001389_secondLine_eq]
  have case_001389_rowFirst :
      EqEqPosRow (FirstLineAt case_001389_support case_001389_rank.val hlt case_001389_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001389_firstLine, EqEqPosRow]
  have case_001389_fixedSecond :
      FixedRow (SecondLineAt case_001389_support case_001389_rank.val hlt case_001389_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001389_secondLine, FixedRow]
  exact ⟨case_001389_rowFirst, case_001389_fixedSecond⟩

private theorem case_001389_existsRows :
    ExistsEqEqPosVarFirstRows case_001389_rank.val case_001389_mask :=
  ⟨case_001389_support, case_001389_sourceAgrees, case_001389_rows⟩

private theorem case_001389_covered :
    RowPropertyParametricCovered case_001389_rank.val case_001389_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001389_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001390_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001390_mask : SignMask := ⟨55, by decide⟩
private def case_001390_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001390_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001390_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001390_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (116/9) }
private def case_001390_firstLine : StrictLin2 := { a := (-10/37), b := (-10/37), c := (-72/37) }
private def case_001390_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001390_rankWord :
    rankPairWord? case_001390_word = some case_001390_rank := by
  decide

private theorem case_001390_unrank :
    unrankPairWord case_001390_rank = case_001390_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001390_word case_001390_rank).1
    case_001390_rankWord |>.symm

private theorem case_001390_seqChoice :
    translationChoiceSeq case_001390_word case_001390_mask = case_001390_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001390_seqAtRank :
    translationSeqAtRankMask case_001390_rank case_001390_mask = case_001390_seq := by
  rw [translationSeqAtRankMask, case_001390_unrank]
  exact case_001390_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001390_bAtRank :
    translationBAtRankMask case_001390_rank case_001390_mask = case_001390_b := by
  rw [translationBAtRankMask, case_001390_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001390_b, case_001390_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001390_firstLine_eq :
    case_001390_support.firstLine case_001390_seq case_001390_b = case_001390_firstLine := by
  norm_num [case_001390_firstLine, case_001390_support, case_001390_seq, case_001390_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001390_secondLine_eq :
    case_001390_support.secondLine case_001390_seq case_001390_b = case_001390_secondLine := by
  norm_num [case_001390_secondLine, case_001390_support, case_001390_seq, case_001390_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001390_sourceAgrees :
    SourceAgrees case_001390_support case_001390_rank.val case_001390_mask := by
  intro hlt
  have hrank : (⟨case_001390_rank.val, hlt⟩ : Fin numPairWords) = case_001390_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001390_rank.val, hlt⟩ case_001390_mask =
        case_001390_seq := by
    simpa [hrank] using case_001390_seqAtRank
  simp [SourceChecks, hseq, case_001390_support,
    checkTranslationConstraintSource, case_001390_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001390_rows :
    EqEqPosVarFirstRows case_001390_support case_001390_rank.val case_001390_mask := by
  intro hlt
  have hrank : (⟨case_001390_rank.val, hlt⟩ : Fin numPairWords) = case_001390_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001390_rank.val, hlt⟩ case_001390_mask =
        case_001390_seq := by
    simpa [hrank] using case_001390_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001390_rank.val, hlt⟩ case_001390_mask =
        case_001390_b := by
    simpa [hrank] using case_001390_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001390_support case_001390_rank.val hlt
          case_001390_mask = case_001390_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001390_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001390_support case_001390_rank.val hlt
          case_001390_mask = case_001390_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001390_secondLine_eq]
  have case_001390_rowFirst :
      EqEqPosRow (FirstLineAt case_001390_support case_001390_rank.val hlt case_001390_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001390_firstLine, EqEqPosRow]
  have case_001390_fixedSecond :
      FixedRow (SecondLineAt case_001390_support case_001390_rank.val hlt case_001390_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001390_secondLine, FixedRow]
  exact ⟨case_001390_rowFirst, case_001390_fixedSecond⟩

private theorem case_001390_existsRows :
    ExistsEqEqPosVarFirstRows case_001390_rank.val case_001390_mask :=
  ⟨case_001390_support, case_001390_sourceAgrees, case_001390_rows⟩

private theorem case_001390_covered :
    RowPropertyParametricCovered case_001390_rank.val case_001390_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001390_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001391_rank : Fin numPairWords := ⟨897, by decide⟩
private def case_001391_mask : SignMask := ⟨63, by decide⟩
private def case_001391_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001391_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001391_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001391_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (68/9) }
private def case_001391_firstLine : StrictLin2 := { a := (-17/25), b := (-17/25), c := (-5/3) }
private def case_001391_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001391_rankWord :
    rankPairWord? case_001391_word = some case_001391_rank := by
  decide

private theorem case_001391_unrank :
    unrankPairWord case_001391_rank = case_001391_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001391_word case_001391_rank).1
    case_001391_rankWord |>.symm

private theorem case_001391_seqChoice :
    translationChoiceSeq case_001391_word case_001391_mask = case_001391_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001391_seqAtRank :
    translationSeqAtRankMask case_001391_rank case_001391_mask = case_001391_seq := by
  rw [translationSeqAtRankMask, case_001391_unrank]
  exact case_001391_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001391_bAtRank :
    translationBAtRankMask case_001391_rank case_001391_mask = case_001391_b := by
  rw [translationBAtRankMask, case_001391_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001391_b, case_001391_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001391_firstLine_eq :
    case_001391_support.firstLine case_001391_seq case_001391_b = case_001391_firstLine := by
  norm_num [case_001391_firstLine, case_001391_support, case_001391_seq, case_001391_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001391_secondLine_eq :
    case_001391_support.secondLine case_001391_seq case_001391_b = case_001391_secondLine := by
  norm_num [case_001391_secondLine, case_001391_support, case_001391_seq, case_001391_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001391_sourceAgrees :
    SourceAgrees case_001391_support case_001391_rank.val case_001391_mask := by
  intro hlt
  have hrank : (⟨case_001391_rank.val, hlt⟩ : Fin numPairWords) = case_001391_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001391_rank.val, hlt⟩ case_001391_mask =
        case_001391_seq := by
    simpa [hrank] using case_001391_seqAtRank
  simp [SourceChecks, hseq, case_001391_support,
    checkTranslationConstraintSource, case_001391_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001391_rows :
    EqEqPosVarFirstRows case_001391_support case_001391_rank.val case_001391_mask := by
  intro hlt
  have hrank : (⟨case_001391_rank.val, hlt⟩ : Fin numPairWords) = case_001391_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001391_rank.val, hlt⟩ case_001391_mask =
        case_001391_seq := by
    simpa [hrank] using case_001391_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001391_rank.val, hlt⟩ case_001391_mask =
        case_001391_b := by
    simpa [hrank] using case_001391_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001391_support case_001391_rank.val hlt
          case_001391_mask = case_001391_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001391_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001391_support case_001391_rank.val hlt
          case_001391_mask = case_001391_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001391_secondLine_eq]
  have case_001391_rowFirst :
      EqEqPosRow (FirstLineAt case_001391_support case_001391_rank.val hlt case_001391_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001391_firstLine, EqEqPosRow]
  have case_001391_fixedSecond :
      FixedRow (SecondLineAt case_001391_support case_001391_rank.val hlt case_001391_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001391_secondLine, FixedRow]
  exact ⟨case_001391_rowFirst, case_001391_fixedSecond⟩

private theorem case_001391_existsRows :
    ExistsEqEqPosVarFirstRows case_001391_rank.val case_001391_mask :=
  ⟨case_001391_support, case_001391_sourceAgrees, case_001391_rows⟩

private theorem case_001391_covered :
    RowPropertyParametricCovered case_001391_rank.val case_001391_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001391_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001392_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001392_mask : SignMask := ⟨8, by decide⟩
private def case_001392_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001392_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001392_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001392_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001392_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001392_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001392_rankWord :
    rankPairWord? case_001392_word = some case_001392_rank := by
  decide

private theorem case_001392_unrank :
    unrankPairWord case_001392_rank = case_001392_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001392_word case_001392_rank).1
    case_001392_rankWord |>.symm

private theorem case_001392_seqChoice :
    translationChoiceSeq case_001392_word case_001392_mask = case_001392_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001392_seqAtRank :
    translationSeqAtRankMask case_001392_rank case_001392_mask = case_001392_seq := by
  rw [translationSeqAtRankMask, case_001392_unrank]
  exact case_001392_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001392_bAtRank :
    translationBAtRankMask case_001392_rank case_001392_mask = case_001392_b := by
  rw [translationBAtRankMask, case_001392_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001392_b, case_001392_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001392_firstLine_eq :
    case_001392_support.firstLine case_001392_seq case_001392_b = case_001392_firstLine := by
  norm_num [case_001392_firstLine, case_001392_support, case_001392_seq, case_001392_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001392_secondLine_eq :
    case_001392_support.secondLine case_001392_seq case_001392_b = case_001392_secondLine := by
  norm_num [case_001392_secondLine, case_001392_support, case_001392_seq, case_001392_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001392_sourceAgrees :
    SourceAgrees case_001392_support case_001392_rank.val case_001392_mask := by
  intro hlt
  have hrank : (⟨case_001392_rank.val, hlt⟩ : Fin numPairWords) = case_001392_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001392_rank.val, hlt⟩ case_001392_mask =
        case_001392_seq := by
    simpa [hrank] using case_001392_seqAtRank
  simp [SourceChecks, hseq, case_001392_support,
    checkTranslationConstraintSource, case_001392_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001392_rows :
    EqEqPosVarFirstRows case_001392_support case_001392_rank.val case_001392_mask := by
  intro hlt
  have hrank : (⟨case_001392_rank.val, hlt⟩ : Fin numPairWords) = case_001392_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001392_rank.val, hlt⟩ case_001392_mask =
        case_001392_seq := by
    simpa [hrank] using case_001392_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001392_rank.val, hlt⟩ case_001392_mask =
        case_001392_b := by
    simpa [hrank] using case_001392_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001392_support case_001392_rank.val hlt
          case_001392_mask = case_001392_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001392_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001392_support case_001392_rank.val hlt
          case_001392_mask = case_001392_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001392_secondLine_eq]
  have case_001392_rowFirst :
      EqEqPosRow (FirstLineAt case_001392_support case_001392_rank.val hlt case_001392_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001392_firstLine, EqEqPosRow]
  have case_001392_fixedSecond :
      FixedRow (SecondLineAt case_001392_support case_001392_rank.val hlt case_001392_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001392_secondLine, FixedRow]
  exact ⟨case_001392_rowFirst, case_001392_fixedSecond⟩

private theorem case_001392_existsRows :
    ExistsEqEqPosVarFirstRows case_001392_rank.val case_001392_mask :=
  ⟨case_001392_support, case_001392_sourceAgrees, case_001392_rows⟩

private theorem case_001392_covered :
    RowPropertyParametricCovered case_001392_rank.val case_001392_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001392_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001393_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001393_mask : SignMask := ⟨9, by decide⟩
private def case_001393_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001393_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001393_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001393_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_001393_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001393_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001393_rankWord :
    rankPairWord? case_001393_word = some case_001393_rank := by
  decide

private theorem case_001393_unrank :
    unrankPairWord case_001393_rank = case_001393_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001393_word case_001393_rank).1
    case_001393_rankWord |>.symm

private theorem case_001393_seqChoice :
    translationChoiceSeq case_001393_word case_001393_mask = case_001393_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001393_seqAtRank :
    translationSeqAtRankMask case_001393_rank case_001393_mask = case_001393_seq := by
  rw [translationSeqAtRankMask, case_001393_unrank]
  exact case_001393_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001393_bAtRank :
    translationBAtRankMask case_001393_rank case_001393_mask = case_001393_b := by
  rw [translationBAtRankMask, case_001393_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001393_b, case_001393_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001393_firstLine_eq :
    case_001393_support.firstLine case_001393_seq case_001393_b = case_001393_firstLine := by
  norm_num [case_001393_firstLine, case_001393_support, case_001393_seq, case_001393_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001393_secondLine_eq :
    case_001393_support.secondLine case_001393_seq case_001393_b = case_001393_secondLine := by
  norm_num [case_001393_secondLine, case_001393_support, case_001393_seq, case_001393_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001393_sourceAgrees :
    SourceAgrees case_001393_support case_001393_rank.val case_001393_mask := by
  intro hlt
  have hrank : (⟨case_001393_rank.val, hlt⟩ : Fin numPairWords) = case_001393_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001393_rank.val, hlt⟩ case_001393_mask =
        case_001393_seq := by
    simpa [hrank] using case_001393_seqAtRank
  simp [SourceChecks, hseq, case_001393_support,
    checkTranslationConstraintSource, case_001393_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001393_rows :
    EqEqPosVarFirstRows case_001393_support case_001393_rank.val case_001393_mask := by
  intro hlt
  have hrank : (⟨case_001393_rank.val, hlt⟩ : Fin numPairWords) = case_001393_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001393_rank.val, hlt⟩ case_001393_mask =
        case_001393_seq := by
    simpa [hrank] using case_001393_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001393_rank.val, hlt⟩ case_001393_mask =
        case_001393_b := by
    simpa [hrank] using case_001393_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001393_support case_001393_rank.val hlt
          case_001393_mask = case_001393_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001393_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001393_support case_001393_rank.val hlt
          case_001393_mask = case_001393_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001393_secondLine_eq]
  have case_001393_rowFirst :
      EqEqPosRow (FirstLineAt case_001393_support case_001393_rank.val hlt case_001393_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001393_firstLine, EqEqPosRow]
  have case_001393_fixedSecond :
      FixedRow (SecondLineAt case_001393_support case_001393_rank.val hlt case_001393_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001393_secondLine, FixedRow]
  exact ⟨case_001393_rowFirst, case_001393_fixedSecond⟩

private theorem case_001393_existsRows :
    ExistsEqEqPosVarFirstRows case_001393_rank.val case_001393_mask :=
  ⟨case_001393_support, case_001393_sourceAgrees, case_001393_rows⟩

private theorem case_001393_covered :
    RowPropertyParametricCovered case_001393_rank.val case_001393_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001393_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001394_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001394_mask : SignMask := ⟨13, by decide⟩
private def case_001394_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001394_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001394_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001394_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_001394_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001394_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_001394_rankWord :
    rankPairWord? case_001394_word = some case_001394_rank := by
  decide

private theorem case_001394_unrank :
    unrankPairWord case_001394_rank = case_001394_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001394_word case_001394_rank).1
    case_001394_rankWord |>.symm

private theorem case_001394_seqChoice :
    translationChoiceSeq case_001394_word case_001394_mask = case_001394_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001394_seqAtRank :
    translationSeqAtRankMask case_001394_rank case_001394_mask = case_001394_seq := by
  rw [translationSeqAtRankMask, case_001394_unrank]
  exact case_001394_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001394_bAtRank :
    translationBAtRankMask case_001394_rank case_001394_mask = case_001394_b := by
  rw [translationBAtRankMask, case_001394_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001394_b, case_001394_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001394_firstLine_eq :
    case_001394_support.firstLine case_001394_seq case_001394_b = case_001394_firstLine := by
  norm_num [case_001394_firstLine, case_001394_support, case_001394_seq, case_001394_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001394_secondLine_eq :
    case_001394_support.secondLine case_001394_seq case_001394_b = case_001394_secondLine := by
  norm_num [case_001394_secondLine, case_001394_support, case_001394_seq, case_001394_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001394_sourceAgrees :
    SourceAgrees case_001394_support case_001394_rank.val case_001394_mask := by
  intro hlt
  have hrank : (⟨case_001394_rank.val, hlt⟩ : Fin numPairWords) = case_001394_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001394_rank.val, hlt⟩ case_001394_mask =
        case_001394_seq := by
    simpa [hrank] using case_001394_seqAtRank
  simp [SourceChecks, hseq, case_001394_support,
    checkTranslationConstraintSource, case_001394_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001394_rows :
    EqEqPosVarSecondRows case_001394_support case_001394_rank.val case_001394_mask := by
  intro hlt
  have hrank : (⟨case_001394_rank.val, hlt⟩ : Fin numPairWords) = case_001394_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001394_rank.val, hlt⟩ case_001394_mask =
        case_001394_seq := by
    simpa [hrank] using case_001394_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001394_rank.val, hlt⟩ case_001394_mask =
        case_001394_b := by
    simpa [hrank] using case_001394_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001394_support case_001394_rank.val hlt
          case_001394_mask = case_001394_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001394_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001394_support case_001394_rank.val hlt
          case_001394_mask = case_001394_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001394_secondLine_eq]
  have case_001394_fixedFirst :
      FixedRow (FirstLineAt case_001394_support case_001394_rank.val hlt case_001394_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001394_firstLine, FixedRow]
  have case_001394_rowSecond :
      EqEqPosRow (SecondLineAt case_001394_support case_001394_rank.val hlt case_001394_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001394_secondLine, EqEqPosRow]
  exact ⟨case_001394_fixedFirst, case_001394_rowSecond⟩

private theorem case_001394_existsRows :
    ExistsEqEqPosVarSecondRows case_001394_rank.val case_001394_mask :=
  ⟨case_001394_support, case_001394_sourceAgrees, case_001394_rows⟩

private theorem case_001394_covered :
    RowPropertyParametricCovered case_001394_rank.val case_001394_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001394_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001395_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001395_mask : SignMask := ⟨16, by decide⟩
private def case_001395_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001395_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001395_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001395_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001395_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001395_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001395_rankWord :
    rankPairWord? case_001395_word = some case_001395_rank := by
  decide

private theorem case_001395_unrank :
    unrankPairWord case_001395_rank = case_001395_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001395_word case_001395_rank).1
    case_001395_rankWord |>.symm

private theorem case_001395_seqChoice :
    translationChoiceSeq case_001395_word case_001395_mask = case_001395_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001395_seqAtRank :
    translationSeqAtRankMask case_001395_rank case_001395_mask = case_001395_seq := by
  rw [translationSeqAtRankMask, case_001395_unrank]
  exact case_001395_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001395_bAtRank :
    translationBAtRankMask case_001395_rank case_001395_mask = case_001395_b := by
  rw [translationBAtRankMask, case_001395_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001395_b, case_001395_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001395_firstLine_eq :
    case_001395_support.firstLine case_001395_seq case_001395_b = case_001395_firstLine := by
  norm_num [case_001395_firstLine, case_001395_support, case_001395_seq, case_001395_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001395_secondLine_eq :
    case_001395_support.secondLine case_001395_seq case_001395_b = case_001395_secondLine := by
  norm_num [case_001395_secondLine, case_001395_support, case_001395_seq, case_001395_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001395_sourceAgrees :
    SourceAgrees case_001395_support case_001395_rank.val case_001395_mask := by
  intro hlt
  have hrank : (⟨case_001395_rank.val, hlt⟩ : Fin numPairWords) = case_001395_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001395_rank.val, hlt⟩ case_001395_mask =
        case_001395_seq := by
    simpa [hrank] using case_001395_seqAtRank
  simp [SourceChecks, hseq, case_001395_support,
    checkTranslationConstraintSource, case_001395_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001395_rows :
    EqEqPosVarFirstRows case_001395_support case_001395_rank.val case_001395_mask := by
  intro hlt
  have hrank : (⟨case_001395_rank.val, hlt⟩ : Fin numPairWords) = case_001395_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001395_rank.val, hlt⟩ case_001395_mask =
        case_001395_seq := by
    simpa [hrank] using case_001395_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001395_rank.val, hlt⟩ case_001395_mask =
        case_001395_b := by
    simpa [hrank] using case_001395_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001395_support case_001395_rank.val hlt
          case_001395_mask = case_001395_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001395_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001395_support case_001395_rank.val hlt
          case_001395_mask = case_001395_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001395_secondLine_eq]
  have case_001395_rowFirst :
      EqEqPosRow (FirstLineAt case_001395_support case_001395_rank.val hlt case_001395_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001395_firstLine, EqEqPosRow]
  have case_001395_fixedSecond :
      FixedRow (SecondLineAt case_001395_support case_001395_rank.val hlt case_001395_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001395_secondLine, FixedRow]
  exact ⟨case_001395_rowFirst, case_001395_fixedSecond⟩

private theorem case_001395_existsRows :
    ExistsEqEqPosVarFirstRows case_001395_rank.val case_001395_mask :=
  ⟨case_001395_support, case_001395_sourceAgrees, case_001395_rows⟩

private theorem case_001395_covered :
    RowPropertyParametricCovered case_001395_rank.val case_001395_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001395_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001396_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001396_mask : SignMask := ⟨18, by decide⟩
private def case_001396_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001396_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001396_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001396_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001396_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001396_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001396_rankWord :
    rankPairWord? case_001396_word = some case_001396_rank := by
  decide

private theorem case_001396_unrank :
    unrankPairWord case_001396_rank = case_001396_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001396_word case_001396_rank).1
    case_001396_rankWord |>.symm

private theorem case_001396_seqChoice :
    translationChoiceSeq case_001396_word case_001396_mask = case_001396_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001396_seqAtRank :
    translationSeqAtRankMask case_001396_rank case_001396_mask = case_001396_seq := by
  rw [translationSeqAtRankMask, case_001396_unrank]
  exact case_001396_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001396_bAtRank :
    translationBAtRankMask case_001396_rank case_001396_mask = case_001396_b := by
  rw [translationBAtRankMask, case_001396_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001396_b, case_001396_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001396_firstLine_eq :
    case_001396_support.firstLine case_001396_seq case_001396_b = case_001396_firstLine := by
  norm_num [case_001396_firstLine, case_001396_support, case_001396_seq, case_001396_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001396_secondLine_eq :
    case_001396_support.secondLine case_001396_seq case_001396_b = case_001396_secondLine := by
  norm_num [case_001396_secondLine, case_001396_support, case_001396_seq, case_001396_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001396_sourceAgrees :
    SourceAgrees case_001396_support case_001396_rank.val case_001396_mask := by
  intro hlt
  have hrank : (⟨case_001396_rank.val, hlt⟩ : Fin numPairWords) = case_001396_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001396_rank.val, hlt⟩ case_001396_mask =
        case_001396_seq := by
    simpa [hrank] using case_001396_seqAtRank
  simp [SourceChecks, hseq, case_001396_support,
    checkTranslationConstraintSource, case_001396_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001396_rows :
    EqEqPosVarFirstRows case_001396_support case_001396_rank.val case_001396_mask := by
  intro hlt
  have hrank : (⟨case_001396_rank.val, hlt⟩ : Fin numPairWords) = case_001396_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001396_rank.val, hlt⟩ case_001396_mask =
        case_001396_seq := by
    simpa [hrank] using case_001396_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001396_rank.val, hlt⟩ case_001396_mask =
        case_001396_b := by
    simpa [hrank] using case_001396_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001396_support case_001396_rank.val hlt
          case_001396_mask = case_001396_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001396_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001396_support case_001396_rank.val hlt
          case_001396_mask = case_001396_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001396_secondLine_eq]
  have case_001396_rowFirst :
      EqEqPosRow (FirstLineAt case_001396_support case_001396_rank.val hlt case_001396_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001396_firstLine, EqEqPosRow]
  have case_001396_fixedSecond :
      FixedRow (SecondLineAt case_001396_support case_001396_rank.val hlt case_001396_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001396_secondLine, FixedRow]
  exact ⟨case_001396_rowFirst, case_001396_fixedSecond⟩

private theorem case_001396_existsRows :
    ExistsEqEqPosVarFirstRows case_001396_rank.val case_001396_mask :=
  ⟨case_001396_support, case_001396_sourceAgrees, case_001396_rows⟩

private theorem case_001396_covered :
    RowPropertyParametricCovered case_001396_rank.val case_001396_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001396_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001397_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001397_mask : SignMask := ⟨22, by decide⟩
private def case_001397_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001397_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001397_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001397_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001397_firstLine : StrictLin2 := { a := -1, b := 1, c := -3 }
private def case_001397_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001397_rankWord :
    rankPairWord? case_001397_word = some case_001397_rank := by
  decide

private theorem case_001397_unrank :
    unrankPairWord case_001397_rank = case_001397_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001397_word case_001397_rank).1
    case_001397_rankWord |>.symm

private theorem case_001397_seqChoice :
    translationChoiceSeq case_001397_word case_001397_mask = case_001397_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001397_seqAtRank :
    translationSeqAtRankMask case_001397_rank case_001397_mask = case_001397_seq := by
  rw [translationSeqAtRankMask, case_001397_unrank]
  exact case_001397_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001397_bAtRank :
    translationBAtRankMask case_001397_rank case_001397_mask = case_001397_b := by
  rw [translationBAtRankMask, case_001397_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001397_b, case_001397_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001397_firstLine_eq :
    case_001397_support.firstLine case_001397_seq case_001397_b = case_001397_firstLine := by
  norm_num [case_001397_firstLine, case_001397_support, case_001397_seq, case_001397_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001397_secondLine_eq :
    case_001397_support.secondLine case_001397_seq case_001397_b = case_001397_secondLine := by
  norm_num [case_001397_secondLine, case_001397_support, case_001397_seq, case_001397_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001397_sourceAgrees :
    SourceAgrees case_001397_support case_001397_rank.val case_001397_mask := by
  intro hlt
  have hrank : (⟨case_001397_rank.val, hlt⟩ : Fin numPairWords) = case_001397_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001397_rank.val, hlt⟩ case_001397_mask =
        case_001397_seq := by
    simpa [hrank] using case_001397_seqAtRank
  simp [SourceChecks, hseq, case_001397_support,
    checkTranslationConstraintSource, case_001397_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001397_rows :
    OppOneMinusVarFirstRows case_001397_support case_001397_rank.val case_001397_mask := by
  intro hlt
  have hrank : (⟨case_001397_rank.val, hlt⟩ : Fin numPairWords) = case_001397_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001397_rank.val, hlt⟩ case_001397_mask =
        case_001397_seq := by
    simpa [hrank] using case_001397_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001397_rank.val, hlt⟩ case_001397_mask =
        case_001397_b := by
    simpa [hrank] using case_001397_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001397_support case_001397_rank.val hlt
          case_001397_mask = case_001397_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001397_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001397_support case_001397_rank.val hlt
          case_001397_mask = case_001397_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001397_secondLine_eq]
  have case_001397_rowFirst :
      OppPosRow (FirstLineAt case_001397_support case_001397_rank.val hlt case_001397_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001397_firstLine, OppPosRow]
  have case_001397_fixedSecond :
      FixedRow (SecondLineAt case_001397_support case_001397_rank.val hlt case_001397_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001397_secondLine, FixedRow]
  exact ⟨case_001397_rowFirst, case_001397_fixedSecond⟩

private theorem case_001397_existsRows :
    ExistsOppOneMinusVarFirstRows case_001397_rank.val case_001397_mask :=
  ⟨case_001397_support, case_001397_sourceAgrees, case_001397_rows⟩

private theorem case_001397_covered :
    RowPropertyParametricCovered case_001397_rank.val case_001397_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001397_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001398_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001398_mask : SignMask := ⟨24, by decide⟩
private def case_001398_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001398_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001398_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001398_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001398_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001398_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001398_rankWord :
    rankPairWord? case_001398_word = some case_001398_rank := by
  decide

private theorem case_001398_unrank :
    unrankPairWord case_001398_rank = case_001398_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001398_word case_001398_rank).1
    case_001398_rankWord |>.symm

private theorem case_001398_seqChoice :
    translationChoiceSeq case_001398_word case_001398_mask = case_001398_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001398_seqAtRank :
    translationSeqAtRankMask case_001398_rank case_001398_mask = case_001398_seq := by
  rw [translationSeqAtRankMask, case_001398_unrank]
  exact case_001398_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001398_bAtRank :
    translationBAtRankMask case_001398_rank case_001398_mask = case_001398_b := by
  rw [translationBAtRankMask, case_001398_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001398_b, case_001398_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001398_firstLine_eq :
    case_001398_support.firstLine case_001398_seq case_001398_b = case_001398_firstLine := by
  norm_num [case_001398_firstLine, case_001398_support, case_001398_seq, case_001398_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001398_secondLine_eq :
    case_001398_support.secondLine case_001398_seq case_001398_b = case_001398_secondLine := by
  norm_num [case_001398_secondLine, case_001398_support, case_001398_seq, case_001398_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001398_sourceAgrees :
    SourceAgrees case_001398_support case_001398_rank.val case_001398_mask := by
  intro hlt
  have hrank : (⟨case_001398_rank.val, hlt⟩ : Fin numPairWords) = case_001398_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001398_rank.val, hlt⟩ case_001398_mask =
        case_001398_seq := by
    simpa [hrank] using case_001398_seqAtRank
  simp [SourceChecks, hseq, case_001398_support,
    checkTranslationConstraintSource, case_001398_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001398_rows :
    EqEqPosVarFirstRows case_001398_support case_001398_rank.val case_001398_mask := by
  intro hlt
  have hrank : (⟨case_001398_rank.val, hlt⟩ : Fin numPairWords) = case_001398_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001398_rank.val, hlt⟩ case_001398_mask =
        case_001398_seq := by
    simpa [hrank] using case_001398_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001398_rank.val, hlt⟩ case_001398_mask =
        case_001398_b := by
    simpa [hrank] using case_001398_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001398_support case_001398_rank.val hlt
          case_001398_mask = case_001398_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001398_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001398_support case_001398_rank.val hlt
          case_001398_mask = case_001398_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001398_secondLine_eq]
  have case_001398_rowFirst :
      EqEqPosRow (FirstLineAt case_001398_support case_001398_rank.val hlt case_001398_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001398_firstLine, EqEqPosRow]
  have case_001398_fixedSecond :
      FixedRow (SecondLineAt case_001398_support case_001398_rank.val hlt case_001398_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001398_secondLine, FixedRow]
  exact ⟨case_001398_rowFirst, case_001398_fixedSecond⟩

private theorem case_001398_existsRows :
    ExistsEqEqPosVarFirstRows case_001398_rank.val case_001398_mask :=
  ⟨case_001398_support, case_001398_sourceAgrees, case_001398_rows⟩

private theorem case_001398_covered :
    RowPropertyParametricCovered case_001398_rank.val case_001398_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001398_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001399_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001399_mask : SignMask := ⟨28, by decide⟩
private def case_001399_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001399_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001399_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001399_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001399_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001399_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001399_rankWord :
    rankPairWord? case_001399_word = some case_001399_rank := by
  decide

private theorem case_001399_unrank :
    unrankPairWord case_001399_rank = case_001399_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001399_word case_001399_rank).1
    case_001399_rankWord |>.symm

private theorem case_001399_seqChoice :
    translationChoiceSeq case_001399_word case_001399_mask = case_001399_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001399_seqAtRank :
    translationSeqAtRankMask case_001399_rank case_001399_mask = case_001399_seq := by
  rw [translationSeqAtRankMask, case_001399_unrank]
  exact case_001399_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001399_bAtRank :
    translationBAtRankMask case_001399_rank case_001399_mask = case_001399_b := by
  rw [translationBAtRankMask, case_001399_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001399_b, case_001399_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001399_firstLine_eq :
    case_001399_support.firstLine case_001399_seq case_001399_b = case_001399_firstLine := by
  norm_num [case_001399_firstLine, case_001399_support, case_001399_seq, case_001399_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001399_secondLine_eq :
    case_001399_support.secondLine case_001399_seq case_001399_b = case_001399_secondLine := by
  norm_num [case_001399_secondLine, case_001399_support, case_001399_seq, case_001399_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001399_sourceAgrees :
    SourceAgrees case_001399_support case_001399_rank.val case_001399_mask := by
  intro hlt
  have hrank : (⟨case_001399_rank.val, hlt⟩ : Fin numPairWords) = case_001399_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001399_rank.val, hlt⟩ case_001399_mask =
        case_001399_seq := by
    simpa [hrank] using case_001399_seqAtRank
  simp [SourceChecks, hseq, case_001399_support,
    checkTranslationConstraintSource, case_001399_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001399_rows :
    OppOneMinusVarFirstRows case_001399_support case_001399_rank.val case_001399_mask := by
  intro hlt
  have hrank : (⟨case_001399_rank.val, hlt⟩ : Fin numPairWords) = case_001399_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001399_rank.val, hlt⟩ case_001399_mask =
        case_001399_seq := by
    simpa [hrank] using case_001399_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001399_rank.val, hlt⟩ case_001399_mask =
        case_001399_b := by
    simpa [hrank] using case_001399_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001399_support case_001399_rank.val hlt
          case_001399_mask = case_001399_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001399_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001399_support case_001399_rank.val hlt
          case_001399_mask = case_001399_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001399_secondLine_eq]
  have case_001399_rowFirst :
      OppPosRow (FirstLineAt case_001399_support case_001399_rank.val hlt case_001399_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001399_firstLine, OppPosRow]
  have case_001399_fixedSecond :
      FixedRow (SecondLineAt case_001399_support case_001399_rank.val hlt case_001399_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001399_secondLine, FixedRow]
  exact ⟨case_001399_rowFirst, case_001399_fixedSecond⟩

private theorem case_001399_existsRows :
    ExistsOppOneMinusVarFirstRows case_001399_rank.val case_001399_mask :=
  ⟨case_001399_support, case_001399_sourceAgrees, case_001399_rows⟩

private theorem case_001399_covered :
    RowPropertyParametricCovered case_001399_rank.val case_001399_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001399_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001400_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001400_mask : SignMask := ⟨29, by decide⟩
private def case_001400_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001400_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001400_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001400_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_001400_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001400_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_001400_rankWord :
    rankPairWord? case_001400_word = some case_001400_rank := by
  decide

private theorem case_001400_unrank :
    unrankPairWord case_001400_rank = case_001400_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001400_word case_001400_rank).1
    case_001400_rankWord |>.symm

private theorem case_001400_seqChoice :
    translationChoiceSeq case_001400_word case_001400_mask = case_001400_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001400_seqAtRank :
    translationSeqAtRankMask case_001400_rank case_001400_mask = case_001400_seq := by
  rw [translationSeqAtRankMask, case_001400_unrank]
  exact case_001400_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001400_bAtRank :
    translationBAtRankMask case_001400_rank case_001400_mask = case_001400_b := by
  rw [translationBAtRankMask, case_001400_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001400_b, case_001400_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001400_firstLine_eq :
    case_001400_support.firstLine case_001400_seq case_001400_b = case_001400_firstLine := by
  norm_num [case_001400_firstLine, case_001400_support, case_001400_seq, case_001400_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001400_secondLine_eq :
    case_001400_support.secondLine case_001400_seq case_001400_b = case_001400_secondLine := by
  norm_num [case_001400_secondLine, case_001400_support, case_001400_seq, case_001400_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001400_sourceAgrees :
    SourceAgrees case_001400_support case_001400_rank.val case_001400_mask := by
  intro hlt
  have hrank : (⟨case_001400_rank.val, hlt⟩ : Fin numPairWords) = case_001400_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001400_rank.val, hlt⟩ case_001400_mask =
        case_001400_seq := by
    simpa [hrank] using case_001400_seqAtRank
  simp [SourceChecks, hseq, case_001400_support,
    checkTranslationConstraintSource, case_001400_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001400_rows :
    EqEqPosVarSecondRows case_001400_support case_001400_rank.val case_001400_mask := by
  intro hlt
  have hrank : (⟨case_001400_rank.val, hlt⟩ : Fin numPairWords) = case_001400_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001400_rank.val, hlt⟩ case_001400_mask =
        case_001400_seq := by
    simpa [hrank] using case_001400_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001400_rank.val, hlt⟩ case_001400_mask =
        case_001400_b := by
    simpa [hrank] using case_001400_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001400_support case_001400_rank.val hlt
          case_001400_mask = case_001400_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001400_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001400_support case_001400_rank.val hlt
          case_001400_mask = case_001400_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001400_secondLine_eq]
  have case_001400_fixedFirst :
      FixedRow (FirstLineAt case_001400_support case_001400_rank.val hlt case_001400_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001400_firstLine, FixedRow]
  have case_001400_rowSecond :
      EqEqPosRow (SecondLineAt case_001400_support case_001400_rank.val hlt case_001400_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001400_secondLine, EqEqPosRow]
  exact ⟨case_001400_fixedFirst, case_001400_rowSecond⟩

private theorem case_001400_existsRows :
    ExistsEqEqPosVarSecondRows case_001400_rank.val case_001400_mask :=
  ⟨case_001400_support, case_001400_sourceAgrees, case_001400_rows⟩

private theorem case_001400_covered :
    RowPropertyParametricCovered case_001400_rank.val case_001400_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001400_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001401_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001401_mask : SignMask := ⟨30, by decide⟩
private def case_001401_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001401_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001401_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001401_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001401_firstLine : StrictLin2 := { a := (11/5), b := (-11/5), c := (-43/5) }
private def case_001401_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001401_rankWord :
    rankPairWord? case_001401_word = some case_001401_rank := by
  decide

private theorem case_001401_unrank :
    unrankPairWord case_001401_rank = case_001401_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001401_word case_001401_rank).1
    case_001401_rankWord |>.symm

private theorem case_001401_seqChoice :
    translationChoiceSeq case_001401_word case_001401_mask = case_001401_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001401_seqAtRank :
    translationSeqAtRankMask case_001401_rank case_001401_mask = case_001401_seq := by
  rw [translationSeqAtRankMask, case_001401_unrank]
  exact case_001401_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001401_bAtRank :
    translationBAtRankMask case_001401_rank case_001401_mask = case_001401_b := by
  rw [translationBAtRankMask, case_001401_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001401_b, case_001401_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001401_firstLine_eq :
    case_001401_support.firstLine case_001401_seq case_001401_b = case_001401_firstLine := by
  norm_num [case_001401_firstLine, case_001401_support, case_001401_seq, case_001401_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001401_secondLine_eq :
    case_001401_support.secondLine case_001401_seq case_001401_b = case_001401_secondLine := by
  norm_num [case_001401_secondLine, case_001401_support, case_001401_seq, case_001401_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001401_sourceAgrees :
    SourceAgrees case_001401_support case_001401_rank.val case_001401_mask := by
  intro hlt
  have hrank : (⟨case_001401_rank.val, hlt⟩ : Fin numPairWords) = case_001401_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001401_rank.val, hlt⟩ case_001401_mask =
        case_001401_seq := by
    simpa [hrank] using case_001401_seqAtRank
  simp [SourceChecks, hseq, case_001401_support,
    checkTranslationConstraintSource, case_001401_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001401_rows :
    OppMinusOneVarFirstRows case_001401_support case_001401_rank.val case_001401_mask := by
  intro hlt
  have hrank : (⟨case_001401_rank.val, hlt⟩ : Fin numPairWords) = case_001401_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001401_rank.val, hlt⟩ case_001401_mask =
        case_001401_seq := by
    simpa [hrank] using case_001401_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001401_rank.val, hlt⟩ case_001401_mask =
        case_001401_b := by
    simpa [hrank] using case_001401_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001401_support case_001401_rank.val hlt
          case_001401_mask = case_001401_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001401_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001401_support case_001401_rank.val hlt
          case_001401_mask = case_001401_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001401_secondLine_eq]
  have case_001401_rowFirst :
      OppNegRow (FirstLineAt case_001401_support case_001401_rank.val hlt case_001401_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001401_firstLine, OppNegRow]
  have case_001401_fixedSecond :
      FixedRow (SecondLineAt case_001401_support case_001401_rank.val hlt case_001401_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001401_secondLine, FixedRow]
  exact ⟨case_001401_rowFirst, case_001401_fixedSecond⟩

private theorem case_001401_existsRows :
    ExistsOppMinusOneVarFirstRows case_001401_rank.val case_001401_mask :=
  ⟨case_001401_support, case_001401_sourceAgrees, case_001401_rows⟩

private theorem case_001401_covered :
    RowPropertyParametricCovered case_001401_rank.val case_001401_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001401_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001402_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001402_mask : SignMask := ⟨31, by decide⟩
private def case_001402_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001402_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001402_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001402_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001402_firstLine : StrictLin2 := { a := (-11/5), b := (-11/5), c := (-27/5) }
private def case_001402_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001402_rankWord :
    rankPairWord? case_001402_word = some case_001402_rank := by
  decide

private theorem case_001402_unrank :
    unrankPairWord case_001402_rank = case_001402_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001402_word case_001402_rank).1
    case_001402_rankWord |>.symm

private theorem case_001402_seqChoice :
    translationChoiceSeq case_001402_word case_001402_mask = case_001402_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001402_seqAtRank :
    translationSeqAtRankMask case_001402_rank case_001402_mask = case_001402_seq := by
  rw [translationSeqAtRankMask, case_001402_unrank]
  exact case_001402_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001402_bAtRank :
    translationBAtRankMask case_001402_rank case_001402_mask = case_001402_b := by
  rw [translationBAtRankMask, case_001402_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001402_b, case_001402_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001402_firstLine_eq :
    case_001402_support.firstLine case_001402_seq case_001402_b = case_001402_firstLine := by
  norm_num [case_001402_firstLine, case_001402_support, case_001402_seq, case_001402_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001402_secondLine_eq :
    case_001402_support.secondLine case_001402_seq case_001402_b = case_001402_secondLine := by
  norm_num [case_001402_secondLine, case_001402_support, case_001402_seq, case_001402_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001402_sourceAgrees :
    SourceAgrees case_001402_support case_001402_rank.val case_001402_mask := by
  intro hlt
  have hrank : (⟨case_001402_rank.val, hlt⟩ : Fin numPairWords) = case_001402_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001402_rank.val, hlt⟩ case_001402_mask =
        case_001402_seq := by
    simpa [hrank] using case_001402_seqAtRank
  simp [SourceChecks, hseq, case_001402_support,
    checkTranslationConstraintSource, case_001402_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001402_rows :
    EqEqPosVarFirstRows case_001402_support case_001402_rank.val case_001402_mask := by
  intro hlt
  have hrank : (⟨case_001402_rank.val, hlt⟩ : Fin numPairWords) = case_001402_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001402_rank.val, hlt⟩ case_001402_mask =
        case_001402_seq := by
    simpa [hrank] using case_001402_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001402_rank.val, hlt⟩ case_001402_mask =
        case_001402_b := by
    simpa [hrank] using case_001402_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001402_support case_001402_rank.val hlt
          case_001402_mask = case_001402_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001402_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001402_support case_001402_rank.val hlt
          case_001402_mask = case_001402_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001402_secondLine_eq]
  have case_001402_rowFirst :
      EqEqPosRow (FirstLineAt case_001402_support case_001402_rank.val hlt case_001402_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001402_firstLine, EqEqPosRow]
  have case_001402_fixedSecond :
      FixedRow (SecondLineAt case_001402_support case_001402_rank.val hlt case_001402_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001402_secondLine, FixedRow]
  exact ⟨case_001402_rowFirst, case_001402_fixedSecond⟩

private theorem case_001402_existsRows :
    ExistsEqEqPosVarFirstRows case_001402_rank.val case_001402_mask :=
  ⟨case_001402_support, case_001402_sourceAgrees, case_001402_rows⟩

private theorem case_001402_covered :
    RowPropertyParametricCovered case_001402_rank.val case_001402_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001402_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001403_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001403_mask : SignMask := ⟨45, by decide⟩
private def case_001403_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001403_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001403_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001403_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_001403_firstLine : StrictLin2 := { a := (-3/11), b := (-3/11), c := (-25/33) }
private def case_001403_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001403_rankWord :
    rankPairWord? case_001403_word = some case_001403_rank := by
  decide

private theorem case_001403_unrank :
    unrankPairWord case_001403_rank = case_001403_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001403_word case_001403_rank).1
    case_001403_rankWord |>.symm

private theorem case_001403_seqChoice :
    translationChoiceSeq case_001403_word case_001403_mask = case_001403_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001403_seqAtRank :
    translationSeqAtRankMask case_001403_rank case_001403_mask = case_001403_seq := by
  rw [translationSeqAtRankMask, case_001403_unrank]
  exact case_001403_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001403_bAtRank :
    translationBAtRankMask case_001403_rank case_001403_mask = case_001403_b := by
  rw [translationBAtRankMask, case_001403_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001403_b, case_001403_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001403_firstLine_eq :
    case_001403_support.firstLine case_001403_seq case_001403_b = case_001403_firstLine := by
  norm_num [case_001403_firstLine, case_001403_support, case_001403_seq, case_001403_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001403_secondLine_eq :
    case_001403_support.secondLine case_001403_seq case_001403_b = case_001403_secondLine := by
  norm_num [case_001403_secondLine, case_001403_support, case_001403_seq, case_001403_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001403_sourceAgrees :
    SourceAgrees case_001403_support case_001403_rank.val case_001403_mask := by
  intro hlt
  have hrank : (⟨case_001403_rank.val, hlt⟩ : Fin numPairWords) = case_001403_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001403_rank.val, hlt⟩ case_001403_mask =
        case_001403_seq := by
    simpa [hrank] using case_001403_seqAtRank
  simp [SourceChecks, hseq, case_001403_support,
    checkTranslationConstraintSource, case_001403_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001403_rows :
    EqEqPosVarFirstRows case_001403_support case_001403_rank.val case_001403_mask := by
  intro hlt
  have hrank : (⟨case_001403_rank.val, hlt⟩ : Fin numPairWords) = case_001403_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001403_rank.val, hlt⟩ case_001403_mask =
        case_001403_seq := by
    simpa [hrank] using case_001403_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001403_rank.val, hlt⟩ case_001403_mask =
        case_001403_b := by
    simpa [hrank] using case_001403_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001403_support case_001403_rank.val hlt
          case_001403_mask = case_001403_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001403_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001403_support case_001403_rank.val hlt
          case_001403_mask = case_001403_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001403_secondLine_eq]
  have case_001403_rowFirst :
      EqEqPosRow (FirstLineAt case_001403_support case_001403_rank.val hlt case_001403_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001403_firstLine, EqEqPosRow]
  have case_001403_fixedSecond :
      FixedRow (SecondLineAt case_001403_support case_001403_rank.val hlt case_001403_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001403_secondLine, FixedRow]
  exact ⟨case_001403_rowFirst, case_001403_fixedSecond⟩

private theorem case_001403_existsRows :
    ExistsEqEqPosVarFirstRows case_001403_rank.val case_001403_mask :=
  ⟨case_001403_support, case_001403_sourceAgrees, case_001403_rows⟩

private theorem case_001403_covered :
    RowPropertyParametricCovered case_001403_rank.val case_001403_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001403_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001404_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001404_mask : SignMask := ⟨47, by decide⟩
private def case_001404_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001404_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001404_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001404_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001404_firstLine : StrictLin2 := { a := (-3/17), b := (-3/17), c := (-73/51) }
private def case_001404_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001404_rankWord :
    rankPairWord? case_001404_word = some case_001404_rank := by
  decide

private theorem case_001404_unrank :
    unrankPairWord case_001404_rank = case_001404_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001404_word case_001404_rank).1
    case_001404_rankWord |>.symm

private theorem case_001404_seqChoice :
    translationChoiceSeq case_001404_word case_001404_mask = case_001404_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001404_seqAtRank :
    translationSeqAtRankMask case_001404_rank case_001404_mask = case_001404_seq := by
  rw [translationSeqAtRankMask, case_001404_unrank]
  exact case_001404_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001404_bAtRank :
    translationBAtRankMask case_001404_rank case_001404_mask = case_001404_b := by
  rw [translationBAtRankMask, case_001404_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001404_b, case_001404_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001404_firstLine_eq :
    case_001404_support.firstLine case_001404_seq case_001404_b = case_001404_firstLine := by
  norm_num [case_001404_firstLine, case_001404_support, case_001404_seq, case_001404_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001404_secondLine_eq :
    case_001404_support.secondLine case_001404_seq case_001404_b = case_001404_secondLine := by
  norm_num [case_001404_secondLine, case_001404_support, case_001404_seq, case_001404_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001404_sourceAgrees :
    SourceAgrees case_001404_support case_001404_rank.val case_001404_mask := by
  intro hlt
  have hrank : (⟨case_001404_rank.val, hlt⟩ : Fin numPairWords) = case_001404_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001404_rank.val, hlt⟩ case_001404_mask =
        case_001404_seq := by
    simpa [hrank] using case_001404_seqAtRank
  simp [SourceChecks, hseq, case_001404_support,
    checkTranslationConstraintSource, case_001404_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001404_rows :
    EqEqPosVarFirstRows case_001404_support case_001404_rank.val case_001404_mask := by
  intro hlt
  have hrank : (⟨case_001404_rank.val, hlt⟩ : Fin numPairWords) = case_001404_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001404_rank.val, hlt⟩ case_001404_mask =
        case_001404_seq := by
    simpa [hrank] using case_001404_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001404_rank.val, hlt⟩ case_001404_mask =
        case_001404_b := by
    simpa [hrank] using case_001404_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001404_support case_001404_rank.val hlt
          case_001404_mask = case_001404_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001404_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001404_support case_001404_rank.val hlt
          case_001404_mask = case_001404_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001404_secondLine_eq]
  have case_001404_rowFirst :
      EqEqPosRow (FirstLineAt case_001404_support case_001404_rank.val hlt case_001404_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001404_firstLine, EqEqPosRow]
  have case_001404_fixedSecond :
      FixedRow (SecondLineAt case_001404_support case_001404_rank.val hlt case_001404_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001404_secondLine, FixedRow]
  exact ⟨case_001404_rowFirst, case_001404_fixedSecond⟩

private theorem case_001404_existsRows :
    ExistsEqEqPosVarFirstRows case_001404_rank.val case_001404_mask :=
  ⟨case_001404_support, case_001404_sourceAgrees, case_001404_rows⟩

private theorem case_001404_covered :
    RowPropertyParametricCovered case_001404_rank.val case_001404_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001404_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001405_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001405_mask : SignMask := ⟨54, by decide⟩
private def case_001405_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001405_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001405_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001405_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001405_firstLine : StrictLin2 := { a := (-6/5), b := (-6/5), c := (-4/3) }
private def case_001405_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001405_rankWord :
    rankPairWord? case_001405_word = some case_001405_rank := by
  decide

private theorem case_001405_unrank :
    unrankPairWord case_001405_rank = case_001405_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001405_word case_001405_rank).1
    case_001405_rankWord |>.symm

private theorem case_001405_seqChoice :
    translationChoiceSeq case_001405_word case_001405_mask = case_001405_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001405_seqAtRank :
    translationSeqAtRankMask case_001405_rank case_001405_mask = case_001405_seq := by
  rw [translationSeqAtRankMask, case_001405_unrank]
  exact case_001405_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001405_bAtRank :
    translationBAtRankMask case_001405_rank case_001405_mask = case_001405_b := by
  rw [translationBAtRankMask, case_001405_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001405_b, case_001405_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001405_firstLine_eq :
    case_001405_support.firstLine case_001405_seq case_001405_b = case_001405_firstLine := by
  norm_num [case_001405_firstLine, case_001405_support, case_001405_seq, case_001405_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001405_secondLine_eq :
    case_001405_support.secondLine case_001405_seq case_001405_b = case_001405_secondLine := by
  norm_num [case_001405_secondLine, case_001405_support, case_001405_seq, case_001405_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001405_sourceAgrees :
    SourceAgrees case_001405_support case_001405_rank.val case_001405_mask := by
  intro hlt
  have hrank : (⟨case_001405_rank.val, hlt⟩ : Fin numPairWords) = case_001405_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001405_rank.val, hlt⟩ case_001405_mask =
        case_001405_seq := by
    simpa [hrank] using case_001405_seqAtRank
  simp [SourceChecks, hseq, case_001405_support,
    checkTranslationConstraintSource, case_001405_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001405_rows :
    EqEqPosVarFirstRows case_001405_support case_001405_rank.val case_001405_mask := by
  intro hlt
  have hrank : (⟨case_001405_rank.val, hlt⟩ : Fin numPairWords) = case_001405_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001405_rank.val, hlt⟩ case_001405_mask =
        case_001405_seq := by
    simpa [hrank] using case_001405_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001405_rank.val, hlt⟩ case_001405_mask =
        case_001405_b := by
    simpa [hrank] using case_001405_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001405_support case_001405_rank.val hlt
          case_001405_mask = case_001405_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001405_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001405_support case_001405_rank.val hlt
          case_001405_mask = case_001405_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001405_secondLine_eq]
  have case_001405_rowFirst :
      EqEqPosRow (FirstLineAt case_001405_support case_001405_rank.val hlt case_001405_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001405_firstLine, EqEqPosRow]
  have case_001405_fixedSecond :
      FixedRow (SecondLineAt case_001405_support case_001405_rank.val hlt case_001405_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001405_secondLine, FixedRow]
  exact ⟨case_001405_rowFirst, case_001405_fixedSecond⟩

private theorem case_001405_existsRows :
    ExistsEqEqPosVarFirstRows case_001405_rank.val case_001405_mask :=
  ⟨case_001405_support, case_001405_sourceAgrees, case_001405_rows⟩

private theorem case_001405_covered :
    RowPropertyParametricCovered case_001405_rank.val case_001405_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001405_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001406_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001406_mask : SignMask := ⟨55, by decide⟩
private def case_001406_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001406_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001406_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001406_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001406_firstLine : StrictLin2 := { a := (-3/11), b := (-3/11), c := (-43/33) }
private def case_001406_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001406_rankWord :
    rankPairWord? case_001406_word = some case_001406_rank := by
  decide

private theorem case_001406_unrank :
    unrankPairWord case_001406_rank = case_001406_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001406_word case_001406_rank).1
    case_001406_rankWord |>.symm

private theorem case_001406_seqChoice :
    translationChoiceSeq case_001406_word case_001406_mask = case_001406_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001406_seqAtRank :
    translationSeqAtRankMask case_001406_rank case_001406_mask = case_001406_seq := by
  rw [translationSeqAtRankMask, case_001406_unrank]
  exact case_001406_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001406_bAtRank :
    translationBAtRankMask case_001406_rank case_001406_mask = case_001406_b := by
  rw [translationBAtRankMask, case_001406_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001406_b, case_001406_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001406_firstLine_eq :
    case_001406_support.firstLine case_001406_seq case_001406_b = case_001406_firstLine := by
  norm_num [case_001406_firstLine, case_001406_support, case_001406_seq, case_001406_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001406_secondLine_eq :
    case_001406_support.secondLine case_001406_seq case_001406_b = case_001406_secondLine := by
  norm_num [case_001406_secondLine, case_001406_support, case_001406_seq, case_001406_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001406_sourceAgrees :
    SourceAgrees case_001406_support case_001406_rank.val case_001406_mask := by
  intro hlt
  have hrank : (⟨case_001406_rank.val, hlt⟩ : Fin numPairWords) = case_001406_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001406_rank.val, hlt⟩ case_001406_mask =
        case_001406_seq := by
    simpa [hrank] using case_001406_seqAtRank
  simp [SourceChecks, hseq, case_001406_support,
    checkTranslationConstraintSource, case_001406_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001406_rows :
    EqEqPosVarFirstRows case_001406_support case_001406_rank.val case_001406_mask := by
  intro hlt
  have hrank : (⟨case_001406_rank.val, hlt⟩ : Fin numPairWords) = case_001406_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001406_rank.val, hlt⟩ case_001406_mask =
        case_001406_seq := by
    simpa [hrank] using case_001406_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001406_rank.val, hlt⟩ case_001406_mask =
        case_001406_b := by
    simpa [hrank] using case_001406_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001406_support case_001406_rank.val hlt
          case_001406_mask = case_001406_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001406_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001406_support case_001406_rank.val hlt
          case_001406_mask = case_001406_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001406_secondLine_eq]
  have case_001406_rowFirst :
      EqEqPosRow (FirstLineAt case_001406_support case_001406_rank.val hlt case_001406_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001406_firstLine, EqEqPosRow]
  have case_001406_fixedSecond :
      FixedRow (SecondLineAt case_001406_support case_001406_rank.val hlt case_001406_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001406_secondLine, FixedRow]
  exact ⟨case_001406_rowFirst, case_001406_fixedSecond⟩

private theorem case_001406_existsRows :
    ExistsEqEqPosVarFirstRows case_001406_rank.val case_001406_mask :=
  ⟨case_001406_support, case_001406_sourceAgrees, case_001406_rows⟩

private theorem case_001406_covered :
    RowPropertyParametricCovered case_001406_rank.val case_001406_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001406_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001407_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_001407_mask : SignMask := ⟨63, by decide⟩
private def case_001407_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001407_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001407_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001407_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001407_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001407_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001407_rankWord :
    rankPairWord? case_001407_word = some case_001407_rank := by
  decide

private theorem case_001407_unrank :
    unrankPairWord case_001407_rank = case_001407_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001407_word case_001407_rank).1
    case_001407_rankWord |>.symm

private theorem case_001407_seqChoice :
    translationChoiceSeq case_001407_word case_001407_mask = case_001407_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001407_seqAtRank :
    translationSeqAtRankMask case_001407_rank case_001407_mask = case_001407_seq := by
  rw [translationSeqAtRankMask, case_001407_unrank]
  exact case_001407_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001407_bAtRank :
    translationBAtRankMask case_001407_rank case_001407_mask = case_001407_b := by
  rw [translationBAtRankMask, case_001407_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001407_b, case_001407_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001407_firstLine_eq :
    case_001407_support.firstLine case_001407_seq case_001407_b = case_001407_firstLine := by
  norm_num [case_001407_firstLine, case_001407_support, case_001407_seq, case_001407_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001407_secondLine_eq :
    case_001407_support.secondLine case_001407_seq case_001407_b = case_001407_secondLine := by
  norm_num [case_001407_secondLine, case_001407_support, case_001407_seq, case_001407_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001407_sourceAgrees :
    SourceAgrees case_001407_support case_001407_rank.val case_001407_mask := by
  intro hlt
  have hrank : (⟨case_001407_rank.val, hlt⟩ : Fin numPairWords) = case_001407_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001407_rank.val, hlt⟩ case_001407_mask =
        case_001407_seq := by
    simpa [hrank] using case_001407_seqAtRank
  simp [SourceChecks, hseq, case_001407_support,
    checkTranslationConstraintSource, case_001407_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001407_rows :
    EqEqPosVarFirstRows case_001407_support case_001407_rank.val case_001407_mask := by
  intro hlt
  have hrank : (⟨case_001407_rank.val, hlt⟩ : Fin numPairWords) = case_001407_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001407_rank.val, hlt⟩ case_001407_mask =
        case_001407_seq := by
    simpa [hrank] using case_001407_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001407_rank.val, hlt⟩ case_001407_mask =
        case_001407_b := by
    simpa [hrank] using case_001407_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001407_support case_001407_rank.val hlt
          case_001407_mask = case_001407_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001407_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001407_support case_001407_rank.val hlt
          case_001407_mask = case_001407_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001407_secondLine_eq]
  have case_001407_rowFirst :
      EqEqPosRow (FirstLineAt case_001407_support case_001407_rank.val hlt case_001407_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001407_firstLine, EqEqPosRow]
  have case_001407_fixedSecond :
      FixedRow (SecondLineAt case_001407_support case_001407_rank.val hlt case_001407_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001407_secondLine, FixedRow]
  exact ⟨case_001407_rowFirst, case_001407_fixedSecond⟩

private theorem case_001407_existsRows :
    ExistsEqEqPosVarFirstRows case_001407_rank.val case_001407_mask :=
  ⟨case_001407_support, case_001407_sourceAgrees, case_001407_rows⟩

private theorem case_001407_covered :
    RowPropertyParametricCovered case_001407_rank.val case_001407_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001407_existsRows

inductive Group043Covered : Nat -> SignMask -> Prop
  | case_001376 : Group043Covered case_001376_rank.val case_001376_mask
  | case_001377 : Group043Covered case_001377_rank.val case_001377_mask
  | case_001378 : Group043Covered case_001378_rank.val case_001378_mask
  | case_001379 : Group043Covered case_001379_rank.val case_001379_mask
  | case_001380 : Group043Covered case_001380_rank.val case_001380_mask
  | case_001381 : Group043Covered case_001381_rank.val case_001381_mask
  | case_001382 : Group043Covered case_001382_rank.val case_001382_mask
  | case_001383 : Group043Covered case_001383_rank.val case_001383_mask
  | case_001384 : Group043Covered case_001384_rank.val case_001384_mask
  | case_001385 : Group043Covered case_001385_rank.val case_001385_mask
  | case_001386 : Group043Covered case_001386_rank.val case_001386_mask
  | case_001387 : Group043Covered case_001387_rank.val case_001387_mask
  | case_001388 : Group043Covered case_001388_rank.val case_001388_mask
  | case_001389 : Group043Covered case_001389_rank.val case_001389_mask
  | case_001390 : Group043Covered case_001390_rank.val case_001390_mask
  | case_001391 : Group043Covered case_001391_rank.val case_001391_mask
  | case_001392 : Group043Covered case_001392_rank.val case_001392_mask
  | case_001393 : Group043Covered case_001393_rank.val case_001393_mask
  | case_001394 : Group043Covered case_001394_rank.val case_001394_mask
  | case_001395 : Group043Covered case_001395_rank.val case_001395_mask
  | case_001396 : Group043Covered case_001396_rank.val case_001396_mask
  | case_001397 : Group043Covered case_001397_rank.val case_001397_mask
  | case_001398 : Group043Covered case_001398_rank.val case_001398_mask
  | case_001399 : Group043Covered case_001399_rank.val case_001399_mask
  | case_001400 : Group043Covered case_001400_rank.val case_001400_mask
  | case_001401 : Group043Covered case_001401_rank.val case_001401_mask
  | case_001402 : Group043Covered case_001402_rank.val case_001402_mask
  | case_001403 : Group043Covered case_001403_rank.val case_001403_mask
  | case_001404 : Group043Covered case_001404_rank.val case_001404_mask
  | case_001405 : Group043Covered case_001405_rank.val case_001405_mask
  | case_001406 : Group043Covered case_001406_rank.val case_001406_mask
  | case_001407 : Group043Covered case_001407_rank.val case_001407_mask

theorem Group043GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group043Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001376 =>
      exact RowPropertyParametricCovered.kills case_001376_covered
  | case_001377 =>
      exact RowPropertyParametricCovered.kills case_001377_covered
  | case_001378 =>
      exact RowPropertyParametricCovered.kills case_001378_covered
  | case_001379 =>
      exact RowPropertyParametricCovered.kills case_001379_covered
  | case_001380 =>
      exact RowPropertyParametricCovered.kills case_001380_covered
  | case_001381 =>
      exact RowPropertyParametricCovered.kills case_001381_covered
  | case_001382 =>
      exact RowPropertyParametricCovered.kills case_001382_covered
  | case_001383 =>
      exact RowPropertyParametricCovered.kills case_001383_covered
  | case_001384 =>
      exact RowPropertyParametricCovered.kills case_001384_covered
  | case_001385 =>
      exact RowPropertyParametricCovered.kills case_001385_covered
  | case_001386 =>
      exact RowPropertyParametricCovered.kills case_001386_covered
  | case_001387 =>
      exact RowPropertyParametricCovered.kills case_001387_covered
  | case_001388 =>
      exact RowPropertyParametricCovered.kills case_001388_covered
  | case_001389 =>
      exact RowPropertyParametricCovered.kills case_001389_covered
  | case_001390 =>
      exact RowPropertyParametricCovered.kills case_001390_covered
  | case_001391 =>
      exact RowPropertyParametricCovered.kills case_001391_covered
  | case_001392 =>
      exact RowPropertyParametricCovered.kills case_001392_covered
  | case_001393 =>
      exact RowPropertyParametricCovered.kills case_001393_covered
  | case_001394 =>
      exact RowPropertyParametricCovered.kills case_001394_covered
  | case_001395 =>
      exact RowPropertyParametricCovered.kills case_001395_covered
  | case_001396 =>
      exact RowPropertyParametricCovered.kills case_001396_covered
  | case_001397 =>
      exact RowPropertyParametricCovered.kills case_001397_covered
  | case_001398 =>
      exact RowPropertyParametricCovered.kills case_001398_covered
  | case_001399 =>
      exact RowPropertyParametricCovered.kills case_001399_covered
  | case_001400 =>
      exact RowPropertyParametricCovered.kills case_001400_covered
  | case_001401 =>
      exact RowPropertyParametricCovered.kills case_001401_covered
  | case_001402 =>
      exact RowPropertyParametricCovered.kills case_001402_covered
  | case_001403 =>
      exact RowPropertyParametricCovered.kills case_001403_covered
  | case_001404 =>
      exact RowPropertyParametricCovered.kills case_001404_covered
  | case_001405 =>
      exact RowPropertyParametricCovered.kills case_001405_covered
  | case_001406 =>
      exact RowPropertyParametricCovered.kills case_001406_covered
  | case_001407 =>
      exact RowPropertyParametricCovered.kills case_001407_covered

theorem Group043_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group043
