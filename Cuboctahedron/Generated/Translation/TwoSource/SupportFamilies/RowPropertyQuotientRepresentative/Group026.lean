import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group026

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
private def case_000832_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000832_mask : SignMask := ⟨31, by decide⟩
private def case_000832_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000832_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000832_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000832_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000832_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000832_secondLine : StrictLin2 := { a := (-29/390), b := (-29/390), c := (-7/15) }

private theorem case_000832_rankWord :
    rankPairWord? case_000832_word = some case_000832_rank := by
  decide

private theorem case_000832_unrank :
    unrankPairWord case_000832_rank = case_000832_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000832_word case_000832_rank).1
    case_000832_rankWord |>.symm

private theorem case_000832_seqChoice :
    translationChoiceSeq case_000832_word case_000832_mask = case_000832_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000832_seqAtRank :
    translationSeqAtRankMask case_000832_rank case_000832_mask = case_000832_seq := by
  rw [translationSeqAtRankMask, case_000832_unrank]
  exact case_000832_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000832_bAtRank :
    translationBAtRankMask case_000832_rank case_000832_mask = case_000832_b := by
  rw [translationBAtRankMask, case_000832_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000832_b, case_000832_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000832_firstLine_eq :
    case_000832_support.firstLine case_000832_seq case_000832_b = case_000832_firstLine := by
  norm_num [case_000832_firstLine, case_000832_support, case_000832_seq, case_000832_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000832_secondLine_eq :
    case_000832_support.secondLine case_000832_seq case_000832_b = case_000832_secondLine := by
  norm_num [case_000832_secondLine, case_000832_support, case_000832_seq, case_000832_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000832_sourceAgrees :
    SourceAgrees case_000832_support case_000832_rank.val case_000832_mask := by
  intro hlt
  have hrank : (⟨case_000832_rank.val, hlt⟩ : Fin numPairWords) = case_000832_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000832_rank.val, hlt⟩ case_000832_mask =
        case_000832_seq := by
    simpa [hrank] using case_000832_seqAtRank
  simp [SourceChecks, hseq, case_000832_support,
    checkTranslationConstraintSource, case_000832_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000832_rows :
    EqEqPosVarSecondRows case_000832_support case_000832_rank.val case_000832_mask := by
  intro hlt
  have hrank : (⟨case_000832_rank.val, hlt⟩ : Fin numPairWords) = case_000832_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000832_rank.val, hlt⟩ case_000832_mask =
        case_000832_seq := by
    simpa [hrank] using case_000832_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000832_rank.val, hlt⟩ case_000832_mask =
        case_000832_b := by
    simpa [hrank] using case_000832_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000832_support case_000832_rank.val hlt
          case_000832_mask = case_000832_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000832_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000832_support case_000832_rank.val hlt
          case_000832_mask = case_000832_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000832_secondLine_eq]
  have case_000832_fixedFirst :
      FixedRow (FirstLineAt case_000832_support case_000832_rank.val hlt case_000832_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000832_firstLine, FixedRow]
  have case_000832_rowSecond :
      EqEqPosRow (SecondLineAt case_000832_support case_000832_rank.val hlt case_000832_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000832_secondLine, EqEqPosRow]
  exact ⟨case_000832_fixedFirst, case_000832_rowSecond⟩

private theorem case_000832_existsRows :
    ExistsEqEqPosVarSecondRows case_000832_rank.val case_000832_mask :=
  ⟨case_000832_support, case_000832_sourceAgrees, case_000832_rows⟩

private theorem case_000832_covered :
    RowPropertyParametricCovered case_000832_rank.val case_000832_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000832_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000833_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000833_mask : SignMask := ⟨39, by decide⟩
private def case_000833_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000833_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000833_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000833_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (100/9) }
private def case_000833_firstLine : StrictLin2 := { a := (-2/51), b := (-2/51), c := (-32/17) }
private def case_000833_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000833_rankWord :
    rankPairWord? case_000833_word = some case_000833_rank := by
  decide

private theorem case_000833_unrank :
    unrankPairWord case_000833_rank = case_000833_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000833_word case_000833_rank).1
    case_000833_rankWord |>.symm

private theorem case_000833_seqChoice :
    translationChoiceSeq case_000833_word case_000833_mask = case_000833_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000833_seqAtRank :
    translationSeqAtRankMask case_000833_rank case_000833_mask = case_000833_seq := by
  rw [translationSeqAtRankMask, case_000833_unrank]
  exact case_000833_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000833_bAtRank :
    translationBAtRankMask case_000833_rank case_000833_mask = case_000833_b := by
  rw [translationBAtRankMask, case_000833_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000833_b, case_000833_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000833_firstLine_eq :
    case_000833_support.firstLine case_000833_seq case_000833_b = case_000833_firstLine := by
  norm_num [case_000833_firstLine, case_000833_support, case_000833_seq, case_000833_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000833_secondLine_eq :
    case_000833_support.secondLine case_000833_seq case_000833_b = case_000833_secondLine := by
  norm_num [case_000833_secondLine, case_000833_support, case_000833_seq, case_000833_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000833_sourceAgrees :
    SourceAgrees case_000833_support case_000833_rank.val case_000833_mask := by
  intro hlt
  have hrank : (⟨case_000833_rank.val, hlt⟩ : Fin numPairWords) = case_000833_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000833_rank.val, hlt⟩ case_000833_mask =
        case_000833_seq := by
    simpa [hrank] using case_000833_seqAtRank
  simp [SourceChecks, hseq, case_000833_support,
    checkTranslationConstraintSource, case_000833_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000833_rows :
    EqEqPosVarFirstRows case_000833_support case_000833_rank.val case_000833_mask := by
  intro hlt
  have hrank : (⟨case_000833_rank.val, hlt⟩ : Fin numPairWords) = case_000833_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000833_rank.val, hlt⟩ case_000833_mask =
        case_000833_seq := by
    simpa [hrank] using case_000833_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000833_rank.val, hlt⟩ case_000833_mask =
        case_000833_b := by
    simpa [hrank] using case_000833_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000833_support case_000833_rank.val hlt
          case_000833_mask = case_000833_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000833_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000833_support case_000833_rank.val hlt
          case_000833_mask = case_000833_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000833_secondLine_eq]
  have case_000833_rowFirst :
      EqEqPosRow (FirstLineAt case_000833_support case_000833_rank.val hlt case_000833_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000833_firstLine, EqEqPosRow]
  have case_000833_fixedSecond :
      FixedRow (SecondLineAt case_000833_support case_000833_rank.val hlt case_000833_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000833_secondLine, FixedRow]
  exact ⟨case_000833_rowFirst, case_000833_fixedSecond⟩

private theorem case_000833_existsRows :
    ExistsEqEqPosVarFirstRows case_000833_rank.val case_000833_mask :=
  ⟨case_000833_support, case_000833_sourceAgrees, case_000833_rows⟩

private theorem case_000833_covered :
    RowPropertyParametricCovered case_000833_rank.val case_000833_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000833_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000834_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000834_mask : SignMask := ⟨47, by decide⟩
private def case_000834_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000834_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000834_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000834_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000834_firstLine : StrictLin2 := { a := (-5/3), b := (-5/3), c := -7 }
private def case_000834_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000834_rankWord :
    rankPairWord? case_000834_word = some case_000834_rank := by
  decide

private theorem case_000834_unrank :
    unrankPairWord case_000834_rank = case_000834_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000834_word case_000834_rank).1
    case_000834_rankWord |>.symm

private theorem case_000834_seqChoice :
    translationChoiceSeq case_000834_word case_000834_mask = case_000834_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000834_seqAtRank :
    translationSeqAtRankMask case_000834_rank case_000834_mask = case_000834_seq := by
  rw [translationSeqAtRankMask, case_000834_unrank]
  exact case_000834_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000834_bAtRank :
    translationBAtRankMask case_000834_rank case_000834_mask = case_000834_b := by
  rw [translationBAtRankMask, case_000834_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000834_b, case_000834_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000834_firstLine_eq :
    case_000834_support.firstLine case_000834_seq case_000834_b = case_000834_firstLine := by
  norm_num [case_000834_firstLine, case_000834_support, case_000834_seq, case_000834_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000834_secondLine_eq :
    case_000834_support.secondLine case_000834_seq case_000834_b = case_000834_secondLine := by
  norm_num [case_000834_secondLine, case_000834_support, case_000834_seq, case_000834_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000834_sourceAgrees :
    SourceAgrees case_000834_support case_000834_rank.val case_000834_mask := by
  intro hlt
  have hrank : (⟨case_000834_rank.val, hlt⟩ : Fin numPairWords) = case_000834_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000834_rank.val, hlt⟩ case_000834_mask =
        case_000834_seq := by
    simpa [hrank] using case_000834_seqAtRank
  simp [SourceChecks, hseq, case_000834_support,
    checkTranslationConstraintSource, case_000834_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000834_rows :
    EqEqPosVarFirstRows case_000834_support case_000834_rank.val case_000834_mask := by
  intro hlt
  have hrank : (⟨case_000834_rank.val, hlt⟩ : Fin numPairWords) = case_000834_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000834_rank.val, hlt⟩ case_000834_mask =
        case_000834_seq := by
    simpa [hrank] using case_000834_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000834_rank.val, hlt⟩ case_000834_mask =
        case_000834_b := by
    simpa [hrank] using case_000834_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000834_support case_000834_rank.val hlt
          case_000834_mask = case_000834_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000834_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000834_support case_000834_rank.val hlt
          case_000834_mask = case_000834_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000834_secondLine_eq]
  have case_000834_rowFirst :
      EqEqPosRow (FirstLineAt case_000834_support case_000834_rank.val hlt case_000834_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000834_firstLine, EqEqPosRow]
  have case_000834_fixedSecond :
      FixedRow (SecondLineAt case_000834_support case_000834_rank.val hlt case_000834_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000834_secondLine, FixedRow]
  exact ⟨case_000834_rowFirst, case_000834_fixedSecond⟩

private theorem case_000834_existsRows :
    ExistsEqEqPosVarFirstRows case_000834_rank.val case_000834_mask :=
  ⟨case_000834_support, case_000834_sourceAgrees, case_000834_rows⟩

private theorem case_000834_covered :
    RowPropertyParametricCovered case_000834_rank.val case_000834_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000834_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000835_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000835_mask : SignMask := ⟨55, by decide⟩
private def case_000835_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000835_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000835_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000835_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000835_firstLine : StrictLin2 := { a := (-5/3), b := (-5/3), c := -7 }
private def case_000835_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000835_rankWord :
    rankPairWord? case_000835_word = some case_000835_rank := by
  decide

private theorem case_000835_unrank :
    unrankPairWord case_000835_rank = case_000835_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000835_word case_000835_rank).1
    case_000835_rankWord |>.symm

private theorem case_000835_seqChoice :
    translationChoiceSeq case_000835_word case_000835_mask = case_000835_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000835_seqAtRank :
    translationSeqAtRankMask case_000835_rank case_000835_mask = case_000835_seq := by
  rw [translationSeqAtRankMask, case_000835_unrank]
  exact case_000835_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000835_bAtRank :
    translationBAtRankMask case_000835_rank case_000835_mask = case_000835_b := by
  rw [translationBAtRankMask, case_000835_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000835_b, case_000835_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000835_firstLine_eq :
    case_000835_support.firstLine case_000835_seq case_000835_b = case_000835_firstLine := by
  norm_num [case_000835_firstLine, case_000835_support, case_000835_seq, case_000835_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000835_secondLine_eq :
    case_000835_support.secondLine case_000835_seq case_000835_b = case_000835_secondLine := by
  norm_num [case_000835_secondLine, case_000835_support, case_000835_seq, case_000835_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000835_sourceAgrees :
    SourceAgrees case_000835_support case_000835_rank.val case_000835_mask := by
  intro hlt
  have hrank : (⟨case_000835_rank.val, hlt⟩ : Fin numPairWords) = case_000835_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000835_rank.val, hlt⟩ case_000835_mask =
        case_000835_seq := by
    simpa [hrank] using case_000835_seqAtRank
  simp [SourceChecks, hseq, case_000835_support,
    checkTranslationConstraintSource, case_000835_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000835_rows :
    EqEqPosVarFirstRows case_000835_support case_000835_rank.val case_000835_mask := by
  intro hlt
  have hrank : (⟨case_000835_rank.val, hlt⟩ : Fin numPairWords) = case_000835_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000835_rank.val, hlt⟩ case_000835_mask =
        case_000835_seq := by
    simpa [hrank] using case_000835_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000835_rank.val, hlt⟩ case_000835_mask =
        case_000835_b := by
    simpa [hrank] using case_000835_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000835_support case_000835_rank.val hlt
          case_000835_mask = case_000835_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000835_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000835_support case_000835_rank.val hlt
          case_000835_mask = case_000835_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000835_secondLine_eq]
  have case_000835_rowFirst :
      EqEqPosRow (FirstLineAt case_000835_support case_000835_rank.val hlt case_000835_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000835_firstLine, EqEqPosRow]
  have case_000835_fixedSecond :
      FixedRow (SecondLineAt case_000835_support case_000835_rank.val hlt case_000835_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000835_secondLine, FixedRow]
  exact ⟨case_000835_rowFirst, case_000835_fixedSecond⟩

private theorem case_000835_existsRows :
    ExistsEqEqPosVarFirstRows case_000835_rank.val case_000835_mask :=
  ⟨case_000835_support, case_000835_sourceAgrees, case_000835_rows⟩

private theorem case_000835_covered :
    RowPropertyParametricCovered case_000835_rank.val case_000835_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000835_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000836_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000836_mask : SignMask := ⟨7, by decide⟩
private def case_000836_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000836_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000836_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000836_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (332/27) }
private def case_000836_firstLine : StrictLin2 := { a := 1, b := 1, c := (-225/59) }
private def case_000836_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000836_rankWord :
    rankPairWord? case_000836_word = some case_000836_rank := by
  decide

private theorem case_000836_unrank :
    unrankPairWord case_000836_rank = case_000836_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000836_word case_000836_rank).1
    case_000836_rankWord |>.symm

private theorem case_000836_seqChoice :
    translationChoiceSeq case_000836_word case_000836_mask = case_000836_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000836_seqAtRank :
    translationSeqAtRankMask case_000836_rank case_000836_mask = case_000836_seq := by
  rw [translationSeqAtRankMask, case_000836_unrank]
  exact case_000836_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000836_bAtRank :
    translationBAtRankMask case_000836_rank case_000836_mask = case_000836_b := by
  rw [translationBAtRankMask, case_000836_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000836_b, case_000836_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000836_firstLine_eq :
    case_000836_support.firstLine case_000836_seq case_000836_b = case_000836_firstLine := by
  norm_num [case_000836_firstLine, case_000836_support, case_000836_seq, case_000836_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000836_secondLine_eq :
    case_000836_support.secondLine case_000836_seq case_000836_b = case_000836_secondLine := by
  norm_num [case_000836_secondLine, case_000836_support, case_000836_seq, case_000836_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000836_sourceAgrees :
    SourceAgrees case_000836_support case_000836_rank.val case_000836_mask := by
  intro hlt
  have hrank : (⟨case_000836_rank.val, hlt⟩ : Fin numPairWords) = case_000836_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000836_rank.val, hlt⟩ case_000836_mask =
        case_000836_seq := by
    simpa [hrank] using case_000836_seqAtRank
  simp [SourceChecks, hseq, case_000836_support,
    checkTranslationConstraintSource, case_000836_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000836_rows :
    EqEqNegVarFirstRows case_000836_support case_000836_rank.val case_000836_mask := by
  intro hlt
  have hrank : (⟨case_000836_rank.val, hlt⟩ : Fin numPairWords) = case_000836_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000836_rank.val, hlt⟩ case_000836_mask =
        case_000836_seq := by
    simpa [hrank] using case_000836_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000836_rank.val, hlt⟩ case_000836_mask =
        case_000836_b := by
    simpa [hrank] using case_000836_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000836_support case_000836_rank.val hlt
          case_000836_mask = case_000836_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000836_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000836_support case_000836_rank.val hlt
          case_000836_mask = case_000836_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000836_secondLine_eq]
  have case_000836_rowFirst :
      EqEqNegRow (FirstLineAt case_000836_support case_000836_rank.val hlt case_000836_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000836_firstLine, EqEqNegRow]
  have case_000836_fixedSecond :
      FixedRow (SecondLineAt case_000836_support case_000836_rank.val hlt case_000836_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000836_secondLine, FixedRow]
  exact ⟨case_000836_rowFirst, case_000836_fixedSecond⟩

private theorem case_000836_existsRows :
    ExistsEqEqNegVarFirstRows case_000836_rank.val case_000836_mask :=
  ⟨case_000836_support, case_000836_sourceAgrees, case_000836_rows⟩

private theorem case_000836_covered :
    RowPropertyParametricCovered case_000836_rank.val case_000836_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000836_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000837_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000837_mask : SignMask := ⟨13, by decide⟩
private def case_000837_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000837_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000837_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000837_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (-124/27) }
private def case_000837_firstLine : StrictLin2 := { a := 1, b := -1, c := (-133/71) }
private def case_000837_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000837_rankWord :
    rankPairWord? case_000837_word = some case_000837_rank := by
  decide

private theorem case_000837_unrank :
    unrankPairWord case_000837_rank = case_000837_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000837_word case_000837_rank).1
    case_000837_rankWord |>.symm

private theorem case_000837_seqChoice :
    translationChoiceSeq case_000837_word case_000837_mask = case_000837_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000837_seqAtRank :
    translationSeqAtRankMask case_000837_rank case_000837_mask = case_000837_seq := by
  rw [translationSeqAtRankMask, case_000837_unrank]
  exact case_000837_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000837_bAtRank :
    translationBAtRankMask case_000837_rank case_000837_mask = case_000837_b := by
  rw [translationBAtRankMask, case_000837_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000837_b, case_000837_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000837_firstLine_eq :
    case_000837_support.firstLine case_000837_seq case_000837_b = case_000837_firstLine := by
  norm_num [case_000837_firstLine, case_000837_support, case_000837_seq, case_000837_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000837_secondLine_eq :
    case_000837_support.secondLine case_000837_seq case_000837_b = case_000837_secondLine := by
  norm_num [case_000837_secondLine, case_000837_support, case_000837_seq, case_000837_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000837_sourceAgrees :
    SourceAgrees case_000837_support case_000837_rank.val case_000837_mask := by
  intro hlt
  have hrank : (⟨case_000837_rank.val, hlt⟩ : Fin numPairWords) = case_000837_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000837_rank.val, hlt⟩ case_000837_mask =
        case_000837_seq := by
    simpa [hrank] using case_000837_seqAtRank
  simp [SourceChecks, hseq, case_000837_support,
    checkTranslationConstraintSource, case_000837_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000837_rows :
    OppMinusOneVarFirstRows case_000837_support case_000837_rank.val case_000837_mask := by
  intro hlt
  have hrank : (⟨case_000837_rank.val, hlt⟩ : Fin numPairWords) = case_000837_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000837_rank.val, hlt⟩ case_000837_mask =
        case_000837_seq := by
    simpa [hrank] using case_000837_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000837_rank.val, hlt⟩ case_000837_mask =
        case_000837_b := by
    simpa [hrank] using case_000837_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000837_support case_000837_rank.val hlt
          case_000837_mask = case_000837_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000837_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000837_support case_000837_rank.val hlt
          case_000837_mask = case_000837_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000837_secondLine_eq]
  have case_000837_rowFirst :
      OppNegRow (FirstLineAt case_000837_support case_000837_rank.val hlt case_000837_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000837_firstLine, OppNegRow]
  have case_000837_fixedSecond :
      FixedRow (SecondLineAt case_000837_support case_000837_rank.val hlt case_000837_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000837_secondLine, FixedRow]
  exact ⟨case_000837_rowFirst, case_000837_fixedSecond⟩

private theorem case_000837_existsRows :
    ExistsOppMinusOneVarFirstRows case_000837_rank.val case_000837_mask :=
  ⟨case_000837_support, case_000837_sourceAgrees, case_000837_rows⟩

private theorem case_000837_covered :
    RowPropertyParametricCovered case_000837_rank.val case_000837_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000837_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000838_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000838_mask : SignMask := ⟨15, by decide⟩
private def case_000838_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000838_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000838_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000838_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (92/27) }
private def case_000838_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000838_secondLine : StrictLin2 := { a := (-213/3190), b := (-213/3190), c := (-147/1595) }

private theorem case_000838_rankWord :
    rankPairWord? case_000838_word = some case_000838_rank := by
  decide

private theorem case_000838_unrank :
    unrankPairWord case_000838_rank = case_000838_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000838_word case_000838_rank).1
    case_000838_rankWord |>.symm

private theorem case_000838_seqChoice :
    translationChoiceSeq case_000838_word case_000838_mask = case_000838_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000838_seqAtRank :
    translationSeqAtRankMask case_000838_rank case_000838_mask = case_000838_seq := by
  rw [translationSeqAtRankMask, case_000838_unrank]
  exact case_000838_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000838_bAtRank :
    translationBAtRankMask case_000838_rank case_000838_mask = case_000838_b := by
  rw [translationBAtRankMask, case_000838_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000838_b, case_000838_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000838_firstLine_eq :
    case_000838_support.firstLine case_000838_seq case_000838_b = case_000838_firstLine := by
  norm_num [case_000838_firstLine, case_000838_support, case_000838_seq, case_000838_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000838_secondLine_eq :
    case_000838_support.secondLine case_000838_seq case_000838_b = case_000838_secondLine := by
  norm_num [case_000838_secondLine, case_000838_support, case_000838_seq, case_000838_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000838_sourceAgrees :
    SourceAgrees case_000838_support case_000838_rank.val case_000838_mask := by
  intro hlt
  have hrank : (⟨case_000838_rank.val, hlt⟩ : Fin numPairWords) = case_000838_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000838_rank.val, hlt⟩ case_000838_mask =
        case_000838_seq := by
    simpa [hrank] using case_000838_seqAtRank
  simp [SourceChecks, hseq, case_000838_support,
    checkTranslationConstraintSource, case_000838_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000838_rows :
    EqEqPosVarSecondRows case_000838_support case_000838_rank.val case_000838_mask := by
  intro hlt
  have hrank : (⟨case_000838_rank.val, hlt⟩ : Fin numPairWords) = case_000838_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000838_rank.val, hlt⟩ case_000838_mask =
        case_000838_seq := by
    simpa [hrank] using case_000838_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000838_rank.val, hlt⟩ case_000838_mask =
        case_000838_b := by
    simpa [hrank] using case_000838_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000838_support case_000838_rank.val hlt
          case_000838_mask = case_000838_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000838_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000838_support case_000838_rank.val hlt
          case_000838_mask = case_000838_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000838_secondLine_eq]
  have case_000838_fixedFirst :
      FixedRow (FirstLineAt case_000838_support case_000838_rank.val hlt case_000838_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000838_firstLine, FixedRow]
  have case_000838_rowSecond :
      EqEqPosRow (SecondLineAt case_000838_support case_000838_rank.val hlt case_000838_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000838_secondLine, EqEqPosRow]
  exact ⟨case_000838_fixedFirst, case_000838_rowSecond⟩

private theorem case_000838_existsRows :
    ExistsEqEqPosVarSecondRows case_000838_rank.val case_000838_mask :=
  ⟨case_000838_support, case_000838_sourceAgrees, case_000838_rows⟩

private theorem case_000838_covered :
    RowPropertyParametricCovered case_000838_rank.val case_000838_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000838_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000839_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000839_mask : SignMask := ⟨18, by decide⟩
private def case_000839_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000839_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000839_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000839_b : Vec3 Rat := { x := (-172/27), y := (-332/27), z := (76/27) }
private def case_000839_firstLine : StrictLin2 := { a := -1, b := -1, c := (-85/43) }
private def case_000839_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000839_rankWord :
    rankPairWord? case_000839_word = some case_000839_rank := by
  decide

private theorem case_000839_unrank :
    unrankPairWord case_000839_rank = case_000839_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000839_word case_000839_rank).1
    case_000839_rankWord |>.symm

private theorem case_000839_seqChoice :
    translationChoiceSeq case_000839_word case_000839_mask = case_000839_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000839_seqAtRank :
    translationSeqAtRankMask case_000839_rank case_000839_mask = case_000839_seq := by
  rw [translationSeqAtRankMask, case_000839_unrank]
  exact case_000839_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000839_bAtRank :
    translationBAtRankMask case_000839_rank case_000839_mask = case_000839_b := by
  rw [translationBAtRankMask, case_000839_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000839_b, case_000839_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000839_firstLine_eq :
    case_000839_support.firstLine case_000839_seq case_000839_b = case_000839_firstLine := by
  norm_num [case_000839_firstLine, case_000839_support, case_000839_seq, case_000839_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000839_secondLine_eq :
    case_000839_support.secondLine case_000839_seq case_000839_b = case_000839_secondLine := by
  norm_num [case_000839_secondLine, case_000839_support, case_000839_seq, case_000839_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000839_sourceAgrees :
    SourceAgrees case_000839_support case_000839_rank.val case_000839_mask := by
  intro hlt
  have hrank : (⟨case_000839_rank.val, hlt⟩ : Fin numPairWords) = case_000839_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000839_rank.val, hlt⟩ case_000839_mask =
        case_000839_seq := by
    simpa [hrank] using case_000839_seqAtRank
  simp [SourceChecks, hseq, case_000839_support,
    checkTranslationConstraintSource, case_000839_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000839_rows :
    EqEqPosVarFirstRows case_000839_support case_000839_rank.val case_000839_mask := by
  intro hlt
  have hrank : (⟨case_000839_rank.val, hlt⟩ : Fin numPairWords) = case_000839_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000839_rank.val, hlt⟩ case_000839_mask =
        case_000839_seq := by
    simpa [hrank] using case_000839_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000839_rank.val, hlt⟩ case_000839_mask =
        case_000839_b := by
    simpa [hrank] using case_000839_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000839_support case_000839_rank.val hlt
          case_000839_mask = case_000839_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000839_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000839_support case_000839_rank.val hlt
          case_000839_mask = case_000839_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000839_secondLine_eq]
  have case_000839_rowFirst :
      EqEqPosRow (FirstLineAt case_000839_support case_000839_rank.val hlt case_000839_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000839_firstLine, EqEqPosRow]
  have case_000839_fixedSecond :
      FixedRow (SecondLineAt case_000839_support case_000839_rank.val hlt case_000839_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000839_secondLine, FixedRow]
  exact ⟨case_000839_rowFirst, case_000839_fixedSecond⟩

private theorem case_000839_existsRows :
    ExistsEqEqPosVarFirstRows case_000839_rank.val case_000839_mask :=
  ⟨case_000839_support, case_000839_sourceAgrees, case_000839_rows⟩

private theorem case_000839_covered :
    RowPropertyParametricCovered case_000839_rank.val case_000839_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000839_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000840_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000840_mask : SignMask := ⟨22, by decide⟩
private def case_000840_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000840_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000840_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000840_b : Vec3 Rat := { x := (-316/27), y := (-188/27), z := (220/27) }
private def case_000840_firstLine : StrictLin2 := { a := (-79/129), b := (-79/129), c := (-89/129) }
private def case_000840_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000840_rankWord :
    rankPairWord? case_000840_word = some case_000840_rank := by
  decide

private theorem case_000840_unrank :
    unrankPairWord case_000840_rank = case_000840_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000840_word case_000840_rank).1
    case_000840_rankWord |>.symm

private theorem case_000840_seqChoice :
    translationChoiceSeq case_000840_word case_000840_mask = case_000840_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000840_seqAtRank :
    translationSeqAtRankMask case_000840_rank case_000840_mask = case_000840_seq := by
  rw [translationSeqAtRankMask, case_000840_unrank]
  exact case_000840_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000840_bAtRank :
    translationBAtRankMask case_000840_rank case_000840_mask = case_000840_b := by
  rw [translationBAtRankMask, case_000840_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000840_b, case_000840_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000840_firstLine_eq :
    case_000840_support.firstLine case_000840_seq case_000840_b = case_000840_firstLine := by
  norm_num [case_000840_firstLine, case_000840_support, case_000840_seq, case_000840_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000840_secondLine_eq :
    case_000840_support.secondLine case_000840_seq case_000840_b = case_000840_secondLine := by
  norm_num [case_000840_secondLine, case_000840_support, case_000840_seq, case_000840_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000840_sourceAgrees :
    SourceAgrees case_000840_support case_000840_rank.val case_000840_mask := by
  intro hlt
  have hrank : (⟨case_000840_rank.val, hlt⟩ : Fin numPairWords) = case_000840_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000840_rank.val, hlt⟩ case_000840_mask =
        case_000840_seq := by
    simpa [hrank] using case_000840_seqAtRank
  simp [SourceChecks, hseq, case_000840_support,
    checkTranslationConstraintSource, case_000840_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000840_rows :
    EqEqPosVarFirstRows case_000840_support case_000840_rank.val case_000840_mask := by
  intro hlt
  have hrank : (⟨case_000840_rank.val, hlt⟩ : Fin numPairWords) = case_000840_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000840_rank.val, hlt⟩ case_000840_mask =
        case_000840_seq := by
    simpa [hrank] using case_000840_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000840_rank.val, hlt⟩ case_000840_mask =
        case_000840_b := by
    simpa [hrank] using case_000840_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000840_support case_000840_rank.val hlt
          case_000840_mask = case_000840_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000840_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000840_support case_000840_rank.val hlt
          case_000840_mask = case_000840_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000840_secondLine_eq]
  have case_000840_rowFirst :
      EqEqPosRow (FirstLineAt case_000840_support case_000840_rank.val hlt case_000840_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000840_firstLine, EqEqPosRow]
  have case_000840_fixedSecond :
      FixedRow (SecondLineAt case_000840_support case_000840_rank.val hlt case_000840_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000840_secondLine, FixedRow]
  exact ⟨case_000840_rowFirst, case_000840_fixedSecond⟩

private theorem case_000840_existsRows :
    ExistsEqEqPosVarFirstRows case_000840_rank.val case_000840_mask :=
  ⟨case_000840_support, case_000840_sourceAgrees, case_000840_rows⟩

private theorem case_000840_covered :
    RowPropertyParametricCovered case_000840_rank.val case_000840_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000840_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000841_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000841_mask : SignMask := ⟨24, by decide⟩
private def case_000841_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000841_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000841_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000841_b : Vec3 Rat := { x := (-220/27), y := (-284/27), z := (-380/27) }
private def case_000841_firstLine : StrictLin2 := { a := -1, b := -1, c := (-277/55) }
private def case_000841_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000841_rankWord :
    rankPairWord? case_000841_word = some case_000841_rank := by
  decide

private theorem case_000841_unrank :
    unrankPairWord case_000841_rank = case_000841_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000841_word case_000841_rank).1
    case_000841_rankWord |>.symm

private theorem case_000841_seqChoice :
    translationChoiceSeq case_000841_word case_000841_mask = case_000841_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000841_seqAtRank :
    translationSeqAtRankMask case_000841_rank case_000841_mask = case_000841_seq := by
  rw [translationSeqAtRankMask, case_000841_unrank]
  exact case_000841_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000841_bAtRank :
    translationBAtRankMask case_000841_rank case_000841_mask = case_000841_b := by
  rw [translationBAtRankMask, case_000841_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000841_b, case_000841_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000841_firstLine_eq :
    case_000841_support.firstLine case_000841_seq case_000841_b = case_000841_firstLine := by
  norm_num [case_000841_firstLine, case_000841_support, case_000841_seq, case_000841_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000841_secondLine_eq :
    case_000841_support.secondLine case_000841_seq case_000841_b = case_000841_secondLine := by
  norm_num [case_000841_secondLine, case_000841_support, case_000841_seq, case_000841_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000841_sourceAgrees :
    SourceAgrees case_000841_support case_000841_rank.val case_000841_mask := by
  intro hlt
  have hrank : (⟨case_000841_rank.val, hlt⟩ : Fin numPairWords) = case_000841_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000841_rank.val, hlt⟩ case_000841_mask =
        case_000841_seq := by
    simpa [hrank] using case_000841_seqAtRank
  simp [SourceChecks, hseq, case_000841_support,
    checkTranslationConstraintSource, case_000841_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000841_rows :
    EqEqPosVarFirstRows case_000841_support case_000841_rank.val case_000841_mask := by
  intro hlt
  have hrank : (⟨case_000841_rank.val, hlt⟩ : Fin numPairWords) = case_000841_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000841_rank.val, hlt⟩ case_000841_mask =
        case_000841_seq := by
    simpa [hrank] using case_000841_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000841_rank.val, hlt⟩ case_000841_mask =
        case_000841_b := by
    simpa [hrank] using case_000841_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000841_support case_000841_rank.val hlt
          case_000841_mask = case_000841_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000841_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000841_support case_000841_rank.val hlt
          case_000841_mask = case_000841_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000841_secondLine_eq]
  have case_000841_rowFirst :
      EqEqPosRow (FirstLineAt case_000841_support case_000841_rank.val hlt case_000841_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000841_firstLine, EqEqPosRow]
  have case_000841_fixedSecond :
      FixedRow (SecondLineAt case_000841_support case_000841_rank.val hlt case_000841_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000841_secondLine, FixedRow]
  exact ⟨case_000841_rowFirst, case_000841_fixedSecond⟩

private theorem case_000841_existsRows :
    ExistsEqEqPosVarFirstRows case_000841_rank.val case_000841_mask :=
  ⟨case_000841_support, case_000841_sourceAgrees, case_000841_rows⟩

private theorem case_000841_covered :
    RowPropertyParametricCovered case_000841_rank.val case_000841_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000841_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000842_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000842_mask : SignMask := ⟨29, by decide⟩
private def case_000842_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000842_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000842_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000842_b : Vec3 Rat := { x := (-364/27), y := (76/27), z := (-236/27) }
private def case_000842_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000842_secondLine : StrictLin2 := { a := (-273/1870), b := (-273/1870), c := (-60/187) }

private theorem case_000842_rankWord :
    rankPairWord? case_000842_word = some case_000842_rank := by
  decide

private theorem case_000842_unrank :
    unrankPairWord case_000842_rank = case_000842_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000842_word case_000842_rank).1
    case_000842_rankWord |>.symm

private theorem case_000842_seqChoice :
    translationChoiceSeq case_000842_word case_000842_mask = case_000842_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000842_seqAtRank :
    translationSeqAtRankMask case_000842_rank case_000842_mask = case_000842_seq := by
  rw [translationSeqAtRankMask, case_000842_unrank]
  exact case_000842_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000842_bAtRank :
    translationBAtRankMask case_000842_rank case_000842_mask = case_000842_b := by
  rw [translationBAtRankMask, case_000842_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000842_b, case_000842_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000842_firstLine_eq :
    case_000842_support.firstLine case_000842_seq case_000842_b = case_000842_firstLine := by
  norm_num [case_000842_firstLine, case_000842_support, case_000842_seq, case_000842_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000842_secondLine_eq :
    case_000842_support.secondLine case_000842_seq case_000842_b = case_000842_secondLine := by
  norm_num [case_000842_secondLine, case_000842_support, case_000842_seq, case_000842_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000842_sourceAgrees :
    SourceAgrees case_000842_support case_000842_rank.val case_000842_mask := by
  intro hlt
  have hrank : (⟨case_000842_rank.val, hlt⟩ : Fin numPairWords) = case_000842_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000842_rank.val, hlt⟩ case_000842_mask =
        case_000842_seq := by
    simpa [hrank] using case_000842_seqAtRank
  simp [SourceChecks, hseq, case_000842_support,
    checkTranslationConstraintSource, case_000842_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000842_rows :
    EqEqPosVarSecondRows case_000842_support case_000842_rank.val case_000842_mask := by
  intro hlt
  have hrank : (⟨case_000842_rank.val, hlt⟩ : Fin numPairWords) = case_000842_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000842_rank.val, hlt⟩ case_000842_mask =
        case_000842_seq := by
    simpa [hrank] using case_000842_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000842_rank.val, hlt⟩ case_000842_mask =
        case_000842_b := by
    simpa [hrank] using case_000842_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000842_support case_000842_rank.val hlt
          case_000842_mask = case_000842_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000842_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000842_support case_000842_rank.val hlt
          case_000842_mask = case_000842_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000842_secondLine_eq]
  have case_000842_fixedFirst :
      FixedRow (FirstLineAt case_000842_support case_000842_rank.val hlt case_000842_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000842_firstLine, FixedRow]
  have case_000842_rowSecond :
      EqEqPosRow (SecondLineAt case_000842_support case_000842_rank.val hlt case_000842_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000842_secondLine, EqEqPosRow]
  exact ⟨case_000842_fixedFirst, case_000842_rowSecond⟩

private theorem case_000842_existsRows :
    ExistsEqEqPosVarSecondRows case_000842_rank.val case_000842_mask :=
  ⟨case_000842_support, case_000842_sourceAgrees, case_000842_rows⟩

private theorem case_000842_covered :
    RowPropertyParametricCovered case_000842_rank.val case_000842_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000842_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000843_rank : Fin numPairWords := ⟨617, by decide⟩
private def case_000843_mask : SignMask := ⟨45, by decide⟩
private def case_000843_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000843_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000843_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000843_b : Vec3 Rat := { x := (-44/27), y := (332/27), z := (-76/27) }
private def case_000843_firstLine : StrictLin2 := { a := (-22/75), b := (-22/75), c := (-28/25) }
private def case_000843_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000843_rankWord :
    rankPairWord? case_000843_word = some case_000843_rank := by
  decide

private theorem case_000843_unrank :
    unrankPairWord case_000843_rank = case_000843_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000843_word case_000843_rank).1
    case_000843_rankWord |>.symm

private theorem case_000843_seqChoice :
    translationChoiceSeq case_000843_word case_000843_mask = case_000843_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000843_seqAtRank :
    translationSeqAtRankMask case_000843_rank case_000843_mask = case_000843_seq := by
  rw [translationSeqAtRankMask, case_000843_unrank]
  exact case_000843_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000843_bAtRank :
    translationBAtRankMask case_000843_rank case_000843_mask = case_000843_b := by
  rw [translationBAtRankMask, case_000843_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000843_b, case_000843_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000843_firstLine_eq :
    case_000843_support.firstLine case_000843_seq case_000843_b = case_000843_firstLine := by
  norm_num [case_000843_firstLine, case_000843_support, case_000843_seq, case_000843_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000843_secondLine_eq :
    case_000843_support.secondLine case_000843_seq case_000843_b = case_000843_secondLine := by
  norm_num [case_000843_secondLine, case_000843_support, case_000843_seq, case_000843_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000843_sourceAgrees :
    SourceAgrees case_000843_support case_000843_rank.val case_000843_mask := by
  intro hlt
  have hrank : (⟨case_000843_rank.val, hlt⟩ : Fin numPairWords) = case_000843_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000843_rank.val, hlt⟩ case_000843_mask =
        case_000843_seq := by
    simpa [hrank] using case_000843_seqAtRank
  simp [SourceChecks, hseq, case_000843_support,
    checkTranslationConstraintSource, case_000843_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000843_rows :
    EqEqPosVarFirstRows case_000843_support case_000843_rank.val case_000843_mask := by
  intro hlt
  have hrank : (⟨case_000843_rank.val, hlt⟩ : Fin numPairWords) = case_000843_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000843_rank.val, hlt⟩ case_000843_mask =
        case_000843_seq := by
    simpa [hrank] using case_000843_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000843_rank.val, hlt⟩ case_000843_mask =
        case_000843_b := by
    simpa [hrank] using case_000843_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000843_support case_000843_rank.val hlt
          case_000843_mask = case_000843_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000843_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000843_support case_000843_rank.val hlt
          case_000843_mask = case_000843_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000843_secondLine_eq]
  have case_000843_rowFirst :
      EqEqPosRow (FirstLineAt case_000843_support case_000843_rank.val hlt case_000843_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000843_firstLine, EqEqPosRow]
  have case_000843_fixedSecond :
      FixedRow (SecondLineAt case_000843_support case_000843_rank.val hlt case_000843_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000843_secondLine, FixedRow]
  exact ⟨case_000843_rowFirst, case_000843_fixedSecond⟩

private theorem case_000843_existsRows :
    ExistsEqEqPosVarFirstRows case_000843_rank.val case_000843_mask :=
  ⟨case_000843_support, case_000843_sourceAgrees, case_000843_rows⟩

private theorem case_000843_covered :
    RowPropertyParametricCovered case_000843_rank.val case_000843_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000843_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000844_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000844_mask : SignMask := ⟨7, by decide⟩
private def case_000844_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000844_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000844_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000844_b : Vec3 Rat := { x := (-236/27), y := (332/27), z := (236/27) }
private def case_000844_firstLine : StrictLin2 := { a := 1, b := 1, c := (-225/59) }
private def case_000844_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000844_rankWord :
    rankPairWord? case_000844_word = some case_000844_rank := by
  decide

private theorem case_000844_unrank :
    unrankPairWord case_000844_rank = case_000844_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000844_word case_000844_rank).1
    case_000844_rankWord |>.symm

private theorem case_000844_seqChoice :
    translationChoiceSeq case_000844_word case_000844_mask = case_000844_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000844_seqAtRank :
    translationSeqAtRankMask case_000844_rank case_000844_mask = case_000844_seq := by
  rw [translationSeqAtRankMask, case_000844_unrank]
  exact case_000844_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000844_bAtRank :
    translationBAtRankMask case_000844_rank case_000844_mask = case_000844_b := by
  rw [translationBAtRankMask, case_000844_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000844_b, case_000844_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000844_firstLine_eq :
    case_000844_support.firstLine case_000844_seq case_000844_b = case_000844_firstLine := by
  norm_num [case_000844_firstLine, case_000844_support, case_000844_seq, case_000844_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000844_secondLine_eq :
    case_000844_support.secondLine case_000844_seq case_000844_b = case_000844_secondLine := by
  norm_num [case_000844_secondLine, case_000844_support, case_000844_seq, case_000844_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000844_sourceAgrees :
    SourceAgrees case_000844_support case_000844_rank.val case_000844_mask := by
  intro hlt
  have hrank : (⟨case_000844_rank.val, hlt⟩ : Fin numPairWords) = case_000844_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000844_rank.val, hlt⟩ case_000844_mask =
        case_000844_seq := by
    simpa [hrank] using case_000844_seqAtRank
  simp [SourceChecks, hseq, case_000844_support,
    checkTranslationConstraintSource, case_000844_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000844_rows :
    EqEqNegVarFirstRows case_000844_support case_000844_rank.val case_000844_mask := by
  intro hlt
  have hrank : (⟨case_000844_rank.val, hlt⟩ : Fin numPairWords) = case_000844_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000844_rank.val, hlt⟩ case_000844_mask =
        case_000844_seq := by
    simpa [hrank] using case_000844_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000844_rank.val, hlt⟩ case_000844_mask =
        case_000844_b := by
    simpa [hrank] using case_000844_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000844_support case_000844_rank.val hlt
          case_000844_mask = case_000844_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000844_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000844_support case_000844_rank.val hlt
          case_000844_mask = case_000844_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000844_secondLine_eq]
  have case_000844_rowFirst :
      EqEqNegRow (FirstLineAt case_000844_support case_000844_rank.val hlt case_000844_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000844_firstLine, EqEqNegRow]
  have case_000844_fixedSecond :
      FixedRow (SecondLineAt case_000844_support case_000844_rank.val hlt case_000844_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000844_secondLine, FixedRow]
  exact ⟨case_000844_rowFirst, case_000844_fixedSecond⟩

private theorem case_000844_existsRows :
    ExistsEqEqNegVarFirstRows case_000844_rank.val case_000844_mask :=
  ⟨case_000844_support, case_000844_sourceAgrees, case_000844_rows⟩

private theorem case_000844_covered :
    RowPropertyParametricCovered case_000844_rank.val case_000844_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000844_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000845_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000845_mask : SignMask := ⟨9, by decide⟩
private def case_000845_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000845_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000845_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000845_b : Vec3 Rat := { x := (-172/27), y := (76/27), z := (-332/27) }
private def case_000845_firstLine : StrictLin2 := { a := -1, b := -1, c := (-85/43) }
private def case_000845_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000845_rankWord :
    rankPairWord? case_000845_word = some case_000845_rank := by
  decide

private theorem case_000845_unrank :
    unrankPairWord case_000845_rank = case_000845_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000845_word case_000845_rank).1
    case_000845_rankWord |>.symm

private theorem case_000845_seqChoice :
    translationChoiceSeq case_000845_word case_000845_mask = case_000845_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000845_seqAtRank :
    translationSeqAtRankMask case_000845_rank case_000845_mask = case_000845_seq := by
  rw [translationSeqAtRankMask, case_000845_unrank]
  exact case_000845_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000845_bAtRank :
    translationBAtRankMask case_000845_rank case_000845_mask = case_000845_b := by
  rw [translationBAtRankMask, case_000845_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000845_b, case_000845_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000845_firstLine_eq :
    case_000845_support.firstLine case_000845_seq case_000845_b = case_000845_firstLine := by
  norm_num [case_000845_firstLine, case_000845_support, case_000845_seq, case_000845_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000845_secondLine_eq :
    case_000845_support.secondLine case_000845_seq case_000845_b = case_000845_secondLine := by
  norm_num [case_000845_secondLine, case_000845_support, case_000845_seq, case_000845_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000845_sourceAgrees :
    SourceAgrees case_000845_support case_000845_rank.val case_000845_mask := by
  intro hlt
  have hrank : (⟨case_000845_rank.val, hlt⟩ : Fin numPairWords) = case_000845_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000845_rank.val, hlt⟩ case_000845_mask =
        case_000845_seq := by
    simpa [hrank] using case_000845_seqAtRank
  simp [SourceChecks, hseq, case_000845_support,
    checkTranslationConstraintSource, case_000845_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000845_rows :
    EqEqPosVarFirstRows case_000845_support case_000845_rank.val case_000845_mask := by
  intro hlt
  have hrank : (⟨case_000845_rank.val, hlt⟩ : Fin numPairWords) = case_000845_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000845_rank.val, hlt⟩ case_000845_mask =
        case_000845_seq := by
    simpa [hrank] using case_000845_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000845_rank.val, hlt⟩ case_000845_mask =
        case_000845_b := by
    simpa [hrank] using case_000845_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000845_support case_000845_rank.val hlt
          case_000845_mask = case_000845_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000845_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000845_support case_000845_rank.val hlt
          case_000845_mask = case_000845_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000845_secondLine_eq]
  have case_000845_rowFirst :
      EqEqPosRow (FirstLineAt case_000845_support case_000845_rank.val hlt case_000845_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000845_firstLine, EqEqPosRow]
  have case_000845_fixedSecond :
      FixedRow (SecondLineAt case_000845_support case_000845_rank.val hlt case_000845_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000845_secondLine, FixedRow]
  exact ⟨case_000845_rowFirst, case_000845_fixedSecond⟩

private theorem case_000845_existsRows :
    ExistsEqEqPosVarFirstRows case_000845_rank.val case_000845_mask :=
  ⟨case_000845_support, case_000845_sourceAgrees, case_000845_rows⟩

private theorem case_000845_covered :
    RowPropertyParametricCovered case_000845_rank.val case_000845_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000845_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000846_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000846_mask : SignMask := ⟨13, by decide⟩
private def case_000846_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000846_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000846_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000846_b : Vec3 Rat := { x := (-316/27), y := (220/27), z := (-188/27) }
private def case_000846_firstLine : StrictLin2 := { a := (-79/129), b := (-79/129), c := (-89/129) }
private def case_000846_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000846_rankWord :
    rankPairWord? case_000846_word = some case_000846_rank := by
  decide

private theorem case_000846_unrank :
    unrankPairWord case_000846_rank = case_000846_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000846_word case_000846_rank).1
    case_000846_rankWord |>.symm

private theorem case_000846_seqChoice :
    translationChoiceSeq case_000846_word case_000846_mask = case_000846_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000846_seqAtRank :
    translationSeqAtRankMask case_000846_rank case_000846_mask = case_000846_seq := by
  rw [translationSeqAtRankMask, case_000846_unrank]
  exact case_000846_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000846_bAtRank :
    translationBAtRankMask case_000846_rank case_000846_mask = case_000846_b := by
  rw [translationBAtRankMask, case_000846_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000846_b, case_000846_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000846_firstLine_eq :
    case_000846_support.firstLine case_000846_seq case_000846_b = case_000846_firstLine := by
  norm_num [case_000846_firstLine, case_000846_support, case_000846_seq, case_000846_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000846_secondLine_eq :
    case_000846_support.secondLine case_000846_seq case_000846_b = case_000846_secondLine := by
  norm_num [case_000846_secondLine, case_000846_support, case_000846_seq, case_000846_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000846_sourceAgrees :
    SourceAgrees case_000846_support case_000846_rank.val case_000846_mask := by
  intro hlt
  have hrank : (⟨case_000846_rank.val, hlt⟩ : Fin numPairWords) = case_000846_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000846_rank.val, hlt⟩ case_000846_mask =
        case_000846_seq := by
    simpa [hrank] using case_000846_seqAtRank
  simp [SourceChecks, hseq, case_000846_support,
    checkTranslationConstraintSource, case_000846_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000846_rows :
    EqEqPosVarFirstRows case_000846_support case_000846_rank.val case_000846_mask := by
  intro hlt
  have hrank : (⟨case_000846_rank.val, hlt⟩ : Fin numPairWords) = case_000846_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000846_rank.val, hlt⟩ case_000846_mask =
        case_000846_seq := by
    simpa [hrank] using case_000846_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000846_rank.val, hlt⟩ case_000846_mask =
        case_000846_b := by
    simpa [hrank] using case_000846_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000846_support case_000846_rank.val hlt
          case_000846_mask = case_000846_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000846_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000846_support case_000846_rank.val hlt
          case_000846_mask = case_000846_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000846_secondLine_eq]
  have case_000846_rowFirst :
      EqEqPosRow (FirstLineAt case_000846_support case_000846_rank.val hlt case_000846_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000846_firstLine, EqEqPosRow]
  have case_000846_fixedSecond :
      FixedRow (SecondLineAt case_000846_support case_000846_rank.val hlt case_000846_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000846_secondLine, FixedRow]
  exact ⟨case_000846_rowFirst, case_000846_fixedSecond⟩

private theorem case_000846_existsRows :
    ExistsEqEqPosVarFirstRows case_000846_rank.val case_000846_mask :=
  ⟨case_000846_support, case_000846_sourceAgrees, case_000846_rows⟩

private theorem case_000846_covered :
    RowPropertyParametricCovered case_000846_rank.val case_000846_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000846_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000847_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000847_mask : SignMask := ⟨22, by decide⟩
private def case_000847_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000847_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000847_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000847_b : Vec3 Rat := { x := (-284/27), y := (-124/27), z := (284/27) }
private def case_000847_firstLine : StrictLin2 := { a := -1, b := 1, c := (-133/71) }
private def case_000847_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000847_rankWord :
    rankPairWord? case_000847_word = some case_000847_rank := by
  decide

private theorem case_000847_unrank :
    unrankPairWord case_000847_rank = case_000847_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000847_word case_000847_rank).1
    case_000847_rankWord |>.symm

private theorem case_000847_seqChoice :
    translationChoiceSeq case_000847_word case_000847_mask = case_000847_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000847_seqAtRank :
    translationSeqAtRankMask case_000847_rank case_000847_mask = case_000847_seq := by
  rw [translationSeqAtRankMask, case_000847_unrank]
  exact case_000847_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000847_bAtRank :
    translationBAtRankMask case_000847_rank case_000847_mask = case_000847_b := by
  rw [translationBAtRankMask, case_000847_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000847_b, case_000847_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000847_firstLine_eq :
    case_000847_support.firstLine case_000847_seq case_000847_b = case_000847_firstLine := by
  norm_num [case_000847_firstLine, case_000847_support, case_000847_seq, case_000847_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000847_secondLine_eq :
    case_000847_support.secondLine case_000847_seq case_000847_b = case_000847_secondLine := by
  norm_num [case_000847_secondLine, case_000847_support, case_000847_seq, case_000847_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000847_sourceAgrees :
    SourceAgrees case_000847_support case_000847_rank.val case_000847_mask := by
  intro hlt
  have hrank : (⟨case_000847_rank.val, hlt⟩ : Fin numPairWords) = case_000847_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000847_rank.val, hlt⟩ case_000847_mask =
        case_000847_seq := by
    simpa [hrank] using case_000847_seqAtRank
  simp [SourceChecks, hseq, case_000847_support,
    checkTranslationConstraintSource, case_000847_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000847_rows :
    OppOneMinusVarFirstRows case_000847_support case_000847_rank.val case_000847_mask := by
  intro hlt
  have hrank : (⟨case_000847_rank.val, hlt⟩ : Fin numPairWords) = case_000847_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000847_rank.val, hlt⟩ case_000847_mask =
        case_000847_seq := by
    simpa [hrank] using case_000847_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000847_rank.val, hlt⟩ case_000847_mask =
        case_000847_b := by
    simpa [hrank] using case_000847_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000847_support case_000847_rank.val hlt
          case_000847_mask = case_000847_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000847_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000847_support case_000847_rank.val hlt
          case_000847_mask = case_000847_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000847_secondLine_eq]
  have case_000847_rowFirst :
      OppPosRow (FirstLineAt case_000847_support case_000847_rank.val hlt case_000847_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000847_firstLine, OppPosRow]
  have case_000847_fixedSecond :
      FixedRow (SecondLineAt case_000847_support case_000847_rank.val hlt case_000847_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000847_secondLine, FixedRow]
  exact ⟨case_000847_rowFirst, case_000847_fixedSecond⟩

private theorem case_000847_existsRows :
    ExistsOppOneMinusVarFirstRows case_000847_rank.val case_000847_mask :=
  ⟨case_000847_support, case_000847_sourceAgrees, case_000847_rows⟩

private theorem case_000847_covered :
    RowPropertyParametricCovered case_000847_rank.val case_000847_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000847_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000848_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000848_mask : SignMask := ⟨23, by decide⟩
private def case_000848_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000848_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000848_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000848_b : Vec3 Rat := { x := (-284/27), y := (92/27), z := (284/27) }
private def case_000848_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000848_secondLine : StrictLin2 := { a := (-213/3190), b := (-213/3190), c := (-147/1595) }

private theorem case_000848_rankWord :
    rankPairWord? case_000848_word = some case_000848_rank := by
  decide

private theorem case_000848_unrank :
    unrankPairWord case_000848_rank = case_000848_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000848_word case_000848_rank).1
    case_000848_rankWord |>.symm

private theorem case_000848_seqChoice :
    translationChoiceSeq case_000848_word case_000848_mask = case_000848_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000848_seqAtRank :
    translationSeqAtRankMask case_000848_rank case_000848_mask = case_000848_seq := by
  rw [translationSeqAtRankMask, case_000848_unrank]
  exact case_000848_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000848_bAtRank :
    translationBAtRankMask case_000848_rank case_000848_mask = case_000848_b := by
  rw [translationBAtRankMask, case_000848_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000848_b, case_000848_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000848_firstLine_eq :
    case_000848_support.firstLine case_000848_seq case_000848_b = case_000848_firstLine := by
  norm_num [case_000848_firstLine, case_000848_support, case_000848_seq, case_000848_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000848_secondLine_eq :
    case_000848_support.secondLine case_000848_seq case_000848_b = case_000848_secondLine := by
  norm_num [case_000848_secondLine, case_000848_support, case_000848_seq, case_000848_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000848_sourceAgrees :
    SourceAgrees case_000848_support case_000848_rank.val case_000848_mask := by
  intro hlt
  have hrank : (⟨case_000848_rank.val, hlt⟩ : Fin numPairWords) = case_000848_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000848_rank.val, hlt⟩ case_000848_mask =
        case_000848_seq := by
    simpa [hrank] using case_000848_seqAtRank
  simp [SourceChecks, hseq, case_000848_support,
    checkTranslationConstraintSource, case_000848_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000848_rows :
    EqEqPosVarSecondRows case_000848_support case_000848_rank.val case_000848_mask := by
  intro hlt
  have hrank : (⟨case_000848_rank.val, hlt⟩ : Fin numPairWords) = case_000848_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000848_rank.val, hlt⟩ case_000848_mask =
        case_000848_seq := by
    simpa [hrank] using case_000848_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000848_rank.val, hlt⟩ case_000848_mask =
        case_000848_b := by
    simpa [hrank] using case_000848_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000848_support case_000848_rank.val hlt
          case_000848_mask = case_000848_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000848_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000848_support case_000848_rank.val hlt
          case_000848_mask = case_000848_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000848_secondLine_eq]
  have case_000848_fixedFirst :
      FixedRow (FirstLineAt case_000848_support case_000848_rank.val hlt case_000848_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000848_firstLine, FixedRow]
  have case_000848_rowSecond :
      EqEqPosRow (SecondLineAt case_000848_support case_000848_rank.val hlt case_000848_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000848_secondLine, EqEqPosRow]
  exact ⟨case_000848_fixedFirst, case_000848_rowSecond⟩

private theorem case_000848_existsRows :
    ExistsEqEqPosVarSecondRows case_000848_rank.val case_000848_mask :=
  ⟨case_000848_support, case_000848_sourceAgrees, case_000848_rows⟩

private theorem case_000848_covered :
    RowPropertyParametricCovered case_000848_rank.val case_000848_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000848_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000849_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000849_mask : SignMask := ⟨24, by decide⟩
private def case_000849_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000849_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000849_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000849_b : Vec3 Rat := { x := (-220/27), y := (-380/27), z := (-284/27) }
private def case_000849_firstLine : StrictLin2 := { a := -1, b := -1, c := (-277/55) }
private def case_000849_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000849_rankWord :
    rankPairWord? case_000849_word = some case_000849_rank := by
  decide

private theorem case_000849_unrank :
    unrankPairWord case_000849_rank = case_000849_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000849_word case_000849_rank).1
    case_000849_rankWord |>.symm

private theorem case_000849_seqChoice :
    translationChoiceSeq case_000849_word case_000849_mask = case_000849_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000849_seqAtRank :
    translationSeqAtRankMask case_000849_rank case_000849_mask = case_000849_seq := by
  rw [translationSeqAtRankMask, case_000849_unrank]
  exact case_000849_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000849_bAtRank :
    translationBAtRankMask case_000849_rank case_000849_mask = case_000849_b := by
  rw [translationBAtRankMask, case_000849_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000849_b, case_000849_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000849_firstLine_eq :
    case_000849_support.firstLine case_000849_seq case_000849_b = case_000849_firstLine := by
  norm_num [case_000849_firstLine, case_000849_support, case_000849_seq, case_000849_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000849_secondLine_eq :
    case_000849_support.secondLine case_000849_seq case_000849_b = case_000849_secondLine := by
  norm_num [case_000849_secondLine, case_000849_support, case_000849_seq, case_000849_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000849_sourceAgrees :
    SourceAgrees case_000849_support case_000849_rank.val case_000849_mask := by
  intro hlt
  have hrank : (⟨case_000849_rank.val, hlt⟩ : Fin numPairWords) = case_000849_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000849_rank.val, hlt⟩ case_000849_mask =
        case_000849_seq := by
    simpa [hrank] using case_000849_seqAtRank
  simp [SourceChecks, hseq, case_000849_support,
    checkTranslationConstraintSource, case_000849_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000849_rows :
    EqEqPosVarFirstRows case_000849_support case_000849_rank.val case_000849_mask := by
  intro hlt
  have hrank : (⟨case_000849_rank.val, hlt⟩ : Fin numPairWords) = case_000849_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000849_rank.val, hlt⟩ case_000849_mask =
        case_000849_seq := by
    simpa [hrank] using case_000849_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000849_rank.val, hlt⟩ case_000849_mask =
        case_000849_b := by
    simpa [hrank] using case_000849_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000849_support case_000849_rank.val hlt
          case_000849_mask = case_000849_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000849_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000849_support case_000849_rank.val hlt
          case_000849_mask = case_000849_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000849_secondLine_eq]
  have case_000849_rowFirst :
      EqEqPosRow (FirstLineAt case_000849_support case_000849_rank.val hlt case_000849_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000849_firstLine, EqEqPosRow]
  have case_000849_fixedSecond :
      FixedRow (SecondLineAt case_000849_support case_000849_rank.val hlt case_000849_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000849_secondLine, FixedRow]
  exact ⟨case_000849_rowFirst, case_000849_fixedSecond⟩

private theorem case_000849_existsRows :
    ExistsEqEqPosVarFirstRows case_000849_rank.val case_000849_mask :=
  ⟨case_000849_support, case_000849_sourceAgrees, case_000849_rows⟩

private theorem case_000849_covered :
    RowPropertyParametricCovered case_000849_rank.val case_000849_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000849_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000850_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000850_mask : SignMask := ⟨30, by decide⟩
private def case_000850_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000850_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000850_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000850_b : Vec3 Rat := { x := (-364/27), y := (-236/27), z := (76/27) }
private def case_000850_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000850_secondLine : StrictLin2 := { a := (-273/1870), b := (-273/1870), c := (-60/187) }

private theorem case_000850_rankWord :
    rankPairWord? case_000850_word = some case_000850_rank := by
  decide

private theorem case_000850_unrank :
    unrankPairWord case_000850_rank = case_000850_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000850_word case_000850_rank).1
    case_000850_rankWord |>.symm

private theorem case_000850_seqChoice :
    translationChoiceSeq case_000850_word case_000850_mask = case_000850_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000850_seqAtRank :
    translationSeqAtRankMask case_000850_rank case_000850_mask = case_000850_seq := by
  rw [translationSeqAtRankMask, case_000850_unrank]
  exact case_000850_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000850_bAtRank :
    translationBAtRankMask case_000850_rank case_000850_mask = case_000850_b := by
  rw [translationBAtRankMask, case_000850_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000850_b, case_000850_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000850_firstLine_eq :
    case_000850_support.firstLine case_000850_seq case_000850_b = case_000850_firstLine := by
  norm_num [case_000850_firstLine, case_000850_support, case_000850_seq, case_000850_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000850_secondLine_eq :
    case_000850_support.secondLine case_000850_seq case_000850_b = case_000850_secondLine := by
  norm_num [case_000850_secondLine, case_000850_support, case_000850_seq, case_000850_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000850_sourceAgrees :
    SourceAgrees case_000850_support case_000850_rank.val case_000850_mask := by
  intro hlt
  have hrank : (⟨case_000850_rank.val, hlt⟩ : Fin numPairWords) = case_000850_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000850_rank.val, hlt⟩ case_000850_mask =
        case_000850_seq := by
    simpa [hrank] using case_000850_seqAtRank
  simp [SourceChecks, hseq, case_000850_support,
    checkTranslationConstraintSource, case_000850_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000850_rows :
    EqEqPosVarSecondRows case_000850_support case_000850_rank.val case_000850_mask := by
  intro hlt
  have hrank : (⟨case_000850_rank.val, hlt⟩ : Fin numPairWords) = case_000850_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000850_rank.val, hlt⟩ case_000850_mask =
        case_000850_seq := by
    simpa [hrank] using case_000850_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000850_rank.val, hlt⟩ case_000850_mask =
        case_000850_b := by
    simpa [hrank] using case_000850_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000850_support case_000850_rank.val hlt
          case_000850_mask = case_000850_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000850_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000850_support case_000850_rank.val hlt
          case_000850_mask = case_000850_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000850_secondLine_eq]
  have case_000850_fixedFirst :
      FixedRow (FirstLineAt case_000850_support case_000850_rank.val hlt case_000850_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000850_firstLine, FixedRow]
  have case_000850_rowSecond :
      EqEqPosRow (SecondLineAt case_000850_support case_000850_rank.val hlt case_000850_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000850_secondLine, EqEqPosRow]
  exact ⟨case_000850_fixedFirst, case_000850_rowSecond⟩

private theorem case_000850_existsRows :
    ExistsEqEqPosVarSecondRows case_000850_rank.val case_000850_mask :=
  ⟨case_000850_support, case_000850_sourceAgrees, case_000850_rows⟩

private theorem case_000850_covered :
    RowPropertyParametricCovered case_000850_rank.val case_000850_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000850_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000851_rank : Fin numPairWords := ⟨624, by decide⟩
private def case_000851_mask : SignMask := ⟨54, by decide⟩
private def case_000851_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩
private def case_000851_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000851_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000851_b : Vec3 Rat := { x := (-44/27), y := (-76/27), z := (332/27) }
private def case_000851_firstLine : StrictLin2 := { a := (-22/75), b := (-22/75), c := (-28/25) }
private def case_000851_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000851_rankWord :
    rankPairWord? case_000851_word = some case_000851_rank := by
  decide

private theorem case_000851_unrank :
    unrankPairWord case_000851_rank = case_000851_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000851_word case_000851_rank).1
    case_000851_rankWord |>.symm

private theorem case_000851_seqChoice :
    translationChoiceSeq case_000851_word case_000851_mask = case_000851_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000851_seqAtRank :
    translationSeqAtRankMask case_000851_rank case_000851_mask = case_000851_seq := by
  rw [translationSeqAtRankMask, case_000851_unrank]
  exact case_000851_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000851_bAtRank :
    translationBAtRankMask case_000851_rank case_000851_mask = case_000851_b := by
  rw [translationBAtRankMask, case_000851_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000851_b, case_000851_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000851_firstLine_eq :
    case_000851_support.firstLine case_000851_seq case_000851_b = case_000851_firstLine := by
  norm_num [case_000851_firstLine, case_000851_support, case_000851_seq, case_000851_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000851_secondLine_eq :
    case_000851_support.secondLine case_000851_seq case_000851_b = case_000851_secondLine := by
  norm_num [case_000851_secondLine, case_000851_support, case_000851_seq, case_000851_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000851_sourceAgrees :
    SourceAgrees case_000851_support case_000851_rank.val case_000851_mask := by
  intro hlt
  have hrank : (⟨case_000851_rank.val, hlt⟩ : Fin numPairWords) = case_000851_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000851_rank.val, hlt⟩ case_000851_mask =
        case_000851_seq := by
    simpa [hrank] using case_000851_seqAtRank
  simp [SourceChecks, hseq, case_000851_support,
    checkTranslationConstraintSource, case_000851_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000851_rows :
    EqEqPosVarFirstRows case_000851_support case_000851_rank.val case_000851_mask := by
  intro hlt
  have hrank : (⟨case_000851_rank.val, hlt⟩ : Fin numPairWords) = case_000851_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000851_rank.val, hlt⟩ case_000851_mask =
        case_000851_seq := by
    simpa [hrank] using case_000851_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000851_rank.val, hlt⟩ case_000851_mask =
        case_000851_b := by
    simpa [hrank] using case_000851_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000851_support case_000851_rank.val hlt
          case_000851_mask = case_000851_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000851_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000851_support case_000851_rank.val hlt
          case_000851_mask = case_000851_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000851_secondLine_eq]
  have case_000851_rowFirst :
      EqEqPosRow (FirstLineAt case_000851_support case_000851_rank.val hlt case_000851_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000851_firstLine, EqEqPosRow]
  have case_000851_fixedSecond :
      FixedRow (SecondLineAt case_000851_support case_000851_rank.val hlt case_000851_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000851_secondLine, FixedRow]
  exact ⟨case_000851_rowFirst, case_000851_fixedSecond⟩

private theorem case_000851_existsRows :
    ExistsEqEqPosVarFirstRows case_000851_rank.val case_000851_mask :=
  ⟨case_000851_support, case_000851_sourceAgrees, case_000851_rows⟩

private theorem case_000851_covered :
    RowPropertyParametricCovered case_000851_rank.val case_000851_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000851_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000852_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000852_mask : SignMask := ⟨8, by decide⟩
private def case_000852_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000852_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000852_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000852_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (-100/9) }
private def case_000852_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/17) }
private def case_000852_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000852_rankWord :
    rankPairWord? case_000852_word = some case_000852_rank := by
  decide

private theorem case_000852_unrank :
    unrankPairWord case_000852_rank = case_000852_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000852_word case_000852_rank).1
    case_000852_rankWord |>.symm

private theorem case_000852_seqChoice :
    translationChoiceSeq case_000852_word case_000852_mask = case_000852_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000852_seqAtRank :
    translationSeqAtRankMask case_000852_rank case_000852_mask = case_000852_seq := by
  rw [translationSeqAtRankMask, case_000852_unrank]
  exact case_000852_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000852_bAtRank :
    translationBAtRankMask case_000852_rank case_000852_mask = case_000852_b := by
  rw [translationBAtRankMask, case_000852_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000852_b, case_000852_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000852_firstLine_eq :
    case_000852_support.firstLine case_000852_seq case_000852_b = case_000852_firstLine := by
  norm_num [case_000852_firstLine, case_000852_support, case_000852_seq, case_000852_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000852_secondLine_eq :
    case_000852_support.secondLine case_000852_seq case_000852_b = case_000852_secondLine := by
  norm_num [case_000852_secondLine, case_000852_support, case_000852_seq, case_000852_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000852_sourceAgrees :
    SourceAgrees case_000852_support case_000852_rank.val case_000852_mask := by
  intro hlt
  have hrank : (⟨case_000852_rank.val, hlt⟩ : Fin numPairWords) = case_000852_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000852_rank.val, hlt⟩ case_000852_mask =
        case_000852_seq := by
    simpa [hrank] using case_000852_seqAtRank
  simp [SourceChecks, hseq, case_000852_support,
    checkTranslationConstraintSource, case_000852_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000852_rows :
    EqEqPosVarFirstRows case_000852_support case_000852_rank.val case_000852_mask := by
  intro hlt
  have hrank : (⟨case_000852_rank.val, hlt⟩ : Fin numPairWords) = case_000852_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000852_rank.val, hlt⟩ case_000852_mask =
        case_000852_seq := by
    simpa [hrank] using case_000852_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000852_rank.val, hlt⟩ case_000852_mask =
        case_000852_b := by
    simpa [hrank] using case_000852_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000852_support case_000852_rank.val hlt
          case_000852_mask = case_000852_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000852_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000852_support case_000852_rank.val hlt
          case_000852_mask = case_000852_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000852_secondLine_eq]
  have case_000852_rowFirst :
      EqEqPosRow (FirstLineAt case_000852_support case_000852_rank.val hlt case_000852_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000852_firstLine, EqEqPosRow]
  have case_000852_fixedSecond :
      FixedRow (SecondLineAt case_000852_support case_000852_rank.val hlt case_000852_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000852_secondLine, FixedRow]
  exact ⟨case_000852_rowFirst, case_000852_fixedSecond⟩

private theorem case_000852_existsRows :
    ExistsEqEqPosVarFirstRows case_000852_rank.val case_000852_mask :=
  ⟨case_000852_support, case_000852_sourceAgrees, case_000852_rows⟩

private theorem case_000852_covered :
    RowPropertyParametricCovered case_000852_rank.val case_000852_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000852_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000853_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000853_mask : SignMask := ⟨13, by decide⟩
private def case_000853_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000853_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000853_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000853_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (-52/9) }
private def case_000853_firstLine : StrictLin2 := { a := 1, b := -1, c := (-55/29) }
private def case_000853_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000853_rankWord :
    rankPairWord? case_000853_word = some case_000853_rank := by
  decide

private theorem case_000853_unrank :
    unrankPairWord case_000853_rank = case_000853_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000853_word case_000853_rank).1
    case_000853_rankWord |>.symm

private theorem case_000853_seqChoice :
    translationChoiceSeq case_000853_word case_000853_mask = case_000853_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000853_seqAtRank :
    translationSeqAtRankMask case_000853_rank case_000853_mask = case_000853_seq := by
  rw [translationSeqAtRankMask, case_000853_unrank]
  exact case_000853_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000853_bAtRank :
    translationBAtRankMask case_000853_rank case_000853_mask = case_000853_b := by
  rw [translationBAtRankMask, case_000853_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000853_b, case_000853_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000853_firstLine_eq :
    case_000853_support.firstLine case_000853_seq case_000853_b = case_000853_firstLine := by
  norm_num [case_000853_firstLine, case_000853_support, case_000853_seq, case_000853_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000853_secondLine_eq :
    case_000853_support.secondLine case_000853_seq case_000853_b = case_000853_secondLine := by
  norm_num [case_000853_secondLine, case_000853_support, case_000853_seq, case_000853_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000853_sourceAgrees :
    SourceAgrees case_000853_support case_000853_rank.val case_000853_mask := by
  intro hlt
  have hrank : (⟨case_000853_rank.val, hlt⟩ : Fin numPairWords) = case_000853_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000853_rank.val, hlt⟩ case_000853_mask =
        case_000853_seq := by
    simpa [hrank] using case_000853_seqAtRank
  simp [SourceChecks, hseq, case_000853_support,
    checkTranslationConstraintSource, case_000853_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000853_rows :
    OppMinusOneVarFirstRows case_000853_support case_000853_rank.val case_000853_mask := by
  intro hlt
  have hrank : (⟨case_000853_rank.val, hlt⟩ : Fin numPairWords) = case_000853_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000853_rank.val, hlt⟩ case_000853_mask =
        case_000853_seq := by
    simpa [hrank] using case_000853_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000853_rank.val, hlt⟩ case_000853_mask =
        case_000853_b := by
    simpa [hrank] using case_000853_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000853_support case_000853_rank.val hlt
          case_000853_mask = case_000853_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000853_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000853_support case_000853_rank.val hlt
          case_000853_mask = case_000853_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000853_secondLine_eq]
  have case_000853_rowFirst :
      OppNegRow (FirstLineAt case_000853_support case_000853_rank.val hlt case_000853_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000853_firstLine, OppNegRow]
  have case_000853_fixedSecond :
      FixedRow (SecondLineAt case_000853_support case_000853_rank.val hlt case_000853_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000853_secondLine, FixedRow]
  exact ⟨case_000853_rowFirst, case_000853_fixedSecond⟩

private theorem case_000853_existsRows :
    ExistsOppMinusOneVarFirstRows case_000853_rank.val case_000853_mask :=
  ⟨case_000853_support, case_000853_sourceAgrees, case_000853_rows⟩

private theorem case_000853_covered :
    RowPropertyParametricCovered case_000853_rank.val case_000853_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000853_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000854_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000854_mask : SignMask := ⟨15, by decide⟩
private def case_000854_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000854_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000854_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000854_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (20/9) }
private def case_000854_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000854_secondLine : StrictLin2 := { a := (-29/518), b := (-29/518), c := (-31/259) }

private theorem case_000854_rankWord :
    rankPairWord? case_000854_word = some case_000854_rank := by
  decide

private theorem case_000854_unrank :
    unrankPairWord case_000854_rank = case_000854_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000854_word case_000854_rank).1
    case_000854_rankWord |>.symm

private theorem case_000854_seqChoice :
    translationChoiceSeq case_000854_word case_000854_mask = case_000854_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000854_seqAtRank :
    translationSeqAtRankMask case_000854_rank case_000854_mask = case_000854_seq := by
  rw [translationSeqAtRankMask, case_000854_unrank]
  exact case_000854_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000854_bAtRank :
    translationBAtRankMask case_000854_rank case_000854_mask = case_000854_b := by
  rw [translationBAtRankMask, case_000854_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000854_b, case_000854_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000854_firstLine_eq :
    case_000854_support.firstLine case_000854_seq case_000854_b = case_000854_firstLine := by
  norm_num [case_000854_firstLine, case_000854_support, case_000854_seq, case_000854_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000854_secondLine_eq :
    case_000854_support.secondLine case_000854_seq case_000854_b = case_000854_secondLine := by
  norm_num [case_000854_secondLine, case_000854_support, case_000854_seq, case_000854_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000854_sourceAgrees :
    SourceAgrees case_000854_support case_000854_rank.val case_000854_mask := by
  intro hlt
  have hrank : (⟨case_000854_rank.val, hlt⟩ : Fin numPairWords) = case_000854_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000854_rank.val, hlt⟩ case_000854_mask =
        case_000854_seq := by
    simpa [hrank] using case_000854_seqAtRank
  simp [SourceChecks, hseq, case_000854_support,
    checkTranslationConstraintSource, case_000854_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000854_rows :
    EqEqPosVarSecondRows case_000854_support case_000854_rank.val case_000854_mask := by
  intro hlt
  have hrank : (⟨case_000854_rank.val, hlt⟩ : Fin numPairWords) = case_000854_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000854_rank.val, hlt⟩ case_000854_mask =
        case_000854_seq := by
    simpa [hrank] using case_000854_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000854_rank.val, hlt⟩ case_000854_mask =
        case_000854_b := by
    simpa [hrank] using case_000854_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000854_support case_000854_rank.val hlt
          case_000854_mask = case_000854_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000854_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000854_support case_000854_rank.val hlt
          case_000854_mask = case_000854_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000854_secondLine_eq]
  have case_000854_fixedFirst :
      FixedRow (FirstLineAt case_000854_support case_000854_rank.val hlt case_000854_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000854_firstLine, FixedRow]
  have case_000854_rowSecond :
      EqEqPosRow (SecondLineAt case_000854_support case_000854_rank.val hlt case_000854_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000854_secondLine, EqEqPosRow]
  exact ⟨case_000854_fixedFirst, case_000854_rowSecond⟩

private theorem case_000854_existsRows :
    ExistsEqEqPosVarSecondRows case_000854_rank.val case_000854_mask :=
  ⟨case_000854_support, case_000854_sourceAgrees, case_000854_rows⟩

private theorem case_000854_covered :
    RowPropertyParametricCovered case_000854_rank.val case_000854_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000854_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000855_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000855_mask : SignMask := ⟨16, by decide⟩
private def case_000855_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000855_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000855_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000855_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000855_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000855_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000855_rankWord :
    rankPairWord? case_000855_word = some case_000855_rank := by
  decide

private theorem case_000855_unrank :
    unrankPairWord case_000855_rank = case_000855_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000855_word case_000855_rank).1
    case_000855_rankWord |>.symm

private theorem case_000855_seqChoice :
    translationChoiceSeq case_000855_word case_000855_mask = case_000855_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000855_seqAtRank :
    translationSeqAtRankMask case_000855_rank case_000855_mask = case_000855_seq := by
  rw [translationSeqAtRankMask, case_000855_unrank]
  exact case_000855_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000855_bAtRank :
    translationBAtRankMask case_000855_rank case_000855_mask = case_000855_b := by
  rw [translationBAtRankMask, case_000855_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000855_b, case_000855_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000855_firstLine_eq :
    case_000855_support.firstLine case_000855_seq case_000855_b = case_000855_firstLine := by
  norm_num [case_000855_firstLine, case_000855_support, case_000855_seq, case_000855_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000855_secondLine_eq :
    case_000855_support.secondLine case_000855_seq case_000855_b = case_000855_secondLine := by
  norm_num [case_000855_secondLine, case_000855_support, case_000855_seq, case_000855_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000855_sourceAgrees :
    SourceAgrees case_000855_support case_000855_rank.val case_000855_mask := by
  intro hlt
  have hrank : (⟨case_000855_rank.val, hlt⟩ : Fin numPairWords) = case_000855_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000855_rank.val, hlt⟩ case_000855_mask =
        case_000855_seq := by
    simpa [hrank] using case_000855_seqAtRank
  simp [SourceChecks, hseq, case_000855_support,
    checkTranslationConstraintSource, case_000855_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000855_rows :
    EqEqPosVarFirstRows case_000855_support case_000855_rank.val case_000855_mask := by
  intro hlt
  have hrank : (⟨case_000855_rank.val, hlt⟩ : Fin numPairWords) = case_000855_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000855_rank.val, hlt⟩ case_000855_mask =
        case_000855_seq := by
    simpa [hrank] using case_000855_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000855_rank.val, hlt⟩ case_000855_mask =
        case_000855_b := by
    simpa [hrank] using case_000855_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000855_support case_000855_rank.val hlt
          case_000855_mask = case_000855_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000855_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000855_support case_000855_rank.val hlt
          case_000855_mask = case_000855_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000855_secondLine_eq]
  have case_000855_rowFirst :
      EqEqPosRow (FirstLineAt case_000855_support case_000855_rank.val hlt case_000855_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000855_firstLine, EqEqPosRow]
  have case_000855_fixedSecond :
      FixedRow (SecondLineAt case_000855_support case_000855_rank.val hlt case_000855_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000855_secondLine, FixedRow]
  exact ⟨case_000855_rowFirst, case_000855_fixedSecond⟩

private theorem case_000855_existsRows :
    ExistsEqEqPosVarFirstRows case_000855_rank.val case_000855_mask :=
  ⟨case_000855_support, case_000855_sourceAgrees, case_000855_rows⟩

private theorem case_000855_covered :
    RowPropertyParametricCovered case_000855_rank.val case_000855_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000855_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000856_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000856_mask : SignMask := ⟨18, by decide⟩
private def case_000856_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000856_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000856_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000856_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000856_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000856_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000856_rankWord :
    rankPairWord? case_000856_word = some case_000856_rank := by
  decide

private theorem case_000856_unrank :
    unrankPairWord case_000856_rank = case_000856_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000856_word case_000856_rank).1
    case_000856_rankWord |>.symm

private theorem case_000856_seqChoice :
    translationChoiceSeq case_000856_word case_000856_mask = case_000856_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000856_seqAtRank :
    translationSeqAtRankMask case_000856_rank case_000856_mask = case_000856_seq := by
  rw [translationSeqAtRankMask, case_000856_unrank]
  exact case_000856_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000856_bAtRank :
    translationBAtRankMask case_000856_rank case_000856_mask = case_000856_b := by
  rw [translationBAtRankMask, case_000856_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000856_b, case_000856_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000856_firstLine_eq :
    case_000856_support.firstLine case_000856_seq case_000856_b = case_000856_firstLine := by
  norm_num [case_000856_firstLine, case_000856_support, case_000856_seq, case_000856_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000856_secondLine_eq :
    case_000856_support.secondLine case_000856_seq case_000856_b = case_000856_secondLine := by
  norm_num [case_000856_secondLine, case_000856_support, case_000856_seq, case_000856_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000856_sourceAgrees :
    SourceAgrees case_000856_support case_000856_rank.val case_000856_mask := by
  intro hlt
  have hrank : (⟨case_000856_rank.val, hlt⟩ : Fin numPairWords) = case_000856_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000856_rank.val, hlt⟩ case_000856_mask =
        case_000856_seq := by
    simpa [hrank] using case_000856_seqAtRank
  simp [SourceChecks, hseq, case_000856_support,
    checkTranslationConstraintSource, case_000856_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000856_rows :
    EqEqPosVarFirstRows case_000856_support case_000856_rank.val case_000856_mask := by
  intro hlt
  have hrank : (⟨case_000856_rank.val, hlt⟩ : Fin numPairWords) = case_000856_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000856_rank.val, hlt⟩ case_000856_mask =
        case_000856_seq := by
    simpa [hrank] using case_000856_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000856_rank.val, hlt⟩ case_000856_mask =
        case_000856_b := by
    simpa [hrank] using case_000856_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000856_support case_000856_rank.val hlt
          case_000856_mask = case_000856_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000856_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000856_support case_000856_rank.val hlt
          case_000856_mask = case_000856_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000856_secondLine_eq]
  have case_000856_rowFirst :
      EqEqPosRow (FirstLineAt case_000856_support case_000856_rank.val hlt case_000856_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000856_firstLine, EqEqPosRow]
  have case_000856_fixedSecond :
      FixedRow (SecondLineAt case_000856_support case_000856_rank.val hlt case_000856_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000856_secondLine, FixedRow]
  exact ⟨case_000856_rowFirst, case_000856_fixedSecond⟩

private theorem case_000856_existsRows :
    ExistsEqEqPosVarFirstRows case_000856_rank.val case_000856_mask :=
  ⟨case_000856_support, case_000856_sourceAgrees, case_000856_rows⟩

private theorem case_000856_covered :
    RowPropertyParametricCovered case_000856_rank.val case_000856_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000856_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000857_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000857_mask : SignMask := ⟨22, by decide⟩
private def case_000857_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000857_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000857_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000857_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000857_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000857_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000857_rankWord :
    rankPairWord? case_000857_word = some case_000857_rank := by
  decide

private theorem case_000857_unrank :
    unrankPairWord case_000857_rank = case_000857_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000857_word case_000857_rank).1
    case_000857_rankWord |>.symm

private theorem case_000857_seqChoice :
    translationChoiceSeq case_000857_word case_000857_mask = case_000857_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000857_seqAtRank :
    translationSeqAtRankMask case_000857_rank case_000857_mask = case_000857_seq := by
  rw [translationSeqAtRankMask, case_000857_unrank]
  exact case_000857_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000857_bAtRank :
    translationBAtRankMask case_000857_rank case_000857_mask = case_000857_b := by
  rw [translationBAtRankMask, case_000857_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000857_b, case_000857_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000857_firstLine_eq :
    case_000857_support.firstLine case_000857_seq case_000857_b = case_000857_firstLine := by
  norm_num [case_000857_firstLine, case_000857_support, case_000857_seq, case_000857_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000857_secondLine_eq :
    case_000857_support.secondLine case_000857_seq case_000857_b = case_000857_secondLine := by
  norm_num [case_000857_secondLine, case_000857_support, case_000857_seq, case_000857_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000857_sourceAgrees :
    SourceAgrees case_000857_support case_000857_rank.val case_000857_mask := by
  intro hlt
  have hrank : (⟨case_000857_rank.val, hlt⟩ : Fin numPairWords) = case_000857_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000857_rank.val, hlt⟩ case_000857_mask =
        case_000857_seq := by
    simpa [hrank] using case_000857_seqAtRank
  simp [SourceChecks, hseq, case_000857_support,
    checkTranslationConstraintSource, case_000857_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000857_rows :
    EqEqPosVarFirstRows case_000857_support case_000857_rank.val case_000857_mask := by
  intro hlt
  have hrank : (⟨case_000857_rank.val, hlt⟩ : Fin numPairWords) = case_000857_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000857_rank.val, hlt⟩ case_000857_mask =
        case_000857_seq := by
    simpa [hrank] using case_000857_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000857_rank.val, hlt⟩ case_000857_mask =
        case_000857_b := by
    simpa [hrank] using case_000857_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000857_support case_000857_rank.val hlt
          case_000857_mask = case_000857_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000857_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000857_support case_000857_rank.val hlt
          case_000857_mask = case_000857_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000857_secondLine_eq]
  have case_000857_rowFirst :
      EqEqPosRow (FirstLineAt case_000857_support case_000857_rank.val hlt case_000857_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000857_firstLine, EqEqPosRow]
  have case_000857_fixedSecond :
      FixedRow (SecondLineAt case_000857_support case_000857_rank.val hlt case_000857_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000857_secondLine, FixedRow]
  exact ⟨case_000857_rowFirst, case_000857_fixedSecond⟩

private theorem case_000857_existsRows :
    ExistsEqEqPosVarFirstRows case_000857_rank.val case_000857_mask :=
  ⟨case_000857_support, case_000857_sourceAgrees, case_000857_rows⟩

private theorem case_000857_covered :
    RowPropertyParametricCovered case_000857_rank.val case_000857_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000857_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000858_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000858_mask : SignMask := ⟨24, by decide⟩
private def case_000858_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000858_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000858_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000858_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000858_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000858_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000858_rankWord :
    rankPairWord? case_000858_word = some case_000858_rank := by
  decide

private theorem case_000858_unrank :
    unrankPairWord case_000858_rank = case_000858_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000858_word case_000858_rank).1
    case_000858_rankWord |>.symm

private theorem case_000858_seqChoice :
    translationChoiceSeq case_000858_word case_000858_mask = case_000858_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000858_seqAtRank :
    translationSeqAtRankMask case_000858_rank case_000858_mask = case_000858_seq := by
  rw [translationSeqAtRankMask, case_000858_unrank]
  exact case_000858_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000858_bAtRank :
    translationBAtRankMask case_000858_rank case_000858_mask = case_000858_b := by
  rw [translationBAtRankMask, case_000858_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000858_b, case_000858_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000858_firstLine_eq :
    case_000858_support.firstLine case_000858_seq case_000858_b = case_000858_firstLine := by
  norm_num [case_000858_firstLine, case_000858_support, case_000858_seq, case_000858_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000858_secondLine_eq :
    case_000858_support.secondLine case_000858_seq case_000858_b = case_000858_secondLine := by
  norm_num [case_000858_secondLine, case_000858_support, case_000858_seq, case_000858_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000858_sourceAgrees :
    SourceAgrees case_000858_support case_000858_rank.val case_000858_mask := by
  intro hlt
  have hrank : (⟨case_000858_rank.val, hlt⟩ : Fin numPairWords) = case_000858_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000858_rank.val, hlt⟩ case_000858_mask =
        case_000858_seq := by
    simpa [hrank] using case_000858_seqAtRank
  simp [SourceChecks, hseq, case_000858_support,
    checkTranslationConstraintSource, case_000858_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000858_rows :
    EqEqPosVarFirstRows case_000858_support case_000858_rank.val case_000858_mask := by
  intro hlt
  have hrank : (⟨case_000858_rank.val, hlt⟩ : Fin numPairWords) = case_000858_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000858_rank.val, hlt⟩ case_000858_mask =
        case_000858_seq := by
    simpa [hrank] using case_000858_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000858_rank.val, hlt⟩ case_000858_mask =
        case_000858_b := by
    simpa [hrank] using case_000858_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000858_support case_000858_rank.val hlt
          case_000858_mask = case_000858_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000858_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000858_support case_000858_rank.val hlt
          case_000858_mask = case_000858_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000858_secondLine_eq]
  have case_000858_rowFirst :
      EqEqPosRow (FirstLineAt case_000858_support case_000858_rank.val hlt case_000858_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000858_firstLine, EqEqPosRow]
  have case_000858_fixedSecond :
      FixedRow (SecondLineAt case_000858_support case_000858_rank.val hlt case_000858_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000858_secondLine, FixedRow]
  exact ⟨case_000858_rowFirst, case_000858_fixedSecond⟩

private theorem case_000858_existsRows :
    ExistsEqEqPosVarFirstRows case_000858_rank.val case_000858_mask :=
  ⟨case_000858_support, case_000858_sourceAgrees, case_000858_rows⟩

private theorem case_000858_covered :
    RowPropertyParametricCovered case_000858_rank.val case_000858_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000858_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000859_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000859_mask : SignMask := ⟨28, by decide⟩
private def case_000859_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000859_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000859_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000859_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000859_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000859_secondLine : StrictLin2 := { a := (1/4), b := (-1/4), c := (-1/2) }

private theorem case_000859_rankWord :
    rankPairWord? case_000859_word = some case_000859_rank := by
  decide

private theorem case_000859_unrank :
    unrankPairWord case_000859_rank = case_000859_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000859_word case_000859_rank).1
    case_000859_rankWord |>.symm

private theorem case_000859_seqChoice :
    translationChoiceSeq case_000859_word case_000859_mask = case_000859_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000859_seqAtRank :
    translationSeqAtRankMask case_000859_rank case_000859_mask = case_000859_seq := by
  rw [translationSeqAtRankMask, case_000859_unrank]
  exact case_000859_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000859_bAtRank :
    translationBAtRankMask case_000859_rank case_000859_mask = case_000859_b := by
  rw [translationBAtRankMask, case_000859_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000859_b, case_000859_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000859_firstLine_eq :
    case_000859_support.firstLine case_000859_seq case_000859_b = case_000859_firstLine := by
  norm_num [case_000859_firstLine, case_000859_support, case_000859_seq, case_000859_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000859_secondLine_eq :
    case_000859_support.secondLine case_000859_seq case_000859_b = case_000859_secondLine := by
  norm_num [case_000859_secondLine, case_000859_support, case_000859_seq, case_000859_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000859_sourceAgrees :
    SourceAgrees case_000859_support case_000859_rank.val case_000859_mask := by
  intro hlt
  have hrank : (⟨case_000859_rank.val, hlt⟩ : Fin numPairWords) = case_000859_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000859_rank.val, hlt⟩ case_000859_mask =
        case_000859_seq := by
    simpa [hrank] using case_000859_seqAtRank
  simp [SourceChecks, hseq, case_000859_support,
    checkTranslationConstraintSource, case_000859_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000859_rows :
    OppMinusOneVarSecondRows case_000859_support case_000859_rank.val case_000859_mask := by
  intro hlt
  have hrank : (⟨case_000859_rank.val, hlt⟩ : Fin numPairWords) = case_000859_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000859_rank.val, hlt⟩ case_000859_mask =
        case_000859_seq := by
    simpa [hrank] using case_000859_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000859_rank.val, hlt⟩ case_000859_mask =
        case_000859_b := by
    simpa [hrank] using case_000859_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000859_support case_000859_rank.val hlt
          case_000859_mask = case_000859_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000859_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000859_support case_000859_rank.val hlt
          case_000859_mask = case_000859_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000859_secondLine_eq]
  have case_000859_fixedFirst :
      FixedRow (FirstLineAt case_000859_support case_000859_rank.val hlt case_000859_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000859_firstLine, FixedRow]
  have case_000859_rowSecond :
      OppNegRow (SecondLineAt case_000859_support case_000859_rank.val hlt case_000859_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000859_secondLine, OppNegRow]
  exact ⟨case_000859_fixedFirst, case_000859_rowSecond⟩

private theorem case_000859_existsRows :
    ExistsOppMinusOneVarSecondRows case_000859_rank.val case_000859_mask :=
  ⟨case_000859_support, case_000859_sourceAgrees, case_000859_rows⟩

private theorem case_000859_covered :
    RowPropertyParametricCovered case_000859_rank.val case_000859_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000859_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000860_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000860_mask : SignMask := ⟨30, by decide⟩
private def case_000860_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000860_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000860_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000860_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000860_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000860_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000860_rankWord :
    rankPairWord? case_000860_word = some case_000860_rank := by
  decide

private theorem case_000860_unrank :
    unrankPairWord case_000860_rank = case_000860_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000860_word case_000860_rank).1
    case_000860_rankWord |>.symm

private theorem case_000860_seqChoice :
    translationChoiceSeq case_000860_word case_000860_mask = case_000860_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000860_seqAtRank :
    translationSeqAtRankMask case_000860_rank case_000860_mask = case_000860_seq := by
  rw [translationSeqAtRankMask, case_000860_unrank]
  exact case_000860_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000860_bAtRank :
    translationBAtRankMask case_000860_rank case_000860_mask = case_000860_b := by
  rw [translationBAtRankMask, case_000860_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000860_b, case_000860_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000860_firstLine_eq :
    case_000860_support.firstLine case_000860_seq case_000860_b = case_000860_firstLine := by
  norm_num [case_000860_firstLine, case_000860_support, case_000860_seq, case_000860_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000860_secondLine_eq :
    case_000860_support.secondLine case_000860_seq case_000860_b = case_000860_secondLine := by
  norm_num [case_000860_secondLine, case_000860_support, case_000860_seq, case_000860_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000860_sourceAgrees :
    SourceAgrees case_000860_support case_000860_rank.val case_000860_mask := by
  intro hlt
  have hrank : (⟨case_000860_rank.val, hlt⟩ : Fin numPairWords) = case_000860_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000860_rank.val, hlt⟩ case_000860_mask =
        case_000860_seq := by
    simpa [hrank] using case_000860_seqAtRank
  simp [SourceChecks, hseq, case_000860_support,
    checkTranslationConstraintSource, case_000860_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000860_rows :
    EqEqPosVarFirstRows case_000860_support case_000860_rank.val case_000860_mask := by
  intro hlt
  have hrank : (⟨case_000860_rank.val, hlt⟩ : Fin numPairWords) = case_000860_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000860_rank.val, hlt⟩ case_000860_mask =
        case_000860_seq := by
    simpa [hrank] using case_000860_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000860_rank.val, hlt⟩ case_000860_mask =
        case_000860_b := by
    simpa [hrank] using case_000860_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000860_support case_000860_rank.val hlt
          case_000860_mask = case_000860_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000860_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000860_support case_000860_rank.val hlt
          case_000860_mask = case_000860_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000860_secondLine_eq]
  have case_000860_rowFirst :
      EqEqPosRow (FirstLineAt case_000860_support case_000860_rank.val hlt case_000860_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000860_firstLine, EqEqPosRow]
  have case_000860_fixedSecond :
      FixedRow (SecondLineAt case_000860_support case_000860_rank.val hlt case_000860_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000860_secondLine, FixedRow]
  exact ⟨case_000860_rowFirst, case_000860_fixedSecond⟩

private theorem case_000860_existsRows :
    ExistsEqEqPosVarFirstRows case_000860_rank.val case_000860_mask :=
  ⟨case_000860_support, case_000860_sourceAgrees, case_000860_rows⟩

private theorem case_000860_covered :
    RowPropertyParametricCovered case_000860_rank.val case_000860_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000860_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000861_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000861_mask : SignMask := ⟨54, by decide⟩
private def case_000861_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000861_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000861_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000861_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (100/9) }
private def case_000861_firstLine : StrictLin2 := { a := -1, b := 1, c := -83 }
private def case_000861_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000861_rankWord :
    rankPairWord? case_000861_word = some case_000861_rank := by
  decide

private theorem case_000861_unrank :
    unrankPairWord case_000861_rank = case_000861_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000861_word case_000861_rank).1
    case_000861_rankWord |>.symm

private theorem case_000861_seqChoice :
    translationChoiceSeq case_000861_word case_000861_mask = case_000861_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000861_seqAtRank :
    translationSeqAtRankMask case_000861_rank case_000861_mask = case_000861_seq := by
  rw [translationSeqAtRankMask, case_000861_unrank]
  exact case_000861_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000861_bAtRank :
    translationBAtRankMask case_000861_rank case_000861_mask = case_000861_b := by
  rw [translationBAtRankMask, case_000861_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000861_b, case_000861_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000861_firstLine_eq :
    case_000861_support.firstLine case_000861_seq case_000861_b = case_000861_firstLine := by
  norm_num [case_000861_firstLine, case_000861_support, case_000861_seq, case_000861_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000861_secondLine_eq :
    case_000861_support.secondLine case_000861_seq case_000861_b = case_000861_secondLine := by
  norm_num [case_000861_secondLine, case_000861_support, case_000861_seq, case_000861_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000861_sourceAgrees :
    SourceAgrees case_000861_support case_000861_rank.val case_000861_mask := by
  intro hlt
  have hrank : (⟨case_000861_rank.val, hlt⟩ : Fin numPairWords) = case_000861_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000861_rank.val, hlt⟩ case_000861_mask =
        case_000861_seq := by
    simpa [hrank] using case_000861_seqAtRank
  simp [SourceChecks, hseq, case_000861_support,
    checkTranslationConstraintSource, case_000861_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000861_rows :
    OppOneMinusVarFirstRows case_000861_support case_000861_rank.val case_000861_mask := by
  intro hlt
  have hrank : (⟨case_000861_rank.val, hlt⟩ : Fin numPairWords) = case_000861_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000861_rank.val, hlt⟩ case_000861_mask =
        case_000861_seq := by
    simpa [hrank] using case_000861_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000861_rank.val, hlt⟩ case_000861_mask =
        case_000861_b := by
    simpa [hrank] using case_000861_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000861_support case_000861_rank.val hlt
          case_000861_mask = case_000861_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000861_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000861_support case_000861_rank.val hlt
          case_000861_mask = case_000861_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000861_secondLine_eq]
  have case_000861_rowFirst :
      OppPosRow (FirstLineAt case_000861_support case_000861_rank.val hlt case_000861_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000861_firstLine, OppPosRow]
  have case_000861_fixedSecond :
      FixedRow (SecondLineAt case_000861_support case_000861_rank.val hlt case_000861_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000861_secondLine, FixedRow]
  exact ⟨case_000861_rowFirst, case_000861_fixedSecond⟩

private theorem case_000861_existsRows :
    ExistsOppOneMinusVarFirstRows case_000861_rank.val case_000861_mask :=
  ⟨case_000861_support, case_000861_sourceAgrees, case_000861_rows⟩

private theorem case_000861_covered :
    RowPropertyParametricCovered case_000861_rank.val case_000861_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000861_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000862_rank : Fin numPairWords := ⟨627, by decide⟩
private def case_000862_mask : SignMask := ⟨55, by decide⟩
private def case_000862_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000862_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000862_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000862_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (100/9) }
private def case_000862_firstLine : StrictLin2 := { a := -1, b := 1, c := -47 }
private def case_000862_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000862_rankWord :
    rankPairWord? case_000862_word = some case_000862_rank := by
  decide

private theorem case_000862_unrank :
    unrankPairWord case_000862_rank = case_000862_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000862_word case_000862_rank).1
    case_000862_rankWord |>.symm

private theorem case_000862_seqChoice :
    translationChoiceSeq case_000862_word case_000862_mask = case_000862_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000862_seqAtRank :
    translationSeqAtRankMask case_000862_rank case_000862_mask = case_000862_seq := by
  rw [translationSeqAtRankMask, case_000862_unrank]
  exact case_000862_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000862_bAtRank :
    translationBAtRankMask case_000862_rank case_000862_mask = case_000862_b := by
  rw [translationBAtRankMask, case_000862_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000862_b, case_000862_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000862_firstLine_eq :
    case_000862_support.firstLine case_000862_seq case_000862_b = case_000862_firstLine := by
  norm_num [case_000862_firstLine, case_000862_support, case_000862_seq, case_000862_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000862_secondLine_eq :
    case_000862_support.secondLine case_000862_seq case_000862_b = case_000862_secondLine := by
  norm_num [case_000862_secondLine, case_000862_support, case_000862_seq, case_000862_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000862_sourceAgrees :
    SourceAgrees case_000862_support case_000862_rank.val case_000862_mask := by
  intro hlt
  have hrank : (⟨case_000862_rank.val, hlt⟩ : Fin numPairWords) = case_000862_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000862_rank.val, hlt⟩ case_000862_mask =
        case_000862_seq := by
    simpa [hrank] using case_000862_seqAtRank
  simp [SourceChecks, hseq, case_000862_support,
    checkTranslationConstraintSource, case_000862_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000862_rows :
    OppOneMinusVarFirstRows case_000862_support case_000862_rank.val case_000862_mask := by
  intro hlt
  have hrank : (⟨case_000862_rank.val, hlt⟩ : Fin numPairWords) = case_000862_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000862_rank.val, hlt⟩ case_000862_mask =
        case_000862_seq := by
    simpa [hrank] using case_000862_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000862_rank.val, hlt⟩ case_000862_mask =
        case_000862_b := by
    simpa [hrank] using case_000862_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000862_support case_000862_rank.val hlt
          case_000862_mask = case_000862_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000862_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000862_support case_000862_rank.val hlt
          case_000862_mask = case_000862_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000862_secondLine_eq]
  have case_000862_rowFirst :
      OppPosRow (FirstLineAt case_000862_support case_000862_rank.val hlt case_000862_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000862_firstLine, OppPosRow]
  have case_000862_fixedSecond :
      FixedRow (SecondLineAt case_000862_support case_000862_rank.val hlt case_000862_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000862_secondLine, FixedRow]
  exact ⟨case_000862_rowFirst, case_000862_fixedSecond⟩

private theorem case_000862_existsRows :
    ExistsOppOneMinusVarFirstRows case_000862_rank.val case_000862_mask :=
  ⟨case_000862_support, case_000862_sourceAgrees, case_000862_rows⟩

private theorem case_000862_covered :
    RowPropertyParametricCovered case_000862_rank.val case_000862_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000862_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000863_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000863_mask : SignMask := ⟨7, by decide⟩
private def case_000863_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000863_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000863_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000863_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000863_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000863_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000863_rankWord :
    rankPairWord? case_000863_word = some case_000863_rank := by
  decide

private theorem case_000863_unrank :
    unrankPairWord case_000863_rank = case_000863_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000863_word case_000863_rank).1
    case_000863_rankWord |>.symm

private theorem case_000863_seqChoice :
    translationChoiceSeq case_000863_word case_000863_mask = case_000863_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000863_seqAtRank :
    translationSeqAtRankMask case_000863_rank case_000863_mask = case_000863_seq := by
  rw [translationSeqAtRankMask, case_000863_unrank]
  exact case_000863_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000863_bAtRank :
    translationBAtRankMask case_000863_rank case_000863_mask = case_000863_b := by
  rw [translationBAtRankMask, case_000863_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000863_b, case_000863_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000863_firstLine_eq :
    case_000863_support.firstLine case_000863_seq case_000863_b = case_000863_firstLine := by
  norm_num [case_000863_firstLine, case_000863_support, case_000863_seq, case_000863_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000863_secondLine_eq :
    case_000863_support.secondLine case_000863_seq case_000863_b = case_000863_secondLine := by
  norm_num [case_000863_secondLine, case_000863_support, case_000863_seq, case_000863_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000863_sourceAgrees :
    SourceAgrees case_000863_support case_000863_rank.val case_000863_mask := by
  intro hlt
  have hrank : (⟨case_000863_rank.val, hlt⟩ : Fin numPairWords) = case_000863_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000863_rank.val, hlt⟩ case_000863_mask =
        case_000863_seq := by
    simpa [hrank] using case_000863_seqAtRank
  simp [SourceChecks, hseq, case_000863_support,
    checkTranslationConstraintSource, case_000863_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000863_rows :
    EqEqPosVarFirstRows case_000863_support case_000863_rank.val case_000863_mask := by
  intro hlt
  have hrank : (⟨case_000863_rank.val, hlt⟩ : Fin numPairWords) = case_000863_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000863_rank.val, hlt⟩ case_000863_mask =
        case_000863_seq := by
    simpa [hrank] using case_000863_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000863_rank.val, hlt⟩ case_000863_mask =
        case_000863_b := by
    simpa [hrank] using case_000863_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000863_support case_000863_rank.val hlt
          case_000863_mask = case_000863_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000863_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000863_support case_000863_rank.val hlt
          case_000863_mask = case_000863_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000863_secondLine_eq]
  have case_000863_rowFirst :
      EqEqPosRow (FirstLineAt case_000863_support case_000863_rank.val hlt case_000863_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000863_firstLine, EqEqPosRow]
  have case_000863_fixedSecond :
      FixedRow (SecondLineAt case_000863_support case_000863_rank.val hlt case_000863_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000863_secondLine, FixedRow]
  exact ⟨case_000863_rowFirst, case_000863_fixedSecond⟩

private theorem case_000863_existsRows :
    ExistsEqEqPosVarFirstRows case_000863_rank.val case_000863_mask :=
  ⟨case_000863_support, case_000863_sourceAgrees, case_000863_rows⟩

private theorem case_000863_covered :
    RowPropertyParametricCovered case_000863_rank.val case_000863_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000863_existsRows

inductive Group026Covered : Nat -> SignMask -> Prop
  | case_000832 : Group026Covered case_000832_rank.val case_000832_mask
  | case_000833 : Group026Covered case_000833_rank.val case_000833_mask
  | case_000834 : Group026Covered case_000834_rank.val case_000834_mask
  | case_000835 : Group026Covered case_000835_rank.val case_000835_mask
  | case_000836 : Group026Covered case_000836_rank.val case_000836_mask
  | case_000837 : Group026Covered case_000837_rank.val case_000837_mask
  | case_000838 : Group026Covered case_000838_rank.val case_000838_mask
  | case_000839 : Group026Covered case_000839_rank.val case_000839_mask
  | case_000840 : Group026Covered case_000840_rank.val case_000840_mask
  | case_000841 : Group026Covered case_000841_rank.val case_000841_mask
  | case_000842 : Group026Covered case_000842_rank.val case_000842_mask
  | case_000843 : Group026Covered case_000843_rank.val case_000843_mask
  | case_000844 : Group026Covered case_000844_rank.val case_000844_mask
  | case_000845 : Group026Covered case_000845_rank.val case_000845_mask
  | case_000846 : Group026Covered case_000846_rank.val case_000846_mask
  | case_000847 : Group026Covered case_000847_rank.val case_000847_mask
  | case_000848 : Group026Covered case_000848_rank.val case_000848_mask
  | case_000849 : Group026Covered case_000849_rank.val case_000849_mask
  | case_000850 : Group026Covered case_000850_rank.val case_000850_mask
  | case_000851 : Group026Covered case_000851_rank.val case_000851_mask
  | case_000852 : Group026Covered case_000852_rank.val case_000852_mask
  | case_000853 : Group026Covered case_000853_rank.val case_000853_mask
  | case_000854 : Group026Covered case_000854_rank.val case_000854_mask
  | case_000855 : Group026Covered case_000855_rank.val case_000855_mask
  | case_000856 : Group026Covered case_000856_rank.val case_000856_mask
  | case_000857 : Group026Covered case_000857_rank.val case_000857_mask
  | case_000858 : Group026Covered case_000858_rank.val case_000858_mask
  | case_000859 : Group026Covered case_000859_rank.val case_000859_mask
  | case_000860 : Group026Covered case_000860_rank.val case_000860_mask
  | case_000861 : Group026Covered case_000861_rank.val case_000861_mask
  | case_000862 : Group026Covered case_000862_rank.val case_000862_mask
  | case_000863 : Group026Covered case_000863_rank.val case_000863_mask

theorem Group026GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group026Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000832 =>
      exact RowPropertyParametricCovered.kills case_000832_covered
  | case_000833 =>
      exact RowPropertyParametricCovered.kills case_000833_covered
  | case_000834 =>
      exact RowPropertyParametricCovered.kills case_000834_covered
  | case_000835 =>
      exact RowPropertyParametricCovered.kills case_000835_covered
  | case_000836 =>
      exact RowPropertyParametricCovered.kills case_000836_covered
  | case_000837 =>
      exact RowPropertyParametricCovered.kills case_000837_covered
  | case_000838 =>
      exact RowPropertyParametricCovered.kills case_000838_covered
  | case_000839 =>
      exact RowPropertyParametricCovered.kills case_000839_covered
  | case_000840 =>
      exact RowPropertyParametricCovered.kills case_000840_covered
  | case_000841 =>
      exact RowPropertyParametricCovered.kills case_000841_covered
  | case_000842 =>
      exact RowPropertyParametricCovered.kills case_000842_covered
  | case_000843 =>
      exact RowPropertyParametricCovered.kills case_000843_covered
  | case_000844 =>
      exact RowPropertyParametricCovered.kills case_000844_covered
  | case_000845 =>
      exact RowPropertyParametricCovered.kills case_000845_covered
  | case_000846 =>
      exact RowPropertyParametricCovered.kills case_000846_covered
  | case_000847 =>
      exact RowPropertyParametricCovered.kills case_000847_covered
  | case_000848 =>
      exact RowPropertyParametricCovered.kills case_000848_covered
  | case_000849 =>
      exact RowPropertyParametricCovered.kills case_000849_covered
  | case_000850 =>
      exact RowPropertyParametricCovered.kills case_000850_covered
  | case_000851 =>
      exact RowPropertyParametricCovered.kills case_000851_covered
  | case_000852 =>
      exact RowPropertyParametricCovered.kills case_000852_covered
  | case_000853 =>
      exact RowPropertyParametricCovered.kills case_000853_covered
  | case_000854 =>
      exact RowPropertyParametricCovered.kills case_000854_covered
  | case_000855 =>
      exact RowPropertyParametricCovered.kills case_000855_covered
  | case_000856 =>
      exact RowPropertyParametricCovered.kills case_000856_covered
  | case_000857 =>
      exact RowPropertyParametricCovered.kills case_000857_covered
  | case_000858 =>
      exact RowPropertyParametricCovered.kills case_000858_covered
  | case_000859 =>
      exact RowPropertyParametricCovered.kills case_000859_covered
  | case_000860 =>
      exact RowPropertyParametricCovered.kills case_000860_covered
  | case_000861 =>
      exact RowPropertyParametricCovered.kills case_000861_covered
  | case_000862 =>
      exact RowPropertyParametricCovered.kills case_000862_covered
  | case_000863 =>
      exact RowPropertyParametricCovered.kills case_000863_covered

theorem Group026_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group026
