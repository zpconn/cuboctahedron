import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group040

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
private def case_001280_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001280_mask : SignMask := ⟨24, by decide⟩
private def case_001280_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001280_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001280_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001280_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-100/9) }
private def case_001280_firstLine : StrictLin2 := { a := -1, b := -1, c := (-67/17) }
private def case_001280_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001280_rankWord :
    rankPairWord? case_001280_word = some case_001280_rank := by
  decide

private theorem case_001280_unrank :
    unrankPairWord case_001280_rank = case_001280_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001280_word case_001280_rank).1
    case_001280_rankWord |>.symm

private theorem case_001280_seqChoice :
    translationChoiceSeq case_001280_word case_001280_mask = case_001280_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001280_seqAtRank :
    translationSeqAtRankMask case_001280_rank case_001280_mask = case_001280_seq := by
  rw [translationSeqAtRankMask, case_001280_unrank]
  exact case_001280_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001280_bAtRank :
    translationBAtRankMask case_001280_rank case_001280_mask = case_001280_b := by
  rw [translationBAtRankMask, case_001280_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001280_b, case_001280_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001280_firstLine_eq :
    case_001280_support.firstLine case_001280_seq case_001280_b = case_001280_firstLine := by
  norm_num [case_001280_firstLine, case_001280_support, case_001280_seq, case_001280_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001280_secondLine_eq :
    case_001280_support.secondLine case_001280_seq case_001280_b = case_001280_secondLine := by
  norm_num [case_001280_secondLine, case_001280_support, case_001280_seq, case_001280_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001280_sourceAgrees :
    SourceAgrees case_001280_support case_001280_rank.val case_001280_mask := by
  intro hlt
  have hrank : (⟨case_001280_rank.val, hlt⟩ : Fin numPairWords) = case_001280_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001280_rank.val, hlt⟩ case_001280_mask =
        case_001280_seq := by
    simpa [hrank] using case_001280_seqAtRank
  simp [SourceChecks, hseq, case_001280_support,
    checkTranslationConstraintSource, case_001280_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001280_rows :
    EqEqPosVarFirstRows case_001280_support case_001280_rank.val case_001280_mask := by
  intro hlt
  have hrank : (⟨case_001280_rank.val, hlt⟩ : Fin numPairWords) = case_001280_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001280_rank.val, hlt⟩ case_001280_mask =
        case_001280_seq := by
    simpa [hrank] using case_001280_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001280_rank.val, hlt⟩ case_001280_mask =
        case_001280_b := by
    simpa [hrank] using case_001280_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001280_support case_001280_rank.val hlt
          case_001280_mask = case_001280_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001280_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001280_support case_001280_rank.val hlt
          case_001280_mask = case_001280_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001280_secondLine_eq]
  have case_001280_rowFirst :
      EqEqPosRow (FirstLineAt case_001280_support case_001280_rank.val hlt case_001280_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001280_firstLine, EqEqPosRow]
  have case_001280_fixedSecond :
      FixedRow (SecondLineAt case_001280_support case_001280_rank.val hlt case_001280_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001280_secondLine, FixedRow]
  exact ⟨case_001280_rowFirst, case_001280_fixedSecond⟩

private theorem case_001280_existsRows :
    ExistsEqEqPosVarFirstRows case_001280_rank.val case_001280_mask :=
  ⟨case_001280_support, case_001280_sourceAgrees, case_001280_rows⟩

private theorem case_001280_covered :
    RowPropertyParametricCovered case_001280_rank.val case_001280_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001280_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001281_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001281_mask : SignMask := ⟨28, by decide⟩
private def case_001281_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001281_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001281_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001281_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-52/9) }
private def case_001281_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001281_secondLine : StrictLin2 := { a := (-87/518), b := (87/518), c := (-11/37) }

private theorem case_001281_rankWord :
    rankPairWord? case_001281_word = some case_001281_rank := by
  decide

private theorem case_001281_unrank :
    unrankPairWord case_001281_rank = case_001281_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001281_word case_001281_rank).1
    case_001281_rankWord |>.symm

private theorem case_001281_seqChoice :
    translationChoiceSeq case_001281_word case_001281_mask = case_001281_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001281_seqAtRank :
    translationSeqAtRankMask case_001281_rank case_001281_mask = case_001281_seq := by
  rw [translationSeqAtRankMask, case_001281_unrank]
  exact case_001281_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001281_bAtRank :
    translationBAtRankMask case_001281_rank case_001281_mask = case_001281_b := by
  rw [translationBAtRankMask, case_001281_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001281_b, case_001281_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001281_firstLine_eq :
    case_001281_support.firstLine case_001281_seq case_001281_b = case_001281_firstLine := by
  norm_num [case_001281_firstLine, case_001281_support, case_001281_seq, case_001281_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001281_secondLine_eq :
    case_001281_support.secondLine case_001281_seq case_001281_b = case_001281_secondLine := by
  norm_num [case_001281_secondLine, case_001281_support, case_001281_seq, case_001281_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001281_sourceAgrees :
    SourceAgrees case_001281_support case_001281_rank.val case_001281_mask := by
  intro hlt
  have hrank : (⟨case_001281_rank.val, hlt⟩ : Fin numPairWords) = case_001281_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001281_rank.val, hlt⟩ case_001281_mask =
        case_001281_seq := by
    simpa [hrank] using case_001281_seqAtRank
  simp [SourceChecks, hseq, case_001281_support,
    checkTranslationConstraintSource, case_001281_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001281_rows :
    OppOneMinusVarSecondRows case_001281_support case_001281_rank.val case_001281_mask := by
  intro hlt
  have hrank : (⟨case_001281_rank.val, hlt⟩ : Fin numPairWords) = case_001281_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001281_rank.val, hlt⟩ case_001281_mask =
        case_001281_seq := by
    simpa [hrank] using case_001281_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001281_rank.val, hlt⟩ case_001281_mask =
        case_001281_b := by
    simpa [hrank] using case_001281_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001281_support case_001281_rank.val hlt
          case_001281_mask = case_001281_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001281_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001281_support case_001281_rank.val hlt
          case_001281_mask = case_001281_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001281_secondLine_eq]
  have case_001281_fixedFirst :
      FixedRow (FirstLineAt case_001281_support case_001281_rank.val hlt case_001281_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001281_firstLine, FixedRow]
  have case_001281_rowSecond :
      OppPosRow (SecondLineAt case_001281_support case_001281_rank.val hlt case_001281_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001281_secondLine, OppPosRow]
  exact ⟨case_001281_fixedFirst, case_001281_rowSecond⟩

private theorem case_001281_existsRows :
    ExistsOppOneMinusVarSecondRows case_001281_rank.val case_001281_mask :=
  ⟨case_001281_support, case_001281_sourceAgrees, case_001281_rows⟩

private theorem case_001281_covered :
    RowPropertyParametricCovered case_001281_rank.val case_001281_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001281_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001282_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001282_mask : SignMask := ⟨29, by decide⟩
private def case_001282_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001282_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001282_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001282_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-52/9) }
private def case_001282_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001282_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_001282_rankWord :
    rankPairWord? case_001282_word = some case_001282_rank := by
  decide

private theorem case_001282_unrank :
    unrankPairWord case_001282_rank = case_001282_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001282_word case_001282_rank).1
    case_001282_rankWord |>.symm

private theorem case_001282_seqChoice :
    translationChoiceSeq case_001282_word case_001282_mask = case_001282_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001282_seqAtRank :
    translationSeqAtRankMask case_001282_rank case_001282_mask = case_001282_seq := by
  rw [translationSeqAtRankMask, case_001282_unrank]
  exact case_001282_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001282_bAtRank :
    translationBAtRankMask case_001282_rank case_001282_mask = case_001282_b := by
  rw [translationBAtRankMask, case_001282_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001282_b, case_001282_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001282_firstLine_eq :
    case_001282_support.firstLine case_001282_seq case_001282_b = case_001282_firstLine := by
  norm_num [case_001282_firstLine, case_001282_support, case_001282_seq, case_001282_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001282_secondLine_eq :
    case_001282_support.secondLine case_001282_seq case_001282_b = case_001282_secondLine := by
  norm_num [case_001282_secondLine, case_001282_support, case_001282_seq, case_001282_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001282_sourceAgrees :
    SourceAgrees case_001282_support case_001282_rank.val case_001282_mask := by
  intro hlt
  have hrank : (⟨case_001282_rank.val, hlt⟩ : Fin numPairWords) = case_001282_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001282_rank.val, hlt⟩ case_001282_mask =
        case_001282_seq := by
    simpa [hrank] using case_001282_seqAtRank
  simp [SourceChecks, hseq, case_001282_support,
    checkTranslationConstraintSource, case_001282_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001282_rows :
    EqEqPosVarSecondRows case_001282_support case_001282_rank.val case_001282_mask := by
  intro hlt
  have hrank : (⟨case_001282_rank.val, hlt⟩ : Fin numPairWords) = case_001282_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001282_rank.val, hlt⟩ case_001282_mask =
        case_001282_seq := by
    simpa [hrank] using case_001282_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001282_rank.val, hlt⟩ case_001282_mask =
        case_001282_b := by
    simpa [hrank] using case_001282_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001282_support case_001282_rank.val hlt
          case_001282_mask = case_001282_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001282_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001282_support case_001282_rank.val hlt
          case_001282_mask = case_001282_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001282_secondLine_eq]
  have case_001282_fixedFirst :
      FixedRow (FirstLineAt case_001282_support case_001282_rank.val hlt case_001282_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001282_firstLine, FixedRow]
  have case_001282_rowSecond :
      EqEqPosRow (SecondLineAt case_001282_support case_001282_rank.val hlt case_001282_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001282_secondLine, EqEqPosRow]
  exact ⟨case_001282_fixedFirst, case_001282_rowSecond⟩

private theorem case_001282_existsRows :
    ExistsEqEqPosVarSecondRows case_001282_rank.val case_001282_mask :=
  ⟨case_001282_support, case_001282_sourceAgrees, case_001282_rows⟩

private theorem case_001282_covered :
    RowPropertyParametricCovered case_001282_rank.val case_001282_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001282_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001283_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001283_mask : SignMask := ⟨30, by decide⟩
private def case_001283_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001283_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001283_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001283_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (20/9) }
private def case_001283_firstLine : StrictLin2 := { a := (29/19), b := (-29/19), c := (-125/19) }
private def case_001283_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001283_rankWord :
    rankPairWord? case_001283_word = some case_001283_rank := by
  decide

private theorem case_001283_unrank :
    unrankPairWord case_001283_rank = case_001283_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001283_word case_001283_rank).1
    case_001283_rankWord |>.symm

private theorem case_001283_seqChoice :
    translationChoiceSeq case_001283_word case_001283_mask = case_001283_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001283_seqAtRank :
    translationSeqAtRankMask case_001283_rank case_001283_mask = case_001283_seq := by
  rw [translationSeqAtRankMask, case_001283_unrank]
  exact case_001283_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001283_bAtRank :
    translationBAtRankMask case_001283_rank case_001283_mask = case_001283_b := by
  rw [translationBAtRankMask, case_001283_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001283_b, case_001283_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001283_firstLine_eq :
    case_001283_support.firstLine case_001283_seq case_001283_b = case_001283_firstLine := by
  norm_num [case_001283_firstLine, case_001283_support, case_001283_seq, case_001283_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001283_secondLine_eq :
    case_001283_support.secondLine case_001283_seq case_001283_b = case_001283_secondLine := by
  norm_num [case_001283_secondLine, case_001283_support, case_001283_seq, case_001283_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001283_sourceAgrees :
    SourceAgrees case_001283_support case_001283_rank.val case_001283_mask := by
  intro hlt
  have hrank : (⟨case_001283_rank.val, hlt⟩ : Fin numPairWords) = case_001283_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001283_rank.val, hlt⟩ case_001283_mask =
        case_001283_seq := by
    simpa [hrank] using case_001283_seqAtRank
  simp [SourceChecks, hseq, case_001283_support,
    checkTranslationConstraintSource, case_001283_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001283_rows :
    OppMinusOneVarFirstRows case_001283_support case_001283_rank.val case_001283_mask := by
  intro hlt
  have hrank : (⟨case_001283_rank.val, hlt⟩ : Fin numPairWords) = case_001283_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001283_rank.val, hlt⟩ case_001283_mask =
        case_001283_seq := by
    simpa [hrank] using case_001283_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001283_rank.val, hlt⟩ case_001283_mask =
        case_001283_b := by
    simpa [hrank] using case_001283_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001283_support case_001283_rank.val hlt
          case_001283_mask = case_001283_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001283_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001283_support case_001283_rank.val hlt
          case_001283_mask = case_001283_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001283_secondLine_eq]
  have case_001283_rowFirst :
      OppNegRow (FirstLineAt case_001283_support case_001283_rank.val hlt case_001283_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001283_firstLine, OppNegRow]
  have case_001283_fixedSecond :
      FixedRow (SecondLineAt case_001283_support case_001283_rank.val hlt case_001283_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001283_secondLine, FixedRow]
  exact ⟨case_001283_rowFirst, case_001283_fixedSecond⟩

private theorem case_001283_existsRows :
    ExistsOppMinusOneVarFirstRows case_001283_rank.val case_001283_mask :=
  ⟨case_001283_support, case_001283_sourceAgrees, case_001283_rows⟩

private theorem case_001283_covered :
    RowPropertyParametricCovered case_001283_rank.val case_001283_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001283_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001284_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001284_mask : SignMask := ⟨47, by decide⟩
private def case_001284_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001284_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001284_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001284_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (52/9) }
private def case_001284_firstLine : StrictLin2 := { a := (-13/55), b := (-13/55), c := (-167/165) }
private def case_001284_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001284_rankWord :
    rankPairWord? case_001284_word = some case_001284_rank := by
  decide

private theorem case_001284_unrank :
    unrankPairWord case_001284_rank = case_001284_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001284_word case_001284_rank).1
    case_001284_rankWord |>.symm

private theorem case_001284_seqChoice :
    translationChoiceSeq case_001284_word case_001284_mask = case_001284_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001284_seqAtRank :
    translationSeqAtRankMask case_001284_rank case_001284_mask = case_001284_seq := by
  rw [translationSeqAtRankMask, case_001284_unrank]
  exact case_001284_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001284_bAtRank :
    translationBAtRankMask case_001284_rank case_001284_mask = case_001284_b := by
  rw [translationBAtRankMask, case_001284_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001284_b, case_001284_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001284_firstLine_eq :
    case_001284_support.firstLine case_001284_seq case_001284_b = case_001284_firstLine := by
  norm_num [case_001284_firstLine, case_001284_support, case_001284_seq, case_001284_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001284_secondLine_eq :
    case_001284_support.secondLine case_001284_seq case_001284_b = case_001284_secondLine := by
  norm_num [case_001284_secondLine, case_001284_support, case_001284_seq, case_001284_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001284_sourceAgrees :
    SourceAgrees case_001284_support case_001284_rank.val case_001284_mask := by
  intro hlt
  have hrank : (⟨case_001284_rank.val, hlt⟩ : Fin numPairWords) = case_001284_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001284_rank.val, hlt⟩ case_001284_mask =
        case_001284_seq := by
    simpa [hrank] using case_001284_seqAtRank
  simp [SourceChecks, hseq, case_001284_support,
    checkTranslationConstraintSource, case_001284_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001284_rows :
    EqEqPosVarFirstRows case_001284_support case_001284_rank.val case_001284_mask := by
  intro hlt
  have hrank : (⟨case_001284_rank.val, hlt⟩ : Fin numPairWords) = case_001284_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001284_rank.val, hlt⟩ case_001284_mask =
        case_001284_seq := by
    simpa [hrank] using case_001284_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001284_rank.val, hlt⟩ case_001284_mask =
        case_001284_b := by
    simpa [hrank] using case_001284_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001284_support case_001284_rank.val hlt
          case_001284_mask = case_001284_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001284_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001284_support case_001284_rank.val hlt
          case_001284_mask = case_001284_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001284_secondLine_eq]
  have case_001284_rowFirst :
      EqEqPosRow (FirstLineAt case_001284_support case_001284_rank.val hlt case_001284_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001284_firstLine, EqEqPosRow]
  have case_001284_fixedSecond :
      FixedRow (SecondLineAt case_001284_support case_001284_rank.val hlt case_001284_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001284_secondLine, FixedRow]
  exact ⟨case_001284_rowFirst, case_001284_fixedSecond⟩

private theorem case_001284_existsRows :
    ExistsEqEqPosVarFirstRows case_001284_rank.val case_001284_mask :=
  ⟨case_001284_support, case_001284_sourceAgrees, case_001284_rows⟩

private theorem case_001284_covered :
    RowPropertyParametricCovered case_001284_rank.val case_001284_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001284_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001285_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001285_mask : SignMask := ⟨54, by decide⟩
private def case_001285_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001285_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001285_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001285_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (148/9) }
private def case_001285_firstLine : StrictLin2 := { a := -1, b := 1, c := (-87/13) }
private def case_001285_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001285_rankWord :
    rankPairWord? case_001285_word = some case_001285_rank := by
  decide

private theorem case_001285_unrank :
    unrankPairWord case_001285_rank = case_001285_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001285_word case_001285_rank).1
    case_001285_rankWord |>.symm

private theorem case_001285_seqChoice :
    translationChoiceSeq case_001285_word case_001285_mask = case_001285_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001285_seqAtRank :
    translationSeqAtRankMask case_001285_rank case_001285_mask = case_001285_seq := by
  rw [translationSeqAtRankMask, case_001285_unrank]
  exact case_001285_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001285_bAtRank :
    translationBAtRankMask case_001285_rank case_001285_mask = case_001285_b := by
  rw [translationBAtRankMask, case_001285_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001285_b, case_001285_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001285_firstLine_eq :
    case_001285_support.firstLine case_001285_seq case_001285_b = case_001285_firstLine := by
  norm_num [case_001285_firstLine, case_001285_support, case_001285_seq, case_001285_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001285_secondLine_eq :
    case_001285_support.secondLine case_001285_seq case_001285_b = case_001285_secondLine := by
  norm_num [case_001285_secondLine, case_001285_support, case_001285_seq, case_001285_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001285_sourceAgrees :
    SourceAgrees case_001285_support case_001285_rank.val case_001285_mask := by
  intro hlt
  have hrank : (⟨case_001285_rank.val, hlt⟩ : Fin numPairWords) = case_001285_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001285_rank.val, hlt⟩ case_001285_mask =
        case_001285_seq := by
    simpa [hrank] using case_001285_seqAtRank
  simp [SourceChecks, hseq, case_001285_support,
    checkTranslationConstraintSource, case_001285_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001285_rows :
    OppOneMinusVarFirstRows case_001285_support case_001285_rank.val case_001285_mask := by
  intro hlt
  have hrank : (⟨case_001285_rank.val, hlt⟩ : Fin numPairWords) = case_001285_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001285_rank.val, hlt⟩ case_001285_mask =
        case_001285_seq := by
    simpa [hrank] using case_001285_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001285_rank.val, hlt⟩ case_001285_mask =
        case_001285_b := by
    simpa [hrank] using case_001285_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001285_support case_001285_rank.val hlt
          case_001285_mask = case_001285_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001285_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001285_support case_001285_rank.val hlt
          case_001285_mask = case_001285_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001285_secondLine_eq]
  have case_001285_rowFirst :
      OppPosRow (FirstLineAt case_001285_support case_001285_rank.val hlt case_001285_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001285_firstLine, OppPosRow]
  have case_001285_fixedSecond :
      FixedRow (SecondLineAt case_001285_support case_001285_rank.val hlt case_001285_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001285_secondLine, FixedRow]
  exact ⟨case_001285_rowFirst, case_001285_fixedSecond⟩

private theorem case_001285_existsRows :
    ExistsOppOneMinusVarFirstRows case_001285_rank.val case_001285_mask :=
  ⟨case_001285_support, case_001285_sourceAgrees, case_001285_rows⟩

private theorem case_001285_covered :
    RowPropertyParametricCovered case_001285_rank.val case_001285_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001285_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001286_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001286_mask : SignMask := ⟨55, by decide⟩
private def case_001286_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001286_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001286_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001286_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (148/9) }
private def case_001286_firstLine : StrictLin2 := { a := (-13/55), b := (-13/55), c := (-167/165) }
private def case_001286_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001286_rankWord :
    rankPairWord? case_001286_word = some case_001286_rank := by
  decide

private theorem case_001286_unrank :
    unrankPairWord case_001286_rank = case_001286_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001286_word case_001286_rank).1
    case_001286_rankWord |>.symm

private theorem case_001286_seqChoice :
    translationChoiceSeq case_001286_word case_001286_mask = case_001286_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001286_seqAtRank :
    translationSeqAtRankMask case_001286_rank case_001286_mask = case_001286_seq := by
  rw [translationSeqAtRankMask, case_001286_unrank]
  exact case_001286_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001286_bAtRank :
    translationBAtRankMask case_001286_rank case_001286_mask = case_001286_b := by
  rw [translationBAtRankMask, case_001286_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001286_b, case_001286_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001286_firstLine_eq :
    case_001286_support.firstLine case_001286_seq case_001286_b = case_001286_firstLine := by
  norm_num [case_001286_firstLine, case_001286_support, case_001286_seq, case_001286_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001286_secondLine_eq :
    case_001286_support.secondLine case_001286_seq case_001286_b = case_001286_secondLine := by
  norm_num [case_001286_secondLine, case_001286_support, case_001286_seq, case_001286_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001286_sourceAgrees :
    SourceAgrees case_001286_support case_001286_rank.val case_001286_mask := by
  intro hlt
  have hrank : (⟨case_001286_rank.val, hlt⟩ : Fin numPairWords) = case_001286_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001286_rank.val, hlt⟩ case_001286_mask =
        case_001286_seq := by
    simpa [hrank] using case_001286_seqAtRank
  simp [SourceChecks, hseq, case_001286_support,
    checkTranslationConstraintSource, case_001286_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001286_rows :
    EqEqPosVarFirstRows case_001286_support case_001286_rank.val case_001286_mask := by
  intro hlt
  have hrank : (⟨case_001286_rank.val, hlt⟩ : Fin numPairWords) = case_001286_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001286_rank.val, hlt⟩ case_001286_mask =
        case_001286_seq := by
    simpa [hrank] using case_001286_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001286_rank.val, hlt⟩ case_001286_mask =
        case_001286_b := by
    simpa [hrank] using case_001286_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001286_support case_001286_rank.val hlt
          case_001286_mask = case_001286_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001286_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001286_support case_001286_rank.val hlt
          case_001286_mask = case_001286_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001286_secondLine_eq]
  have case_001286_rowFirst :
      EqEqPosRow (FirstLineAt case_001286_support case_001286_rank.val hlt case_001286_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001286_firstLine, EqEqPosRow]
  have case_001286_fixedSecond :
      FixedRow (SecondLineAt case_001286_support case_001286_rank.val hlt case_001286_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001286_secondLine, FixedRow]
  exact ⟨case_001286_rowFirst, case_001286_fixedSecond⟩

private theorem case_001286_existsRows :
    ExistsEqEqPosVarFirstRows case_001286_rank.val case_001286_mask :=
  ⟨case_001286_support, case_001286_sourceAgrees, case_001286_rows⟩

private theorem case_001286_covered :
    RowPropertyParametricCovered case_001286_rank.val case_001286_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001286_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001287_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001287_mask : SignMask := ⟨63, by decide⟩
private def case_001287_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001287_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001287_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001287_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (100/9) }
private def case_001287_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001287_secondLine : StrictLin2 := { a := (-75/374), b := (75/374), c := (-193/187) }

private theorem case_001287_rankWord :
    rankPairWord? case_001287_word = some case_001287_rank := by
  decide

private theorem case_001287_unrank :
    unrankPairWord case_001287_rank = case_001287_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001287_word case_001287_rank).1
    case_001287_rankWord |>.symm

private theorem case_001287_seqChoice :
    translationChoiceSeq case_001287_word case_001287_mask = case_001287_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001287_seqAtRank :
    translationSeqAtRankMask case_001287_rank case_001287_mask = case_001287_seq := by
  rw [translationSeqAtRankMask, case_001287_unrank]
  exact case_001287_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001287_bAtRank :
    translationBAtRankMask case_001287_rank case_001287_mask = case_001287_b := by
  rw [translationBAtRankMask, case_001287_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001287_b, case_001287_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001287_firstLine_eq :
    case_001287_support.firstLine case_001287_seq case_001287_b = case_001287_firstLine := by
  norm_num [case_001287_firstLine, case_001287_support, case_001287_seq, case_001287_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001287_secondLine_eq :
    case_001287_support.secondLine case_001287_seq case_001287_b = case_001287_secondLine := by
  norm_num [case_001287_secondLine, case_001287_support, case_001287_seq, case_001287_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001287_sourceAgrees :
    SourceAgrees case_001287_support case_001287_rank.val case_001287_mask := by
  intro hlt
  have hrank : (⟨case_001287_rank.val, hlt⟩ : Fin numPairWords) = case_001287_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001287_rank.val, hlt⟩ case_001287_mask =
        case_001287_seq := by
    simpa [hrank] using case_001287_seqAtRank
  simp [SourceChecks, hseq, case_001287_support,
    checkTranslationConstraintSource, case_001287_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001287_rows :
    OppOneMinusVarSecondRows case_001287_support case_001287_rank.val case_001287_mask := by
  intro hlt
  have hrank : (⟨case_001287_rank.val, hlt⟩ : Fin numPairWords) = case_001287_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001287_rank.val, hlt⟩ case_001287_mask =
        case_001287_seq := by
    simpa [hrank] using case_001287_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001287_rank.val, hlt⟩ case_001287_mask =
        case_001287_b := by
    simpa [hrank] using case_001287_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001287_support case_001287_rank.val hlt
          case_001287_mask = case_001287_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001287_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001287_support case_001287_rank.val hlt
          case_001287_mask = case_001287_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001287_secondLine_eq]
  have case_001287_fixedFirst :
      FixedRow (FirstLineAt case_001287_support case_001287_rank.val hlt case_001287_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001287_firstLine, FixedRow]
  have case_001287_rowSecond :
      OppPosRow (SecondLineAt case_001287_support case_001287_rank.val hlt case_001287_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001287_secondLine, OppPosRow]
  exact ⟨case_001287_fixedFirst, case_001287_rowSecond⟩

private theorem case_001287_existsRows :
    ExistsOppOneMinusVarSecondRows case_001287_rank.val case_001287_mask :=
  ⟨case_001287_support, case_001287_sourceAgrees, case_001287_rows⟩

private theorem case_001287_covered :
    RowPropertyParametricCovered case_001287_rank.val case_001287_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001287_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001288_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001288_mask : SignMask := ⟨12, by decide⟩
private def case_001288_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001288_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001288_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_001288_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-116/9) }
private def case_001288_firstLine : StrictLin2 := { a := -1, b := -1, c := (-39/29) }
private def case_001288_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001288_rankWord :
    rankPairWord? case_001288_word = some case_001288_rank := by
  decide

private theorem case_001288_unrank :
    unrankPairWord case_001288_rank = case_001288_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001288_word case_001288_rank).1
    case_001288_rankWord |>.symm

private theorem case_001288_seqChoice :
    translationChoiceSeq case_001288_word case_001288_mask = case_001288_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001288_seqAtRank :
    translationSeqAtRankMask case_001288_rank case_001288_mask = case_001288_seq := by
  rw [translationSeqAtRankMask, case_001288_unrank]
  exact case_001288_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001288_bAtRank :
    translationBAtRankMask case_001288_rank case_001288_mask = case_001288_b := by
  rw [translationBAtRankMask, case_001288_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001288_b, case_001288_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001288_firstLine_eq :
    case_001288_support.firstLine case_001288_seq case_001288_b = case_001288_firstLine := by
  norm_num [case_001288_firstLine, case_001288_support, case_001288_seq, case_001288_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001288_secondLine_eq :
    case_001288_support.secondLine case_001288_seq case_001288_b = case_001288_secondLine := by
  norm_num [case_001288_secondLine, case_001288_support, case_001288_seq, case_001288_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001288_sourceAgrees :
    SourceAgrees case_001288_support case_001288_rank.val case_001288_mask := by
  intro hlt
  have hrank : (⟨case_001288_rank.val, hlt⟩ : Fin numPairWords) = case_001288_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001288_rank.val, hlt⟩ case_001288_mask =
        case_001288_seq := by
    simpa [hrank] using case_001288_seqAtRank
  simp [SourceChecks, hseq, case_001288_support,
    checkTranslationConstraintSource, case_001288_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001288_rows :
    EqEqPosVarFirstRows case_001288_support case_001288_rank.val case_001288_mask := by
  intro hlt
  have hrank : (⟨case_001288_rank.val, hlt⟩ : Fin numPairWords) = case_001288_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001288_rank.val, hlt⟩ case_001288_mask =
        case_001288_seq := by
    simpa [hrank] using case_001288_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001288_rank.val, hlt⟩ case_001288_mask =
        case_001288_b := by
    simpa [hrank] using case_001288_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001288_support case_001288_rank.val hlt
          case_001288_mask = case_001288_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001288_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001288_support case_001288_rank.val hlt
          case_001288_mask = case_001288_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001288_secondLine_eq]
  have case_001288_rowFirst :
      EqEqPosRow (FirstLineAt case_001288_support case_001288_rank.val hlt case_001288_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001288_firstLine, EqEqPosRow]
  have case_001288_fixedSecond :
      FixedRow (SecondLineAt case_001288_support case_001288_rank.val hlt case_001288_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001288_secondLine, FixedRow]
  exact ⟨case_001288_rowFirst, case_001288_fixedSecond⟩

private theorem case_001288_existsRows :
    ExistsEqEqPosVarFirstRows case_001288_rank.val case_001288_mask :=
  ⟨case_001288_support, case_001288_sourceAgrees, case_001288_rows⟩

private theorem case_001288_covered :
    RowPropertyParametricCovered case_001288_rank.val case_001288_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001288_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001289_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001289_mask : SignMask := ⟨13, by decide⟩
private def case_001289_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001289_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001289_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_001289_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-116/9) }
private def case_001289_firstLine : StrictLin2 := { a := (-58/45), b := (-58/45), c := (-196/135) }
private def case_001289_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001289_rankWord :
    rankPairWord? case_001289_word = some case_001289_rank := by
  decide

private theorem case_001289_unrank :
    unrankPairWord case_001289_rank = case_001289_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001289_word case_001289_rank).1
    case_001289_rankWord |>.symm

private theorem case_001289_seqChoice :
    translationChoiceSeq case_001289_word case_001289_mask = case_001289_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001289_seqAtRank :
    translationSeqAtRankMask case_001289_rank case_001289_mask = case_001289_seq := by
  rw [translationSeqAtRankMask, case_001289_unrank]
  exact case_001289_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001289_bAtRank :
    translationBAtRankMask case_001289_rank case_001289_mask = case_001289_b := by
  rw [translationBAtRankMask, case_001289_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001289_b, case_001289_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001289_firstLine_eq :
    case_001289_support.firstLine case_001289_seq case_001289_b = case_001289_firstLine := by
  norm_num [case_001289_firstLine, case_001289_support, case_001289_seq, case_001289_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001289_secondLine_eq :
    case_001289_support.secondLine case_001289_seq case_001289_b = case_001289_secondLine := by
  norm_num [case_001289_secondLine, case_001289_support, case_001289_seq, case_001289_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001289_sourceAgrees :
    SourceAgrees case_001289_support case_001289_rank.val case_001289_mask := by
  intro hlt
  have hrank : (⟨case_001289_rank.val, hlt⟩ : Fin numPairWords) = case_001289_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001289_rank.val, hlt⟩ case_001289_mask =
        case_001289_seq := by
    simpa [hrank] using case_001289_seqAtRank
  simp [SourceChecks, hseq, case_001289_support,
    checkTranslationConstraintSource, case_001289_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001289_rows :
    EqEqPosVarFirstRows case_001289_support case_001289_rank.val case_001289_mask := by
  intro hlt
  have hrank : (⟨case_001289_rank.val, hlt⟩ : Fin numPairWords) = case_001289_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001289_rank.val, hlt⟩ case_001289_mask =
        case_001289_seq := by
    simpa [hrank] using case_001289_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001289_rank.val, hlt⟩ case_001289_mask =
        case_001289_b := by
    simpa [hrank] using case_001289_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001289_support case_001289_rank.val hlt
          case_001289_mask = case_001289_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001289_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001289_support case_001289_rank.val hlt
          case_001289_mask = case_001289_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001289_secondLine_eq]
  have case_001289_rowFirst :
      EqEqPosRow (FirstLineAt case_001289_support case_001289_rank.val hlt case_001289_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001289_firstLine, EqEqPosRow]
  have case_001289_fixedSecond :
      FixedRow (SecondLineAt case_001289_support case_001289_rank.val hlt case_001289_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001289_secondLine, FixedRow]
  exact ⟨case_001289_rowFirst, case_001289_fixedSecond⟩

private theorem case_001289_existsRows :
    ExistsEqEqPosVarFirstRows case_001289_rank.val case_001289_mask :=
  ⟨case_001289_support, case_001289_sourceAgrees, case_001289_rows⟩

private theorem case_001289_covered :
    RowPropertyParametricCovered case_001289_rank.val case_001289_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001289_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001290_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001290_mask : SignMask := ⟨16, by decide⟩
private def case_001290_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001290_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001290_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001290_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (-4/9) }
private def case_001290_firstLine : StrictLin2 := { a := -1, b := -1, c := -51 }
private def case_001290_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001290_rankWord :
    rankPairWord? case_001290_word = some case_001290_rank := by
  decide

private theorem case_001290_unrank :
    unrankPairWord case_001290_rank = case_001290_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001290_word case_001290_rank).1
    case_001290_rankWord |>.symm

private theorem case_001290_seqChoice :
    translationChoiceSeq case_001290_word case_001290_mask = case_001290_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001290_seqAtRank :
    translationSeqAtRankMask case_001290_rank case_001290_mask = case_001290_seq := by
  rw [translationSeqAtRankMask, case_001290_unrank]
  exact case_001290_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001290_bAtRank :
    translationBAtRankMask case_001290_rank case_001290_mask = case_001290_b := by
  rw [translationBAtRankMask, case_001290_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001290_b, case_001290_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001290_firstLine_eq :
    case_001290_support.firstLine case_001290_seq case_001290_b = case_001290_firstLine := by
  norm_num [case_001290_firstLine, case_001290_support, case_001290_seq, case_001290_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001290_secondLine_eq :
    case_001290_support.secondLine case_001290_seq case_001290_b = case_001290_secondLine := by
  norm_num [case_001290_secondLine, case_001290_support, case_001290_seq, case_001290_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001290_sourceAgrees :
    SourceAgrees case_001290_support case_001290_rank.val case_001290_mask := by
  intro hlt
  have hrank : (⟨case_001290_rank.val, hlt⟩ : Fin numPairWords) = case_001290_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001290_rank.val, hlt⟩ case_001290_mask =
        case_001290_seq := by
    simpa [hrank] using case_001290_seqAtRank
  simp [SourceChecks, hseq, case_001290_support,
    checkTranslationConstraintSource, case_001290_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001290_rows :
    EqEqPosVarFirstRows case_001290_support case_001290_rank.val case_001290_mask := by
  intro hlt
  have hrank : (⟨case_001290_rank.val, hlt⟩ : Fin numPairWords) = case_001290_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001290_rank.val, hlt⟩ case_001290_mask =
        case_001290_seq := by
    simpa [hrank] using case_001290_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001290_rank.val, hlt⟩ case_001290_mask =
        case_001290_b := by
    simpa [hrank] using case_001290_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001290_support case_001290_rank.val hlt
          case_001290_mask = case_001290_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001290_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001290_support case_001290_rank.val hlt
          case_001290_mask = case_001290_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001290_secondLine_eq]
  have case_001290_rowFirst :
      EqEqPosRow (FirstLineAt case_001290_support case_001290_rank.val hlt case_001290_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001290_firstLine, EqEqPosRow]
  have case_001290_fixedSecond :
      FixedRow (SecondLineAt case_001290_support case_001290_rank.val hlt case_001290_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001290_secondLine, FixedRow]
  exact ⟨case_001290_rowFirst, case_001290_fixedSecond⟩

private theorem case_001290_existsRows :
    ExistsEqEqPosVarFirstRows case_001290_rank.val case_001290_mask :=
  ⟨case_001290_support, case_001290_sourceAgrees, case_001290_rows⟩

private theorem case_001290_covered :
    RowPropertyParametricCovered case_001290_rank.val case_001290_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001290_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001291_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001291_mask : SignMask := ⟨18, by decide⟩
private def case_001291_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001291_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001291_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001291_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (68/9) }
private def case_001291_firstLine : StrictLin2 := { a := -1, b := -1, c := -15 }
private def case_001291_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001291_rankWord :
    rankPairWord? case_001291_word = some case_001291_rank := by
  decide

private theorem case_001291_unrank :
    unrankPairWord case_001291_rank = case_001291_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001291_word case_001291_rank).1
    case_001291_rankWord |>.symm

private theorem case_001291_seqChoice :
    translationChoiceSeq case_001291_word case_001291_mask = case_001291_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001291_seqAtRank :
    translationSeqAtRankMask case_001291_rank case_001291_mask = case_001291_seq := by
  rw [translationSeqAtRankMask, case_001291_unrank]
  exact case_001291_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001291_bAtRank :
    translationBAtRankMask case_001291_rank case_001291_mask = case_001291_b := by
  rw [translationBAtRankMask, case_001291_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001291_b, case_001291_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001291_firstLine_eq :
    case_001291_support.firstLine case_001291_seq case_001291_b = case_001291_firstLine := by
  norm_num [case_001291_firstLine, case_001291_support, case_001291_seq, case_001291_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001291_secondLine_eq :
    case_001291_support.secondLine case_001291_seq case_001291_b = case_001291_secondLine := by
  norm_num [case_001291_secondLine, case_001291_support, case_001291_seq, case_001291_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001291_sourceAgrees :
    SourceAgrees case_001291_support case_001291_rank.val case_001291_mask := by
  intro hlt
  have hrank : (⟨case_001291_rank.val, hlt⟩ : Fin numPairWords) = case_001291_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001291_rank.val, hlt⟩ case_001291_mask =
        case_001291_seq := by
    simpa [hrank] using case_001291_seqAtRank
  simp [SourceChecks, hseq, case_001291_support,
    checkTranslationConstraintSource, case_001291_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001291_rows :
    EqEqPosVarFirstRows case_001291_support case_001291_rank.val case_001291_mask := by
  intro hlt
  have hrank : (⟨case_001291_rank.val, hlt⟩ : Fin numPairWords) = case_001291_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001291_rank.val, hlt⟩ case_001291_mask =
        case_001291_seq := by
    simpa [hrank] using case_001291_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001291_rank.val, hlt⟩ case_001291_mask =
        case_001291_b := by
    simpa [hrank] using case_001291_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001291_support case_001291_rank.val hlt
          case_001291_mask = case_001291_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001291_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001291_support case_001291_rank.val hlt
          case_001291_mask = case_001291_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001291_secondLine_eq]
  have case_001291_rowFirst :
      EqEqPosRow (FirstLineAt case_001291_support case_001291_rank.val hlt case_001291_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001291_firstLine, EqEqPosRow]
  have case_001291_fixedSecond :
      FixedRow (SecondLineAt case_001291_support case_001291_rank.val hlt case_001291_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001291_secondLine, FixedRow]
  exact ⟨case_001291_rowFirst, case_001291_fixedSecond⟩

private theorem case_001291_existsRows :
    ExistsEqEqPosVarFirstRows case_001291_rank.val case_001291_mask :=
  ⟨case_001291_support, case_001291_sourceAgrees, case_001291_rows⟩

private theorem case_001291_covered :
    RowPropertyParametricCovered case_001291_rank.val case_001291_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001291_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001292_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001292_mask : SignMask := ⟨22, by decide⟩
private def case_001292_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001292_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001292_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001292_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001292_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001292_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001292_rankWord :
    rankPairWord? case_001292_word = some case_001292_rank := by
  decide

private theorem case_001292_unrank :
    unrankPairWord case_001292_rank = case_001292_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001292_word case_001292_rank).1
    case_001292_rankWord |>.symm

private theorem case_001292_seqChoice :
    translationChoiceSeq case_001292_word case_001292_mask = case_001292_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001292_seqAtRank :
    translationSeqAtRankMask case_001292_rank case_001292_mask = case_001292_seq := by
  rw [translationSeqAtRankMask, case_001292_unrank]
  exact case_001292_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001292_bAtRank :
    translationBAtRankMask case_001292_rank case_001292_mask = case_001292_b := by
  rw [translationBAtRankMask, case_001292_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001292_b, case_001292_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001292_firstLine_eq :
    case_001292_support.firstLine case_001292_seq case_001292_b = case_001292_firstLine := by
  norm_num [case_001292_firstLine, case_001292_support, case_001292_seq, case_001292_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001292_secondLine_eq :
    case_001292_support.secondLine case_001292_seq case_001292_b = case_001292_secondLine := by
  norm_num [case_001292_secondLine, case_001292_support, case_001292_seq, case_001292_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001292_sourceAgrees :
    SourceAgrees case_001292_support case_001292_rank.val case_001292_mask := by
  intro hlt
  have hrank : (⟨case_001292_rank.val, hlt⟩ : Fin numPairWords) = case_001292_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001292_rank.val, hlt⟩ case_001292_mask =
        case_001292_seq := by
    simpa [hrank] using case_001292_seqAtRank
  simp [SourceChecks, hseq, case_001292_support,
    checkTranslationConstraintSource, case_001292_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001292_rows :
    EqEqPosVarFirstRows case_001292_support case_001292_rank.val case_001292_mask := by
  intro hlt
  have hrank : (⟨case_001292_rank.val, hlt⟩ : Fin numPairWords) = case_001292_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001292_rank.val, hlt⟩ case_001292_mask =
        case_001292_seq := by
    simpa [hrank] using case_001292_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001292_rank.val, hlt⟩ case_001292_mask =
        case_001292_b := by
    simpa [hrank] using case_001292_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001292_support case_001292_rank.val hlt
          case_001292_mask = case_001292_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001292_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001292_support case_001292_rank.val hlt
          case_001292_mask = case_001292_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001292_secondLine_eq]
  have case_001292_rowFirst :
      EqEqPosRow (FirstLineAt case_001292_support case_001292_rank.val hlt case_001292_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001292_firstLine, EqEqPosRow]
  have case_001292_fixedSecond :
      FixedRow (SecondLineAt case_001292_support case_001292_rank.val hlt case_001292_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001292_secondLine, FixedRow]
  exact ⟨case_001292_rowFirst, case_001292_fixedSecond⟩

private theorem case_001292_existsRows :
    ExistsEqEqPosVarFirstRows case_001292_rank.val case_001292_mask :=
  ⟨case_001292_support, case_001292_sourceAgrees, case_001292_rows⟩

private theorem case_001292_covered :
    RowPropertyParametricCovered case_001292_rank.val case_001292_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001292_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001293_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001293_mask : SignMask := ⟨30, by decide⟩
private def case_001293_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001293_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001293_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001293_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001293_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001293_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001293_rankWord :
    rankPairWord? case_001293_word = some case_001293_rank := by
  decide

private theorem case_001293_unrank :
    unrankPairWord case_001293_rank = case_001293_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001293_word case_001293_rank).1
    case_001293_rankWord |>.symm

private theorem case_001293_seqChoice :
    translationChoiceSeq case_001293_word case_001293_mask = case_001293_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001293_seqAtRank :
    translationSeqAtRankMask case_001293_rank case_001293_mask = case_001293_seq := by
  rw [translationSeqAtRankMask, case_001293_unrank]
  exact case_001293_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001293_bAtRank :
    translationBAtRankMask case_001293_rank case_001293_mask = case_001293_b := by
  rw [translationBAtRankMask, case_001293_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001293_b, case_001293_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001293_firstLine_eq :
    case_001293_support.firstLine case_001293_seq case_001293_b = case_001293_firstLine := by
  norm_num [case_001293_firstLine, case_001293_support, case_001293_seq, case_001293_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001293_secondLine_eq :
    case_001293_support.secondLine case_001293_seq case_001293_b = case_001293_secondLine := by
  norm_num [case_001293_secondLine, case_001293_support, case_001293_seq, case_001293_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001293_sourceAgrees :
    SourceAgrees case_001293_support case_001293_rank.val case_001293_mask := by
  intro hlt
  have hrank : (⟨case_001293_rank.val, hlt⟩ : Fin numPairWords) = case_001293_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001293_rank.val, hlt⟩ case_001293_mask =
        case_001293_seq := by
    simpa [hrank] using case_001293_seqAtRank
  simp [SourceChecks, hseq, case_001293_support,
    checkTranslationConstraintSource, case_001293_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001293_rows :
    EqEqPosVarFirstRows case_001293_support case_001293_rank.val case_001293_mask := by
  intro hlt
  have hrank : (⟨case_001293_rank.val, hlt⟩ : Fin numPairWords) = case_001293_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001293_rank.val, hlt⟩ case_001293_mask =
        case_001293_seq := by
    simpa [hrank] using case_001293_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001293_rank.val, hlt⟩ case_001293_mask =
        case_001293_b := by
    simpa [hrank] using case_001293_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001293_support case_001293_rank.val hlt
          case_001293_mask = case_001293_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001293_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001293_support case_001293_rank.val hlt
          case_001293_mask = case_001293_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001293_secondLine_eq]
  have case_001293_rowFirst :
      EqEqPosRow (FirstLineAt case_001293_support case_001293_rank.val hlt case_001293_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001293_firstLine, EqEqPosRow]
  have case_001293_fixedSecond :
      FixedRow (SecondLineAt case_001293_support case_001293_rank.val hlt case_001293_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001293_secondLine, FixedRow]
  exact ⟨case_001293_rowFirst, case_001293_fixedSecond⟩

private theorem case_001293_existsRows :
    ExistsEqEqPosVarFirstRows case_001293_rank.val case_001293_mask :=
  ⟨case_001293_support, case_001293_sourceAgrees, case_001293_rows⟩

private theorem case_001293_covered :
    RowPropertyParametricCovered case_001293_rank.val case_001293_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001293_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001294_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001294_mask : SignMask := ⟨31, by decide⟩
private def case_001294_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001294_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001294_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001294_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001294_firstLine : StrictLin2 := { a := (-11/5), b := (-11/5), c := (-27/5) }
private def case_001294_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001294_rankWord :
    rankPairWord? case_001294_word = some case_001294_rank := by
  decide

private theorem case_001294_unrank :
    unrankPairWord case_001294_rank = case_001294_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001294_word case_001294_rank).1
    case_001294_rankWord |>.symm

private theorem case_001294_seqChoice :
    translationChoiceSeq case_001294_word case_001294_mask = case_001294_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001294_seqAtRank :
    translationSeqAtRankMask case_001294_rank case_001294_mask = case_001294_seq := by
  rw [translationSeqAtRankMask, case_001294_unrank]
  exact case_001294_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001294_bAtRank :
    translationBAtRankMask case_001294_rank case_001294_mask = case_001294_b := by
  rw [translationBAtRankMask, case_001294_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001294_b, case_001294_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001294_firstLine_eq :
    case_001294_support.firstLine case_001294_seq case_001294_b = case_001294_firstLine := by
  norm_num [case_001294_firstLine, case_001294_support, case_001294_seq, case_001294_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001294_secondLine_eq :
    case_001294_support.secondLine case_001294_seq case_001294_b = case_001294_secondLine := by
  norm_num [case_001294_secondLine, case_001294_support, case_001294_seq, case_001294_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001294_sourceAgrees :
    SourceAgrees case_001294_support case_001294_rank.val case_001294_mask := by
  intro hlt
  have hrank : (⟨case_001294_rank.val, hlt⟩ : Fin numPairWords) = case_001294_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001294_rank.val, hlt⟩ case_001294_mask =
        case_001294_seq := by
    simpa [hrank] using case_001294_seqAtRank
  simp [SourceChecks, hseq, case_001294_support,
    checkTranslationConstraintSource, case_001294_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001294_rows :
    EqEqPosVarFirstRows case_001294_support case_001294_rank.val case_001294_mask := by
  intro hlt
  have hrank : (⟨case_001294_rank.val, hlt⟩ : Fin numPairWords) = case_001294_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001294_rank.val, hlt⟩ case_001294_mask =
        case_001294_seq := by
    simpa [hrank] using case_001294_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001294_rank.val, hlt⟩ case_001294_mask =
        case_001294_b := by
    simpa [hrank] using case_001294_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001294_support case_001294_rank.val hlt
          case_001294_mask = case_001294_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001294_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001294_support case_001294_rank.val hlt
          case_001294_mask = case_001294_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001294_secondLine_eq]
  have case_001294_rowFirst :
      EqEqPosRow (FirstLineAt case_001294_support case_001294_rank.val hlt case_001294_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001294_firstLine, EqEqPosRow]
  have case_001294_fixedSecond :
      FixedRow (SecondLineAt case_001294_support case_001294_rank.val hlt case_001294_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001294_secondLine, FixedRow]
  exact ⟨case_001294_rowFirst, case_001294_fixedSecond⟩

private theorem case_001294_existsRows :
    ExistsEqEqPosVarFirstRows case_001294_rank.val case_001294_mask :=
  ⟨case_001294_support, case_001294_sourceAgrees, case_001294_rows⟩

private theorem case_001294_covered :
    RowPropertyParametricCovered case_001294_rank.val case_001294_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001294_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001295_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001295_mask : SignMask := ⟨47, by decide⟩
private def case_001295_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001295_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001295_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_001295_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (4/9) }
private def case_001295_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001295_secondLine : StrictLin2 := { a := (-17/74), b := (-17/74), c := (-34/111) }

private theorem case_001295_rankWord :
    rankPairWord? case_001295_word = some case_001295_rank := by
  decide

private theorem case_001295_unrank :
    unrankPairWord case_001295_rank = case_001295_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001295_word case_001295_rank).1
    case_001295_rankWord |>.symm

private theorem case_001295_seqChoice :
    translationChoiceSeq case_001295_word case_001295_mask = case_001295_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001295_seqAtRank :
    translationSeqAtRankMask case_001295_rank case_001295_mask = case_001295_seq := by
  rw [translationSeqAtRankMask, case_001295_unrank]
  exact case_001295_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001295_bAtRank :
    translationBAtRankMask case_001295_rank case_001295_mask = case_001295_b := by
  rw [translationBAtRankMask, case_001295_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001295_b, case_001295_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001295_firstLine_eq :
    case_001295_support.firstLine case_001295_seq case_001295_b = case_001295_firstLine := by
  norm_num [case_001295_firstLine, case_001295_support, case_001295_seq, case_001295_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001295_secondLine_eq :
    case_001295_support.secondLine case_001295_seq case_001295_b = case_001295_secondLine := by
  norm_num [case_001295_secondLine, case_001295_support, case_001295_seq, case_001295_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001295_sourceAgrees :
    SourceAgrees case_001295_support case_001295_rank.val case_001295_mask := by
  intro hlt
  have hrank : (⟨case_001295_rank.val, hlt⟩ : Fin numPairWords) = case_001295_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001295_rank.val, hlt⟩ case_001295_mask =
        case_001295_seq := by
    simpa [hrank] using case_001295_seqAtRank
  simp [SourceChecks, hseq, case_001295_support,
    checkTranslationConstraintSource, case_001295_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001295_rows :
    EqEqPosVarSecondRows case_001295_support case_001295_rank.val case_001295_mask := by
  intro hlt
  have hrank : (⟨case_001295_rank.val, hlt⟩ : Fin numPairWords) = case_001295_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001295_rank.val, hlt⟩ case_001295_mask =
        case_001295_seq := by
    simpa [hrank] using case_001295_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001295_rank.val, hlt⟩ case_001295_mask =
        case_001295_b := by
    simpa [hrank] using case_001295_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001295_support case_001295_rank.val hlt
          case_001295_mask = case_001295_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001295_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001295_support case_001295_rank.val hlt
          case_001295_mask = case_001295_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001295_secondLine_eq]
  have case_001295_fixedFirst :
      FixedRow (FirstLineAt case_001295_support case_001295_rank.val hlt case_001295_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001295_firstLine, FixedRow]
  have case_001295_rowSecond :
      EqEqPosRow (SecondLineAt case_001295_support case_001295_rank.val hlt case_001295_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001295_secondLine, EqEqPosRow]
  exact ⟨case_001295_fixedFirst, case_001295_rowSecond⟩

private theorem case_001295_existsRows :
    ExistsEqEqPosVarSecondRows case_001295_rank.val case_001295_mask :=
  ⟨case_001295_support, case_001295_sourceAgrees, case_001295_rows⟩

private theorem case_001295_covered :
    RowPropertyParametricCovered case_001295_rank.val case_001295_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001295_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001296_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001296_mask : SignMask := ⟨54, by decide⟩
private def case_001296_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001296_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001296_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_001296_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001296_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001296_secondLine : StrictLin2 := { a := (-27/230), b := (-27/230), c := (-3/23) }

private theorem case_001296_rankWord :
    rankPairWord? case_001296_word = some case_001296_rank := by
  decide

private theorem case_001296_unrank :
    unrankPairWord case_001296_rank = case_001296_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001296_word case_001296_rank).1
    case_001296_rankWord |>.symm

private theorem case_001296_seqChoice :
    translationChoiceSeq case_001296_word case_001296_mask = case_001296_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001296_seqAtRank :
    translationSeqAtRankMask case_001296_rank case_001296_mask = case_001296_seq := by
  rw [translationSeqAtRankMask, case_001296_unrank]
  exact case_001296_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001296_bAtRank :
    translationBAtRankMask case_001296_rank case_001296_mask = case_001296_b := by
  rw [translationBAtRankMask, case_001296_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001296_b, case_001296_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001296_firstLine_eq :
    case_001296_support.firstLine case_001296_seq case_001296_b = case_001296_firstLine := by
  norm_num [case_001296_firstLine, case_001296_support, case_001296_seq, case_001296_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001296_secondLine_eq :
    case_001296_support.secondLine case_001296_seq case_001296_b = case_001296_secondLine := by
  norm_num [case_001296_secondLine, case_001296_support, case_001296_seq, case_001296_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001296_sourceAgrees :
    SourceAgrees case_001296_support case_001296_rank.val case_001296_mask := by
  intro hlt
  have hrank : (⟨case_001296_rank.val, hlt⟩ : Fin numPairWords) = case_001296_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001296_rank.val, hlt⟩ case_001296_mask =
        case_001296_seq := by
    simpa [hrank] using case_001296_seqAtRank
  simp [SourceChecks, hseq, case_001296_support,
    checkTranslationConstraintSource, case_001296_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001296_rows :
    EqEqPosVarSecondRows case_001296_support case_001296_rank.val case_001296_mask := by
  intro hlt
  have hrank : (⟨case_001296_rank.val, hlt⟩ : Fin numPairWords) = case_001296_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001296_rank.val, hlt⟩ case_001296_mask =
        case_001296_seq := by
    simpa [hrank] using case_001296_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001296_rank.val, hlt⟩ case_001296_mask =
        case_001296_b := by
    simpa [hrank] using case_001296_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001296_support case_001296_rank.val hlt
          case_001296_mask = case_001296_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001296_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001296_support case_001296_rank.val hlt
          case_001296_mask = case_001296_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001296_secondLine_eq]
  have case_001296_fixedFirst :
      FixedRow (FirstLineAt case_001296_support case_001296_rank.val hlt case_001296_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001296_firstLine, FixedRow]
  have case_001296_rowSecond :
      EqEqPosRow (SecondLineAt case_001296_support case_001296_rank.val hlt case_001296_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001296_secondLine, EqEqPosRow]
  exact ⟨case_001296_fixedFirst, case_001296_rowSecond⟩

private theorem case_001296_existsRows :
    ExistsEqEqPosVarSecondRows case_001296_rank.val case_001296_mask :=
  ⟨case_001296_support, case_001296_sourceAgrees, case_001296_rows⟩

private theorem case_001296_covered :
    RowPropertyParametricCovered case_001296_rank.val case_001296_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001296_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001297_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001297_mask : SignMask := ⟨55, by decide⟩
private def case_001297_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001297_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001297_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_001297_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001297_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001297_secondLine : StrictLin2 := { a := (-27/638), b := (-27/638), c := (-114/319) }

private theorem case_001297_rankWord :
    rankPairWord? case_001297_word = some case_001297_rank := by
  decide

private theorem case_001297_unrank :
    unrankPairWord case_001297_rank = case_001297_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001297_word case_001297_rank).1
    case_001297_rankWord |>.symm

private theorem case_001297_seqChoice :
    translationChoiceSeq case_001297_word case_001297_mask = case_001297_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001297_seqAtRank :
    translationSeqAtRankMask case_001297_rank case_001297_mask = case_001297_seq := by
  rw [translationSeqAtRankMask, case_001297_unrank]
  exact case_001297_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001297_bAtRank :
    translationBAtRankMask case_001297_rank case_001297_mask = case_001297_b := by
  rw [translationBAtRankMask, case_001297_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001297_b, case_001297_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001297_firstLine_eq :
    case_001297_support.firstLine case_001297_seq case_001297_b = case_001297_firstLine := by
  norm_num [case_001297_firstLine, case_001297_support, case_001297_seq, case_001297_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001297_secondLine_eq :
    case_001297_support.secondLine case_001297_seq case_001297_b = case_001297_secondLine := by
  norm_num [case_001297_secondLine, case_001297_support, case_001297_seq, case_001297_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001297_sourceAgrees :
    SourceAgrees case_001297_support case_001297_rank.val case_001297_mask := by
  intro hlt
  have hrank : (⟨case_001297_rank.val, hlt⟩ : Fin numPairWords) = case_001297_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001297_rank.val, hlt⟩ case_001297_mask =
        case_001297_seq := by
    simpa [hrank] using case_001297_seqAtRank
  simp [SourceChecks, hseq, case_001297_support,
    checkTranslationConstraintSource, case_001297_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001297_rows :
    EqEqPosVarSecondRows case_001297_support case_001297_rank.val case_001297_mask := by
  intro hlt
  have hrank : (⟨case_001297_rank.val, hlt⟩ : Fin numPairWords) = case_001297_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001297_rank.val, hlt⟩ case_001297_mask =
        case_001297_seq := by
    simpa [hrank] using case_001297_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001297_rank.val, hlt⟩ case_001297_mask =
        case_001297_b := by
    simpa [hrank] using case_001297_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001297_support case_001297_rank.val hlt
          case_001297_mask = case_001297_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001297_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001297_support case_001297_rank.val hlt
          case_001297_mask = case_001297_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001297_secondLine_eq]
  have case_001297_fixedFirst :
      FixedRow (FirstLineAt case_001297_support case_001297_rank.val hlt case_001297_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001297_firstLine, FixedRow]
  have case_001297_rowSecond :
      EqEqPosRow (SecondLineAt case_001297_support case_001297_rank.val hlt case_001297_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001297_secondLine, EqEqPosRow]
  exact ⟨case_001297_fixedFirst, case_001297_rowSecond⟩

private theorem case_001297_existsRows :
    ExistsEqEqPosVarSecondRows case_001297_rank.val case_001297_mask :=
  ⟨case_001297_support, case_001297_sourceAgrees, case_001297_rows⟩

private theorem case_001297_covered :
    RowPropertyParametricCovered case_001297_rank.val case_001297_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001297_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001298_rank : Fin numPairWords := ⟨870, by decide⟩
private def case_001298_mask : SignMask := ⟨63, by decide⟩
private def case_001298_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001298_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001298_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_001298_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001298_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001298_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_001298_rankWord :
    rankPairWord? case_001298_word = some case_001298_rank := by
  decide

private theorem case_001298_unrank :
    unrankPairWord case_001298_rank = case_001298_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001298_word case_001298_rank).1
    case_001298_rankWord |>.symm

private theorem case_001298_seqChoice :
    translationChoiceSeq case_001298_word case_001298_mask = case_001298_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001298_seqAtRank :
    translationSeqAtRankMask case_001298_rank case_001298_mask = case_001298_seq := by
  rw [translationSeqAtRankMask, case_001298_unrank]
  exact case_001298_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001298_bAtRank :
    translationBAtRankMask case_001298_rank case_001298_mask = case_001298_b := by
  rw [translationBAtRankMask, case_001298_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001298_b, case_001298_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001298_firstLine_eq :
    case_001298_support.firstLine case_001298_seq case_001298_b = case_001298_firstLine := by
  norm_num [case_001298_firstLine, case_001298_support, case_001298_seq, case_001298_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001298_secondLine_eq :
    case_001298_support.secondLine case_001298_seq case_001298_b = case_001298_secondLine := by
  norm_num [case_001298_secondLine, case_001298_support, case_001298_seq, case_001298_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001298_sourceAgrees :
    SourceAgrees case_001298_support case_001298_rank.val case_001298_mask := by
  intro hlt
  have hrank : (⟨case_001298_rank.val, hlt⟩ : Fin numPairWords) = case_001298_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001298_rank.val, hlt⟩ case_001298_mask =
        case_001298_seq := by
    simpa [hrank] using case_001298_seqAtRank
  simp [SourceChecks, hseq, case_001298_support,
    checkTranslationConstraintSource, case_001298_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001298_rows :
    OppOneMinusVarSecondRows case_001298_support case_001298_rank.val case_001298_mask := by
  intro hlt
  have hrank : (⟨case_001298_rank.val, hlt⟩ : Fin numPairWords) = case_001298_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001298_rank.val, hlt⟩ case_001298_mask =
        case_001298_seq := by
    simpa [hrank] using case_001298_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001298_rank.val, hlt⟩ case_001298_mask =
        case_001298_b := by
    simpa [hrank] using case_001298_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001298_support case_001298_rank.val hlt
          case_001298_mask = case_001298_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001298_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001298_support case_001298_rank.val hlt
          case_001298_mask = case_001298_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001298_secondLine_eq]
  have case_001298_fixedFirst :
      FixedRow (FirstLineAt case_001298_support case_001298_rank.val hlt case_001298_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001298_firstLine, FixedRow]
  have case_001298_rowSecond :
      OppPosRow (SecondLineAt case_001298_support case_001298_rank.val hlt case_001298_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001298_secondLine, OppPosRow]
  exact ⟨case_001298_fixedFirst, case_001298_rowSecond⟩

private theorem case_001298_existsRows :
    ExistsOppOneMinusVarSecondRows case_001298_rank.val case_001298_mask :=
  ⟨case_001298_support, case_001298_sourceAgrees, case_001298_rows⟩

private theorem case_001298_covered :
    RowPropertyParametricCovered case_001298_rank.val case_001298_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001298_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001299_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001299_mask : SignMask := ⟨8, by decide⟩
private def case_001299_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001299_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001299_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001299_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-116/9) }
private def case_001299_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001299_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-214/39) }

private theorem case_001299_rankWord :
    rankPairWord? case_001299_word = some case_001299_rank := by
  decide

private theorem case_001299_unrank :
    unrankPairWord case_001299_rank = case_001299_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001299_word case_001299_rank).1
    case_001299_rankWord |>.symm

private theorem case_001299_seqChoice :
    translationChoiceSeq case_001299_word case_001299_mask = case_001299_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001299_seqAtRank :
    translationSeqAtRankMask case_001299_rank case_001299_mask = case_001299_seq := by
  rw [translationSeqAtRankMask, case_001299_unrank]
  exact case_001299_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001299_bAtRank :
    translationBAtRankMask case_001299_rank case_001299_mask = case_001299_b := by
  rw [translationBAtRankMask, case_001299_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001299_b, case_001299_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001299_firstLine_eq :
    case_001299_support.firstLine case_001299_seq case_001299_b = case_001299_firstLine := by
  norm_num [case_001299_firstLine, case_001299_support, case_001299_seq, case_001299_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001299_secondLine_eq :
    case_001299_support.secondLine case_001299_seq case_001299_b = case_001299_secondLine := by
  norm_num [case_001299_secondLine, case_001299_support, case_001299_seq, case_001299_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001299_sourceAgrees :
    SourceAgrees case_001299_support case_001299_rank.val case_001299_mask := by
  intro hlt
  have hrank : (⟨case_001299_rank.val, hlt⟩ : Fin numPairWords) = case_001299_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001299_rank.val, hlt⟩ case_001299_mask =
        case_001299_seq := by
    simpa [hrank] using case_001299_seqAtRank
  simp [SourceChecks, hseq, case_001299_support,
    checkTranslationConstraintSource, case_001299_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001299_rows :
    EqEqPosVarSecondRows case_001299_support case_001299_rank.val case_001299_mask := by
  intro hlt
  have hrank : (⟨case_001299_rank.val, hlt⟩ : Fin numPairWords) = case_001299_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001299_rank.val, hlt⟩ case_001299_mask =
        case_001299_seq := by
    simpa [hrank] using case_001299_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001299_rank.val, hlt⟩ case_001299_mask =
        case_001299_b := by
    simpa [hrank] using case_001299_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001299_support case_001299_rank.val hlt
          case_001299_mask = case_001299_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001299_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001299_support case_001299_rank.val hlt
          case_001299_mask = case_001299_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001299_secondLine_eq]
  have case_001299_fixedFirst :
      FixedRow (FirstLineAt case_001299_support case_001299_rank.val hlt case_001299_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001299_firstLine, FixedRow]
  have case_001299_rowSecond :
      EqEqPosRow (SecondLineAt case_001299_support case_001299_rank.val hlt case_001299_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001299_secondLine, EqEqPosRow]
  exact ⟨case_001299_fixedFirst, case_001299_rowSecond⟩

private theorem case_001299_existsRows :
    ExistsEqEqPosVarSecondRows case_001299_rank.val case_001299_mask :=
  ⟨case_001299_support, case_001299_sourceAgrees, case_001299_rows⟩

private theorem case_001299_covered :
    RowPropertyParametricCovered case_001299_rank.val case_001299_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001299_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001300_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001300_mask : SignMask := ⟨13, by decide⟩
private def case_001300_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001300_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001300_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001300_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_001300_firstLine : StrictLin2 := { a := (-25/39), b := (-25/39), c := (-109/117) }
private def case_001300_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001300_rankWord :
    rankPairWord? case_001300_word = some case_001300_rank := by
  decide

private theorem case_001300_unrank :
    unrankPairWord case_001300_rank = case_001300_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001300_word case_001300_rank).1
    case_001300_rankWord |>.symm

private theorem case_001300_seqChoice :
    translationChoiceSeq case_001300_word case_001300_mask = case_001300_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001300_seqAtRank :
    translationSeqAtRankMask case_001300_rank case_001300_mask = case_001300_seq := by
  rw [translationSeqAtRankMask, case_001300_unrank]
  exact case_001300_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001300_bAtRank :
    translationBAtRankMask case_001300_rank case_001300_mask = case_001300_b := by
  rw [translationBAtRankMask, case_001300_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001300_b, case_001300_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001300_firstLine_eq :
    case_001300_support.firstLine case_001300_seq case_001300_b = case_001300_firstLine := by
  norm_num [case_001300_firstLine, case_001300_support, case_001300_seq, case_001300_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001300_secondLine_eq :
    case_001300_support.secondLine case_001300_seq case_001300_b = case_001300_secondLine := by
  norm_num [case_001300_secondLine, case_001300_support, case_001300_seq, case_001300_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001300_sourceAgrees :
    SourceAgrees case_001300_support case_001300_rank.val case_001300_mask := by
  intro hlt
  have hrank : (⟨case_001300_rank.val, hlt⟩ : Fin numPairWords) = case_001300_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001300_rank.val, hlt⟩ case_001300_mask =
        case_001300_seq := by
    simpa [hrank] using case_001300_seqAtRank
  simp [SourceChecks, hseq, case_001300_support,
    checkTranslationConstraintSource, case_001300_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001300_rows :
    EqEqPosVarFirstRows case_001300_support case_001300_rank.val case_001300_mask := by
  intro hlt
  have hrank : (⟨case_001300_rank.val, hlt⟩ : Fin numPairWords) = case_001300_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001300_rank.val, hlt⟩ case_001300_mask =
        case_001300_seq := by
    simpa [hrank] using case_001300_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001300_rank.val, hlt⟩ case_001300_mask =
        case_001300_b := by
    simpa [hrank] using case_001300_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001300_support case_001300_rank.val hlt
          case_001300_mask = case_001300_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001300_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001300_support case_001300_rank.val hlt
          case_001300_mask = case_001300_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001300_secondLine_eq]
  have case_001300_rowFirst :
      EqEqPosRow (FirstLineAt case_001300_support case_001300_rank.val hlt case_001300_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001300_firstLine, EqEqPosRow]
  have case_001300_fixedSecond :
      FixedRow (SecondLineAt case_001300_support case_001300_rank.val hlt case_001300_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001300_secondLine, FixedRow]
  exact ⟨case_001300_rowFirst, case_001300_fixedSecond⟩

private theorem case_001300_existsRows :
    ExistsEqEqPosVarFirstRows case_001300_rank.val case_001300_mask :=
  ⟨case_001300_support, case_001300_sourceAgrees, case_001300_rows⟩

private theorem case_001300_covered :
    RowPropertyParametricCovered case_001300_rank.val case_001300_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001300_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001301_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001301_mask : SignMask := ⟨16, by decide⟩
private def case_001301_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001301_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001301_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001301_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_001301_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_001301_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001301_rankWord :
    rankPairWord? case_001301_word = some case_001301_rank := by
  decide

private theorem case_001301_unrank :
    unrankPairWord case_001301_rank = case_001301_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001301_word case_001301_rank).1
    case_001301_rankWord |>.symm

private theorem case_001301_seqChoice :
    translationChoiceSeq case_001301_word case_001301_mask = case_001301_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001301_seqAtRank :
    translationSeqAtRankMask case_001301_rank case_001301_mask = case_001301_seq := by
  rw [translationSeqAtRankMask, case_001301_unrank]
  exact case_001301_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001301_bAtRank :
    translationBAtRankMask case_001301_rank case_001301_mask = case_001301_b := by
  rw [translationBAtRankMask, case_001301_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001301_b, case_001301_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001301_firstLine_eq :
    case_001301_support.firstLine case_001301_seq case_001301_b = case_001301_firstLine := by
  norm_num [case_001301_firstLine, case_001301_support, case_001301_seq, case_001301_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001301_secondLine_eq :
    case_001301_support.secondLine case_001301_seq case_001301_b = case_001301_secondLine := by
  norm_num [case_001301_secondLine, case_001301_support, case_001301_seq, case_001301_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001301_sourceAgrees :
    SourceAgrees case_001301_support case_001301_rank.val case_001301_mask := by
  intro hlt
  have hrank : (⟨case_001301_rank.val, hlt⟩ : Fin numPairWords) = case_001301_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001301_rank.val, hlt⟩ case_001301_mask =
        case_001301_seq := by
    simpa [hrank] using case_001301_seqAtRank
  simp [SourceChecks, hseq, case_001301_support,
    checkTranslationConstraintSource, case_001301_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001301_rows :
    EqEqPosVarFirstRows case_001301_support case_001301_rank.val case_001301_mask := by
  intro hlt
  have hrank : (⟨case_001301_rank.val, hlt⟩ : Fin numPairWords) = case_001301_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001301_rank.val, hlt⟩ case_001301_mask =
        case_001301_seq := by
    simpa [hrank] using case_001301_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001301_rank.val, hlt⟩ case_001301_mask =
        case_001301_b := by
    simpa [hrank] using case_001301_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001301_support case_001301_rank.val hlt
          case_001301_mask = case_001301_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001301_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001301_support case_001301_rank.val hlt
          case_001301_mask = case_001301_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001301_secondLine_eq]
  have case_001301_rowFirst :
      EqEqPosRow (FirstLineAt case_001301_support case_001301_rank.val hlt case_001301_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001301_firstLine, EqEqPosRow]
  have case_001301_fixedSecond :
      FixedRow (SecondLineAt case_001301_support case_001301_rank.val hlt case_001301_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001301_secondLine, FixedRow]
  exact ⟨case_001301_rowFirst, case_001301_fixedSecond⟩

private theorem case_001301_existsRows :
    ExistsEqEqPosVarFirstRows case_001301_rank.val case_001301_mask :=
  ⟨case_001301_support, case_001301_sourceAgrees, case_001301_rows⟩

private theorem case_001301_covered :
    RowPropertyParametricCovered case_001301_rank.val case_001301_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001301_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001302_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001302_mask : SignMask := ⟨22, by decide⟩
private def case_001302_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001302_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001302_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001302_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (68/9) }
private def case_001302_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_001302_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001302_rankWord :
    rankPairWord? case_001302_word = some case_001302_rank := by
  decide

private theorem case_001302_unrank :
    unrankPairWord case_001302_rank = case_001302_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001302_word case_001302_rank).1
    case_001302_rankWord |>.symm

private theorem case_001302_seqChoice :
    translationChoiceSeq case_001302_word case_001302_mask = case_001302_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001302_seqAtRank :
    translationSeqAtRankMask case_001302_rank case_001302_mask = case_001302_seq := by
  rw [translationSeqAtRankMask, case_001302_unrank]
  exact case_001302_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001302_bAtRank :
    translationBAtRankMask case_001302_rank case_001302_mask = case_001302_b := by
  rw [translationBAtRankMask, case_001302_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001302_b, case_001302_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001302_firstLine_eq :
    case_001302_support.firstLine case_001302_seq case_001302_b = case_001302_firstLine := by
  norm_num [case_001302_firstLine, case_001302_support, case_001302_seq, case_001302_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001302_secondLine_eq :
    case_001302_support.secondLine case_001302_seq case_001302_b = case_001302_secondLine := by
  norm_num [case_001302_secondLine, case_001302_support, case_001302_seq, case_001302_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001302_sourceAgrees :
    SourceAgrees case_001302_support case_001302_rank.val case_001302_mask := by
  intro hlt
  have hrank : (⟨case_001302_rank.val, hlt⟩ : Fin numPairWords) = case_001302_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001302_rank.val, hlt⟩ case_001302_mask =
        case_001302_seq := by
    simpa [hrank] using case_001302_seqAtRank
  simp [SourceChecks, hseq, case_001302_support,
    checkTranslationConstraintSource, case_001302_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001302_rows :
    OppOneMinusVarFirstRows case_001302_support case_001302_rank.val case_001302_mask := by
  intro hlt
  have hrank : (⟨case_001302_rank.val, hlt⟩ : Fin numPairWords) = case_001302_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001302_rank.val, hlt⟩ case_001302_mask =
        case_001302_seq := by
    simpa [hrank] using case_001302_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001302_rank.val, hlt⟩ case_001302_mask =
        case_001302_b := by
    simpa [hrank] using case_001302_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001302_support case_001302_rank.val hlt
          case_001302_mask = case_001302_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001302_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001302_support case_001302_rank.val hlt
          case_001302_mask = case_001302_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001302_secondLine_eq]
  have case_001302_rowFirst :
      OppPosRow (FirstLineAt case_001302_support case_001302_rank.val hlt case_001302_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001302_firstLine, OppPosRow]
  have case_001302_fixedSecond :
      FixedRow (SecondLineAt case_001302_support case_001302_rank.val hlt case_001302_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001302_secondLine, FixedRow]
  exact ⟨case_001302_rowFirst, case_001302_fixedSecond⟩

private theorem case_001302_existsRows :
    ExistsOppOneMinusVarFirstRows case_001302_rank.val case_001302_mask :=
  ⟨case_001302_support, case_001302_sourceAgrees, case_001302_rows⟩

private theorem case_001302_covered :
    RowPropertyParametricCovered case_001302_rank.val case_001302_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001302_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001303_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001303_mask : SignMask := ⟨28, by decide⟩
private def case_001303_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001303_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001303_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001303_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (-52/9) }
private def case_001303_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001303_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001303_rankWord :
    rankPairWord? case_001303_word = some case_001303_rank := by
  decide

private theorem case_001303_unrank :
    unrankPairWord case_001303_rank = case_001303_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001303_word case_001303_rank).1
    case_001303_rankWord |>.symm

private theorem case_001303_seqChoice :
    translationChoiceSeq case_001303_word case_001303_mask = case_001303_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001303_seqAtRank :
    translationSeqAtRankMask case_001303_rank case_001303_mask = case_001303_seq := by
  rw [translationSeqAtRankMask, case_001303_unrank]
  exact case_001303_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001303_bAtRank :
    translationBAtRankMask case_001303_rank case_001303_mask = case_001303_b := by
  rw [translationBAtRankMask, case_001303_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001303_b, case_001303_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001303_firstLine_eq :
    case_001303_support.firstLine case_001303_seq case_001303_b = case_001303_firstLine := by
  norm_num [case_001303_firstLine, case_001303_support, case_001303_seq, case_001303_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001303_secondLine_eq :
    case_001303_support.secondLine case_001303_seq case_001303_b = case_001303_secondLine := by
  norm_num [case_001303_secondLine, case_001303_support, case_001303_seq, case_001303_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001303_sourceAgrees :
    SourceAgrees case_001303_support case_001303_rank.val case_001303_mask := by
  intro hlt
  have hrank : (⟨case_001303_rank.val, hlt⟩ : Fin numPairWords) = case_001303_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001303_rank.val, hlt⟩ case_001303_mask =
        case_001303_seq := by
    simpa [hrank] using case_001303_seqAtRank
  simp [SourceChecks, hseq, case_001303_support,
    checkTranslationConstraintSource, case_001303_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001303_rows :
    OppOneMinusVarFirstRows case_001303_support case_001303_rank.val case_001303_mask := by
  intro hlt
  have hrank : (⟨case_001303_rank.val, hlt⟩ : Fin numPairWords) = case_001303_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001303_rank.val, hlt⟩ case_001303_mask =
        case_001303_seq := by
    simpa [hrank] using case_001303_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001303_rank.val, hlt⟩ case_001303_mask =
        case_001303_b := by
    simpa [hrank] using case_001303_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001303_support case_001303_rank.val hlt
          case_001303_mask = case_001303_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001303_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001303_support case_001303_rank.val hlt
          case_001303_mask = case_001303_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001303_secondLine_eq]
  have case_001303_rowFirst :
      OppPosRow (FirstLineAt case_001303_support case_001303_rank.val hlt case_001303_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001303_firstLine, OppPosRow]
  have case_001303_fixedSecond :
      FixedRow (SecondLineAt case_001303_support case_001303_rank.val hlt case_001303_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001303_secondLine, FixedRow]
  exact ⟨case_001303_rowFirst, case_001303_fixedSecond⟩

private theorem case_001303_existsRows :
    ExistsOppOneMinusVarFirstRows case_001303_rank.val case_001303_mask :=
  ⟨case_001303_support, case_001303_sourceAgrees, case_001303_rows⟩

private theorem case_001303_covered :
    RowPropertyParametricCovered case_001303_rank.val case_001303_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001303_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001304_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001304_mask : SignMask := ⟨29, by decide⟩
private def case_001304_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001304_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001304_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001304_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (-52/9) }
private def case_001304_firstLine : StrictLin2 := { a := (-37/55), b := (37/55), c := (-261/55) }
private def case_001304_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001304_rankWord :
    rankPairWord? case_001304_word = some case_001304_rank := by
  decide

private theorem case_001304_unrank :
    unrankPairWord case_001304_rank = case_001304_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001304_word case_001304_rank).1
    case_001304_rankWord |>.symm

private theorem case_001304_seqChoice :
    translationChoiceSeq case_001304_word case_001304_mask = case_001304_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001304_seqAtRank :
    translationSeqAtRankMask case_001304_rank case_001304_mask = case_001304_seq := by
  rw [translationSeqAtRankMask, case_001304_unrank]
  exact case_001304_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001304_bAtRank :
    translationBAtRankMask case_001304_rank case_001304_mask = case_001304_b := by
  rw [translationBAtRankMask, case_001304_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001304_b, case_001304_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001304_firstLine_eq :
    case_001304_support.firstLine case_001304_seq case_001304_b = case_001304_firstLine := by
  norm_num [case_001304_firstLine, case_001304_support, case_001304_seq, case_001304_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001304_secondLine_eq :
    case_001304_support.secondLine case_001304_seq case_001304_b = case_001304_secondLine := by
  norm_num [case_001304_secondLine, case_001304_support, case_001304_seq, case_001304_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001304_sourceAgrees :
    SourceAgrees case_001304_support case_001304_rank.val case_001304_mask := by
  intro hlt
  have hrank : (⟨case_001304_rank.val, hlt⟩ : Fin numPairWords) = case_001304_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001304_rank.val, hlt⟩ case_001304_mask =
        case_001304_seq := by
    simpa [hrank] using case_001304_seqAtRank
  simp [SourceChecks, hseq, case_001304_support,
    checkTranslationConstraintSource, case_001304_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001304_rows :
    OppOneMinusVarFirstRows case_001304_support case_001304_rank.val case_001304_mask := by
  intro hlt
  have hrank : (⟨case_001304_rank.val, hlt⟩ : Fin numPairWords) = case_001304_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001304_rank.val, hlt⟩ case_001304_mask =
        case_001304_seq := by
    simpa [hrank] using case_001304_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001304_rank.val, hlt⟩ case_001304_mask =
        case_001304_b := by
    simpa [hrank] using case_001304_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001304_support case_001304_rank.val hlt
          case_001304_mask = case_001304_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001304_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001304_support case_001304_rank.val hlt
          case_001304_mask = case_001304_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001304_secondLine_eq]
  have case_001304_rowFirst :
      OppPosRow (FirstLineAt case_001304_support case_001304_rank.val hlt case_001304_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001304_firstLine, OppPosRow]
  have case_001304_fixedSecond :
      FixedRow (SecondLineAt case_001304_support case_001304_rank.val hlt case_001304_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001304_secondLine, FixedRow]
  exact ⟨case_001304_rowFirst, case_001304_fixedSecond⟩

private theorem case_001304_existsRows :
    ExistsOppOneMinusVarFirstRows case_001304_rank.val case_001304_mask :=
  ⟨case_001304_support, case_001304_sourceAgrees, case_001304_rows⟩

private theorem case_001304_covered :
    RowPropertyParametricCovered case_001304_rank.val case_001304_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001304_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001305_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001305_mask : SignMask := ⟨30, by decide⟩
private def case_001305_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001305_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001305_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001305_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (20/9) }
private def case_001305_firstLine : StrictLin2 := { a := (-74/55), b := (74/55), c := (-344/165) }
private def case_001305_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001305_rankWord :
    rankPairWord? case_001305_word = some case_001305_rank := by
  decide

private theorem case_001305_unrank :
    unrankPairWord case_001305_rank = case_001305_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001305_word case_001305_rank).1
    case_001305_rankWord |>.symm

private theorem case_001305_seqChoice :
    translationChoiceSeq case_001305_word case_001305_mask = case_001305_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001305_seqAtRank :
    translationSeqAtRankMask case_001305_rank case_001305_mask = case_001305_seq := by
  rw [translationSeqAtRankMask, case_001305_unrank]
  exact case_001305_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001305_bAtRank :
    translationBAtRankMask case_001305_rank case_001305_mask = case_001305_b := by
  rw [translationBAtRankMask, case_001305_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001305_b, case_001305_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001305_firstLine_eq :
    case_001305_support.firstLine case_001305_seq case_001305_b = case_001305_firstLine := by
  norm_num [case_001305_firstLine, case_001305_support, case_001305_seq, case_001305_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001305_secondLine_eq :
    case_001305_support.secondLine case_001305_seq case_001305_b = case_001305_secondLine := by
  norm_num [case_001305_secondLine, case_001305_support, case_001305_seq, case_001305_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001305_sourceAgrees :
    SourceAgrees case_001305_support case_001305_rank.val case_001305_mask := by
  intro hlt
  have hrank : (⟨case_001305_rank.val, hlt⟩ : Fin numPairWords) = case_001305_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001305_rank.val, hlt⟩ case_001305_mask =
        case_001305_seq := by
    simpa [hrank] using case_001305_seqAtRank
  simp [SourceChecks, hseq, case_001305_support,
    checkTranslationConstraintSource, case_001305_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001305_rows :
    OppOneMinusVarFirstRows case_001305_support case_001305_rank.val case_001305_mask := by
  intro hlt
  have hrank : (⟨case_001305_rank.val, hlt⟩ : Fin numPairWords) = case_001305_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001305_rank.val, hlt⟩ case_001305_mask =
        case_001305_seq := by
    simpa [hrank] using case_001305_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001305_rank.val, hlt⟩ case_001305_mask =
        case_001305_b := by
    simpa [hrank] using case_001305_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001305_support case_001305_rank.val hlt
          case_001305_mask = case_001305_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001305_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001305_support case_001305_rank.val hlt
          case_001305_mask = case_001305_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001305_secondLine_eq]
  have case_001305_rowFirst :
      OppPosRow (FirstLineAt case_001305_support case_001305_rank.val hlt case_001305_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001305_firstLine, OppPosRow]
  have case_001305_fixedSecond :
      FixedRow (SecondLineAt case_001305_support case_001305_rank.val hlt case_001305_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001305_secondLine, FixedRow]
  exact ⟨case_001305_rowFirst, case_001305_fixedSecond⟩

private theorem case_001305_existsRows :
    ExistsOppOneMinusVarFirstRows case_001305_rank.val case_001305_mask :=
  ⟨case_001305_support, case_001305_sourceAgrees, case_001305_rows⟩

private theorem case_001305_covered :
    RowPropertyParametricCovered case_001305_rank.val case_001305_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001305_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001306_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001306_mask : SignMask := ⟨31, by decide⟩
private def case_001306_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001306_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001306_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001306_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (20/9) }
private def case_001306_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001306_secondLine : StrictLin2 := { a := (-37/390), b := (-37/390), c := (-17/117) }

private theorem case_001306_rankWord :
    rankPairWord? case_001306_word = some case_001306_rank := by
  decide

private theorem case_001306_unrank :
    unrankPairWord case_001306_rank = case_001306_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001306_word case_001306_rank).1
    case_001306_rankWord |>.symm

private theorem case_001306_seqChoice :
    translationChoiceSeq case_001306_word case_001306_mask = case_001306_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001306_seqAtRank :
    translationSeqAtRankMask case_001306_rank case_001306_mask = case_001306_seq := by
  rw [translationSeqAtRankMask, case_001306_unrank]
  exact case_001306_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001306_bAtRank :
    translationBAtRankMask case_001306_rank case_001306_mask = case_001306_b := by
  rw [translationBAtRankMask, case_001306_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001306_b, case_001306_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001306_firstLine_eq :
    case_001306_support.firstLine case_001306_seq case_001306_b = case_001306_firstLine := by
  norm_num [case_001306_firstLine, case_001306_support, case_001306_seq, case_001306_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001306_secondLine_eq :
    case_001306_support.secondLine case_001306_seq case_001306_b = case_001306_secondLine := by
  norm_num [case_001306_secondLine, case_001306_support, case_001306_seq, case_001306_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001306_sourceAgrees :
    SourceAgrees case_001306_support case_001306_rank.val case_001306_mask := by
  intro hlt
  have hrank : (⟨case_001306_rank.val, hlt⟩ : Fin numPairWords) = case_001306_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001306_rank.val, hlt⟩ case_001306_mask =
        case_001306_seq := by
    simpa [hrank] using case_001306_seqAtRank
  simp [SourceChecks, hseq, case_001306_support,
    checkTranslationConstraintSource, case_001306_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001306_rows :
    EqEqPosVarSecondRows case_001306_support case_001306_rank.val case_001306_mask := by
  intro hlt
  have hrank : (⟨case_001306_rank.val, hlt⟩ : Fin numPairWords) = case_001306_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001306_rank.val, hlt⟩ case_001306_mask =
        case_001306_seq := by
    simpa [hrank] using case_001306_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001306_rank.val, hlt⟩ case_001306_mask =
        case_001306_b := by
    simpa [hrank] using case_001306_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001306_support case_001306_rank.val hlt
          case_001306_mask = case_001306_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001306_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001306_support case_001306_rank.val hlt
          case_001306_mask = case_001306_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001306_secondLine_eq]
  have case_001306_fixedFirst :
      FixedRow (FirstLineAt case_001306_support case_001306_rank.val hlt case_001306_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001306_firstLine, FixedRow]
  have case_001306_rowSecond :
      EqEqPosRow (SecondLineAt case_001306_support case_001306_rank.val hlt case_001306_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001306_secondLine, EqEqPosRow]
  exact ⟨case_001306_fixedFirst, case_001306_rowSecond⟩

private theorem case_001306_existsRows :
    ExistsEqEqPosVarSecondRows case_001306_rank.val case_001306_mask :=
  ⟨case_001306_support, case_001306_sourceAgrees, case_001306_rows⟩

private theorem case_001306_covered :
    RowPropertyParametricCovered case_001306_rank.val case_001306_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001306_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001307_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001307_mask : SignMask := ⟨45, by decide⟩
private def case_001307_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001307_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001307_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001307_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_001307_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_001307_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001307_rankWord :
    rankPairWord? case_001307_word = some case_001307_rank := by
  decide

private theorem case_001307_unrank :
    unrankPairWord case_001307_rank = case_001307_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001307_word case_001307_rank).1
    case_001307_rankWord |>.symm

private theorem case_001307_seqChoice :
    translationChoiceSeq case_001307_word case_001307_mask = case_001307_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001307_seqAtRank :
    translationSeqAtRankMask case_001307_rank case_001307_mask = case_001307_seq := by
  rw [translationSeqAtRankMask, case_001307_unrank]
  exact case_001307_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001307_bAtRank :
    translationBAtRankMask case_001307_rank case_001307_mask = case_001307_b := by
  rw [translationBAtRankMask, case_001307_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001307_b, case_001307_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001307_firstLine_eq :
    case_001307_support.firstLine case_001307_seq case_001307_b = case_001307_firstLine := by
  norm_num [case_001307_firstLine, case_001307_support, case_001307_seq, case_001307_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001307_secondLine_eq :
    case_001307_support.secondLine case_001307_seq case_001307_b = case_001307_secondLine := by
  norm_num [case_001307_secondLine, case_001307_support, case_001307_seq, case_001307_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001307_sourceAgrees :
    SourceAgrees case_001307_support case_001307_rank.val case_001307_mask := by
  intro hlt
  have hrank : (⟨case_001307_rank.val, hlt⟩ : Fin numPairWords) = case_001307_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001307_rank.val, hlt⟩ case_001307_mask =
        case_001307_seq := by
    simpa [hrank] using case_001307_seqAtRank
  simp [SourceChecks, hseq, case_001307_support,
    checkTranslationConstraintSource, case_001307_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001307_rows :
    OppMinusOneVarFirstRows case_001307_support case_001307_rank.val case_001307_mask := by
  intro hlt
  have hrank : (⟨case_001307_rank.val, hlt⟩ : Fin numPairWords) = case_001307_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001307_rank.val, hlt⟩ case_001307_mask =
        case_001307_seq := by
    simpa [hrank] using case_001307_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001307_rank.val, hlt⟩ case_001307_mask =
        case_001307_b := by
    simpa [hrank] using case_001307_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001307_support case_001307_rank.val hlt
          case_001307_mask = case_001307_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001307_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001307_support case_001307_rank.val hlt
          case_001307_mask = case_001307_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001307_secondLine_eq]
  have case_001307_rowFirst :
      OppNegRow (FirstLineAt case_001307_support case_001307_rank.val hlt case_001307_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001307_firstLine, OppNegRow]
  have case_001307_fixedSecond :
      FixedRow (SecondLineAt case_001307_support case_001307_rank.val hlt case_001307_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001307_secondLine, FixedRow]
  exact ⟨case_001307_rowFirst, case_001307_fixedSecond⟩

private theorem case_001307_existsRows :
    ExistsOppMinusOneVarFirstRows case_001307_rank.val case_001307_mask :=
  ⟨case_001307_support, case_001307_sourceAgrees, case_001307_rows⟩

private theorem case_001307_covered :
    RowPropertyParametricCovered case_001307_rank.val case_001307_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001307_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001308_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001308_mask : SignMask := ⟨47, by decide⟩
private def case_001308_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001308_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001308_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001308_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (20/9) }
private def case_001308_firstLine : StrictLin2 := { a := 1, b := -1, c := (-35/13) }
private def case_001308_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001308_rankWord :
    rankPairWord? case_001308_word = some case_001308_rank := by
  decide

private theorem case_001308_unrank :
    unrankPairWord case_001308_rank = case_001308_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001308_word case_001308_rank).1
    case_001308_rankWord |>.symm

private theorem case_001308_seqChoice :
    translationChoiceSeq case_001308_word case_001308_mask = case_001308_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001308_seqAtRank :
    translationSeqAtRankMask case_001308_rank case_001308_mask = case_001308_seq := by
  rw [translationSeqAtRankMask, case_001308_unrank]
  exact case_001308_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001308_bAtRank :
    translationBAtRankMask case_001308_rank case_001308_mask = case_001308_b := by
  rw [translationBAtRankMask, case_001308_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001308_b, case_001308_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001308_firstLine_eq :
    case_001308_support.firstLine case_001308_seq case_001308_b = case_001308_firstLine := by
  norm_num [case_001308_firstLine, case_001308_support, case_001308_seq, case_001308_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001308_secondLine_eq :
    case_001308_support.secondLine case_001308_seq case_001308_b = case_001308_secondLine := by
  norm_num [case_001308_secondLine, case_001308_support, case_001308_seq, case_001308_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001308_sourceAgrees :
    SourceAgrees case_001308_support case_001308_rank.val case_001308_mask := by
  intro hlt
  have hrank : (⟨case_001308_rank.val, hlt⟩ : Fin numPairWords) = case_001308_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001308_rank.val, hlt⟩ case_001308_mask =
        case_001308_seq := by
    simpa [hrank] using case_001308_seqAtRank
  simp [SourceChecks, hseq, case_001308_support,
    checkTranslationConstraintSource, case_001308_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001308_rows :
    OppMinusOneVarFirstRows case_001308_support case_001308_rank.val case_001308_mask := by
  intro hlt
  have hrank : (⟨case_001308_rank.val, hlt⟩ : Fin numPairWords) = case_001308_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001308_rank.val, hlt⟩ case_001308_mask =
        case_001308_seq := by
    simpa [hrank] using case_001308_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001308_rank.val, hlt⟩ case_001308_mask =
        case_001308_b := by
    simpa [hrank] using case_001308_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001308_support case_001308_rank.val hlt
          case_001308_mask = case_001308_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001308_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001308_support case_001308_rank.val hlt
          case_001308_mask = case_001308_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001308_secondLine_eq]
  have case_001308_rowFirst :
      OppNegRow (FirstLineAt case_001308_support case_001308_rank.val hlt case_001308_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001308_firstLine, OppNegRow]
  have case_001308_fixedSecond :
      FixedRow (SecondLineAt case_001308_support case_001308_rank.val hlt case_001308_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001308_secondLine, FixedRow]
  exact ⟨case_001308_rowFirst, case_001308_fixedSecond⟩

private theorem case_001308_existsRows :
    ExistsOppMinusOneVarFirstRows case_001308_rank.val case_001308_mask :=
  ⟨case_001308_support, case_001308_sourceAgrees, case_001308_rows⟩

private theorem case_001308_covered :
    RowPropertyParametricCovered case_001308_rank.val case_001308_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001308_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001309_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001309_mask : SignMask := ⟨54, by decide⟩
private def case_001309_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001309_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001309_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001309_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (116/9) }
private def case_001309_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001309_secondLine : StrictLin2 := { a := (-13/18), b := (-13/18), c := (-31/27) }

private theorem case_001309_rankWord :
    rankPairWord? case_001309_word = some case_001309_rank := by
  decide

private theorem case_001309_unrank :
    unrankPairWord case_001309_rank = case_001309_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001309_word case_001309_rank).1
    case_001309_rankWord |>.symm

private theorem case_001309_seqChoice :
    translationChoiceSeq case_001309_word case_001309_mask = case_001309_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001309_seqAtRank :
    translationSeqAtRankMask case_001309_rank case_001309_mask = case_001309_seq := by
  rw [translationSeqAtRankMask, case_001309_unrank]
  exact case_001309_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001309_bAtRank :
    translationBAtRankMask case_001309_rank case_001309_mask = case_001309_b := by
  rw [translationBAtRankMask, case_001309_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001309_b, case_001309_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001309_firstLine_eq :
    case_001309_support.firstLine case_001309_seq case_001309_b = case_001309_firstLine := by
  norm_num [case_001309_firstLine, case_001309_support, case_001309_seq, case_001309_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001309_secondLine_eq :
    case_001309_support.secondLine case_001309_seq case_001309_b = case_001309_secondLine := by
  norm_num [case_001309_secondLine, case_001309_support, case_001309_seq, case_001309_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001309_sourceAgrees :
    SourceAgrees case_001309_support case_001309_rank.val case_001309_mask := by
  intro hlt
  have hrank : (⟨case_001309_rank.val, hlt⟩ : Fin numPairWords) = case_001309_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001309_rank.val, hlt⟩ case_001309_mask =
        case_001309_seq := by
    simpa [hrank] using case_001309_seqAtRank
  simp [SourceChecks, hseq, case_001309_support,
    checkTranslationConstraintSource, case_001309_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001309_rows :
    EqEqPosVarSecondRows case_001309_support case_001309_rank.val case_001309_mask := by
  intro hlt
  have hrank : (⟨case_001309_rank.val, hlt⟩ : Fin numPairWords) = case_001309_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001309_rank.val, hlt⟩ case_001309_mask =
        case_001309_seq := by
    simpa [hrank] using case_001309_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001309_rank.val, hlt⟩ case_001309_mask =
        case_001309_b := by
    simpa [hrank] using case_001309_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001309_support case_001309_rank.val hlt
          case_001309_mask = case_001309_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001309_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001309_support case_001309_rank.val hlt
          case_001309_mask = case_001309_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001309_secondLine_eq]
  have case_001309_fixedFirst :
      FixedRow (FirstLineAt case_001309_support case_001309_rank.val hlt case_001309_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001309_firstLine, FixedRow]
  have case_001309_rowSecond :
      EqEqPosRow (SecondLineAt case_001309_support case_001309_rank.val hlt case_001309_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001309_secondLine, EqEqPosRow]
  exact ⟨case_001309_fixedFirst, case_001309_rowSecond⟩

private theorem case_001309_existsRows :
    ExistsEqEqPosVarSecondRows case_001309_rank.val case_001309_mask :=
  ⟨case_001309_support, case_001309_sourceAgrees, case_001309_rows⟩

private theorem case_001309_covered :
    RowPropertyParametricCovered case_001309_rank.val case_001309_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001309_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001310_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001310_mask : SignMask := ⟨55, by decide⟩
private def case_001310_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001310_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001310_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001310_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (116/9) }
private def case_001310_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001310_secondLine : StrictLin2 := { a := (-13/154), b := (-13/154), c := (-178/231) }

private theorem case_001310_rankWord :
    rankPairWord? case_001310_word = some case_001310_rank := by
  decide

private theorem case_001310_unrank :
    unrankPairWord case_001310_rank = case_001310_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001310_word case_001310_rank).1
    case_001310_rankWord |>.symm

private theorem case_001310_seqChoice :
    translationChoiceSeq case_001310_word case_001310_mask = case_001310_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001310_seqAtRank :
    translationSeqAtRankMask case_001310_rank case_001310_mask = case_001310_seq := by
  rw [translationSeqAtRankMask, case_001310_unrank]
  exact case_001310_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001310_bAtRank :
    translationBAtRankMask case_001310_rank case_001310_mask = case_001310_b := by
  rw [translationBAtRankMask, case_001310_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001310_b, case_001310_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001310_firstLine_eq :
    case_001310_support.firstLine case_001310_seq case_001310_b = case_001310_firstLine := by
  norm_num [case_001310_firstLine, case_001310_support, case_001310_seq, case_001310_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001310_secondLine_eq :
    case_001310_support.secondLine case_001310_seq case_001310_b = case_001310_secondLine := by
  norm_num [case_001310_secondLine, case_001310_support, case_001310_seq, case_001310_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001310_sourceAgrees :
    SourceAgrees case_001310_support case_001310_rank.val case_001310_mask := by
  intro hlt
  have hrank : (⟨case_001310_rank.val, hlt⟩ : Fin numPairWords) = case_001310_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001310_rank.val, hlt⟩ case_001310_mask =
        case_001310_seq := by
    simpa [hrank] using case_001310_seqAtRank
  simp [SourceChecks, hseq, case_001310_support,
    checkTranslationConstraintSource, case_001310_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001310_rows :
    EqEqPosVarSecondRows case_001310_support case_001310_rank.val case_001310_mask := by
  intro hlt
  have hrank : (⟨case_001310_rank.val, hlt⟩ : Fin numPairWords) = case_001310_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001310_rank.val, hlt⟩ case_001310_mask =
        case_001310_seq := by
    simpa [hrank] using case_001310_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001310_rank.val, hlt⟩ case_001310_mask =
        case_001310_b := by
    simpa [hrank] using case_001310_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001310_support case_001310_rank.val hlt
          case_001310_mask = case_001310_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001310_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001310_support case_001310_rank.val hlt
          case_001310_mask = case_001310_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001310_secondLine_eq]
  have case_001310_fixedFirst :
      FixedRow (FirstLineAt case_001310_support case_001310_rank.val hlt case_001310_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001310_firstLine, FixedRow]
  have case_001310_rowSecond :
      EqEqPosRow (SecondLineAt case_001310_support case_001310_rank.val hlt case_001310_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001310_secondLine, EqEqPosRow]
  exact ⟨case_001310_fixedFirst, case_001310_rowSecond⟩

private theorem case_001310_existsRows :
    ExistsEqEqPosVarSecondRows case_001310_rank.val case_001310_mask :=
  ⟨case_001310_support, case_001310_sourceAgrees, case_001310_rows⟩

private theorem case_001310_covered :
    RowPropertyParametricCovered case_001310_rank.val case_001310_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001310_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001311_rank : Fin numPairWords := ⟨872, by decide⟩
private def case_001311_mask : SignMask := ⟨63, by decide⟩
private def case_001311_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001311_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001311_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001311_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (68/9) }
private def case_001311_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001311_secondLine : StrictLin2 := { a := (-25/106), b := (-25/106), c := (-86/159) }

private theorem case_001311_rankWord :
    rankPairWord? case_001311_word = some case_001311_rank := by
  decide

private theorem case_001311_unrank :
    unrankPairWord case_001311_rank = case_001311_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001311_word case_001311_rank).1
    case_001311_rankWord |>.symm

private theorem case_001311_seqChoice :
    translationChoiceSeq case_001311_word case_001311_mask = case_001311_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001311_seqAtRank :
    translationSeqAtRankMask case_001311_rank case_001311_mask = case_001311_seq := by
  rw [translationSeqAtRankMask, case_001311_unrank]
  exact case_001311_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001311_bAtRank :
    translationBAtRankMask case_001311_rank case_001311_mask = case_001311_b := by
  rw [translationBAtRankMask, case_001311_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001311_b, case_001311_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001311_firstLine_eq :
    case_001311_support.firstLine case_001311_seq case_001311_b = case_001311_firstLine := by
  norm_num [case_001311_firstLine, case_001311_support, case_001311_seq, case_001311_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001311_secondLine_eq :
    case_001311_support.secondLine case_001311_seq case_001311_b = case_001311_secondLine := by
  norm_num [case_001311_secondLine, case_001311_support, case_001311_seq, case_001311_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001311_sourceAgrees :
    SourceAgrees case_001311_support case_001311_rank.val case_001311_mask := by
  intro hlt
  have hrank : (⟨case_001311_rank.val, hlt⟩ : Fin numPairWords) = case_001311_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001311_rank.val, hlt⟩ case_001311_mask =
        case_001311_seq := by
    simpa [hrank] using case_001311_seqAtRank
  simp [SourceChecks, hseq, case_001311_support,
    checkTranslationConstraintSource, case_001311_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001311_rows :
    EqEqPosVarSecondRows case_001311_support case_001311_rank.val case_001311_mask := by
  intro hlt
  have hrank : (⟨case_001311_rank.val, hlt⟩ : Fin numPairWords) = case_001311_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001311_rank.val, hlt⟩ case_001311_mask =
        case_001311_seq := by
    simpa [hrank] using case_001311_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001311_rank.val, hlt⟩ case_001311_mask =
        case_001311_b := by
    simpa [hrank] using case_001311_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001311_support case_001311_rank.val hlt
          case_001311_mask = case_001311_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001311_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001311_support case_001311_rank.val hlt
          case_001311_mask = case_001311_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001311_secondLine_eq]
  have case_001311_fixedFirst :
      FixedRow (FirstLineAt case_001311_support case_001311_rank.val hlt case_001311_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001311_firstLine, FixedRow]
  have case_001311_rowSecond :
      EqEqPosRow (SecondLineAt case_001311_support case_001311_rank.val hlt case_001311_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001311_secondLine, EqEqPosRow]
  exact ⟨case_001311_fixedFirst, case_001311_rowSecond⟩

private theorem case_001311_existsRows :
    ExistsEqEqPosVarSecondRows case_001311_rank.val case_001311_mask :=
  ⟨case_001311_support, case_001311_sourceAgrees, case_001311_rows⟩

private theorem case_001311_covered :
    RowPropertyParametricCovered case_001311_rank.val case_001311_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001311_existsRows

inductive Group040Covered : Nat -> SignMask -> Prop
  | case_001280 : Group040Covered case_001280_rank.val case_001280_mask
  | case_001281 : Group040Covered case_001281_rank.val case_001281_mask
  | case_001282 : Group040Covered case_001282_rank.val case_001282_mask
  | case_001283 : Group040Covered case_001283_rank.val case_001283_mask
  | case_001284 : Group040Covered case_001284_rank.val case_001284_mask
  | case_001285 : Group040Covered case_001285_rank.val case_001285_mask
  | case_001286 : Group040Covered case_001286_rank.val case_001286_mask
  | case_001287 : Group040Covered case_001287_rank.val case_001287_mask
  | case_001288 : Group040Covered case_001288_rank.val case_001288_mask
  | case_001289 : Group040Covered case_001289_rank.val case_001289_mask
  | case_001290 : Group040Covered case_001290_rank.val case_001290_mask
  | case_001291 : Group040Covered case_001291_rank.val case_001291_mask
  | case_001292 : Group040Covered case_001292_rank.val case_001292_mask
  | case_001293 : Group040Covered case_001293_rank.val case_001293_mask
  | case_001294 : Group040Covered case_001294_rank.val case_001294_mask
  | case_001295 : Group040Covered case_001295_rank.val case_001295_mask
  | case_001296 : Group040Covered case_001296_rank.val case_001296_mask
  | case_001297 : Group040Covered case_001297_rank.val case_001297_mask
  | case_001298 : Group040Covered case_001298_rank.val case_001298_mask
  | case_001299 : Group040Covered case_001299_rank.val case_001299_mask
  | case_001300 : Group040Covered case_001300_rank.val case_001300_mask
  | case_001301 : Group040Covered case_001301_rank.val case_001301_mask
  | case_001302 : Group040Covered case_001302_rank.val case_001302_mask
  | case_001303 : Group040Covered case_001303_rank.val case_001303_mask
  | case_001304 : Group040Covered case_001304_rank.val case_001304_mask
  | case_001305 : Group040Covered case_001305_rank.val case_001305_mask
  | case_001306 : Group040Covered case_001306_rank.val case_001306_mask
  | case_001307 : Group040Covered case_001307_rank.val case_001307_mask
  | case_001308 : Group040Covered case_001308_rank.val case_001308_mask
  | case_001309 : Group040Covered case_001309_rank.val case_001309_mask
  | case_001310 : Group040Covered case_001310_rank.val case_001310_mask
  | case_001311 : Group040Covered case_001311_rank.val case_001311_mask

theorem Group040GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group040Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001280 =>
      exact RowPropertyParametricCovered.kills case_001280_covered
  | case_001281 =>
      exact RowPropertyParametricCovered.kills case_001281_covered
  | case_001282 =>
      exact RowPropertyParametricCovered.kills case_001282_covered
  | case_001283 =>
      exact RowPropertyParametricCovered.kills case_001283_covered
  | case_001284 =>
      exact RowPropertyParametricCovered.kills case_001284_covered
  | case_001285 =>
      exact RowPropertyParametricCovered.kills case_001285_covered
  | case_001286 =>
      exact RowPropertyParametricCovered.kills case_001286_covered
  | case_001287 =>
      exact RowPropertyParametricCovered.kills case_001287_covered
  | case_001288 =>
      exact RowPropertyParametricCovered.kills case_001288_covered
  | case_001289 =>
      exact RowPropertyParametricCovered.kills case_001289_covered
  | case_001290 =>
      exact RowPropertyParametricCovered.kills case_001290_covered
  | case_001291 =>
      exact RowPropertyParametricCovered.kills case_001291_covered
  | case_001292 =>
      exact RowPropertyParametricCovered.kills case_001292_covered
  | case_001293 =>
      exact RowPropertyParametricCovered.kills case_001293_covered
  | case_001294 =>
      exact RowPropertyParametricCovered.kills case_001294_covered
  | case_001295 =>
      exact RowPropertyParametricCovered.kills case_001295_covered
  | case_001296 =>
      exact RowPropertyParametricCovered.kills case_001296_covered
  | case_001297 =>
      exact RowPropertyParametricCovered.kills case_001297_covered
  | case_001298 =>
      exact RowPropertyParametricCovered.kills case_001298_covered
  | case_001299 =>
      exact RowPropertyParametricCovered.kills case_001299_covered
  | case_001300 =>
      exact RowPropertyParametricCovered.kills case_001300_covered
  | case_001301 =>
      exact RowPropertyParametricCovered.kills case_001301_covered
  | case_001302 =>
      exact RowPropertyParametricCovered.kills case_001302_covered
  | case_001303 =>
      exact RowPropertyParametricCovered.kills case_001303_covered
  | case_001304 =>
      exact RowPropertyParametricCovered.kills case_001304_covered
  | case_001305 =>
      exact RowPropertyParametricCovered.kills case_001305_covered
  | case_001306 =>
      exact RowPropertyParametricCovered.kills case_001306_covered
  | case_001307 =>
      exact RowPropertyParametricCovered.kills case_001307_covered
  | case_001308 =>
      exact RowPropertyParametricCovered.kills case_001308_covered
  | case_001309 =>
      exact RowPropertyParametricCovered.kills case_001309_covered
  | case_001310 =>
      exact RowPropertyParametricCovered.kills case_001310_covered
  | case_001311 =>
      exact RowPropertyParametricCovered.kills case_001311_covered

theorem Group040_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group040
