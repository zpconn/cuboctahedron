import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group001

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
private def case_000032_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000032_mask : SignMask := ⟨16, by decide⟩
private def case_000032_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000032_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000032_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_000032_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_000032_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000032_rankWord :
    rankPairWord? case_000032_word = some case_000032_rank := by
  decide

private theorem case_000032_unrank :
    unrankPairWord case_000032_rank = case_000032_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000032_word case_000032_rank).1
    case_000032_rankWord |>.symm

private theorem case_000032_seqChoice :
    translationChoiceSeq case_000032_word case_000032_mask = case_000032_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000032_seqAtRank :
    translationSeqAtRankMask case_000032_rank case_000032_mask = case_000032_seq := by
  rw [translationSeqAtRankMask, case_000032_unrank]
  exact case_000032_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000032_bAtRank :
    translationBAtRankMask case_000032_rank case_000032_mask = case_000032_b := by
  rw [translationBAtRankMask, case_000032_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000032_b, case_000032_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000032_firstLine_eq :
    case_000032_support.firstLine case_000032_seq case_000032_b = case_000032_firstLine := by
  norm_num [case_000032_firstLine, case_000032_support, case_000032_seq, case_000032_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000032_secondLine_eq :
    case_000032_support.secondLine case_000032_seq case_000032_b = case_000032_secondLine := by
  norm_num [case_000032_secondLine, case_000032_support, case_000032_seq, case_000032_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000032_sourceAgrees :
    SourceAgrees case_000032_support case_000032_rank.val case_000032_mask := by
  intro hlt
  have hrank : (⟨case_000032_rank.val, hlt⟩ : Fin numPairWords) = case_000032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_seq := by
    simpa [hrank] using case_000032_seqAtRank
  simp [SourceChecks, hseq, case_000032_support,
    checkTranslationConstraintSource, case_000032_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000032_rows :
    EqEqPosVarFirstRows case_000032_support case_000032_rank.val case_000032_mask := by
  intro hlt
  have hrank : (⟨case_000032_rank.val, hlt⟩ : Fin numPairWords) = case_000032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_seq := by
    simpa [hrank] using case_000032_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_b := by
    simpa [hrank] using case_000032_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000032_support case_000032_rank.val hlt
          case_000032_mask = case_000032_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000032_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000032_support case_000032_rank.val hlt
          case_000032_mask = case_000032_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000032_secondLine_eq]
  have case_000032_rowFirst :
      EqEqPosRow (FirstLineAt case_000032_support case_000032_rank.val hlt case_000032_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000032_firstLine, EqEqPosRow]
  have case_000032_fixedSecond :
      FixedRow (SecondLineAt case_000032_support case_000032_rank.val hlt case_000032_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000032_secondLine, FixedRow]
  exact ⟨case_000032_rowFirst, case_000032_fixedSecond⟩

private theorem case_000032_existsRows :
    ExistsEqEqPosVarFirstRows case_000032_rank.val case_000032_mask :=
  ⟨case_000032_support, case_000032_sourceAgrees, case_000032_rows⟩

private theorem case_000032_covered :
    RowPropertyParametricCovered case_000032_rank.val case_000032_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000032_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000033_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000033_mask : SignMask := ⟨18, by decide⟩
private def case_000033_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000033_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000033_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (52/9) }
private def case_000033_firstLine : StrictLin2 := { a := -1, b := -1, c := (-27/5) }
private def case_000033_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000033_rankWord :
    rankPairWord? case_000033_word = some case_000033_rank := by
  decide

private theorem case_000033_unrank :
    unrankPairWord case_000033_rank = case_000033_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000033_word case_000033_rank).1
    case_000033_rankWord |>.symm

private theorem case_000033_seqChoice :
    translationChoiceSeq case_000033_word case_000033_mask = case_000033_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000033_seqAtRank :
    translationSeqAtRankMask case_000033_rank case_000033_mask = case_000033_seq := by
  rw [translationSeqAtRankMask, case_000033_unrank]
  exact case_000033_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000033_bAtRank :
    translationBAtRankMask case_000033_rank case_000033_mask = case_000033_b := by
  rw [translationBAtRankMask, case_000033_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000033_b, case_000033_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000033_firstLine_eq :
    case_000033_support.firstLine case_000033_seq case_000033_b = case_000033_firstLine := by
  norm_num [case_000033_firstLine, case_000033_support, case_000033_seq, case_000033_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000033_secondLine_eq :
    case_000033_support.secondLine case_000033_seq case_000033_b = case_000033_secondLine := by
  norm_num [case_000033_secondLine, case_000033_support, case_000033_seq, case_000033_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000033_sourceAgrees :
    SourceAgrees case_000033_support case_000033_rank.val case_000033_mask := by
  intro hlt
  have hrank : (⟨case_000033_rank.val, hlt⟩ : Fin numPairWords) = case_000033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_seq := by
    simpa [hrank] using case_000033_seqAtRank
  simp [SourceChecks, hseq, case_000033_support,
    checkTranslationConstraintSource, case_000033_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000033_rows :
    EqEqPosVarFirstRows case_000033_support case_000033_rank.val case_000033_mask := by
  intro hlt
  have hrank : (⟨case_000033_rank.val, hlt⟩ : Fin numPairWords) = case_000033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_seq := by
    simpa [hrank] using case_000033_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_b := by
    simpa [hrank] using case_000033_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000033_support case_000033_rank.val hlt
          case_000033_mask = case_000033_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000033_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000033_support case_000033_rank.val hlt
          case_000033_mask = case_000033_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000033_secondLine_eq]
  have case_000033_rowFirst :
      EqEqPosRow (FirstLineAt case_000033_support case_000033_rank.val hlt case_000033_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000033_firstLine, EqEqPosRow]
  have case_000033_fixedSecond :
      FixedRow (SecondLineAt case_000033_support case_000033_rank.val hlt case_000033_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000033_secondLine, FixedRow]
  exact ⟨case_000033_rowFirst, case_000033_fixedSecond⟩

private theorem case_000033_existsRows :
    ExistsEqEqPosVarFirstRows case_000033_rank.val case_000033_mask :=
  ⟨case_000033_support, case_000033_sourceAgrees, case_000033_rows⟩

private theorem case_000033_covered :
    RowPropertyParametricCovered case_000033_rank.val case_000033_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000033_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000034_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000034_mask : SignMask := ⟨22, by decide⟩
private def case_000034_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000034_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000034_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (100/9) }
private def case_000034_firstLine : StrictLin2 := { a := (-17/9), b := (-17/9), c := (-71/27) }
private def case_000034_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000034_rankWord :
    rankPairWord? case_000034_word = some case_000034_rank := by
  decide

private theorem case_000034_unrank :
    unrankPairWord case_000034_rank = case_000034_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000034_word case_000034_rank).1
    case_000034_rankWord |>.symm

private theorem case_000034_seqChoice :
    translationChoiceSeq case_000034_word case_000034_mask = case_000034_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000034_seqAtRank :
    translationSeqAtRankMask case_000034_rank case_000034_mask = case_000034_seq := by
  rw [translationSeqAtRankMask, case_000034_unrank]
  exact case_000034_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000034_bAtRank :
    translationBAtRankMask case_000034_rank case_000034_mask = case_000034_b := by
  rw [translationBAtRankMask, case_000034_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000034_b, case_000034_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000034_firstLine_eq :
    case_000034_support.firstLine case_000034_seq case_000034_b = case_000034_firstLine := by
  norm_num [case_000034_firstLine, case_000034_support, case_000034_seq, case_000034_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000034_secondLine_eq :
    case_000034_support.secondLine case_000034_seq case_000034_b = case_000034_secondLine := by
  norm_num [case_000034_secondLine, case_000034_support, case_000034_seq, case_000034_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000034_sourceAgrees :
    SourceAgrees case_000034_support case_000034_rank.val case_000034_mask := by
  intro hlt
  have hrank : (⟨case_000034_rank.val, hlt⟩ : Fin numPairWords) = case_000034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_seq := by
    simpa [hrank] using case_000034_seqAtRank
  simp [SourceChecks, hseq, case_000034_support,
    checkTranslationConstraintSource, case_000034_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000034_rows :
    EqEqPosVarFirstRows case_000034_support case_000034_rank.val case_000034_mask := by
  intro hlt
  have hrank : (⟨case_000034_rank.val, hlt⟩ : Fin numPairWords) = case_000034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_seq := by
    simpa [hrank] using case_000034_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_b := by
    simpa [hrank] using case_000034_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000034_support case_000034_rank.val hlt
          case_000034_mask = case_000034_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000034_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000034_support case_000034_rank.val hlt
          case_000034_mask = case_000034_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000034_secondLine_eq]
  have case_000034_rowFirst :
      EqEqPosRow (FirstLineAt case_000034_support case_000034_rank.val hlt case_000034_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000034_firstLine, EqEqPosRow]
  have case_000034_fixedSecond :
      FixedRow (SecondLineAt case_000034_support case_000034_rank.val hlt case_000034_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000034_secondLine, FixedRow]
  exact ⟨case_000034_rowFirst, case_000034_fixedSecond⟩

private theorem case_000034_existsRows :
    ExistsEqEqPosVarFirstRows case_000034_rank.val case_000034_mask :=
  ⟨case_000034_support, case_000034_sourceAgrees, case_000034_rows⟩

private theorem case_000034_covered :
    RowPropertyParametricCovered case_000034_rank.val case_000034_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000034_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000035_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000035_mask : SignMask := ⟨28, by decide⟩
private def case_000035_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000035_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000035_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_000035_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000035_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000035_rankWord :
    rankPairWord? case_000035_word = some case_000035_rank := by
  decide

private theorem case_000035_unrank :
    unrankPairWord case_000035_rank = case_000035_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000035_word case_000035_rank).1
    case_000035_rankWord |>.symm

private theorem case_000035_seqChoice :
    translationChoiceSeq case_000035_word case_000035_mask = case_000035_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000035_seqAtRank :
    translationSeqAtRankMask case_000035_rank case_000035_mask = case_000035_seq := by
  rw [translationSeqAtRankMask, case_000035_unrank]
  exact case_000035_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000035_bAtRank :
    translationBAtRankMask case_000035_rank case_000035_mask = case_000035_b := by
  rw [translationBAtRankMask, case_000035_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000035_b, case_000035_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000035_firstLine_eq :
    case_000035_support.firstLine case_000035_seq case_000035_b = case_000035_firstLine := by
  norm_num [case_000035_firstLine, case_000035_support, case_000035_seq, case_000035_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000035_secondLine_eq :
    case_000035_support.secondLine case_000035_seq case_000035_b = case_000035_secondLine := by
  norm_num [case_000035_secondLine, case_000035_support, case_000035_seq, case_000035_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000035_sourceAgrees :
    SourceAgrees case_000035_support case_000035_rank.val case_000035_mask := by
  intro hlt
  have hrank : (⟨case_000035_rank.val, hlt⟩ : Fin numPairWords) = case_000035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_seq := by
    simpa [hrank] using case_000035_seqAtRank
  simp [SourceChecks, hseq, case_000035_support,
    checkTranslationConstraintSource, case_000035_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000035_rows :
    OppOneMinusVarFirstRows case_000035_support case_000035_rank.val case_000035_mask := by
  intro hlt
  have hrank : (⟨case_000035_rank.val, hlt⟩ : Fin numPairWords) = case_000035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_seq := by
    simpa [hrank] using case_000035_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_b := by
    simpa [hrank] using case_000035_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000035_support case_000035_rank.val hlt
          case_000035_mask = case_000035_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000035_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000035_support case_000035_rank.val hlt
          case_000035_mask = case_000035_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000035_secondLine_eq]
  have case_000035_rowFirst :
      OppPosRow (FirstLineAt case_000035_support case_000035_rank.val hlt case_000035_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000035_firstLine, OppPosRow]
  have case_000035_fixedSecond :
      FixedRow (SecondLineAt case_000035_support case_000035_rank.val hlt case_000035_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000035_secondLine, FixedRow]
  exact ⟨case_000035_rowFirst, case_000035_fixedSecond⟩

private theorem case_000035_existsRows :
    ExistsOppOneMinusVarFirstRows case_000035_rank.val case_000035_mask :=
  ⟨case_000035_support, case_000035_sourceAgrees, case_000035_rows⟩

private theorem case_000035_covered :
    RowPropertyParametricCovered case_000035_rank.val case_000035_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000035_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000036_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000036_mask : SignMask := ⟨30, by decide⟩
private def case_000036_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000036_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000036_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (52/9) }
private def case_000036_firstLine : StrictLin2 := { a := (-58/37), b := (-58/37), c := (-308/111) }
private def case_000036_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000036_rankWord :
    rankPairWord? case_000036_word = some case_000036_rank := by
  decide

private theorem case_000036_unrank :
    unrankPairWord case_000036_rank = case_000036_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000036_word case_000036_rank).1
    case_000036_rankWord |>.symm

private theorem case_000036_seqChoice :
    translationChoiceSeq case_000036_word case_000036_mask = case_000036_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000036_seqAtRank :
    translationSeqAtRankMask case_000036_rank case_000036_mask = case_000036_seq := by
  rw [translationSeqAtRankMask, case_000036_unrank]
  exact case_000036_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000036_bAtRank :
    translationBAtRankMask case_000036_rank case_000036_mask = case_000036_b := by
  rw [translationBAtRankMask, case_000036_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000036_b, case_000036_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000036_firstLine_eq :
    case_000036_support.firstLine case_000036_seq case_000036_b = case_000036_firstLine := by
  norm_num [case_000036_firstLine, case_000036_support, case_000036_seq, case_000036_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000036_secondLine_eq :
    case_000036_support.secondLine case_000036_seq case_000036_b = case_000036_secondLine := by
  norm_num [case_000036_secondLine, case_000036_support, case_000036_seq, case_000036_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000036_sourceAgrees :
    SourceAgrees case_000036_support case_000036_rank.val case_000036_mask := by
  intro hlt
  have hrank : (⟨case_000036_rank.val, hlt⟩ : Fin numPairWords) = case_000036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_seq := by
    simpa [hrank] using case_000036_seqAtRank
  simp [SourceChecks, hseq, case_000036_support,
    checkTranslationConstraintSource, case_000036_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000036_rows :
    EqEqPosVarFirstRows case_000036_support case_000036_rank.val case_000036_mask := by
  intro hlt
  have hrank : (⟨case_000036_rank.val, hlt⟩ : Fin numPairWords) = case_000036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_seq := by
    simpa [hrank] using case_000036_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_b := by
    simpa [hrank] using case_000036_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000036_support case_000036_rank.val hlt
          case_000036_mask = case_000036_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000036_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000036_support case_000036_rank.val hlt
          case_000036_mask = case_000036_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000036_secondLine_eq]
  have case_000036_rowFirst :
      EqEqPosRow (FirstLineAt case_000036_support case_000036_rank.val hlt case_000036_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000036_firstLine, EqEqPosRow]
  have case_000036_fixedSecond :
      FixedRow (SecondLineAt case_000036_support case_000036_rank.val hlt case_000036_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000036_secondLine, FixedRow]
  exact ⟨case_000036_rowFirst, case_000036_fixedSecond⟩

private theorem case_000036_existsRows :
    ExistsEqEqPosVarFirstRows case_000036_rank.val case_000036_mask :=
  ⟨case_000036_support, case_000036_sourceAgrees, case_000036_rows⟩

private theorem case_000036_covered :
    RowPropertyParametricCovered case_000036_rank.val case_000036_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000036_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000037_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000037_mask : SignMask := ⟨31, by decide⟩
private def case_000037_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000037_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000037_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_000037_firstLine : StrictLin2 := { a := (-29/55), b := (-29/55), c := (-157/55) }
private def case_000037_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000037_rankWord :
    rankPairWord? case_000037_word = some case_000037_rank := by
  decide

private theorem case_000037_unrank :
    unrankPairWord case_000037_rank = case_000037_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000037_word case_000037_rank).1
    case_000037_rankWord |>.symm

private theorem case_000037_seqChoice :
    translationChoiceSeq case_000037_word case_000037_mask = case_000037_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000037_seqAtRank :
    translationSeqAtRankMask case_000037_rank case_000037_mask = case_000037_seq := by
  rw [translationSeqAtRankMask, case_000037_unrank]
  exact case_000037_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000037_bAtRank :
    translationBAtRankMask case_000037_rank case_000037_mask = case_000037_b := by
  rw [translationBAtRankMask, case_000037_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000037_b, case_000037_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000037_firstLine_eq :
    case_000037_support.firstLine case_000037_seq case_000037_b = case_000037_firstLine := by
  norm_num [case_000037_firstLine, case_000037_support, case_000037_seq, case_000037_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000037_secondLine_eq :
    case_000037_support.secondLine case_000037_seq case_000037_b = case_000037_secondLine := by
  norm_num [case_000037_secondLine, case_000037_support, case_000037_seq, case_000037_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000037_sourceAgrees :
    SourceAgrees case_000037_support case_000037_rank.val case_000037_mask := by
  intro hlt
  have hrank : (⟨case_000037_rank.val, hlt⟩ : Fin numPairWords) = case_000037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_seq := by
    simpa [hrank] using case_000037_seqAtRank
  simp [SourceChecks, hseq, case_000037_support,
    checkTranslationConstraintSource, case_000037_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000037_rows :
    EqEqPosVarFirstRows case_000037_support case_000037_rank.val case_000037_mask := by
  intro hlt
  have hrank : (⟨case_000037_rank.val, hlt⟩ : Fin numPairWords) = case_000037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_seq := by
    simpa [hrank] using case_000037_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_b := by
    simpa [hrank] using case_000037_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000037_support case_000037_rank.val hlt
          case_000037_mask = case_000037_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000037_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000037_support case_000037_rank.val hlt
          case_000037_mask = case_000037_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000037_secondLine_eq]
  have case_000037_rowFirst :
      EqEqPosRow (FirstLineAt case_000037_support case_000037_rank.val hlt case_000037_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000037_firstLine, EqEqPosRow]
  have case_000037_fixedSecond :
      FixedRow (SecondLineAt case_000037_support case_000037_rank.val hlt case_000037_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000037_secondLine, FixedRow]
  exact ⟨case_000037_rowFirst, case_000037_fixedSecond⟩

private theorem case_000037_existsRows :
    ExistsEqEqPosVarFirstRows case_000037_rank.val case_000037_mask :=
  ⟨case_000037_support, case_000037_sourceAgrees, case_000037_rows⟩

private theorem case_000037_covered :
    RowPropertyParametricCovered case_000037_rank.val case_000037_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000037_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000038_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000038_mask : SignMask := ⟨45, by decide⟩
private def case_000038_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000038_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000038_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_000038_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_000038_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000038_rankWord :
    rankPairWord? case_000038_word = some case_000038_rank := by
  decide

private theorem case_000038_unrank :
    unrankPairWord case_000038_rank = case_000038_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000038_word case_000038_rank).1
    case_000038_rankWord |>.symm

private theorem case_000038_seqChoice :
    translationChoiceSeq case_000038_word case_000038_mask = case_000038_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000038_seqAtRank :
    translationSeqAtRankMask case_000038_rank case_000038_mask = case_000038_seq := by
  rw [translationSeqAtRankMask, case_000038_unrank]
  exact case_000038_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000038_bAtRank :
    translationBAtRankMask case_000038_rank case_000038_mask = case_000038_b := by
  rw [translationBAtRankMask, case_000038_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000038_b, case_000038_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000038_firstLine_eq :
    case_000038_support.firstLine case_000038_seq case_000038_b = case_000038_firstLine := by
  norm_num [case_000038_firstLine, case_000038_support, case_000038_seq, case_000038_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000038_secondLine_eq :
    case_000038_support.secondLine case_000038_seq case_000038_b = case_000038_secondLine := by
  norm_num [case_000038_secondLine, case_000038_support, case_000038_seq, case_000038_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000038_sourceAgrees :
    SourceAgrees case_000038_support case_000038_rank.val case_000038_mask := by
  intro hlt
  have hrank : (⟨case_000038_rank.val, hlt⟩ : Fin numPairWords) = case_000038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_seq := by
    simpa [hrank] using case_000038_seqAtRank
  simp [SourceChecks, hseq, case_000038_support,
    checkTranslationConstraintSource, case_000038_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000038_rows :
    OppMinusOneVarFirstRows case_000038_support case_000038_rank.val case_000038_mask := by
  intro hlt
  have hrank : (⟨case_000038_rank.val, hlt⟩ : Fin numPairWords) = case_000038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_seq := by
    simpa [hrank] using case_000038_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_b := by
    simpa [hrank] using case_000038_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000038_support case_000038_rank.val hlt
          case_000038_mask = case_000038_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000038_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000038_support case_000038_rank.val hlt
          case_000038_mask = case_000038_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000038_secondLine_eq]
  have case_000038_rowFirst :
      OppNegRow (FirstLineAt case_000038_support case_000038_rank.val hlt case_000038_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000038_firstLine, OppNegRow]
  have case_000038_fixedSecond :
      FixedRow (SecondLineAt case_000038_support case_000038_rank.val hlt case_000038_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000038_secondLine, FixedRow]
  exact ⟨case_000038_rowFirst, case_000038_fixedSecond⟩

private theorem case_000038_existsRows :
    ExistsOppMinusOneVarFirstRows case_000038_rank.val case_000038_mask :=
  ⟨case_000038_support, case_000038_sourceAgrees, case_000038_rows⟩

private theorem case_000038_covered :
    RowPropertyParametricCovered case_000038_rank.val case_000038_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000038_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000039_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000039_mask : SignMask := ⟨54, by decide⟩
private def case_000039_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000039_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000039_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (148/9) }
private def case_000039_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_000039_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000039_rankWord :
    rankPairWord? case_000039_word = some case_000039_rank := by
  decide

private theorem case_000039_unrank :
    unrankPairWord case_000039_rank = case_000039_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000039_word case_000039_rank).1
    case_000039_rankWord |>.symm

private theorem case_000039_seqChoice :
    translationChoiceSeq case_000039_word case_000039_mask = case_000039_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000039_seqAtRank :
    translationSeqAtRankMask case_000039_rank case_000039_mask = case_000039_seq := by
  rw [translationSeqAtRankMask, case_000039_unrank]
  exact case_000039_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000039_bAtRank :
    translationBAtRankMask case_000039_rank case_000039_mask = case_000039_b := by
  rw [translationBAtRankMask, case_000039_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000039_b, case_000039_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000039_firstLine_eq :
    case_000039_support.firstLine case_000039_seq case_000039_b = case_000039_firstLine := by
  norm_num [case_000039_firstLine, case_000039_support, case_000039_seq, case_000039_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000039_secondLine_eq :
    case_000039_support.secondLine case_000039_seq case_000039_b = case_000039_secondLine := by
  norm_num [case_000039_secondLine, case_000039_support, case_000039_seq, case_000039_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000039_sourceAgrees :
    SourceAgrees case_000039_support case_000039_rank.val case_000039_mask := by
  intro hlt
  have hrank : (⟨case_000039_rank.val, hlt⟩ : Fin numPairWords) = case_000039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_seq := by
    simpa [hrank] using case_000039_seqAtRank
  simp [SourceChecks, hseq, case_000039_support,
    checkTranslationConstraintSource, case_000039_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000039_rows :
    OppOneMinusVarFirstRows case_000039_support case_000039_rank.val case_000039_mask := by
  intro hlt
  have hrank : (⟨case_000039_rank.val, hlt⟩ : Fin numPairWords) = case_000039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_seq := by
    simpa [hrank] using case_000039_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_b := by
    simpa [hrank] using case_000039_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000039_support case_000039_rank.val hlt
          case_000039_mask = case_000039_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000039_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000039_support case_000039_rank.val hlt
          case_000039_mask = case_000039_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000039_secondLine_eq]
  have case_000039_rowFirst :
      OppPosRow (FirstLineAt case_000039_support case_000039_rank.val hlt case_000039_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000039_firstLine, OppPosRow]
  have case_000039_fixedSecond :
      FixedRow (SecondLineAt case_000039_support case_000039_rank.val hlt case_000039_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000039_secondLine, FixedRow]
  exact ⟨case_000039_rowFirst, case_000039_fixedSecond⟩

private theorem case_000039_existsRows :
    ExistsOppOneMinusVarFirstRows case_000039_rank.val case_000039_mask :=
  ⟨case_000039_support, case_000039_sourceAgrees, case_000039_rows⟩

private theorem case_000039_covered :
    RowPropertyParametricCovered case_000039_rank.val case_000039_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000039_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000040_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000040_mask : SignMask := ⟨55, by decide⟩
private def case_000040_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000040_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000040_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (148/9) }
private def case_000040_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_000040_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000040_rankWord :
    rankPairWord? case_000040_word = some case_000040_rank := by
  decide

private theorem case_000040_unrank :
    unrankPairWord case_000040_rank = case_000040_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000040_word case_000040_rank).1
    case_000040_rankWord |>.symm

private theorem case_000040_seqChoice :
    translationChoiceSeq case_000040_word case_000040_mask = case_000040_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000040_seqAtRank :
    translationSeqAtRankMask case_000040_rank case_000040_mask = case_000040_seq := by
  rw [translationSeqAtRankMask, case_000040_unrank]
  exact case_000040_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000040_bAtRank :
    translationBAtRankMask case_000040_rank case_000040_mask = case_000040_b := by
  rw [translationBAtRankMask, case_000040_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000040_b, case_000040_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000040_firstLine_eq :
    case_000040_support.firstLine case_000040_seq case_000040_b = case_000040_firstLine := by
  norm_num [case_000040_firstLine, case_000040_support, case_000040_seq, case_000040_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000040_secondLine_eq :
    case_000040_support.secondLine case_000040_seq case_000040_b = case_000040_secondLine := by
  norm_num [case_000040_secondLine, case_000040_support, case_000040_seq, case_000040_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000040_sourceAgrees :
    SourceAgrees case_000040_support case_000040_rank.val case_000040_mask := by
  intro hlt
  have hrank : (⟨case_000040_rank.val, hlt⟩ : Fin numPairWords) = case_000040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_seq := by
    simpa [hrank] using case_000040_seqAtRank
  simp [SourceChecks, hseq, case_000040_support,
    checkTranslationConstraintSource, case_000040_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000040_rows :
    OppOneMinusVarFirstRows case_000040_support case_000040_rank.val case_000040_mask := by
  intro hlt
  have hrank : (⟨case_000040_rank.val, hlt⟩ : Fin numPairWords) = case_000040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_seq := by
    simpa [hrank] using case_000040_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_b := by
    simpa [hrank] using case_000040_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000040_support case_000040_rank.val hlt
          case_000040_mask = case_000040_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000040_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000040_support case_000040_rank.val hlt
          case_000040_mask = case_000040_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000040_secondLine_eq]
  have case_000040_rowFirst :
      OppPosRow (FirstLineAt case_000040_support case_000040_rank.val hlt case_000040_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000040_firstLine, OppPosRow]
  have case_000040_fixedSecond :
      FixedRow (SecondLineAt case_000040_support case_000040_rank.val hlt case_000040_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000040_secondLine, FixedRow]
  exact ⟨case_000040_rowFirst, case_000040_fixedSecond⟩

private theorem case_000040_existsRows :
    ExistsOppOneMinusVarFirstRows case_000040_rank.val case_000040_mask :=
  ⟨case_000040_support, case_000040_sourceAgrees, case_000040_rows⟩

private theorem case_000040_covered :
    RowPropertyParametricCovered case_000040_rank.val case_000040_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000040_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000041_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000041_mask : SignMask := ⟨63, by decide⟩
private def case_000041_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000041_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000041_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_000041_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000041_secondLine : StrictLin2 := { a := (-9/100), b := (9/100), c := (-9/50) }

private theorem case_000041_rankWord :
    rankPairWord? case_000041_word = some case_000041_rank := by
  decide

private theorem case_000041_unrank :
    unrankPairWord case_000041_rank = case_000041_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000041_word case_000041_rank).1
    case_000041_rankWord |>.symm

private theorem case_000041_seqChoice :
    translationChoiceSeq case_000041_word case_000041_mask = case_000041_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000041_seqAtRank :
    translationSeqAtRankMask case_000041_rank case_000041_mask = case_000041_seq := by
  rw [translationSeqAtRankMask, case_000041_unrank]
  exact case_000041_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000041_bAtRank :
    translationBAtRankMask case_000041_rank case_000041_mask = case_000041_b := by
  rw [translationBAtRankMask, case_000041_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000041_b, case_000041_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000041_firstLine_eq :
    case_000041_support.firstLine case_000041_seq case_000041_b = case_000041_firstLine := by
  norm_num [case_000041_firstLine, case_000041_support, case_000041_seq, case_000041_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000041_secondLine_eq :
    case_000041_support.secondLine case_000041_seq case_000041_b = case_000041_secondLine := by
  norm_num [case_000041_secondLine, case_000041_support, case_000041_seq, case_000041_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000041_sourceAgrees :
    SourceAgrees case_000041_support case_000041_rank.val case_000041_mask := by
  intro hlt
  have hrank : (⟨case_000041_rank.val, hlt⟩ : Fin numPairWords) = case_000041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_seq := by
    simpa [hrank] using case_000041_seqAtRank
  simp [SourceChecks, hseq, case_000041_support,
    checkTranslationConstraintSource, case_000041_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000041_rows :
    OppOneMinusVarSecondRows case_000041_support case_000041_rank.val case_000041_mask := by
  intro hlt
  have hrank : (⟨case_000041_rank.val, hlt⟩ : Fin numPairWords) = case_000041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_seq := by
    simpa [hrank] using case_000041_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_b := by
    simpa [hrank] using case_000041_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000041_support case_000041_rank.val hlt
          case_000041_mask = case_000041_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000041_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000041_support case_000041_rank.val hlt
          case_000041_mask = case_000041_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000041_secondLine_eq]
  have case_000041_fixedFirst :
      FixedRow (FirstLineAt case_000041_support case_000041_rank.val hlt case_000041_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000041_firstLine, FixedRow]
  have case_000041_rowSecond :
      OppPosRow (SecondLineAt case_000041_support case_000041_rank.val hlt case_000041_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000041_secondLine, OppPosRow]
  exact ⟨case_000041_fixedFirst, case_000041_rowSecond⟩

private theorem case_000041_existsRows :
    ExistsOppOneMinusVarSecondRows case_000041_rank.val case_000041_mask :=
  ⟨case_000041_support, case_000041_sourceAgrees, case_000041_rows⟩

private theorem case_000041_covered :
    RowPropertyParametricCovered case_000041_rank.val case_000041_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000041_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000042_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000042_mask : SignMask := ⟨8, by decide⟩
private def case_000042_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000042_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000042_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000042_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000042_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000042_rankWord :
    rankPairWord? case_000042_word = some case_000042_rank := by
  decide

private theorem case_000042_unrank :
    unrankPairWord case_000042_rank = case_000042_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000042_word case_000042_rank).1
    case_000042_rankWord |>.symm

private theorem case_000042_seqChoice :
    translationChoiceSeq case_000042_word case_000042_mask = case_000042_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000042_seqAtRank :
    translationSeqAtRankMask case_000042_rank case_000042_mask = case_000042_seq := by
  rw [translationSeqAtRankMask, case_000042_unrank]
  exact case_000042_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000042_bAtRank :
    translationBAtRankMask case_000042_rank case_000042_mask = case_000042_b := by
  rw [translationBAtRankMask, case_000042_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000042_b, case_000042_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_firstLine_eq :
    case_000042_support.firstLine case_000042_seq case_000042_b = case_000042_firstLine := by
  norm_num [case_000042_firstLine, case_000042_support, case_000042_seq, case_000042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_secondLine_eq :
    case_000042_support.secondLine case_000042_seq case_000042_b = case_000042_secondLine := by
  norm_num [case_000042_secondLine, case_000042_support, case_000042_seq, case_000042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_sourceAgrees :
    SourceAgrees case_000042_support case_000042_rank.val case_000042_mask := by
  intro hlt
  have hrank : (⟨case_000042_rank.val, hlt⟩ : Fin numPairWords) = case_000042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_seq := by
    simpa [hrank] using case_000042_seqAtRank
  simp [SourceChecks, hseq, case_000042_support,
    checkTranslationConstraintSource, case_000042_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000042_rows :
    EqEqPosVarFirstRows case_000042_support case_000042_rank.val case_000042_mask := by
  intro hlt
  have hrank : (⟨case_000042_rank.val, hlt⟩ : Fin numPairWords) = case_000042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_seq := by
    simpa [hrank] using case_000042_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_b := by
    simpa [hrank] using case_000042_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000042_support case_000042_rank.val hlt
          case_000042_mask = case_000042_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000042_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000042_support case_000042_rank.val hlt
          case_000042_mask = case_000042_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000042_secondLine_eq]
  have case_000042_rowFirst :
      EqEqPosRow (FirstLineAt case_000042_support case_000042_rank.val hlt case_000042_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000042_firstLine, EqEqPosRow]
  have case_000042_fixedSecond :
      FixedRow (SecondLineAt case_000042_support case_000042_rank.val hlt case_000042_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000042_secondLine, FixedRow]
  exact ⟨case_000042_rowFirst, case_000042_fixedSecond⟩

private theorem case_000042_existsRows :
    ExistsEqEqPosVarFirstRows case_000042_rank.val case_000042_mask :=
  ⟨case_000042_support, case_000042_sourceAgrees, case_000042_rows⟩

private theorem case_000042_covered :
    RowPropertyParametricCovered case_000042_rank.val case_000042_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000042_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000043_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000043_mask : SignMask := ⟨9, by decide⟩
private def case_000043_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000043_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000043_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000043_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000043_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000043_rankWord :
    rankPairWord? case_000043_word = some case_000043_rank := by
  decide

private theorem case_000043_unrank :
    unrankPairWord case_000043_rank = case_000043_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000043_word case_000043_rank).1
    case_000043_rankWord |>.symm

private theorem case_000043_seqChoice :
    translationChoiceSeq case_000043_word case_000043_mask = case_000043_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000043_seqAtRank :
    translationSeqAtRankMask case_000043_rank case_000043_mask = case_000043_seq := by
  rw [translationSeqAtRankMask, case_000043_unrank]
  exact case_000043_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000043_bAtRank :
    translationBAtRankMask case_000043_rank case_000043_mask = case_000043_b := by
  rw [translationBAtRankMask, case_000043_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000043_b, case_000043_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_firstLine_eq :
    case_000043_support.firstLine case_000043_seq case_000043_b = case_000043_firstLine := by
  norm_num [case_000043_firstLine, case_000043_support, case_000043_seq, case_000043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_secondLine_eq :
    case_000043_support.secondLine case_000043_seq case_000043_b = case_000043_secondLine := by
  norm_num [case_000043_secondLine, case_000043_support, case_000043_seq, case_000043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_sourceAgrees :
    SourceAgrees case_000043_support case_000043_rank.val case_000043_mask := by
  intro hlt
  have hrank : (⟨case_000043_rank.val, hlt⟩ : Fin numPairWords) = case_000043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_seq := by
    simpa [hrank] using case_000043_seqAtRank
  simp [SourceChecks, hseq, case_000043_support,
    checkTranslationConstraintSource, case_000043_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000043_rows :
    EqEqPosVarFirstRows case_000043_support case_000043_rank.val case_000043_mask := by
  intro hlt
  have hrank : (⟨case_000043_rank.val, hlt⟩ : Fin numPairWords) = case_000043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_seq := by
    simpa [hrank] using case_000043_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_b := by
    simpa [hrank] using case_000043_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000043_support case_000043_rank.val hlt
          case_000043_mask = case_000043_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000043_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000043_support case_000043_rank.val hlt
          case_000043_mask = case_000043_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000043_secondLine_eq]
  have case_000043_rowFirst :
      EqEqPosRow (FirstLineAt case_000043_support case_000043_rank.val hlt case_000043_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000043_firstLine, EqEqPosRow]
  have case_000043_fixedSecond :
      FixedRow (SecondLineAt case_000043_support case_000043_rank.val hlt case_000043_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000043_secondLine, FixedRow]
  exact ⟨case_000043_rowFirst, case_000043_fixedSecond⟩

private theorem case_000043_existsRows :
    ExistsEqEqPosVarFirstRows case_000043_rank.val case_000043_mask :=
  ⟨case_000043_support, case_000043_sourceAgrees, case_000043_rows⟩

private theorem case_000043_covered :
    RowPropertyParametricCovered case_000043_rank.val case_000043_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000043_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000044_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000044_mask : SignMask := ⟨13, by decide⟩
private def case_000044_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000044_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000044_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000044_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000044_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000044_rankWord :
    rankPairWord? case_000044_word = some case_000044_rank := by
  decide

private theorem case_000044_unrank :
    unrankPairWord case_000044_rank = case_000044_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000044_word case_000044_rank).1
    case_000044_rankWord |>.symm

private theorem case_000044_seqChoice :
    translationChoiceSeq case_000044_word case_000044_mask = case_000044_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000044_seqAtRank :
    translationSeqAtRankMask case_000044_rank case_000044_mask = case_000044_seq := by
  rw [translationSeqAtRankMask, case_000044_unrank]
  exact case_000044_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000044_bAtRank :
    translationBAtRankMask case_000044_rank case_000044_mask = case_000044_b := by
  rw [translationBAtRankMask, case_000044_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000044_b, case_000044_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_firstLine_eq :
    case_000044_support.firstLine case_000044_seq case_000044_b = case_000044_firstLine := by
  norm_num [case_000044_firstLine, case_000044_support, case_000044_seq, case_000044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_secondLine_eq :
    case_000044_support.secondLine case_000044_seq case_000044_b = case_000044_secondLine := by
  norm_num [case_000044_secondLine, case_000044_support, case_000044_seq, case_000044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_sourceAgrees :
    SourceAgrees case_000044_support case_000044_rank.val case_000044_mask := by
  intro hlt
  have hrank : (⟨case_000044_rank.val, hlt⟩ : Fin numPairWords) = case_000044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_seq := by
    simpa [hrank] using case_000044_seqAtRank
  simp [SourceChecks, hseq, case_000044_support,
    checkTranslationConstraintSource, case_000044_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000044_rows :
    EqEqPosVarSecondRows case_000044_support case_000044_rank.val case_000044_mask := by
  intro hlt
  have hrank : (⟨case_000044_rank.val, hlt⟩ : Fin numPairWords) = case_000044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_seq := by
    simpa [hrank] using case_000044_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_b := by
    simpa [hrank] using case_000044_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000044_support case_000044_rank.val hlt
          case_000044_mask = case_000044_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000044_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000044_support case_000044_rank.val hlt
          case_000044_mask = case_000044_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000044_secondLine_eq]
  have case_000044_fixedFirst :
      FixedRow (FirstLineAt case_000044_support case_000044_rank.val hlt case_000044_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000044_firstLine, FixedRow]
  have case_000044_rowSecond :
      EqEqPosRow (SecondLineAt case_000044_support case_000044_rank.val hlt case_000044_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000044_secondLine, EqEqPosRow]
  exact ⟨case_000044_fixedFirst, case_000044_rowSecond⟩

private theorem case_000044_existsRows :
    ExistsEqEqPosVarSecondRows case_000044_rank.val case_000044_mask :=
  ⟨case_000044_support, case_000044_sourceAgrees, case_000044_rows⟩

private theorem case_000044_covered :
    RowPropertyParametricCovered case_000044_rank.val case_000044_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000044_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000045_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000045_mask : SignMask := ⟨16, by decide⟩
private def case_000045_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000045_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000045_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000045_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000045_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000045_rankWord :
    rankPairWord? case_000045_word = some case_000045_rank := by
  decide

private theorem case_000045_unrank :
    unrankPairWord case_000045_rank = case_000045_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000045_word case_000045_rank).1
    case_000045_rankWord |>.symm

private theorem case_000045_seqChoice :
    translationChoiceSeq case_000045_word case_000045_mask = case_000045_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000045_seqAtRank :
    translationSeqAtRankMask case_000045_rank case_000045_mask = case_000045_seq := by
  rw [translationSeqAtRankMask, case_000045_unrank]
  exact case_000045_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000045_bAtRank :
    translationBAtRankMask case_000045_rank case_000045_mask = case_000045_b := by
  rw [translationBAtRankMask, case_000045_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000045_b, case_000045_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_firstLine_eq :
    case_000045_support.firstLine case_000045_seq case_000045_b = case_000045_firstLine := by
  norm_num [case_000045_firstLine, case_000045_support, case_000045_seq, case_000045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_secondLine_eq :
    case_000045_support.secondLine case_000045_seq case_000045_b = case_000045_secondLine := by
  norm_num [case_000045_secondLine, case_000045_support, case_000045_seq, case_000045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_sourceAgrees :
    SourceAgrees case_000045_support case_000045_rank.val case_000045_mask := by
  intro hlt
  have hrank : (⟨case_000045_rank.val, hlt⟩ : Fin numPairWords) = case_000045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_seq := by
    simpa [hrank] using case_000045_seqAtRank
  simp [SourceChecks, hseq, case_000045_support,
    checkTranslationConstraintSource, case_000045_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000045_rows :
    EqEqPosVarFirstRows case_000045_support case_000045_rank.val case_000045_mask := by
  intro hlt
  have hrank : (⟨case_000045_rank.val, hlt⟩ : Fin numPairWords) = case_000045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_seq := by
    simpa [hrank] using case_000045_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_b := by
    simpa [hrank] using case_000045_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000045_support case_000045_rank.val hlt
          case_000045_mask = case_000045_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000045_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000045_support case_000045_rank.val hlt
          case_000045_mask = case_000045_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000045_secondLine_eq]
  have case_000045_rowFirst :
      EqEqPosRow (FirstLineAt case_000045_support case_000045_rank.val hlt case_000045_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000045_firstLine, EqEqPosRow]
  have case_000045_fixedSecond :
      FixedRow (SecondLineAt case_000045_support case_000045_rank.val hlt case_000045_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000045_secondLine, FixedRow]
  exact ⟨case_000045_rowFirst, case_000045_fixedSecond⟩

private theorem case_000045_existsRows :
    ExistsEqEqPosVarFirstRows case_000045_rank.val case_000045_mask :=
  ⟨case_000045_support, case_000045_sourceAgrees, case_000045_rows⟩

private theorem case_000045_covered :
    RowPropertyParametricCovered case_000045_rank.val case_000045_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000045_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000046_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000046_mask : SignMask := ⟨18, by decide⟩
private def case_000046_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000046_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000046_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000046_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000046_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000046_rankWord :
    rankPairWord? case_000046_word = some case_000046_rank := by
  decide

private theorem case_000046_unrank :
    unrankPairWord case_000046_rank = case_000046_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000046_word case_000046_rank).1
    case_000046_rankWord |>.symm

private theorem case_000046_seqChoice :
    translationChoiceSeq case_000046_word case_000046_mask = case_000046_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000046_seqAtRank :
    translationSeqAtRankMask case_000046_rank case_000046_mask = case_000046_seq := by
  rw [translationSeqAtRankMask, case_000046_unrank]
  exact case_000046_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000046_bAtRank :
    translationBAtRankMask case_000046_rank case_000046_mask = case_000046_b := by
  rw [translationBAtRankMask, case_000046_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000046_b, case_000046_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_firstLine_eq :
    case_000046_support.firstLine case_000046_seq case_000046_b = case_000046_firstLine := by
  norm_num [case_000046_firstLine, case_000046_support, case_000046_seq, case_000046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_secondLine_eq :
    case_000046_support.secondLine case_000046_seq case_000046_b = case_000046_secondLine := by
  norm_num [case_000046_secondLine, case_000046_support, case_000046_seq, case_000046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_sourceAgrees :
    SourceAgrees case_000046_support case_000046_rank.val case_000046_mask := by
  intro hlt
  have hrank : (⟨case_000046_rank.val, hlt⟩ : Fin numPairWords) = case_000046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_seq := by
    simpa [hrank] using case_000046_seqAtRank
  simp [SourceChecks, hseq, case_000046_support,
    checkTranslationConstraintSource, case_000046_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000046_rows :
    EqEqPosVarFirstRows case_000046_support case_000046_rank.val case_000046_mask := by
  intro hlt
  have hrank : (⟨case_000046_rank.val, hlt⟩ : Fin numPairWords) = case_000046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_seq := by
    simpa [hrank] using case_000046_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_b := by
    simpa [hrank] using case_000046_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000046_support case_000046_rank.val hlt
          case_000046_mask = case_000046_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000046_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000046_support case_000046_rank.val hlt
          case_000046_mask = case_000046_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000046_secondLine_eq]
  have case_000046_rowFirst :
      EqEqPosRow (FirstLineAt case_000046_support case_000046_rank.val hlt case_000046_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000046_firstLine, EqEqPosRow]
  have case_000046_fixedSecond :
      FixedRow (SecondLineAt case_000046_support case_000046_rank.val hlt case_000046_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000046_secondLine, FixedRow]
  exact ⟨case_000046_rowFirst, case_000046_fixedSecond⟩

private theorem case_000046_existsRows :
    ExistsEqEqPosVarFirstRows case_000046_rank.val case_000046_mask :=
  ⟨case_000046_support, case_000046_sourceAgrees, case_000046_rows⟩

private theorem case_000046_covered :
    RowPropertyParametricCovered case_000046_rank.val case_000046_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000046_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000047_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000047_mask : SignMask := ⟨22, by decide⟩
private def case_000047_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000047_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000047_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000047_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000047_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000047_rankWord :
    rankPairWord? case_000047_word = some case_000047_rank := by
  decide

private theorem case_000047_unrank :
    unrankPairWord case_000047_rank = case_000047_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000047_word case_000047_rank).1
    case_000047_rankWord |>.symm

private theorem case_000047_seqChoice :
    translationChoiceSeq case_000047_word case_000047_mask = case_000047_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000047_seqAtRank :
    translationSeqAtRankMask case_000047_rank case_000047_mask = case_000047_seq := by
  rw [translationSeqAtRankMask, case_000047_unrank]
  exact case_000047_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000047_bAtRank :
    translationBAtRankMask case_000047_rank case_000047_mask = case_000047_b := by
  rw [translationBAtRankMask, case_000047_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000047_b, case_000047_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_firstLine_eq :
    case_000047_support.firstLine case_000047_seq case_000047_b = case_000047_firstLine := by
  norm_num [case_000047_firstLine, case_000047_support, case_000047_seq, case_000047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_secondLine_eq :
    case_000047_support.secondLine case_000047_seq case_000047_b = case_000047_secondLine := by
  norm_num [case_000047_secondLine, case_000047_support, case_000047_seq, case_000047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_sourceAgrees :
    SourceAgrees case_000047_support case_000047_rank.val case_000047_mask := by
  intro hlt
  have hrank : (⟨case_000047_rank.val, hlt⟩ : Fin numPairWords) = case_000047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_seq := by
    simpa [hrank] using case_000047_seqAtRank
  simp [SourceChecks, hseq, case_000047_support,
    checkTranslationConstraintSource, case_000047_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000047_rows :
    EqEqPosVarFirstRows case_000047_support case_000047_rank.val case_000047_mask := by
  intro hlt
  have hrank : (⟨case_000047_rank.val, hlt⟩ : Fin numPairWords) = case_000047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_seq := by
    simpa [hrank] using case_000047_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_b := by
    simpa [hrank] using case_000047_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000047_support case_000047_rank.val hlt
          case_000047_mask = case_000047_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000047_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000047_support case_000047_rank.val hlt
          case_000047_mask = case_000047_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000047_secondLine_eq]
  have case_000047_rowFirst :
      EqEqPosRow (FirstLineAt case_000047_support case_000047_rank.val hlt case_000047_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000047_firstLine, EqEqPosRow]
  have case_000047_fixedSecond :
      FixedRow (SecondLineAt case_000047_support case_000047_rank.val hlt case_000047_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000047_secondLine, FixedRow]
  exact ⟨case_000047_rowFirst, case_000047_fixedSecond⟩

private theorem case_000047_existsRows :
    ExistsEqEqPosVarFirstRows case_000047_rank.val case_000047_mask :=
  ⟨case_000047_support, case_000047_sourceAgrees, case_000047_rows⟩

private theorem case_000047_covered :
    RowPropertyParametricCovered case_000047_rank.val case_000047_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000047_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000048_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000048_mask : SignMask := ⟨24, by decide⟩
private def case_000048_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000048_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000048_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000048_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000048_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000048_rankWord :
    rankPairWord? case_000048_word = some case_000048_rank := by
  decide

private theorem case_000048_unrank :
    unrankPairWord case_000048_rank = case_000048_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000048_word case_000048_rank).1
    case_000048_rankWord |>.symm

private theorem case_000048_seqChoice :
    translationChoiceSeq case_000048_word case_000048_mask = case_000048_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000048_seqAtRank :
    translationSeqAtRankMask case_000048_rank case_000048_mask = case_000048_seq := by
  rw [translationSeqAtRankMask, case_000048_unrank]
  exact case_000048_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000048_bAtRank :
    translationBAtRankMask case_000048_rank case_000048_mask = case_000048_b := by
  rw [translationBAtRankMask, case_000048_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000048_b, case_000048_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_firstLine_eq :
    case_000048_support.firstLine case_000048_seq case_000048_b = case_000048_firstLine := by
  norm_num [case_000048_firstLine, case_000048_support, case_000048_seq, case_000048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_secondLine_eq :
    case_000048_support.secondLine case_000048_seq case_000048_b = case_000048_secondLine := by
  norm_num [case_000048_secondLine, case_000048_support, case_000048_seq, case_000048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_sourceAgrees :
    SourceAgrees case_000048_support case_000048_rank.val case_000048_mask := by
  intro hlt
  have hrank : (⟨case_000048_rank.val, hlt⟩ : Fin numPairWords) = case_000048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_seq := by
    simpa [hrank] using case_000048_seqAtRank
  simp [SourceChecks, hseq, case_000048_support,
    checkTranslationConstraintSource, case_000048_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000048_rows :
    EqEqPosVarFirstRows case_000048_support case_000048_rank.val case_000048_mask := by
  intro hlt
  have hrank : (⟨case_000048_rank.val, hlt⟩ : Fin numPairWords) = case_000048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_seq := by
    simpa [hrank] using case_000048_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_b := by
    simpa [hrank] using case_000048_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000048_support case_000048_rank.val hlt
          case_000048_mask = case_000048_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000048_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000048_support case_000048_rank.val hlt
          case_000048_mask = case_000048_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000048_secondLine_eq]
  have case_000048_rowFirst :
      EqEqPosRow (FirstLineAt case_000048_support case_000048_rank.val hlt case_000048_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000048_firstLine, EqEqPosRow]
  have case_000048_fixedSecond :
      FixedRow (SecondLineAt case_000048_support case_000048_rank.val hlt case_000048_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000048_secondLine, FixedRow]
  exact ⟨case_000048_rowFirst, case_000048_fixedSecond⟩

private theorem case_000048_existsRows :
    ExistsEqEqPosVarFirstRows case_000048_rank.val case_000048_mask :=
  ⟨case_000048_support, case_000048_sourceAgrees, case_000048_rows⟩

private theorem case_000048_covered :
    RowPropertyParametricCovered case_000048_rank.val case_000048_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000048_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000049_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000049_mask : SignMask := ⟨28, by decide⟩
private def case_000049_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000049_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000049_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000049_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000049_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000049_rankWord :
    rankPairWord? case_000049_word = some case_000049_rank := by
  decide

private theorem case_000049_unrank :
    unrankPairWord case_000049_rank = case_000049_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000049_word case_000049_rank).1
    case_000049_rankWord |>.symm

private theorem case_000049_seqChoice :
    translationChoiceSeq case_000049_word case_000049_mask = case_000049_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000049_seqAtRank :
    translationSeqAtRankMask case_000049_rank case_000049_mask = case_000049_seq := by
  rw [translationSeqAtRankMask, case_000049_unrank]
  exact case_000049_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000049_bAtRank :
    translationBAtRankMask case_000049_rank case_000049_mask = case_000049_b := by
  rw [translationBAtRankMask, case_000049_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000049_b, case_000049_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_firstLine_eq :
    case_000049_support.firstLine case_000049_seq case_000049_b = case_000049_firstLine := by
  norm_num [case_000049_firstLine, case_000049_support, case_000049_seq, case_000049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_secondLine_eq :
    case_000049_support.secondLine case_000049_seq case_000049_b = case_000049_secondLine := by
  norm_num [case_000049_secondLine, case_000049_support, case_000049_seq, case_000049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_sourceAgrees :
    SourceAgrees case_000049_support case_000049_rank.val case_000049_mask := by
  intro hlt
  have hrank : (⟨case_000049_rank.val, hlt⟩ : Fin numPairWords) = case_000049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_seq := by
    simpa [hrank] using case_000049_seqAtRank
  simp [SourceChecks, hseq, case_000049_support,
    checkTranslationConstraintSource, case_000049_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000049_rows :
    OppOneMinusVarFirstRows case_000049_support case_000049_rank.val case_000049_mask := by
  intro hlt
  have hrank : (⟨case_000049_rank.val, hlt⟩ : Fin numPairWords) = case_000049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_seq := by
    simpa [hrank] using case_000049_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_b := by
    simpa [hrank] using case_000049_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000049_support case_000049_rank.val hlt
          case_000049_mask = case_000049_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000049_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000049_support case_000049_rank.val hlt
          case_000049_mask = case_000049_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000049_secondLine_eq]
  have case_000049_rowFirst :
      OppPosRow (FirstLineAt case_000049_support case_000049_rank.val hlt case_000049_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000049_firstLine, OppPosRow]
  have case_000049_fixedSecond :
      FixedRow (SecondLineAt case_000049_support case_000049_rank.val hlt case_000049_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000049_secondLine, FixedRow]
  exact ⟨case_000049_rowFirst, case_000049_fixedSecond⟩

private theorem case_000049_existsRows :
    ExistsOppOneMinusVarFirstRows case_000049_rank.val case_000049_mask :=
  ⟨case_000049_support, case_000049_sourceAgrees, case_000049_rows⟩

private theorem case_000049_covered :
    RowPropertyParametricCovered case_000049_rank.val case_000049_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000049_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000050_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000050_mask : SignMask := ⟨29, by decide⟩
private def case_000050_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000050_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000050_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000050_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000050_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000050_rankWord :
    rankPairWord? case_000050_word = some case_000050_rank := by
  decide

private theorem case_000050_unrank :
    unrankPairWord case_000050_rank = case_000050_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000050_word case_000050_rank).1
    case_000050_rankWord |>.symm

private theorem case_000050_seqChoice :
    translationChoiceSeq case_000050_word case_000050_mask = case_000050_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000050_seqAtRank :
    translationSeqAtRankMask case_000050_rank case_000050_mask = case_000050_seq := by
  rw [translationSeqAtRankMask, case_000050_unrank]
  exact case_000050_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000050_bAtRank :
    translationBAtRankMask case_000050_rank case_000050_mask = case_000050_b := by
  rw [translationBAtRankMask, case_000050_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000050_b, case_000050_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_firstLine_eq :
    case_000050_support.firstLine case_000050_seq case_000050_b = case_000050_firstLine := by
  norm_num [case_000050_firstLine, case_000050_support, case_000050_seq, case_000050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_secondLine_eq :
    case_000050_support.secondLine case_000050_seq case_000050_b = case_000050_secondLine := by
  norm_num [case_000050_secondLine, case_000050_support, case_000050_seq, case_000050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_sourceAgrees :
    SourceAgrees case_000050_support case_000050_rank.val case_000050_mask := by
  intro hlt
  have hrank : (⟨case_000050_rank.val, hlt⟩ : Fin numPairWords) = case_000050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_seq := by
    simpa [hrank] using case_000050_seqAtRank
  simp [SourceChecks, hseq, case_000050_support,
    checkTranslationConstraintSource, case_000050_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000050_rows :
    EqEqPosVarSecondRows case_000050_support case_000050_rank.val case_000050_mask := by
  intro hlt
  have hrank : (⟨case_000050_rank.val, hlt⟩ : Fin numPairWords) = case_000050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_seq := by
    simpa [hrank] using case_000050_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_b := by
    simpa [hrank] using case_000050_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000050_support case_000050_rank.val hlt
          case_000050_mask = case_000050_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000050_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000050_support case_000050_rank.val hlt
          case_000050_mask = case_000050_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000050_secondLine_eq]
  have case_000050_fixedFirst :
      FixedRow (FirstLineAt case_000050_support case_000050_rank.val hlt case_000050_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000050_firstLine, FixedRow]
  have case_000050_rowSecond :
      EqEqPosRow (SecondLineAt case_000050_support case_000050_rank.val hlt case_000050_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000050_secondLine, EqEqPosRow]
  exact ⟨case_000050_fixedFirst, case_000050_rowSecond⟩

private theorem case_000050_existsRows :
    ExistsEqEqPosVarSecondRows case_000050_rank.val case_000050_mask :=
  ⟨case_000050_support, case_000050_sourceAgrees, case_000050_rows⟩

private theorem case_000050_covered :
    RowPropertyParametricCovered case_000050_rank.val case_000050_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000050_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000051_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000051_mask : SignMask := ⟨30, by decide⟩
private def case_000051_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000051_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000051_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000051_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000051_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000051_rankWord :
    rankPairWord? case_000051_word = some case_000051_rank := by
  decide

private theorem case_000051_unrank :
    unrankPairWord case_000051_rank = case_000051_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000051_word case_000051_rank).1
    case_000051_rankWord |>.symm

private theorem case_000051_seqChoice :
    translationChoiceSeq case_000051_word case_000051_mask = case_000051_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000051_seqAtRank :
    translationSeqAtRankMask case_000051_rank case_000051_mask = case_000051_seq := by
  rw [translationSeqAtRankMask, case_000051_unrank]
  exact case_000051_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000051_bAtRank :
    translationBAtRankMask case_000051_rank case_000051_mask = case_000051_b := by
  rw [translationBAtRankMask, case_000051_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000051_b, case_000051_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_firstLine_eq :
    case_000051_support.firstLine case_000051_seq case_000051_b = case_000051_firstLine := by
  norm_num [case_000051_firstLine, case_000051_support, case_000051_seq, case_000051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_secondLine_eq :
    case_000051_support.secondLine case_000051_seq case_000051_b = case_000051_secondLine := by
  norm_num [case_000051_secondLine, case_000051_support, case_000051_seq, case_000051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_sourceAgrees :
    SourceAgrees case_000051_support case_000051_rank.val case_000051_mask := by
  intro hlt
  have hrank : (⟨case_000051_rank.val, hlt⟩ : Fin numPairWords) = case_000051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_seq := by
    simpa [hrank] using case_000051_seqAtRank
  simp [SourceChecks, hseq, case_000051_support,
    checkTranslationConstraintSource, case_000051_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000051_rows :
    EqEqPosVarFirstRows case_000051_support case_000051_rank.val case_000051_mask := by
  intro hlt
  have hrank : (⟨case_000051_rank.val, hlt⟩ : Fin numPairWords) = case_000051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_seq := by
    simpa [hrank] using case_000051_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_b := by
    simpa [hrank] using case_000051_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000051_support case_000051_rank.val hlt
          case_000051_mask = case_000051_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000051_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000051_support case_000051_rank.val hlt
          case_000051_mask = case_000051_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000051_secondLine_eq]
  have case_000051_rowFirst :
      EqEqPosRow (FirstLineAt case_000051_support case_000051_rank.val hlt case_000051_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000051_firstLine, EqEqPosRow]
  have case_000051_fixedSecond :
      FixedRow (SecondLineAt case_000051_support case_000051_rank.val hlt case_000051_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000051_secondLine, FixedRow]
  exact ⟨case_000051_rowFirst, case_000051_fixedSecond⟩

private theorem case_000051_existsRows :
    ExistsEqEqPosVarFirstRows case_000051_rank.val case_000051_mask :=
  ⟨case_000051_support, case_000051_sourceAgrees, case_000051_rows⟩

private theorem case_000051_covered :
    RowPropertyParametricCovered case_000051_rank.val case_000051_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000051_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000052_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000052_mask : SignMask := ⟨31, by decide⟩
private def case_000052_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000052_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000052_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000052_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-75/17) }
private def case_000052_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000052_rankWord :
    rankPairWord? case_000052_word = some case_000052_rank := by
  decide

private theorem case_000052_unrank :
    unrankPairWord case_000052_rank = case_000052_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000052_word case_000052_rank).1
    case_000052_rankWord |>.symm

private theorem case_000052_seqChoice :
    translationChoiceSeq case_000052_word case_000052_mask = case_000052_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000052_seqAtRank :
    translationSeqAtRankMask case_000052_rank case_000052_mask = case_000052_seq := by
  rw [translationSeqAtRankMask, case_000052_unrank]
  exact case_000052_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000052_bAtRank :
    translationBAtRankMask case_000052_rank case_000052_mask = case_000052_b := by
  rw [translationBAtRankMask, case_000052_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000052_b, case_000052_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_firstLine_eq :
    case_000052_support.firstLine case_000052_seq case_000052_b = case_000052_firstLine := by
  norm_num [case_000052_firstLine, case_000052_support, case_000052_seq, case_000052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_secondLine_eq :
    case_000052_support.secondLine case_000052_seq case_000052_b = case_000052_secondLine := by
  norm_num [case_000052_secondLine, case_000052_support, case_000052_seq, case_000052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_sourceAgrees :
    SourceAgrees case_000052_support case_000052_rank.val case_000052_mask := by
  intro hlt
  have hrank : (⟨case_000052_rank.val, hlt⟩ : Fin numPairWords) = case_000052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_seq := by
    simpa [hrank] using case_000052_seqAtRank
  simp [SourceChecks, hseq, case_000052_support,
    checkTranslationConstraintSource, case_000052_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000052_rows :
    EqEqPosVarFirstRows case_000052_support case_000052_rank.val case_000052_mask := by
  intro hlt
  have hrank : (⟨case_000052_rank.val, hlt⟩ : Fin numPairWords) = case_000052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_seq := by
    simpa [hrank] using case_000052_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_b := by
    simpa [hrank] using case_000052_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000052_support case_000052_rank.val hlt
          case_000052_mask = case_000052_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000052_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000052_support case_000052_rank.val hlt
          case_000052_mask = case_000052_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000052_secondLine_eq]
  have case_000052_rowFirst :
      EqEqPosRow (FirstLineAt case_000052_support case_000052_rank.val hlt case_000052_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000052_firstLine, EqEqPosRow]
  have case_000052_fixedSecond :
      FixedRow (SecondLineAt case_000052_support case_000052_rank.val hlt case_000052_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000052_secondLine, FixedRow]
  exact ⟨case_000052_rowFirst, case_000052_fixedSecond⟩

private theorem case_000052_existsRows :
    ExistsEqEqPosVarFirstRows case_000052_rank.val case_000052_mask :=
  ⟨case_000052_support, case_000052_sourceAgrees, case_000052_rows⟩

private theorem case_000052_covered :
    RowPropertyParametricCovered case_000052_rank.val case_000052_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000052_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000053_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000053_mask : SignMask := ⟨45, by decide⟩
private def case_000053_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000053_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000053_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000053_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000053_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000053_rankWord :
    rankPairWord? case_000053_word = some case_000053_rank := by
  decide

private theorem case_000053_unrank :
    unrankPairWord case_000053_rank = case_000053_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000053_word case_000053_rank).1
    case_000053_rankWord |>.symm

private theorem case_000053_seqChoice :
    translationChoiceSeq case_000053_word case_000053_mask = case_000053_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000053_seqAtRank :
    translationSeqAtRankMask case_000053_rank case_000053_mask = case_000053_seq := by
  rw [translationSeqAtRankMask, case_000053_unrank]
  exact case_000053_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000053_bAtRank :
    translationBAtRankMask case_000053_rank case_000053_mask = case_000053_b := by
  rw [translationBAtRankMask, case_000053_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000053_b, case_000053_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_firstLine_eq :
    case_000053_support.firstLine case_000053_seq case_000053_b = case_000053_firstLine := by
  norm_num [case_000053_firstLine, case_000053_support, case_000053_seq, case_000053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_secondLine_eq :
    case_000053_support.secondLine case_000053_seq case_000053_b = case_000053_secondLine := by
  norm_num [case_000053_secondLine, case_000053_support, case_000053_seq, case_000053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_sourceAgrees :
    SourceAgrees case_000053_support case_000053_rank.val case_000053_mask := by
  intro hlt
  have hrank : (⟨case_000053_rank.val, hlt⟩ : Fin numPairWords) = case_000053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_seq := by
    simpa [hrank] using case_000053_seqAtRank
  simp [SourceChecks, hseq, case_000053_support,
    checkTranslationConstraintSource, case_000053_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000053_rows :
    OppMinusOneVarFirstRows case_000053_support case_000053_rank.val case_000053_mask := by
  intro hlt
  have hrank : (⟨case_000053_rank.val, hlt⟩ : Fin numPairWords) = case_000053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_seq := by
    simpa [hrank] using case_000053_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_b := by
    simpa [hrank] using case_000053_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000053_support case_000053_rank.val hlt
          case_000053_mask = case_000053_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000053_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000053_support case_000053_rank.val hlt
          case_000053_mask = case_000053_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000053_secondLine_eq]
  have case_000053_rowFirst :
      OppNegRow (FirstLineAt case_000053_support case_000053_rank.val hlt case_000053_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000053_firstLine, OppNegRow]
  have case_000053_fixedSecond :
      FixedRow (SecondLineAt case_000053_support case_000053_rank.val hlt case_000053_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000053_secondLine, FixedRow]
  exact ⟨case_000053_rowFirst, case_000053_fixedSecond⟩

private theorem case_000053_existsRows :
    ExistsOppMinusOneVarFirstRows case_000053_rank.val case_000053_mask :=
  ⟨case_000053_support, case_000053_sourceAgrees, case_000053_rows⟩

private theorem case_000053_covered :
    RowPropertyParametricCovered case_000053_rank.val case_000053_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000053_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000054_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000054_mask : SignMask := ⟨47, by decide⟩
private def case_000054_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000054_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000054_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000054_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_000054_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000054_rankWord :
    rankPairWord? case_000054_word = some case_000054_rank := by
  decide

private theorem case_000054_unrank :
    unrankPairWord case_000054_rank = case_000054_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000054_word case_000054_rank).1
    case_000054_rankWord |>.symm

private theorem case_000054_seqChoice :
    translationChoiceSeq case_000054_word case_000054_mask = case_000054_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000054_seqAtRank :
    translationSeqAtRankMask case_000054_rank case_000054_mask = case_000054_seq := by
  rw [translationSeqAtRankMask, case_000054_unrank]
  exact case_000054_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000054_bAtRank :
    translationBAtRankMask case_000054_rank case_000054_mask = case_000054_b := by
  rw [translationBAtRankMask, case_000054_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000054_b, case_000054_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_firstLine_eq :
    case_000054_support.firstLine case_000054_seq case_000054_b = case_000054_firstLine := by
  norm_num [case_000054_firstLine, case_000054_support, case_000054_seq, case_000054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_secondLine_eq :
    case_000054_support.secondLine case_000054_seq case_000054_b = case_000054_secondLine := by
  norm_num [case_000054_secondLine, case_000054_support, case_000054_seq, case_000054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_sourceAgrees :
    SourceAgrees case_000054_support case_000054_rank.val case_000054_mask := by
  intro hlt
  have hrank : (⟨case_000054_rank.val, hlt⟩ : Fin numPairWords) = case_000054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_seq := by
    simpa [hrank] using case_000054_seqAtRank
  simp [SourceChecks, hseq, case_000054_support,
    checkTranslationConstraintSource, case_000054_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000054_rows :
    OppMinusOneVarFirstRows case_000054_support case_000054_rank.val case_000054_mask := by
  intro hlt
  have hrank : (⟨case_000054_rank.val, hlt⟩ : Fin numPairWords) = case_000054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_seq := by
    simpa [hrank] using case_000054_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_b := by
    simpa [hrank] using case_000054_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000054_support case_000054_rank.val hlt
          case_000054_mask = case_000054_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000054_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000054_support case_000054_rank.val hlt
          case_000054_mask = case_000054_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000054_secondLine_eq]
  have case_000054_rowFirst :
      OppNegRow (FirstLineAt case_000054_support case_000054_rank.val hlt case_000054_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000054_firstLine, OppNegRow]
  have case_000054_fixedSecond :
      FixedRow (SecondLineAt case_000054_support case_000054_rank.val hlt case_000054_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000054_secondLine, FixedRow]
  exact ⟨case_000054_rowFirst, case_000054_fixedSecond⟩

private theorem case_000054_existsRows :
    ExistsOppMinusOneVarFirstRows case_000054_rank.val case_000054_mask :=
  ⟨case_000054_support, case_000054_sourceAgrees, case_000054_rows⟩

private theorem case_000054_covered :
    RowPropertyParametricCovered case_000054_rank.val case_000054_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000054_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000055_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000055_mask : SignMask := ⟨54, by decide⟩
private def case_000055_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000055_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000055_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000055_firstLine : StrictLin2 := { a := (-3/5), b := (-3/5), c := (-11/3) }
private def case_000055_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000055_rankWord :
    rankPairWord? case_000055_word = some case_000055_rank := by
  decide

private theorem case_000055_unrank :
    unrankPairWord case_000055_rank = case_000055_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000055_word case_000055_rank).1
    case_000055_rankWord |>.symm

private theorem case_000055_seqChoice :
    translationChoiceSeq case_000055_word case_000055_mask = case_000055_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000055_seqAtRank :
    translationSeqAtRankMask case_000055_rank case_000055_mask = case_000055_seq := by
  rw [translationSeqAtRankMask, case_000055_unrank]
  exact case_000055_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000055_bAtRank :
    translationBAtRankMask case_000055_rank case_000055_mask = case_000055_b := by
  rw [translationBAtRankMask, case_000055_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000055_b, case_000055_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_firstLine_eq :
    case_000055_support.firstLine case_000055_seq case_000055_b = case_000055_firstLine := by
  norm_num [case_000055_firstLine, case_000055_support, case_000055_seq, case_000055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_secondLine_eq :
    case_000055_support.secondLine case_000055_seq case_000055_b = case_000055_secondLine := by
  norm_num [case_000055_secondLine, case_000055_support, case_000055_seq, case_000055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_sourceAgrees :
    SourceAgrees case_000055_support case_000055_rank.val case_000055_mask := by
  intro hlt
  have hrank : (⟨case_000055_rank.val, hlt⟩ : Fin numPairWords) = case_000055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_seq := by
    simpa [hrank] using case_000055_seqAtRank
  simp [SourceChecks, hseq, case_000055_support,
    checkTranslationConstraintSource, case_000055_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000055_rows :
    EqEqPosVarFirstRows case_000055_support case_000055_rank.val case_000055_mask := by
  intro hlt
  have hrank : (⟨case_000055_rank.val, hlt⟩ : Fin numPairWords) = case_000055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_seq := by
    simpa [hrank] using case_000055_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_b := by
    simpa [hrank] using case_000055_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000055_support case_000055_rank.val hlt
          case_000055_mask = case_000055_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000055_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000055_support case_000055_rank.val hlt
          case_000055_mask = case_000055_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000055_secondLine_eq]
  have case_000055_rowFirst :
      EqEqPosRow (FirstLineAt case_000055_support case_000055_rank.val hlt case_000055_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000055_firstLine, EqEqPosRow]
  have case_000055_fixedSecond :
      FixedRow (SecondLineAt case_000055_support case_000055_rank.val hlt case_000055_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000055_secondLine, FixedRow]
  exact ⟨case_000055_rowFirst, case_000055_fixedSecond⟩

private theorem case_000055_existsRows :
    ExistsEqEqPosVarFirstRows case_000055_rank.val case_000055_mask :=
  ⟨case_000055_support, case_000055_sourceAgrees, case_000055_rows⟩

private theorem case_000055_covered :
    RowPropertyParametricCovered case_000055_rank.val case_000055_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000055_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000056_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000056_mask : SignMask := ⟨55, by decide⟩
private def case_000056_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000056_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000056_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000056_firstLine : StrictLin2 := { a := (-6/11), b := (-6/11), c := (-8/11) }
private def case_000056_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000056_rankWord :
    rankPairWord? case_000056_word = some case_000056_rank := by
  decide

private theorem case_000056_unrank :
    unrankPairWord case_000056_rank = case_000056_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000056_word case_000056_rank).1
    case_000056_rankWord |>.symm

private theorem case_000056_seqChoice :
    translationChoiceSeq case_000056_word case_000056_mask = case_000056_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000056_seqAtRank :
    translationSeqAtRankMask case_000056_rank case_000056_mask = case_000056_seq := by
  rw [translationSeqAtRankMask, case_000056_unrank]
  exact case_000056_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000056_bAtRank :
    translationBAtRankMask case_000056_rank case_000056_mask = case_000056_b := by
  rw [translationBAtRankMask, case_000056_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000056_b, case_000056_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_firstLine_eq :
    case_000056_support.firstLine case_000056_seq case_000056_b = case_000056_firstLine := by
  norm_num [case_000056_firstLine, case_000056_support, case_000056_seq, case_000056_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_secondLine_eq :
    case_000056_support.secondLine case_000056_seq case_000056_b = case_000056_secondLine := by
  norm_num [case_000056_secondLine, case_000056_support, case_000056_seq, case_000056_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_sourceAgrees :
    SourceAgrees case_000056_support case_000056_rank.val case_000056_mask := by
  intro hlt
  have hrank : (⟨case_000056_rank.val, hlt⟩ : Fin numPairWords) = case_000056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_seq := by
    simpa [hrank] using case_000056_seqAtRank
  simp [SourceChecks, hseq, case_000056_support,
    checkTranslationConstraintSource, case_000056_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000056_rows :
    EqEqPosVarFirstRows case_000056_support case_000056_rank.val case_000056_mask := by
  intro hlt
  have hrank : (⟨case_000056_rank.val, hlt⟩ : Fin numPairWords) = case_000056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_seq := by
    simpa [hrank] using case_000056_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_b := by
    simpa [hrank] using case_000056_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000056_support case_000056_rank.val hlt
          case_000056_mask = case_000056_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000056_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000056_support case_000056_rank.val hlt
          case_000056_mask = case_000056_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000056_secondLine_eq]
  have case_000056_rowFirst :
      EqEqPosRow (FirstLineAt case_000056_support case_000056_rank.val hlt case_000056_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000056_firstLine, EqEqPosRow]
  have case_000056_fixedSecond :
      FixedRow (SecondLineAt case_000056_support case_000056_rank.val hlt case_000056_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000056_secondLine, FixedRow]
  exact ⟨case_000056_rowFirst, case_000056_fixedSecond⟩

private theorem case_000056_existsRows :
    ExistsEqEqPosVarFirstRows case_000056_rank.val case_000056_mask :=
  ⟨case_000056_support, case_000056_sourceAgrees, case_000056_rows⟩

private theorem case_000056_covered :
    RowPropertyParametricCovered case_000056_rank.val case_000056_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000056_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000057_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000057_mask : SignMask := ⟨63, by decide⟩
private def case_000057_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000057_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000057_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000057_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000057_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000057_rankWord :
    rankPairWord? case_000057_word = some case_000057_rank := by
  decide

private theorem case_000057_unrank :
    unrankPairWord case_000057_rank = case_000057_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000057_word case_000057_rank).1
    case_000057_rankWord |>.symm

private theorem case_000057_seqChoice :
    translationChoiceSeq case_000057_word case_000057_mask = case_000057_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000057_seqAtRank :
    translationSeqAtRankMask case_000057_rank case_000057_mask = case_000057_seq := by
  rw [translationSeqAtRankMask, case_000057_unrank]
  exact case_000057_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000057_bAtRank :
    translationBAtRankMask case_000057_rank case_000057_mask = case_000057_b := by
  rw [translationBAtRankMask, case_000057_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000057_b, case_000057_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_firstLine_eq :
    case_000057_support.firstLine case_000057_seq case_000057_b = case_000057_firstLine := by
  norm_num [case_000057_firstLine, case_000057_support, case_000057_seq, case_000057_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_secondLine_eq :
    case_000057_support.secondLine case_000057_seq case_000057_b = case_000057_secondLine := by
  norm_num [case_000057_secondLine, case_000057_support, case_000057_seq, case_000057_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_sourceAgrees :
    SourceAgrees case_000057_support case_000057_rank.val case_000057_mask := by
  intro hlt
  have hrank : (⟨case_000057_rank.val, hlt⟩ : Fin numPairWords) = case_000057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_seq := by
    simpa [hrank] using case_000057_seqAtRank
  simp [SourceChecks, hseq, case_000057_support,
    checkTranslationConstraintSource, case_000057_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000057_rows :
    EqEqPosVarFirstRows case_000057_support case_000057_rank.val case_000057_mask := by
  intro hlt
  have hrank : (⟨case_000057_rank.val, hlt⟩ : Fin numPairWords) = case_000057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_seq := by
    simpa [hrank] using case_000057_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_b := by
    simpa [hrank] using case_000057_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000057_support case_000057_rank.val hlt
          case_000057_mask = case_000057_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000057_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000057_support case_000057_rank.val hlt
          case_000057_mask = case_000057_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000057_secondLine_eq]
  have case_000057_rowFirst :
      EqEqPosRow (FirstLineAt case_000057_support case_000057_rank.val hlt case_000057_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000057_firstLine, EqEqPosRow]
  have case_000057_fixedSecond :
      FixedRow (SecondLineAt case_000057_support case_000057_rank.val hlt case_000057_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000057_secondLine, FixedRow]
  exact ⟨case_000057_rowFirst, case_000057_fixedSecond⟩

private theorem case_000057_existsRows :
    ExistsEqEqPosVarFirstRows case_000057_rank.val case_000057_mask :=
  ⟨case_000057_support, case_000057_sourceAgrees, case_000057_rows⟩

private theorem case_000057_covered :
    RowPropertyParametricCovered case_000057_rank.val case_000057_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000057_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000058_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000058_mask : SignMask := ⟨9, by decide⟩
private def case_000058_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000058_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000058_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000058_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000058_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000058_rankWord :
    rankPairWord? case_000058_word = some case_000058_rank := by
  decide

private theorem case_000058_unrank :
    unrankPairWord case_000058_rank = case_000058_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000058_word case_000058_rank).1
    case_000058_rankWord |>.symm

private theorem case_000058_seqChoice :
    translationChoiceSeq case_000058_word case_000058_mask = case_000058_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000058_seqAtRank :
    translationSeqAtRankMask case_000058_rank case_000058_mask = case_000058_seq := by
  rw [translationSeqAtRankMask, case_000058_unrank]
  exact case_000058_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000058_bAtRank :
    translationBAtRankMask case_000058_rank case_000058_mask = case_000058_b := by
  rw [translationBAtRankMask, case_000058_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000058_b, case_000058_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000058_firstLine_eq :
    case_000058_support.firstLine case_000058_seq case_000058_b = case_000058_firstLine := by
  norm_num [case_000058_firstLine, case_000058_support, case_000058_seq, case_000058_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000058_secondLine_eq :
    case_000058_support.secondLine case_000058_seq case_000058_b = case_000058_secondLine := by
  norm_num [case_000058_secondLine, case_000058_support, case_000058_seq, case_000058_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000058_sourceAgrees :
    SourceAgrees case_000058_support case_000058_rank.val case_000058_mask := by
  intro hlt
  have hrank : (⟨case_000058_rank.val, hlt⟩ : Fin numPairWords) = case_000058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_seq := by
    simpa [hrank] using case_000058_seqAtRank
  simp [SourceChecks, hseq, case_000058_support,
    checkTranslationConstraintSource, case_000058_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000058_rows :
    EqEqPosVarFirstRows case_000058_support case_000058_rank.val case_000058_mask := by
  intro hlt
  have hrank : (⟨case_000058_rank.val, hlt⟩ : Fin numPairWords) = case_000058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_seq := by
    simpa [hrank] using case_000058_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_b := by
    simpa [hrank] using case_000058_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000058_support case_000058_rank.val hlt
          case_000058_mask = case_000058_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000058_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000058_support case_000058_rank.val hlt
          case_000058_mask = case_000058_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000058_secondLine_eq]
  have case_000058_rowFirst :
      EqEqPosRow (FirstLineAt case_000058_support case_000058_rank.val hlt case_000058_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000058_firstLine, EqEqPosRow]
  have case_000058_fixedSecond :
      FixedRow (SecondLineAt case_000058_support case_000058_rank.val hlt case_000058_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000058_secondLine, FixedRow]
  exact ⟨case_000058_rowFirst, case_000058_fixedSecond⟩

private theorem case_000058_existsRows :
    ExistsEqEqPosVarFirstRows case_000058_rank.val case_000058_mask :=
  ⟨case_000058_support, case_000058_sourceAgrees, case_000058_rows⟩

private theorem case_000058_covered :
    RowPropertyParametricCovered case_000058_rank.val case_000058_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000058_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000059_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000059_mask : SignMask := ⟨16, by decide⟩
private def case_000059_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000059_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000059_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000059_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000059_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000059_rankWord :
    rankPairWord? case_000059_word = some case_000059_rank := by
  decide

private theorem case_000059_unrank :
    unrankPairWord case_000059_rank = case_000059_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000059_word case_000059_rank).1
    case_000059_rankWord |>.symm

private theorem case_000059_seqChoice :
    translationChoiceSeq case_000059_word case_000059_mask = case_000059_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000059_seqAtRank :
    translationSeqAtRankMask case_000059_rank case_000059_mask = case_000059_seq := by
  rw [translationSeqAtRankMask, case_000059_unrank]
  exact case_000059_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000059_bAtRank :
    translationBAtRankMask case_000059_rank case_000059_mask = case_000059_b := by
  rw [translationBAtRankMask, case_000059_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000059_b, case_000059_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000059_firstLine_eq :
    case_000059_support.firstLine case_000059_seq case_000059_b = case_000059_firstLine := by
  norm_num [case_000059_firstLine, case_000059_support, case_000059_seq, case_000059_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000059_secondLine_eq :
    case_000059_support.secondLine case_000059_seq case_000059_b = case_000059_secondLine := by
  norm_num [case_000059_secondLine, case_000059_support, case_000059_seq, case_000059_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000059_sourceAgrees :
    SourceAgrees case_000059_support case_000059_rank.val case_000059_mask := by
  intro hlt
  have hrank : (⟨case_000059_rank.val, hlt⟩ : Fin numPairWords) = case_000059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_seq := by
    simpa [hrank] using case_000059_seqAtRank
  simp [SourceChecks, hseq, case_000059_support,
    checkTranslationConstraintSource, case_000059_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000059_rows :
    EqEqPosVarFirstRows case_000059_support case_000059_rank.val case_000059_mask := by
  intro hlt
  have hrank : (⟨case_000059_rank.val, hlt⟩ : Fin numPairWords) = case_000059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_seq := by
    simpa [hrank] using case_000059_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_b := by
    simpa [hrank] using case_000059_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000059_support case_000059_rank.val hlt
          case_000059_mask = case_000059_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000059_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000059_support case_000059_rank.val hlt
          case_000059_mask = case_000059_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000059_secondLine_eq]
  have case_000059_rowFirst :
      EqEqPosRow (FirstLineAt case_000059_support case_000059_rank.val hlt case_000059_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000059_firstLine, EqEqPosRow]
  have case_000059_fixedSecond :
      FixedRow (SecondLineAt case_000059_support case_000059_rank.val hlt case_000059_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000059_secondLine, FixedRow]
  exact ⟨case_000059_rowFirst, case_000059_fixedSecond⟩

private theorem case_000059_existsRows :
    ExistsEqEqPosVarFirstRows case_000059_rank.val case_000059_mask :=
  ⟨case_000059_support, case_000059_sourceAgrees, case_000059_rows⟩

private theorem case_000059_covered :
    RowPropertyParametricCovered case_000059_rank.val case_000059_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000059_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000060_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000060_mask : SignMask := ⟨18, by decide⟩
private def case_000060_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000060_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000060_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (20/9) }
private def case_000060_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000060_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000060_rankWord :
    rankPairWord? case_000060_word = some case_000060_rank := by
  decide

private theorem case_000060_unrank :
    unrankPairWord case_000060_rank = case_000060_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000060_word case_000060_rank).1
    case_000060_rankWord |>.symm

private theorem case_000060_seqChoice :
    translationChoiceSeq case_000060_word case_000060_mask = case_000060_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000060_seqAtRank :
    translationSeqAtRankMask case_000060_rank case_000060_mask = case_000060_seq := by
  rw [translationSeqAtRankMask, case_000060_unrank]
  exact case_000060_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000060_bAtRank :
    translationBAtRankMask case_000060_rank case_000060_mask = case_000060_b := by
  rw [translationBAtRankMask, case_000060_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000060_b, case_000060_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000060_firstLine_eq :
    case_000060_support.firstLine case_000060_seq case_000060_b = case_000060_firstLine := by
  norm_num [case_000060_firstLine, case_000060_support, case_000060_seq, case_000060_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000060_secondLine_eq :
    case_000060_support.secondLine case_000060_seq case_000060_b = case_000060_secondLine := by
  norm_num [case_000060_secondLine, case_000060_support, case_000060_seq, case_000060_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000060_sourceAgrees :
    SourceAgrees case_000060_support case_000060_rank.val case_000060_mask := by
  intro hlt
  have hrank : (⟨case_000060_rank.val, hlt⟩ : Fin numPairWords) = case_000060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_seq := by
    simpa [hrank] using case_000060_seqAtRank
  simp [SourceChecks, hseq, case_000060_support,
    checkTranslationConstraintSource, case_000060_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000060_rows :
    EqEqPosVarFirstRows case_000060_support case_000060_rank.val case_000060_mask := by
  intro hlt
  have hrank : (⟨case_000060_rank.val, hlt⟩ : Fin numPairWords) = case_000060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_seq := by
    simpa [hrank] using case_000060_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_b := by
    simpa [hrank] using case_000060_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000060_support case_000060_rank.val hlt
          case_000060_mask = case_000060_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000060_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000060_support case_000060_rank.val hlt
          case_000060_mask = case_000060_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000060_secondLine_eq]
  have case_000060_rowFirst :
      EqEqPosRow (FirstLineAt case_000060_support case_000060_rank.val hlt case_000060_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000060_firstLine, EqEqPosRow]
  have case_000060_fixedSecond :
      FixedRow (SecondLineAt case_000060_support case_000060_rank.val hlt case_000060_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000060_secondLine, FixedRow]
  exact ⟨case_000060_rowFirst, case_000060_fixedSecond⟩

private theorem case_000060_existsRows :
    ExistsEqEqPosVarFirstRows case_000060_rank.val case_000060_mask :=
  ⟨case_000060_support, case_000060_sourceAgrees, case_000060_rows⟩

private theorem case_000060_covered :
    RowPropertyParametricCovered case_000060_rank.val case_000060_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000060_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000061_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000061_mask : SignMask := ⟨22, by decide⟩
private def case_000061_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000061_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000061_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (68/9) }
private def case_000061_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000061_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000061_rankWord :
    rankPairWord? case_000061_word = some case_000061_rank := by
  decide

private theorem case_000061_unrank :
    unrankPairWord case_000061_rank = case_000061_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000061_word case_000061_rank).1
    case_000061_rankWord |>.symm

private theorem case_000061_seqChoice :
    translationChoiceSeq case_000061_word case_000061_mask = case_000061_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000061_seqAtRank :
    translationSeqAtRankMask case_000061_rank case_000061_mask = case_000061_seq := by
  rw [translationSeqAtRankMask, case_000061_unrank]
  exact case_000061_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000061_bAtRank :
    translationBAtRankMask case_000061_rank case_000061_mask = case_000061_b := by
  rw [translationBAtRankMask, case_000061_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000061_b, case_000061_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000061_firstLine_eq :
    case_000061_support.firstLine case_000061_seq case_000061_b = case_000061_firstLine := by
  norm_num [case_000061_firstLine, case_000061_support, case_000061_seq, case_000061_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000061_secondLine_eq :
    case_000061_support.secondLine case_000061_seq case_000061_b = case_000061_secondLine := by
  norm_num [case_000061_secondLine, case_000061_support, case_000061_seq, case_000061_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000061_sourceAgrees :
    SourceAgrees case_000061_support case_000061_rank.val case_000061_mask := by
  intro hlt
  have hrank : (⟨case_000061_rank.val, hlt⟩ : Fin numPairWords) = case_000061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_seq := by
    simpa [hrank] using case_000061_seqAtRank
  simp [SourceChecks, hseq, case_000061_support,
    checkTranslationConstraintSource, case_000061_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000061_rows :
    EqEqPosVarFirstRows case_000061_support case_000061_rank.val case_000061_mask := by
  intro hlt
  have hrank : (⟨case_000061_rank.val, hlt⟩ : Fin numPairWords) = case_000061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_seq := by
    simpa [hrank] using case_000061_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_b := by
    simpa [hrank] using case_000061_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000061_support case_000061_rank.val hlt
          case_000061_mask = case_000061_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000061_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000061_support case_000061_rank.val hlt
          case_000061_mask = case_000061_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000061_secondLine_eq]
  have case_000061_rowFirst :
      EqEqPosRow (FirstLineAt case_000061_support case_000061_rank.val hlt case_000061_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000061_firstLine, EqEqPosRow]
  have case_000061_fixedSecond :
      FixedRow (SecondLineAt case_000061_support case_000061_rank.val hlt case_000061_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000061_secondLine, FixedRow]
  exact ⟨case_000061_rowFirst, case_000061_fixedSecond⟩

private theorem case_000061_existsRows :
    ExistsEqEqPosVarFirstRows case_000061_rank.val case_000061_mask :=
  ⟨case_000061_support, case_000061_sourceAgrees, case_000061_rows⟩

private theorem case_000061_covered :
    RowPropertyParametricCovered case_000061_rank.val case_000061_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000061_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000062_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000062_mask : SignMask := ⟨24, by decide⟩
private def case_000062_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000062_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000062_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000062_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000062_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000062_rankWord :
    rankPairWord? case_000062_word = some case_000062_rank := by
  decide

private theorem case_000062_unrank :
    unrankPairWord case_000062_rank = case_000062_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000062_word case_000062_rank).1
    case_000062_rankWord |>.symm

private theorem case_000062_seqChoice :
    translationChoiceSeq case_000062_word case_000062_mask = case_000062_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000062_seqAtRank :
    translationSeqAtRankMask case_000062_rank case_000062_mask = case_000062_seq := by
  rw [translationSeqAtRankMask, case_000062_unrank]
  exact case_000062_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000062_bAtRank :
    translationBAtRankMask case_000062_rank case_000062_mask = case_000062_b := by
  rw [translationBAtRankMask, case_000062_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000062_b, case_000062_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000062_firstLine_eq :
    case_000062_support.firstLine case_000062_seq case_000062_b = case_000062_firstLine := by
  norm_num [case_000062_firstLine, case_000062_support, case_000062_seq, case_000062_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000062_secondLine_eq :
    case_000062_support.secondLine case_000062_seq case_000062_b = case_000062_secondLine := by
  norm_num [case_000062_secondLine, case_000062_support, case_000062_seq, case_000062_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000062_sourceAgrees :
    SourceAgrees case_000062_support case_000062_rank.val case_000062_mask := by
  intro hlt
  have hrank : (⟨case_000062_rank.val, hlt⟩ : Fin numPairWords) = case_000062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_seq := by
    simpa [hrank] using case_000062_seqAtRank
  simp [SourceChecks, hseq, case_000062_support,
    checkTranslationConstraintSource, case_000062_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000062_rows :
    EqEqPosVarFirstRows case_000062_support case_000062_rank.val case_000062_mask := by
  intro hlt
  have hrank : (⟨case_000062_rank.val, hlt⟩ : Fin numPairWords) = case_000062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_seq := by
    simpa [hrank] using case_000062_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_b := by
    simpa [hrank] using case_000062_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000062_support case_000062_rank.val hlt
          case_000062_mask = case_000062_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000062_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000062_support case_000062_rank.val hlt
          case_000062_mask = case_000062_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000062_secondLine_eq]
  have case_000062_rowFirst :
      EqEqPosRow (FirstLineAt case_000062_support case_000062_rank.val hlt case_000062_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000062_firstLine, EqEqPosRow]
  have case_000062_fixedSecond :
      FixedRow (SecondLineAt case_000062_support case_000062_rank.val hlt case_000062_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000062_secondLine, FixedRow]
  exact ⟨case_000062_rowFirst, case_000062_fixedSecond⟩

private theorem case_000062_existsRows :
    ExistsEqEqPosVarFirstRows case_000062_rank.val case_000062_mask :=
  ⟨case_000062_support, case_000062_sourceAgrees, case_000062_rows⟩

private theorem case_000062_covered :
    RowPropertyParametricCovered case_000062_rank.val case_000062_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000062_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000063_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000063_mask : SignMask := ⟨28, by decide⟩
private def case_000063_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000063_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000063_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (-52/9) }
private def case_000063_firstLine : StrictLin2 := { a := (-74/55), b := (-74/55), c := (-344/165) }
private def case_000063_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000063_rankWord :
    rankPairWord? case_000063_word = some case_000063_rank := by
  decide

private theorem case_000063_unrank :
    unrankPairWord case_000063_rank = case_000063_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000063_word case_000063_rank).1
    case_000063_rankWord |>.symm

private theorem case_000063_seqChoice :
    translationChoiceSeq case_000063_word case_000063_mask = case_000063_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000063_seqAtRank :
    translationSeqAtRankMask case_000063_rank case_000063_mask = case_000063_seq := by
  rw [translationSeqAtRankMask, case_000063_unrank]
  exact case_000063_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000063_bAtRank :
    translationBAtRankMask case_000063_rank case_000063_mask = case_000063_b := by
  rw [translationBAtRankMask, case_000063_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000063_b, case_000063_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000063_firstLine_eq :
    case_000063_support.firstLine case_000063_seq case_000063_b = case_000063_firstLine := by
  norm_num [case_000063_firstLine, case_000063_support, case_000063_seq, case_000063_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000063_secondLine_eq :
    case_000063_support.secondLine case_000063_seq case_000063_b = case_000063_secondLine := by
  norm_num [case_000063_secondLine, case_000063_support, case_000063_seq, case_000063_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000063_sourceAgrees :
    SourceAgrees case_000063_support case_000063_rank.val case_000063_mask := by
  intro hlt
  have hrank : (⟨case_000063_rank.val, hlt⟩ : Fin numPairWords) = case_000063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_seq := by
    simpa [hrank] using case_000063_seqAtRank
  simp [SourceChecks, hseq, case_000063_support,
    checkTranslationConstraintSource, case_000063_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000063_rows :
    EqEqPosVarFirstRows case_000063_support case_000063_rank.val case_000063_mask := by
  intro hlt
  have hrank : (⟨case_000063_rank.val, hlt⟩ : Fin numPairWords) = case_000063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_seq := by
    simpa [hrank] using case_000063_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_b := by
    simpa [hrank] using case_000063_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000063_support case_000063_rank.val hlt
          case_000063_mask = case_000063_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000063_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000063_support case_000063_rank.val hlt
          case_000063_mask = case_000063_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000063_secondLine_eq]
  have case_000063_rowFirst :
      EqEqPosRow (FirstLineAt case_000063_support case_000063_rank.val hlt case_000063_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000063_firstLine, EqEqPosRow]
  have case_000063_fixedSecond :
      FixedRow (SecondLineAt case_000063_support case_000063_rank.val hlt case_000063_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000063_secondLine, FixedRow]
  exact ⟨case_000063_rowFirst, case_000063_fixedSecond⟩

private theorem case_000063_existsRows :
    ExistsEqEqPosVarFirstRows case_000063_rank.val case_000063_mask :=
  ⟨case_000063_support, case_000063_sourceAgrees, case_000063_rows⟩

private theorem case_000063_covered :
    RowPropertyParametricCovered case_000063_rank.val case_000063_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000063_existsRows

inductive Group001Covered : Nat -> SignMask -> Prop
  | case_000032 : Group001Covered case_000032_rank.val case_000032_mask
  | case_000033 : Group001Covered case_000033_rank.val case_000033_mask
  | case_000034 : Group001Covered case_000034_rank.val case_000034_mask
  | case_000035 : Group001Covered case_000035_rank.val case_000035_mask
  | case_000036 : Group001Covered case_000036_rank.val case_000036_mask
  | case_000037 : Group001Covered case_000037_rank.val case_000037_mask
  | case_000038 : Group001Covered case_000038_rank.val case_000038_mask
  | case_000039 : Group001Covered case_000039_rank.val case_000039_mask
  | case_000040 : Group001Covered case_000040_rank.val case_000040_mask
  | case_000041 : Group001Covered case_000041_rank.val case_000041_mask
  | case_000042 : Group001Covered case_000042_rank.val case_000042_mask
  | case_000043 : Group001Covered case_000043_rank.val case_000043_mask
  | case_000044 : Group001Covered case_000044_rank.val case_000044_mask
  | case_000045 : Group001Covered case_000045_rank.val case_000045_mask
  | case_000046 : Group001Covered case_000046_rank.val case_000046_mask
  | case_000047 : Group001Covered case_000047_rank.val case_000047_mask
  | case_000048 : Group001Covered case_000048_rank.val case_000048_mask
  | case_000049 : Group001Covered case_000049_rank.val case_000049_mask
  | case_000050 : Group001Covered case_000050_rank.val case_000050_mask
  | case_000051 : Group001Covered case_000051_rank.val case_000051_mask
  | case_000052 : Group001Covered case_000052_rank.val case_000052_mask
  | case_000053 : Group001Covered case_000053_rank.val case_000053_mask
  | case_000054 : Group001Covered case_000054_rank.val case_000054_mask
  | case_000055 : Group001Covered case_000055_rank.val case_000055_mask
  | case_000056 : Group001Covered case_000056_rank.val case_000056_mask
  | case_000057 : Group001Covered case_000057_rank.val case_000057_mask
  | case_000058 : Group001Covered case_000058_rank.val case_000058_mask
  | case_000059 : Group001Covered case_000059_rank.val case_000059_mask
  | case_000060 : Group001Covered case_000060_rank.val case_000060_mask
  | case_000061 : Group001Covered case_000061_rank.val case_000061_mask
  | case_000062 : Group001Covered case_000062_rank.val case_000062_mask
  | case_000063 : Group001Covered case_000063_rank.val case_000063_mask

theorem Group001GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group001Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000032 =>
      exact RowPropertyParametricCovered.kills case_000032_covered
  | case_000033 =>
      exact RowPropertyParametricCovered.kills case_000033_covered
  | case_000034 =>
      exact RowPropertyParametricCovered.kills case_000034_covered
  | case_000035 =>
      exact RowPropertyParametricCovered.kills case_000035_covered
  | case_000036 =>
      exact RowPropertyParametricCovered.kills case_000036_covered
  | case_000037 =>
      exact RowPropertyParametricCovered.kills case_000037_covered
  | case_000038 =>
      exact RowPropertyParametricCovered.kills case_000038_covered
  | case_000039 =>
      exact RowPropertyParametricCovered.kills case_000039_covered
  | case_000040 =>
      exact RowPropertyParametricCovered.kills case_000040_covered
  | case_000041 =>
      exact RowPropertyParametricCovered.kills case_000041_covered
  | case_000042 =>
      exact RowPropertyParametricCovered.kills case_000042_covered
  | case_000043 =>
      exact RowPropertyParametricCovered.kills case_000043_covered
  | case_000044 =>
      exact RowPropertyParametricCovered.kills case_000044_covered
  | case_000045 =>
      exact RowPropertyParametricCovered.kills case_000045_covered
  | case_000046 =>
      exact RowPropertyParametricCovered.kills case_000046_covered
  | case_000047 =>
      exact RowPropertyParametricCovered.kills case_000047_covered
  | case_000048 =>
      exact RowPropertyParametricCovered.kills case_000048_covered
  | case_000049 =>
      exact RowPropertyParametricCovered.kills case_000049_covered
  | case_000050 =>
      exact RowPropertyParametricCovered.kills case_000050_covered
  | case_000051 =>
      exact RowPropertyParametricCovered.kills case_000051_covered
  | case_000052 =>
      exact RowPropertyParametricCovered.kills case_000052_covered
  | case_000053 =>
      exact RowPropertyParametricCovered.kills case_000053_covered
  | case_000054 =>
      exact RowPropertyParametricCovered.kills case_000054_covered
  | case_000055 =>
      exact RowPropertyParametricCovered.kills case_000055_covered
  | case_000056 =>
      exact RowPropertyParametricCovered.kills case_000056_covered
  | case_000057 =>
      exact RowPropertyParametricCovered.kills case_000057_covered
  | case_000058 =>
      exact RowPropertyParametricCovered.kills case_000058_covered
  | case_000059 =>
      exact RowPropertyParametricCovered.kills case_000059_covered
  | case_000060 =>
      exact RowPropertyParametricCovered.kills case_000060_covered
  | case_000061 =>
      exact RowPropertyParametricCovered.kills case_000061_covered
  | case_000062 =>
      exact RowPropertyParametricCovered.kills case_000062_covered
  | case_000063 =>
      exact RowPropertyParametricCovered.kills case_000063_covered

theorem Group001_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group001
