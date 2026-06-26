import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group024

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
private def case_000768_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000768_mask : SignMask := ⟨24, by decide⟩
private def case_000768_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000768_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000768_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000768_b : Vec3 Rat := { x := (-124/27), y := (-284/27), z := (-284/27) }
private def case_000768_firstLine : StrictLin2 := { a := -1, b := -1, c := (-253/31) }
private def case_000768_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000768_rankWord :
    rankPairWord? case_000768_word = some case_000768_rank := by
  decide

private theorem case_000768_unrank :
    unrankPairWord case_000768_rank = case_000768_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000768_word case_000768_rank).1
    case_000768_rankWord |>.symm

private theorem case_000768_seqChoice :
    translationChoiceSeq case_000768_word case_000768_mask = case_000768_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000768_seqAtRank :
    translationSeqAtRankMask case_000768_rank case_000768_mask = case_000768_seq := by
  rw [translationSeqAtRankMask, case_000768_unrank]
  exact case_000768_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000768_bAtRank :
    translationBAtRankMask case_000768_rank case_000768_mask = case_000768_b := by
  rw [translationBAtRankMask, case_000768_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000768_b, case_000768_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000768_firstLine_eq :
    case_000768_support.firstLine case_000768_seq case_000768_b = case_000768_firstLine := by
  norm_num [case_000768_firstLine, case_000768_support, case_000768_seq, case_000768_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000768_secondLine_eq :
    case_000768_support.secondLine case_000768_seq case_000768_b = case_000768_secondLine := by
  norm_num [case_000768_secondLine, case_000768_support, case_000768_seq, case_000768_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000768_sourceAgrees :
    SourceAgrees case_000768_support case_000768_rank.val case_000768_mask := by
  intro hlt
  have hrank : (⟨case_000768_rank.val, hlt⟩ : Fin numPairWords) = case_000768_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000768_rank.val, hlt⟩ case_000768_mask =
        case_000768_seq := by
    simpa [hrank] using case_000768_seqAtRank
  simp [SourceChecks, hseq, case_000768_support,
    checkTranslationConstraintSource, case_000768_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000768_rows :
    EqEqPosVarFirstRows case_000768_support case_000768_rank.val case_000768_mask := by
  intro hlt
  have hrank : (⟨case_000768_rank.val, hlt⟩ : Fin numPairWords) = case_000768_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000768_rank.val, hlt⟩ case_000768_mask =
        case_000768_seq := by
    simpa [hrank] using case_000768_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000768_rank.val, hlt⟩ case_000768_mask =
        case_000768_b := by
    simpa [hrank] using case_000768_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000768_support case_000768_rank.val hlt
          case_000768_mask = case_000768_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000768_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000768_support case_000768_rank.val hlt
          case_000768_mask = case_000768_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000768_secondLine_eq]
  have case_000768_rowFirst :
      EqEqPosRow (FirstLineAt case_000768_support case_000768_rank.val hlt case_000768_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000768_firstLine, EqEqPosRow]
  have case_000768_fixedSecond :
      FixedRow (SecondLineAt case_000768_support case_000768_rank.val hlt case_000768_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000768_secondLine, FixedRow]
  exact ⟨case_000768_rowFirst, case_000768_fixedSecond⟩

private theorem case_000768_existsRows :
    ExistsEqEqPosVarFirstRows case_000768_rank.val case_000768_mask :=
  ⟨case_000768_support, case_000768_sourceAgrees, case_000768_rows⟩

private theorem case_000768_covered :
    RowPropertyParametricCovered case_000768_rank.val case_000768_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000768_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000769_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000769_mask : SignMask := ⟨39, by decide⟩
private def case_000769_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000769_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000769_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000769_b : Vec3 Rat := { x := (-92/27), y := (284/27), z := (284/27) }
private def case_000769_firstLine : StrictLin2 := { a := (-46/165), b := (-46/165), c := (-64/55) }
private def case_000769_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000769_rankWord :
    rankPairWord? case_000769_word = some case_000769_rank := by
  decide

private theorem case_000769_unrank :
    unrankPairWord case_000769_rank = case_000769_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000769_word case_000769_rank).1
    case_000769_rankWord |>.symm

private theorem case_000769_seqChoice :
    translationChoiceSeq case_000769_word case_000769_mask = case_000769_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000769_seqAtRank :
    translationSeqAtRankMask case_000769_rank case_000769_mask = case_000769_seq := by
  rw [translationSeqAtRankMask, case_000769_unrank]
  exact case_000769_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000769_bAtRank :
    translationBAtRankMask case_000769_rank case_000769_mask = case_000769_b := by
  rw [translationBAtRankMask, case_000769_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000769_b, case_000769_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000769_firstLine_eq :
    case_000769_support.firstLine case_000769_seq case_000769_b = case_000769_firstLine := by
  norm_num [case_000769_firstLine, case_000769_support, case_000769_seq, case_000769_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000769_secondLine_eq :
    case_000769_support.secondLine case_000769_seq case_000769_b = case_000769_secondLine := by
  norm_num [case_000769_secondLine, case_000769_support, case_000769_seq, case_000769_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000769_sourceAgrees :
    SourceAgrees case_000769_support case_000769_rank.val case_000769_mask := by
  intro hlt
  have hrank : (⟨case_000769_rank.val, hlt⟩ : Fin numPairWords) = case_000769_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000769_rank.val, hlt⟩ case_000769_mask =
        case_000769_seq := by
    simpa [hrank] using case_000769_seqAtRank
  simp [SourceChecks, hseq, case_000769_support,
    checkTranslationConstraintSource, case_000769_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000769_rows :
    EqEqPosVarFirstRows case_000769_support case_000769_rank.val case_000769_mask := by
  intro hlt
  have hrank : (⟨case_000769_rank.val, hlt⟩ : Fin numPairWords) = case_000769_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000769_rank.val, hlt⟩ case_000769_mask =
        case_000769_seq := by
    simpa [hrank] using case_000769_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000769_rank.val, hlt⟩ case_000769_mask =
        case_000769_b := by
    simpa [hrank] using case_000769_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000769_support case_000769_rank.val hlt
          case_000769_mask = case_000769_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000769_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000769_support case_000769_rank.val hlt
          case_000769_mask = case_000769_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000769_secondLine_eq]
  have case_000769_rowFirst :
      EqEqPosRow (FirstLineAt case_000769_support case_000769_rank.val hlt case_000769_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000769_firstLine, EqEqPosRow]
  have case_000769_fixedSecond :
      FixedRow (SecondLineAt case_000769_support case_000769_rank.val hlt case_000769_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000769_secondLine, FixedRow]
  exact ⟨case_000769_rowFirst, case_000769_fixedSecond⟩

private theorem case_000769_existsRows :
    ExistsEqEqPosVarFirstRows case_000769_rank.val case_000769_mask :=
  ⟨case_000769_support, case_000769_sourceAgrees, case_000769_rows⟩

private theorem case_000769_covered :
    RowPropertyParametricCovered case_000769_rank.val case_000769_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000769_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000770_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000770_mask : SignMask := ⟨8, by decide⟩
private def case_000770_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000770_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000770_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000770_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-116/9) }
private def case_000770_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000770_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000770_rankWord :
    rankPairWord? case_000770_word = some case_000770_rank := by
  decide

private theorem case_000770_unrank :
    unrankPairWord case_000770_rank = case_000770_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000770_word case_000770_rank).1
    case_000770_rankWord |>.symm

private theorem case_000770_seqChoice :
    translationChoiceSeq case_000770_word case_000770_mask = case_000770_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000770_seqAtRank :
    translationSeqAtRankMask case_000770_rank case_000770_mask = case_000770_seq := by
  rw [translationSeqAtRankMask, case_000770_unrank]
  exact case_000770_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000770_bAtRank :
    translationBAtRankMask case_000770_rank case_000770_mask = case_000770_b := by
  rw [translationBAtRankMask, case_000770_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000770_b, case_000770_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000770_firstLine_eq :
    case_000770_support.firstLine case_000770_seq case_000770_b = case_000770_firstLine := by
  norm_num [case_000770_firstLine, case_000770_support, case_000770_seq, case_000770_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000770_secondLine_eq :
    case_000770_support.secondLine case_000770_seq case_000770_b = case_000770_secondLine := by
  norm_num [case_000770_secondLine, case_000770_support, case_000770_seq, case_000770_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000770_sourceAgrees :
    SourceAgrees case_000770_support case_000770_rank.val case_000770_mask := by
  intro hlt
  have hrank : (⟨case_000770_rank.val, hlt⟩ : Fin numPairWords) = case_000770_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000770_rank.val, hlt⟩ case_000770_mask =
        case_000770_seq := by
    simpa [hrank] using case_000770_seqAtRank
  simp [SourceChecks, hseq, case_000770_support,
    checkTranslationConstraintSource, case_000770_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000770_rows :
    EqEqPosVarFirstRows case_000770_support case_000770_rank.val case_000770_mask := by
  intro hlt
  have hrank : (⟨case_000770_rank.val, hlt⟩ : Fin numPairWords) = case_000770_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000770_rank.val, hlt⟩ case_000770_mask =
        case_000770_seq := by
    simpa [hrank] using case_000770_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000770_rank.val, hlt⟩ case_000770_mask =
        case_000770_b := by
    simpa [hrank] using case_000770_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000770_support case_000770_rank.val hlt
          case_000770_mask = case_000770_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000770_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000770_support case_000770_rank.val hlt
          case_000770_mask = case_000770_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000770_secondLine_eq]
  have case_000770_rowFirst :
      EqEqPosRow (FirstLineAt case_000770_support case_000770_rank.val hlt case_000770_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000770_firstLine, EqEqPosRow]
  have case_000770_fixedSecond :
      FixedRow (SecondLineAt case_000770_support case_000770_rank.val hlt case_000770_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000770_secondLine, FixedRow]
  exact ⟨case_000770_rowFirst, case_000770_fixedSecond⟩

private theorem case_000770_existsRows :
    ExistsEqEqPosVarFirstRows case_000770_rank.val case_000770_mask :=
  ⟨case_000770_support, case_000770_sourceAgrees, case_000770_rows⟩

private theorem case_000770_covered :
    RowPropertyParametricCovered case_000770_rank.val case_000770_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000770_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000771_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000771_mask : SignMask := ⟨9, by decide⟩
private def case_000771_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000771_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000771_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000771_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000771_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000771_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000771_rankWord :
    rankPairWord? case_000771_word = some case_000771_rank := by
  decide

private theorem case_000771_unrank :
    unrankPairWord case_000771_rank = case_000771_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000771_word case_000771_rank).1
    case_000771_rankWord |>.symm

private theorem case_000771_seqChoice :
    translationChoiceSeq case_000771_word case_000771_mask = case_000771_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000771_seqAtRank :
    translationSeqAtRankMask case_000771_rank case_000771_mask = case_000771_seq := by
  rw [translationSeqAtRankMask, case_000771_unrank]
  exact case_000771_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000771_bAtRank :
    translationBAtRankMask case_000771_rank case_000771_mask = case_000771_b := by
  rw [translationBAtRankMask, case_000771_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000771_b, case_000771_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000771_firstLine_eq :
    case_000771_support.firstLine case_000771_seq case_000771_b = case_000771_firstLine := by
  norm_num [case_000771_firstLine, case_000771_support, case_000771_seq, case_000771_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000771_secondLine_eq :
    case_000771_support.secondLine case_000771_seq case_000771_b = case_000771_secondLine := by
  norm_num [case_000771_secondLine, case_000771_support, case_000771_seq, case_000771_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000771_sourceAgrees :
    SourceAgrees case_000771_support case_000771_rank.val case_000771_mask := by
  intro hlt
  have hrank : (⟨case_000771_rank.val, hlt⟩ : Fin numPairWords) = case_000771_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000771_rank.val, hlt⟩ case_000771_mask =
        case_000771_seq := by
    simpa [hrank] using case_000771_seqAtRank
  simp [SourceChecks, hseq, case_000771_support,
    checkTranslationConstraintSource, case_000771_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000771_rows :
    EqEqPosVarFirstRows case_000771_support case_000771_rank.val case_000771_mask := by
  intro hlt
  have hrank : (⟨case_000771_rank.val, hlt⟩ : Fin numPairWords) = case_000771_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000771_rank.val, hlt⟩ case_000771_mask =
        case_000771_seq := by
    simpa [hrank] using case_000771_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000771_rank.val, hlt⟩ case_000771_mask =
        case_000771_b := by
    simpa [hrank] using case_000771_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000771_support case_000771_rank.val hlt
          case_000771_mask = case_000771_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000771_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000771_support case_000771_rank.val hlt
          case_000771_mask = case_000771_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000771_secondLine_eq]
  have case_000771_rowFirst :
      EqEqPosRow (FirstLineAt case_000771_support case_000771_rank.val hlt case_000771_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000771_firstLine, EqEqPosRow]
  have case_000771_fixedSecond :
      FixedRow (SecondLineAt case_000771_support case_000771_rank.val hlt case_000771_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000771_secondLine, FixedRow]
  exact ⟨case_000771_rowFirst, case_000771_fixedSecond⟩

private theorem case_000771_existsRows :
    ExistsEqEqPosVarFirstRows case_000771_rank.val case_000771_mask :=
  ⟨case_000771_support, case_000771_sourceAgrees, case_000771_rows⟩

private theorem case_000771_covered :
    RowPropertyParametricCovered case_000771_rank.val case_000771_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000771_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000772_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000772_mask : SignMask := ⟨13, by decide⟩
private def case_000772_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000772_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000772_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000772_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000772_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000772_secondLine : StrictLin2 := { a := (225/2278), b := (-225/2278), c := (-537/1139) }

private theorem case_000772_rankWord :
    rankPairWord? case_000772_word = some case_000772_rank := by
  decide

private theorem case_000772_unrank :
    unrankPairWord case_000772_rank = case_000772_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000772_word case_000772_rank).1
    case_000772_rankWord |>.symm

private theorem case_000772_seqChoice :
    translationChoiceSeq case_000772_word case_000772_mask = case_000772_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000772_seqAtRank :
    translationSeqAtRankMask case_000772_rank case_000772_mask = case_000772_seq := by
  rw [translationSeqAtRankMask, case_000772_unrank]
  exact case_000772_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000772_bAtRank :
    translationBAtRankMask case_000772_rank case_000772_mask = case_000772_b := by
  rw [translationBAtRankMask, case_000772_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000772_b, case_000772_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000772_firstLine_eq :
    case_000772_support.firstLine case_000772_seq case_000772_b = case_000772_firstLine := by
  norm_num [case_000772_firstLine, case_000772_support, case_000772_seq, case_000772_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000772_secondLine_eq :
    case_000772_support.secondLine case_000772_seq case_000772_b = case_000772_secondLine := by
  norm_num [case_000772_secondLine, case_000772_support, case_000772_seq, case_000772_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000772_sourceAgrees :
    SourceAgrees case_000772_support case_000772_rank.val case_000772_mask := by
  intro hlt
  have hrank : (⟨case_000772_rank.val, hlt⟩ : Fin numPairWords) = case_000772_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000772_rank.val, hlt⟩ case_000772_mask =
        case_000772_seq := by
    simpa [hrank] using case_000772_seqAtRank
  simp [SourceChecks, hseq, case_000772_support,
    checkTranslationConstraintSource, case_000772_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000772_rows :
    OppMinusOneVarSecondRows case_000772_support case_000772_rank.val case_000772_mask := by
  intro hlt
  have hrank : (⟨case_000772_rank.val, hlt⟩ : Fin numPairWords) = case_000772_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000772_rank.val, hlt⟩ case_000772_mask =
        case_000772_seq := by
    simpa [hrank] using case_000772_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000772_rank.val, hlt⟩ case_000772_mask =
        case_000772_b := by
    simpa [hrank] using case_000772_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000772_support case_000772_rank.val hlt
          case_000772_mask = case_000772_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000772_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000772_support case_000772_rank.val hlt
          case_000772_mask = case_000772_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000772_secondLine_eq]
  have case_000772_fixedFirst :
      FixedRow (FirstLineAt case_000772_support case_000772_rank.val hlt case_000772_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000772_firstLine, FixedRow]
  have case_000772_rowSecond :
      OppNegRow (SecondLineAt case_000772_support case_000772_rank.val hlt case_000772_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000772_secondLine, OppNegRow]
  exact ⟨case_000772_fixedFirst, case_000772_rowSecond⟩

private theorem case_000772_existsRows :
    ExistsOppMinusOneVarSecondRows case_000772_rank.val case_000772_mask :=
  ⟨case_000772_support, case_000772_sourceAgrees, case_000772_rows⟩

private theorem case_000772_covered :
    RowPropertyParametricCovered case_000772_rank.val case_000772_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000772_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000773_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000773_mask : SignMask := ⟨16, by decide⟩
private def case_000773_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000773_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000773_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000773_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-20/9) }
private def case_000773_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000773_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000773_rankWord :
    rankPairWord? case_000773_word = some case_000773_rank := by
  decide

private theorem case_000773_unrank :
    unrankPairWord case_000773_rank = case_000773_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000773_word case_000773_rank).1
    case_000773_rankWord |>.symm

private theorem case_000773_seqChoice :
    translationChoiceSeq case_000773_word case_000773_mask = case_000773_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000773_seqAtRank :
    translationSeqAtRankMask case_000773_rank case_000773_mask = case_000773_seq := by
  rw [translationSeqAtRankMask, case_000773_unrank]
  exact case_000773_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000773_bAtRank :
    translationBAtRankMask case_000773_rank case_000773_mask = case_000773_b := by
  rw [translationBAtRankMask, case_000773_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000773_b, case_000773_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000773_firstLine_eq :
    case_000773_support.firstLine case_000773_seq case_000773_b = case_000773_firstLine := by
  norm_num [case_000773_firstLine, case_000773_support, case_000773_seq, case_000773_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000773_secondLine_eq :
    case_000773_support.secondLine case_000773_seq case_000773_b = case_000773_secondLine := by
  norm_num [case_000773_secondLine, case_000773_support, case_000773_seq, case_000773_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000773_sourceAgrees :
    SourceAgrees case_000773_support case_000773_rank.val case_000773_mask := by
  intro hlt
  have hrank : (⟨case_000773_rank.val, hlt⟩ : Fin numPairWords) = case_000773_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000773_rank.val, hlt⟩ case_000773_mask =
        case_000773_seq := by
    simpa [hrank] using case_000773_seqAtRank
  simp [SourceChecks, hseq, case_000773_support,
    checkTranslationConstraintSource, case_000773_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000773_rows :
    EqEqPosVarFirstRows case_000773_support case_000773_rank.val case_000773_mask := by
  intro hlt
  have hrank : (⟨case_000773_rank.val, hlt⟩ : Fin numPairWords) = case_000773_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000773_rank.val, hlt⟩ case_000773_mask =
        case_000773_seq := by
    simpa [hrank] using case_000773_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000773_rank.val, hlt⟩ case_000773_mask =
        case_000773_b := by
    simpa [hrank] using case_000773_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000773_support case_000773_rank.val hlt
          case_000773_mask = case_000773_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000773_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000773_support case_000773_rank.val hlt
          case_000773_mask = case_000773_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000773_secondLine_eq]
  have case_000773_rowFirst :
      EqEqPosRow (FirstLineAt case_000773_support case_000773_rank.val hlt case_000773_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000773_firstLine, EqEqPosRow]
  have case_000773_fixedSecond :
      FixedRow (SecondLineAt case_000773_support case_000773_rank.val hlt case_000773_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000773_secondLine, FixedRow]
  exact ⟨case_000773_rowFirst, case_000773_fixedSecond⟩

private theorem case_000773_existsRows :
    ExistsEqEqPosVarFirstRows case_000773_rank.val case_000773_mask :=
  ⟨case_000773_support, case_000773_sourceAgrees, case_000773_rows⟩

private theorem case_000773_covered :
    RowPropertyParametricCovered case_000773_rank.val case_000773_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000773_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000774_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000774_mask : SignMask := ⟨18, by decide⟩
private def case_000774_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000774_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000774_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000774_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000774_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000774_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000774_rankWord :
    rankPairWord? case_000774_word = some case_000774_rank := by
  decide

private theorem case_000774_unrank :
    unrankPairWord case_000774_rank = case_000774_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000774_word case_000774_rank).1
    case_000774_rankWord |>.symm

private theorem case_000774_seqChoice :
    translationChoiceSeq case_000774_word case_000774_mask = case_000774_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000774_seqAtRank :
    translationSeqAtRankMask case_000774_rank case_000774_mask = case_000774_seq := by
  rw [translationSeqAtRankMask, case_000774_unrank]
  exact case_000774_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000774_bAtRank :
    translationBAtRankMask case_000774_rank case_000774_mask = case_000774_b := by
  rw [translationBAtRankMask, case_000774_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000774_b, case_000774_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000774_firstLine_eq :
    case_000774_support.firstLine case_000774_seq case_000774_b = case_000774_firstLine := by
  norm_num [case_000774_firstLine, case_000774_support, case_000774_seq, case_000774_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000774_secondLine_eq :
    case_000774_support.secondLine case_000774_seq case_000774_b = case_000774_secondLine := by
  norm_num [case_000774_secondLine, case_000774_support, case_000774_seq, case_000774_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000774_sourceAgrees :
    SourceAgrees case_000774_support case_000774_rank.val case_000774_mask := by
  intro hlt
  have hrank : (⟨case_000774_rank.val, hlt⟩ : Fin numPairWords) = case_000774_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000774_rank.val, hlt⟩ case_000774_mask =
        case_000774_seq := by
    simpa [hrank] using case_000774_seqAtRank
  simp [SourceChecks, hseq, case_000774_support,
    checkTranslationConstraintSource, case_000774_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000774_rows :
    EqEqPosVarFirstRows case_000774_support case_000774_rank.val case_000774_mask := by
  intro hlt
  have hrank : (⟨case_000774_rank.val, hlt⟩ : Fin numPairWords) = case_000774_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000774_rank.val, hlt⟩ case_000774_mask =
        case_000774_seq := by
    simpa [hrank] using case_000774_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000774_rank.val, hlt⟩ case_000774_mask =
        case_000774_b := by
    simpa [hrank] using case_000774_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000774_support case_000774_rank.val hlt
          case_000774_mask = case_000774_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000774_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000774_support case_000774_rank.val hlt
          case_000774_mask = case_000774_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000774_secondLine_eq]
  have case_000774_rowFirst :
      EqEqPosRow (FirstLineAt case_000774_support case_000774_rank.val hlt case_000774_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000774_firstLine, EqEqPosRow]
  have case_000774_fixedSecond :
      FixedRow (SecondLineAt case_000774_support case_000774_rank.val hlt case_000774_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000774_secondLine, FixedRow]
  exact ⟨case_000774_rowFirst, case_000774_fixedSecond⟩

private theorem case_000774_existsRows :
    ExistsEqEqPosVarFirstRows case_000774_rank.val case_000774_mask :=
  ⟨case_000774_support, case_000774_sourceAgrees, case_000774_rows⟩

private theorem case_000774_covered :
    RowPropertyParametricCovered case_000774_rank.val case_000774_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000774_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000775_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000775_mask : SignMask := ⟨22, by decide⟩
private def case_000775_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000775_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000775_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000775_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000775_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000775_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000775_rankWord :
    rankPairWord? case_000775_word = some case_000775_rank := by
  decide

private theorem case_000775_unrank :
    unrankPairWord case_000775_rank = case_000775_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000775_word case_000775_rank).1
    case_000775_rankWord |>.symm

private theorem case_000775_seqChoice :
    translationChoiceSeq case_000775_word case_000775_mask = case_000775_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000775_seqAtRank :
    translationSeqAtRankMask case_000775_rank case_000775_mask = case_000775_seq := by
  rw [translationSeqAtRankMask, case_000775_unrank]
  exact case_000775_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000775_bAtRank :
    translationBAtRankMask case_000775_rank case_000775_mask = case_000775_b := by
  rw [translationBAtRankMask, case_000775_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000775_b, case_000775_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000775_firstLine_eq :
    case_000775_support.firstLine case_000775_seq case_000775_b = case_000775_firstLine := by
  norm_num [case_000775_firstLine, case_000775_support, case_000775_seq, case_000775_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000775_secondLine_eq :
    case_000775_support.secondLine case_000775_seq case_000775_b = case_000775_secondLine := by
  norm_num [case_000775_secondLine, case_000775_support, case_000775_seq, case_000775_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000775_sourceAgrees :
    SourceAgrees case_000775_support case_000775_rank.val case_000775_mask := by
  intro hlt
  have hrank : (⟨case_000775_rank.val, hlt⟩ : Fin numPairWords) = case_000775_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000775_rank.val, hlt⟩ case_000775_mask =
        case_000775_seq := by
    simpa [hrank] using case_000775_seqAtRank
  simp [SourceChecks, hseq, case_000775_support,
    checkTranslationConstraintSource, case_000775_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000775_rows :
    OppOneMinusVarFirstRows case_000775_support case_000775_rank.val case_000775_mask := by
  intro hlt
  have hrank : (⟨case_000775_rank.val, hlt⟩ : Fin numPairWords) = case_000775_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000775_rank.val, hlt⟩ case_000775_mask =
        case_000775_seq := by
    simpa [hrank] using case_000775_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000775_rank.val, hlt⟩ case_000775_mask =
        case_000775_b := by
    simpa [hrank] using case_000775_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000775_support case_000775_rank.val hlt
          case_000775_mask = case_000775_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000775_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000775_support case_000775_rank.val hlt
          case_000775_mask = case_000775_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000775_secondLine_eq]
  have case_000775_rowFirst :
      OppPosRow (FirstLineAt case_000775_support case_000775_rank.val hlt case_000775_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000775_firstLine, OppPosRow]
  have case_000775_fixedSecond :
      FixedRow (SecondLineAt case_000775_support case_000775_rank.val hlt case_000775_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000775_secondLine, FixedRow]
  exact ⟨case_000775_rowFirst, case_000775_fixedSecond⟩

private theorem case_000775_existsRows :
    ExistsOppOneMinusVarFirstRows case_000775_rank.val case_000775_mask :=
  ⟨case_000775_support, case_000775_sourceAgrees, case_000775_rows⟩

private theorem case_000775_covered :
    RowPropertyParametricCovered case_000775_rank.val case_000775_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000775_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000776_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000776_mask : SignMask := ⟨24, by decide⟩
private def case_000776_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000776_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000776_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000776_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-68/9) }
private def case_000776_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/25) }
private def case_000776_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000776_rankWord :
    rankPairWord? case_000776_word = some case_000776_rank := by
  decide

private theorem case_000776_unrank :
    unrankPairWord case_000776_rank = case_000776_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000776_word case_000776_rank).1
    case_000776_rankWord |>.symm

private theorem case_000776_seqChoice :
    translationChoiceSeq case_000776_word case_000776_mask = case_000776_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000776_seqAtRank :
    translationSeqAtRankMask case_000776_rank case_000776_mask = case_000776_seq := by
  rw [translationSeqAtRankMask, case_000776_unrank]
  exact case_000776_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000776_bAtRank :
    translationBAtRankMask case_000776_rank case_000776_mask = case_000776_b := by
  rw [translationBAtRankMask, case_000776_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000776_b, case_000776_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000776_firstLine_eq :
    case_000776_support.firstLine case_000776_seq case_000776_b = case_000776_firstLine := by
  norm_num [case_000776_firstLine, case_000776_support, case_000776_seq, case_000776_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000776_secondLine_eq :
    case_000776_support.secondLine case_000776_seq case_000776_b = case_000776_secondLine := by
  norm_num [case_000776_secondLine, case_000776_support, case_000776_seq, case_000776_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000776_sourceAgrees :
    SourceAgrees case_000776_support case_000776_rank.val case_000776_mask := by
  intro hlt
  have hrank : (⟨case_000776_rank.val, hlt⟩ : Fin numPairWords) = case_000776_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000776_rank.val, hlt⟩ case_000776_mask =
        case_000776_seq := by
    simpa [hrank] using case_000776_seqAtRank
  simp [SourceChecks, hseq, case_000776_support,
    checkTranslationConstraintSource, case_000776_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000776_rows :
    EqEqPosVarFirstRows case_000776_support case_000776_rank.val case_000776_mask := by
  intro hlt
  have hrank : (⟨case_000776_rank.val, hlt⟩ : Fin numPairWords) = case_000776_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000776_rank.val, hlt⟩ case_000776_mask =
        case_000776_seq := by
    simpa [hrank] using case_000776_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000776_rank.val, hlt⟩ case_000776_mask =
        case_000776_b := by
    simpa [hrank] using case_000776_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000776_support case_000776_rank.val hlt
          case_000776_mask = case_000776_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000776_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000776_support case_000776_rank.val hlt
          case_000776_mask = case_000776_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000776_secondLine_eq]
  have case_000776_rowFirst :
      EqEqPosRow (FirstLineAt case_000776_support case_000776_rank.val hlt case_000776_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000776_firstLine, EqEqPosRow]
  have case_000776_fixedSecond :
      FixedRow (SecondLineAt case_000776_support case_000776_rank.val hlt case_000776_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000776_secondLine, FixedRow]
  exact ⟨case_000776_rowFirst, case_000776_fixedSecond⟩

private theorem case_000776_existsRows :
    ExistsEqEqPosVarFirstRows case_000776_rank.val case_000776_mask :=
  ⟨case_000776_support, case_000776_sourceAgrees, case_000776_rows⟩

private theorem case_000776_covered :
    RowPropertyParametricCovered case_000776_rank.val case_000776_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000776_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000777_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000777_mask : SignMask := ⟨28, by decide⟩
private def case_000777_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000777_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000777_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000777_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (-20/9) }
private def case_000777_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000777_secondLine : StrictLin2 := { a := (-9/74), b := (9/74), c := (-15/37) }

private theorem case_000777_rankWord :
    rankPairWord? case_000777_word = some case_000777_rank := by
  decide

private theorem case_000777_unrank :
    unrankPairWord case_000777_rank = case_000777_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000777_word case_000777_rank).1
    case_000777_rankWord |>.symm

private theorem case_000777_seqChoice :
    translationChoiceSeq case_000777_word case_000777_mask = case_000777_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000777_seqAtRank :
    translationSeqAtRankMask case_000777_rank case_000777_mask = case_000777_seq := by
  rw [translationSeqAtRankMask, case_000777_unrank]
  exact case_000777_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000777_bAtRank :
    translationBAtRankMask case_000777_rank case_000777_mask = case_000777_b := by
  rw [translationBAtRankMask, case_000777_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000777_b, case_000777_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000777_firstLine_eq :
    case_000777_support.firstLine case_000777_seq case_000777_b = case_000777_firstLine := by
  norm_num [case_000777_firstLine, case_000777_support, case_000777_seq, case_000777_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000777_secondLine_eq :
    case_000777_support.secondLine case_000777_seq case_000777_b = case_000777_secondLine := by
  norm_num [case_000777_secondLine, case_000777_support, case_000777_seq, case_000777_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000777_sourceAgrees :
    SourceAgrees case_000777_support case_000777_rank.val case_000777_mask := by
  intro hlt
  have hrank : (⟨case_000777_rank.val, hlt⟩ : Fin numPairWords) = case_000777_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000777_rank.val, hlt⟩ case_000777_mask =
        case_000777_seq := by
    simpa [hrank] using case_000777_seqAtRank
  simp [SourceChecks, hseq, case_000777_support,
    checkTranslationConstraintSource, case_000777_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000777_rows :
    OppOneMinusVarSecondRows case_000777_support case_000777_rank.val case_000777_mask := by
  intro hlt
  have hrank : (⟨case_000777_rank.val, hlt⟩ : Fin numPairWords) = case_000777_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000777_rank.val, hlt⟩ case_000777_mask =
        case_000777_seq := by
    simpa [hrank] using case_000777_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000777_rank.val, hlt⟩ case_000777_mask =
        case_000777_b := by
    simpa [hrank] using case_000777_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000777_support case_000777_rank.val hlt
          case_000777_mask = case_000777_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000777_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000777_support case_000777_rank.val hlt
          case_000777_mask = case_000777_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000777_secondLine_eq]
  have case_000777_fixedFirst :
      FixedRow (FirstLineAt case_000777_support case_000777_rank.val hlt case_000777_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000777_firstLine, FixedRow]
  have case_000777_rowSecond :
      OppPosRow (SecondLineAt case_000777_support case_000777_rank.val hlt case_000777_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000777_secondLine, OppPosRow]
  exact ⟨case_000777_fixedFirst, case_000777_rowSecond⟩

private theorem case_000777_existsRows :
    ExistsOppOneMinusVarSecondRows case_000777_rank.val case_000777_mask :=
  ⟨case_000777_support, case_000777_sourceAgrees, case_000777_rows⟩

private theorem case_000777_covered :
    RowPropertyParametricCovered case_000777_rank.val case_000777_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000777_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000778_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000778_mask : SignMask := ⟨29, by decide⟩
private def case_000778_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000778_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000778_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000778_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (-20/9) }
private def case_000778_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000778_secondLine : StrictLin2 := { a := (-333/2090), b := (333/2090), c := (-852/1045) }

private theorem case_000778_rankWord :
    rankPairWord? case_000778_word = some case_000778_rank := by
  decide

private theorem case_000778_unrank :
    unrankPairWord case_000778_rank = case_000778_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000778_word case_000778_rank).1
    case_000778_rankWord |>.symm

private theorem case_000778_seqChoice :
    translationChoiceSeq case_000778_word case_000778_mask = case_000778_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000778_seqAtRank :
    translationSeqAtRankMask case_000778_rank case_000778_mask = case_000778_seq := by
  rw [translationSeqAtRankMask, case_000778_unrank]
  exact case_000778_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000778_bAtRank :
    translationBAtRankMask case_000778_rank case_000778_mask = case_000778_b := by
  rw [translationBAtRankMask, case_000778_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000778_b, case_000778_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000778_firstLine_eq :
    case_000778_support.firstLine case_000778_seq case_000778_b = case_000778_firstLine := by
  norm_num [case_000778_firstLine, case_000778_support, case_000778_seq, case_000778_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000778_secondLine_eq :
    case_000778_support.secondLine case_000778_seq case_000778_b = case_000778_secondLine := by
  norm_num [case_000778_secondLine, case_000778_support, case_000778_seq, case_000778_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000778_sourceAgrees :
    SourceAgrees case_000778_support case_000778_rank.val case_000778_mask := by
  intro hlt
  have hrank : (⟨case_000778_rank.val, hlt⟩ : Fin numPairWords) = case_000778_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000778_rank.val, hlt⟩ case_000778_mask =
        case_000778_seq := by
    simpa [hrank] using case_000778_seqAtRank
  simp [SourceChecks, hseq, case_000778_support,
    checkTranslationConstraintSource, case_000778_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000778_rows :
    OppOneMinusVarSecondRows case_000778_support case_000778_rank.val case_000778_mask := by
  intro hlt
  have hrank : (⟨case_000778_rank.val, hlt⟩ : Fin numPairWords) = case_000778_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000778_rank.val, hlt⟩ case_000778_mask =
        case_000778_seq := by
    simpa [hrank] using case_000778_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000778_rank.val, hlt⟩ case_000778_mask =
        case_000778_b := by
    simpa [hrank] using case_000778_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000778_support case_000778_rank.val hlt
          case_000778_mask = case_000778_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000778_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000778_support case_000778_rank.val hlt
          case_000778_mask = case_000778_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000778_secondLine_eq]
  have case_000778_fixedFirst :
      FixedRow (FirstLineAt case_000778_support case_000778_rank.val hlt case_000778_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000778_firstLine, FixedRow]
  have case_000778_rowSecond :
      OppPosRow (SecondLineAt case_000778_support case_000778_rank.val hlt case_000778_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000778_secondLine, OppPosRow]
  exact ⟨case_000778_fixedFirst, case_000778_rowSecond⟩

private theorem case_000778_existsRows :
    ExistsOppOneMinusVarSecondRows case_000778_rank.val case_000778_mask :=
  ⟨case_000778_support, case_000778_sourceAgrees, case_000778_rows⟩

private theorem case_000778_covered :
    RowPropertyParametricCovered case_000778_rank.val case_000778_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000778_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000779_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000779_mask : SignMask := ⟨30, by decide⟩
private def case_000779_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000779_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000779_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000779_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (52/9) }
private def case_000779_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000779_secondLine : StrictLin2 := { a := (-333/2090), b := (333/2090), c := (-258/1045) }

private theorem case_000779_rankWord :
    rankPairWord? case_000779_word = some case_000779_rank := by
  decide

private theorem case_000779_unrank :
    unrankPairWord case_000779_rank = case_000779_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000779_word case_000779_rank).1
    case_000779_rankWord |>.symm

private theorem case_000779_seqChoice :
    translationChoiceSeq case_000779_word case_000779_mask = case_000779_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000779_seqAtRank :
    translationSeqAtRankMask case_000779_rank case_000779_mask = case_000779_seq := by
  rw [translationSeqAtRankMask, case_000779_unrank]
  exact case_000779_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000779_bAtRank :
    translationBAtRankMask case_000779_rank case_000779_mask = case_000779_b := by
  rw [translationBAtRankMask, case_000779_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000779_b, case_000779_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000779_firstLine_eq :
    case_000779_support.firstLine case_000779_seq case_000779_b = case_000779_firstLine := by
  norm_num [case_000779_firstLine, case_000779_support, case_000779_seq, case_000779_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000779_secondLine_eq :
    case_000779_support.secondLine case_000779_seq case_000779_b = case_000779_secondLine := by
  norm_num [case_000779_secondLine, case_000779_support, case_000779_seq, case_000779_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000779_sourceAgrees :
    SourceAgrees case_000779_support case_000779_rank.val case_000779_mask := by
  intro hlt
  have hrank : (⟨case_000779_rank.val, hlt⟩ : Fin numPairWords) = case_000779_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000779_rank.val, hlt⟩ case_000779_mask =
        case_000779_seq := by
    simpa [hrank] using case_000779_seqAtRank
  simp [SourceChecks, hseq, case_000779_support,
    checkTranslationConstraintSource, case_000779_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000779_rows :
    OppOneMinusVarSecondRows case_000779_support case_000779_rank.val case_000779_mask := by
  intro hlt
  have hrank : (⟨case_000779_rank.val, hlt⟩ : Fin numPairWords) = case_000779_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000779_rank.val, hlt⟩ case_000779_mask =
        case_000779_seq := by
    simpa [hrank] using case_000779_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000779_rank.val, hlt⟩ case_000779_mask =
        case_000779_b := by
    simpa [hrank] using case_000779_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000779_support case_000779_rank.val hlt
          case_000779_mask = case_000779_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000779_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000779_support case_000779_rank.val hlt
          case_000779_mask = case_000779_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000779_secondLine_eq]
  have case_000779_fixedFirst :
      FixedRow (FirstLineAt case_000779_support case_000779_rank.val hlt case_000779_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000779_firstLine, FixedRow]
  have case_000779_rowSecond :
      OppPosRow (SecondLineAt case_000779_support case_000779_rank.val hlt case_000779_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000779_secondLine, OppPosRow]
  exact ⟨case_000779_fixedFirst, case_000779_rowSecond⟩

private theorem case_000779_existsRows :
    ExistsOppOneMinusVarSecondRows case_000779_rank.val case_000779_mask :=
  ⟨case_000779_support, case_000779_sourceAgrees, case_000779_rows⟩

private theorem case_000779_covered :
    RowPropertyParametricCovered case_000779_rank.val case_000779_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000779_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000780_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000780_mask : SignMask := ⟨31, by decide⟩
private def case_000780_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000780_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000780_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000780_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (52/9) }
private def case_000780_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000780_secondLine : StrictLin2 := { a := (-37/742), b := (-37/742), c := (-83/371) }

private theorem case_000780_rankWord :
    rankPairWord? case_000780_word = some case_000780_rank := by
  decide

private theorem case_000780_unrank :
    unrankPairWord case_000780_rank = case_000780_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000780_word case_000780_rank).1
    case_000780_rankWord |>.symm

private theorem case_000780_seqChoice :
    translationChoiceSeq case_000780_word case_000780_mask = case_000780_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000780_seqAtRank :
    translationSeqAtRankMask case_000780_rank case_000780_mask = case_000780_seq := by
  rw [translationSeqAtRankMask, case_000780_unrank]
  exact case_000780_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000780_bAtRank :
    translationBAtRankMask case_000780_rank case_000780_mask = case_000780_b := by
  rw [translationBAtRankMask, case_000780_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000780_b, case_000780_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000780_firstLine_eq :
    case_000780_support.firstLine case_000780_seq case_000780_b = case_000780_firstLine := by
  norm_num [case_000780_firstLine, case_000780_support, case_000780_seq, case_000780_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000780_secondLine_eq :
    case_000780_support.secondLine case_000780_seq case_000780_b = case_000780_secondLine := by
  norm_num [case_000780_secondLine, case_000780_support, case_000780_seq, case_000780_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000780_sourceAgrees :
    SourceAgrees case_000780_support case_000780_rank.val case_000780_mask := by
  intro hlt
  have hrank : (⟨case_000780_rank.val, hlt⟩ : Fin numPairWords) = case_000780_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000780_rank.val, hlt⟩ case_000780_mask =
        case_000780_seq := by
    simpa [hrank] using case_000780_seqAtRank
  simp [SourceChecks, hseq, case_000780_support,
    checkTranslationConstraintSource, case_000780_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000780_rows :
    EqEqPosVarSecondRows case_000780_support case_000780_rank.val case_000780_mask := by
  intro hlt
  have hrank : (⟨case_000780_rank.val, hlt⟩ : Fin numPairWords) = case_000780_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000780_rank.val, hlt⟩ case_000780_mask =
        case_000780_seq := by
    simpa [hrank] using case_000780_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000780_rank.val, hlt⟩ case_000780_mask =
        case_000780_b := by
    simpa [hrank] using case_000780_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000780_support case_000780_rank.val hlt
          case_000780_mask = case_000780_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000780_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000780_support case_000780_rank.val hlt
          case_000780_mask = case_000780_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000780_secondLine_eq]
  have case_000780_fixedFirst :
      FixedRow (FirstLineAt case_000780_support case_000780_rank.val hlt case_000780_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000780_firstLine, FixedRow]
  have case_000780_rowSecond :
      EqEqPosRow (SecondLineAt case_000780_support case_000780_rank.val hlt case_000780_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000780_secondLine, EqEqPosRow]
  exact ⟨case_000780_fixedFirst, case_000780_rowSecond⟩

private theorem case_000780_existsRows :
    ExistsEqEqPosVarSecondRows case_000780_rank.val case_000780_mask :=
  ⟨case_000780_support, case_000780_sourceAgrees, case_000780_rows⟩

private theorem case_000780_covered :
    RowPropertyParametricCovered case_000780_rank.val case_000780_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000780_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000781_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000781_mask : SignMask := ⟨47, by decide⟩
private def case_000781_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000781_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000781_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000781_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000781_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000781_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000781_rankWord :
    rankPairWord? case_000781_word = some case_000781_rank := by
  decide

private theorem case_000781_unrank :
    unrankPairWord case_000781_rank = case_000781_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000781_word case_000781_rank).1
    case_000781_rankWord |>.symm

private theorem case_000781_seqChoice :
    translationChoiceSeq case_000781_word case_000781_mask = case_000781_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000781_seqAtRank :
    translationSeqAtRankMask case_000781_rank case_000781_mask = case_000781_seq := by
  rw [translationSeqAtRankMask, case_000781_unrank]
  exact case_000781_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000781_bAtRank :
    translationBAtRankMask case_000781_rank case_000781_mask = case_000781_b := by
  rw [translationBAtRankMask, case_000781_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000781_b, case_000781_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000781_firstLine_eq :
    case_000781_support.firstLine case_000781_seq case_000781_b = case_000781_firstLine := by
  norm_num [case_000781_firstLine, case_000781_support, case_000781_seq, case_000781_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000781_secondLine_eq :
    case_000781_support.secondLine case_000781_seq case_000781_b = case_000781_secondLine := by
  norm_num [case_000781_secondLine, case_000781_support, case_000781_seq, case_000781_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000781_sourceAgrees :
    SourceAgrees case_000781_support case_000781_rank.val case_000781_mask := by
  intro hlt
  have hrank : (⟨case_000781_rank.val, hlt⟩ : Fin numPairWords) = case_000781_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000781_rank.val, hlt⟩ case_000781_mask =
        case_000781_seq := by
    simpa [hrank] using case_000781_seqAtRank
  simp [SourceChecks, hseq, case_000781_support,
    checkTranslationConstraintSource, case_000781_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000781_rows :
    EqEqPosVarSecondRows case_000781_support case_000781_rank.val case_000781_mask := by
  intro hlt
  have hrank : (⟨case_000781_rank.val, hlt⟩ : Fin numPairWords) = case_000781_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000781_rank.val, hlt⟩ case_000781_mask =
        case_000781_seq := by
    simpa [hrank] using case_000781_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000781_rank.val, hlt⟩ case_000781_mask =
        case_000781_b := by
    simpa [hrank] using case_000781_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000781_support case_000781_rank.val hlt
          case_000781_mask = case_000781_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000781_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000781_support case_000781_rank.val hlt
          case_000781_mask = case_000781_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000781_secondLine_eq]
  have case_000781_fixedFirst :
      FixedRow (FirstLineAt case_000781_support case_000781_rank.val hlt case_000781_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000781_firstLine, FixedRow]
  have case_000781_rowSecond :
      EqEqPosRow (SecondLineAt case_000781_support case_000781_rank.val hlt case_000781_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000781_secondLine, EqEqPosRow]
  exact ⟨case_000781_fixedFirst, case_000781_rowSecond⟩

private theorem case_000781_existsRows :
    ExistsEqEqPosVarSecondRows case_000781_rank.val case_000781_mask :=
  ⟨case_000781_support, case_000781_sourceAgrees, case_000781_rows⟩

private theorem case_000781_covered :
    RowPropertyParametricCovered case_000781_rank.val case_000781_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000781_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000782_rank : Fin numPairWords := ⟨600, by decide⟩
private def case_000782_mask : SignMask := ⟨55, by decide⟩
private def case_000782_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000782_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000782_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000782_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000782_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000782_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000782_rankWord :
    rankPairWord? case_000782_word = some case_000782_rank := by
  decide

private theorem case_000782_unrank :
    unrankPairWord case_000782_rank = case_000782_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000782_word case_000782_rank).1
    case_000782_rankWord |>.symm

private theorem case_000782_seqChoice :
    translationChoiceSeq case_000782_word case_000782_mask = case_000782_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000782_seqAtRank :
    translationSeqAtRankMask case_000782_rank case_000782_mask = case_000782_seq := by
  rw [translationSeqAtRankMask, case_000782_unrank]
  exact case_000782_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000782_bAtRank :
    translationBAtRankMask case_000782_rank case_000782_mask = case_000782_b := by
  rw [translationBAtRankMask, case_000782_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000782_b, case_000782_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000782_firstLine_eq :
    case_000782_support.firstLine case_000782_seq case_000782_b = case_000782_firstLine := by
  norm_num [case_000782_firstLine, case_000782_support, case_000782_seq, case_000782_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000782_secondLine_eq :
    case_000782_support.secondLine case_000782_seq case_000782_b = case_000782_secondLine := by
  norm_num [case_000782_secondLine, case_000782_support, case_000782_seq, case_000782_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000782_sourceAgrees :
    SourceAgrees case_000782_support case_000782_rank.val case_000782_mask := by
  intro hlt
  have hrank : (⟨case_000782_rank.val, hlt⟩ : Fin numPairWords) = case_000782_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000782_rank.val, hlt⟩ case_000782_mask =
        case_000782_seq := by
    simpa [hrank] using case_000782_seqAtRank
  simp [SourceChecks, hseq, case_000782_support,
    checkTranslationConstraintSource, case_000782_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000782_rows :
    EqEqPosVarSecondRows case_000782_support case_000782_rank.val case_000782_mask := by
  intro hlt
  have hrank : (⟨case_000782_rank.val, hlt⟩ : Fin numPairWords) = case_000782_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000782_rank.val, hlt⟩ case_000782_mask =
        case_000782_seq := by
    simpa [hrank] using case_000782_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000782_rank.val, hlt⟩ case_000782_mask =
        case_000782_b := by
    simpa [hrank] using case_000782_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000782_support case_000782_rank.val hlt
          case_000782_mask = case_000782_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000782_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000782_support case_000782_rank.val hlt
          case_000782_mask = case_000782_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000782_secondLine_eq]
  have case_000782_fixedFirst :
      FixedRow (FirstLineAt case_000782_support case_000782_rank.val hlt case_000782_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000782_firstLine, FixedRow]
  have case_000782_rowSecond :
      EqEqPosRow (SecondLineAt case_000782_support case_000782_rank.val hlt case_000782_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000782_secondLine, EqEqPosRow]
  exact ⟨case_000782_fixedFirst, case_000782_rowSecond⟩

private theorem case_000782_existsRows :
    ExistsEqEqPosVarSecondRows case_000782_rank.val case_000782_mask :=
  ⟨case_000782_support, case_000782_sourceAgrees, case_000782_rows⟩

private theorem case_000782_covered :
    RowPropertyParametricCovered case_000782_rank.val case_000782_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000782_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000783_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000783_mask : SignMask := ⟨22, by decide⟩
private def case_000783_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000783_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000783_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000783_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (28/3) }
private def case_000783_firstLine : StrictLin2 := { a := -1, b := 1, c := (-39/29) }
private def case_000783_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000783_rankWord :
    rankPairWord? case_000783_word = some case_000783_rank := by
  decide

private theorem case_000783_unrank :
    unrankPairWord case_000783_rank = case_000783_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000783_word case_000783_rank).1
    case_000783_rankWord |>.symm

private theorem case_000783_seqChoice :
    translationChoiceSeq case_000783_word case_000783_mask = case_000783_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000783_seqAtRank :
    translationSeqAtRankMask case_000783_rank case_000783_mask = case_000783_seq := by
  rw [translationSeqAtRankMask, case_000783_unrank]
  exact case_000783_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000783_bAtRank :
    translationBAtRankMask case_000783_rank case_000783_mask = case_000783_b := by
  rw [translationBAtRankMask, case_000783_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000783_b, case_000783_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000783_firstLine_eq :
    case_000783_support.firstLine case_000783_seq case_000783_b = case_000783_firstLine := by
  norm_num [case_000783_firstLine, case_000783_support, case_000783_seq, case_000783_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000783_secondLine_eq :
    case_000783_support.secondLine case_000783_seq case_000783_b = case_000783_secondLine := by
  norm_num [case_000783_secondLine, case_000783_support, case_000783_seq, case_000783_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000783_sourceAgrees :
    SourceAgrees case_000783_support case_000783_rank.val case_000783_mask := by
  intro hlt
  have hrank : (⟨case_000783_rank.val, hlt⟩ : Fin numPairWords) = case_000783_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000783_rank.val, hlt⟩ case_000783_mask =
        case_000783_seq := by
    simpa [hrank] using case_000783_seqAtRank
  simp [SourceChecks, hseq, case_000783_support,
    checkTranslationConstraintSource, case_000783_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000783_rows :
    OppOneMinusVarFirstRows case_000783_support case_000783_rank.val case_000783_mask := by
  intro hlt
  have hrank : (⟨case_000783_rank.val, hlt⟩ : Fin numPairWords) = case_000783_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000783_rank.val, hlt⟩ case_000783_mask =
        case_000783_seq := by
    simpa [hrank] using case_000783_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000783_rank.val, hlt⟩ case_000783_mask =
        case_000783_b := by
    simpa [hrank] using case_000783_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000783_support case_000783_rank.val hlt
          case_000783_mask = case_000783_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000783_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000783_support case_000783_rank.val hlt
          case_000783_mask = case_000783_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000783_secondLine_eq]
  have case_000783_rowFirst :
      OppPosRow (FirstLineAt case_000783_support case_000783_rank.val hlt case_000783_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000783_firstLine, OppPosRow]
  have case_000783_fixedSecond :
      FixedRow (SecondLineAt case_000783_support case_000783_rank.val hlt case_000783_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000783_secondLine, FixedRow]
  exact ⟨case_000783_rowFirst, case_000783_fixedSecond⟩

private theorem case_000783_existsRows :
    ExistsOppOneMinusVarFirstRows case_000783_rank.val case_000783_mask :=
  ⟨case_000783_support, case_000783_sourceAgrees, case_000783_rows⟩

private theorem case_000783_covered :
    RowPropertyParametricCovered case_000783_rank.val case_000783_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000783_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000784_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000784_mask : SignMask := ⟨24, by decide⟩
private def case_000784_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000784_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000784_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000784_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-28/3) }
private def case_000784_firstLine : StrictLin2 := { a := -1, b := -1, c := (-39/29) }
private def case_000784_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000784_rankWord :
    rankPairWord? case_000784_word = some case_000784_rank := by
  decide

private theorem case_000784_unrank :
    unrankPairWord case_000784_rank = case_000784_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000784_word case_000784_rank).1
    case_000784_rankWord |>.symm

private theorem case_000784_seqChoice :
    translationChoiceSeq case_000784_word case_000784_mask = case_000784_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000784_seqAtRank :
    translationSeqAtRankMask case_000784_rank case_000784_mask = case_000784_seq := by
  rw [translationSeqAtRankMask, case_000784_unrank]
  exact case_000784_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000784_bAtRank :
    translationBAtRankMask case_000784_rank case_000784_mask = case_000784_b := by
  rw [translationBAtRankMask, case_000784_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000784_b, case_000784_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000784_firstLine_eq :
    case_000784_support.firstLine case_000784_seq case_000784_b = case_000784_firstLine := by
  norm_num [case_000784_firstLine, case_000784_support, case_000784_seq, case_000784_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000784_secondLine_eq :
    case_000784_support.secondLine case_000784_seq case_000784_b = case_000784_secondLine := by
  norm_num [case_000784_secondLine, case_000784_support, case_000784_seq, case_000784_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000784_sourceAgrees :
    SourceAgrees case_000784_support case_000784_rank.val case_000784_mask := by
  intro hlt
  have hrank : (⟨case_000784_rank.val, hlt⟩ : Fin numPairWords) = case_000784_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000784_rank.val, hlt⟩ case_000784_mask =
        case_000784_seq := by
    simpa [hrank] using case_000784_seqAtRank
  simp [SourceChecks, hseq, case_000784_support,
    checkTranslationConstraintSource, case_000784_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000784_rows :
    EqEqPosVarFirstRows case_000784_support case_000784_rank.val case_000784_mask := by
  intro hlt
  have hrank : (⟨case_000784_rank.val, hlt⟩ : Fin numPairWords) = case_000784_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000784_rank.val, hlt⟩ case_000784_mask =
        case_000784_seq := by
    simpa [hrank] using case_000784_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000784_rank.val, hlt⟩ case_000784_mask =
        case_000784_b := by
    simpa [hrank] using case_000784_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000784_support case_000784_rank.val hlt
          case_000784_mask = case_000784_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000784_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000784_support case_000784_rank.val hlt
          case_000784_mask = case_000784_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000784_secondLine_eq]
  have case_000784_rowFirst :
      EqEqPosRow (FirstLineAt case_000784_support case_000784_rank.val hlt case_000784_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000784_firstLine, EqEqPosRow]
  have case_000784_fixedSecond :
      FixedRow (SecondLineAt case_000784_support case_000784_rank.val hlt case_000784_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000784_secondLine, FixedRow]
  exact ⟨case_000784_rowFirst, case_000784_fixedSecond⟩

private theorem case_000784_existsRows :
    ExistsEqEqPosVarFirstRows case_000784_rank.val case_000784_mask :=
  ⟨case_000784_support, case_000784_sourceAgrees, case_000784_rows⟩

private theorem case_000784_covered :
    RowPropertyParametricCovered case_000784_rank.val case_000784_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000784_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000785_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000785_mask : SignMask := ⟨28, by decide⟩
private def case_000785_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000785_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000785_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000785_b : Vec3 Rat := { x := (-164/9), y := (-4/9), z := -4 }
private def case_000785_firstLine : StrictLin2 := { a := (123/197), b := (-123/197), c := (-125/197) }
private def case_000785_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000785_rankWord :
    rankPairWord? case_000785_word = some case_000785_rank := by
  decide

private theorem case_000785_unrank :
    unrankPairWord case_000785_rank = case_000785_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000785_word case_000785_rank).1
    case_000785_rankWord |>.symm

private theorem case_000785_seqChoice :
    translationChoiceSeq case_000785_word case_000785_mask = case_000785_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000785_seqAtRank :
    translationSeqAtRankMask case_000785_rank case_000785_mask = case_000785_seq := by
  rw [translationSeqAtRankMask, case_000785_unrank]
  exact case_000785_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000785_bAtRank :
    translationBAtRankMask case_000785_rank case_000785_mask = case_000785_b := by
  rw [translationBAtRankMask, case_000785_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000785_b, case_000785_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000785_firstLine_eq :
    case_000785_support.firstLine case_000785_seq case_000785_b = case_000785_firstLine := by
  norm_num [case_000785_firstLine, case_000785_support, case_000785_seq, case_000785_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000785_secondLine_eq :
    case_000785_support.secondLine case_000785_seq case_000785_b = case_000785_secondLine := by
  norm_num [case_000785_secondLine, case_000785_support, case_000785_seq, case_000785_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000785_sourceAgrees :
    SourceAgrees case_000785_support case_000785_rank.val case_000785_mask := by
  intro hlt
  have hrank : (⟨case_000785_rank.val, hlt⟩ : Fin numPairWords) = case_000785_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000785_rank.val, hlt⟩ case_000785_mask =
        case_000785_seq := by
    simpa [hrank] using case_000785_seqAtRank
  simp [SourceChecks, hseq, case_000785_support,
    checkTranslationConstraintSource, case_000785_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000785_rows :
    OppMinusOneVarFirstRows case_000785_support case_000785_rank.val case_000785_mask := by
  intro hlt
  have hrank : (⟨case_000785_rank.val, hlt⟩ : Fin numPairWords) = case_000785_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000785_rank.val, hlt⟩ case_000785_mask =
        case_000785_seq := by
    simpa [hrank] using case_000785_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000785_rank.val, hlt⟩ case_000785_mask =
        case_000785_b := by
    simpa [hrank] using case_000785_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000785_support case_000785_rank.val hlt
          case_000785_mask = case_000785_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000785_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000785_support case_000785_rank.val hlt
          case_000785_mask = case_000785_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000785_secondLine_eq]
  have case_000785_rowFirst :
      OppNegRow (FirstLineAt case_000785_support case_000785_rank.val hlt case_000785_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000785_firstLine, OppNegRow]
  have case_000785_fixedSecond :
      FixedRow (SecondLineAt case_000785_support case_000785_rank.val hlt case_000785_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000785_secondLine, FixedRow]
  exact ⟨case_000785_rowFirst, case_000785_fixedSecond⟩

private theorem case_000785_existsRows :
    ExistsOppMinusOneVarFirstRows case_000785_rank.val case_000785_mask :=
  ⟨case_000785_support, case_000785_sourceAgrees, case_000785_rows⟩

private theorem case_000785_covered :
    RowPropertyParametricCovered case_000785_rank.val case_000785_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000785_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000786_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000786_mask : SignMask := ⟨29, by decide⟩
private def case_000786_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000786_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000786_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000786_b : Vec3 Rat := { x := (-164/9), y := (68/9), z := -4 }
private def case_000786_firstLine : StrictLin2 := { a := (-41/67), b := (41/67), c := (-721/603) }
private def case_000786_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000786_rankWord :
    rankPairWord? case_000786_word = some case_000786_rank := by
  decide

private theorem case_000786_unrank :
    unrankPairWord case_000786_rank = case_000786_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000786_word case_000786_rank).1
    case_000786_rankWord |>.symm

private theorem case_000786_seqChoice :
    translationChoiceSeq case_000786_word case_000786_mask = case_000786_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000786_seqAtRank :
    translationSeqAtRankMask case_000786_rank case_000786_mask = case_000786_seq := by
  rw [translationSeqAtRankMask, case_000786_unrank]
  exact case_000786_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000786_bAtRank :
    translationBAtRankMask case_000786_rank case_000786_mask = case_000786_b := by
  rw [translationBAtRankMask, case_000786_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000786_b, case_000786_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000786_firstLine_eq :
    case_000786_support.firstLine case_000786_seq case_000786_b = case_000786_firstLine := by
  norm_num [case_000786_firstLine, case_000786_support, case_000786_seq, case_000786_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000786_secondLine_eq :
    case_000786_support.secondLine case_000786_seq case_000786_b = case_000786_secondLine := by
  norm_num [case_000786_secondLine, case_000786_support, case_000786_seq, case_000786_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000786_sourceAgrees :
    SourceAgrees case_000786_support case_000786_rank.val case_000786_mask := by
  intro hlt
  have hrank : (⟨case_000786_rank.val, hlt⟩ : Fin numPairWords) = case_000786_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000786_rank.val, hlt⟩ case_000786_mask =
        case_000786_seq := by
    simpa [hrank] using case_000786_seqAtRank
  simp [SourceChecks, hseq, case_000786_support,
    checkTranslationConstraintSource, case_000786_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000786_rows :
    OppOneMinusVarFirstRows case_000786_support case_000786_rank.val case_000786_mask := by
  intro hlt
  have hrank : (⟨case_000786_rank.val, hlt⟩ : Fin numPairWords) = case_000786_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000786_rank.val, hlt⟩ case_000786_mask =
        case_000786_seq := by
    simpa [hrank] using case_000786_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000786_rank.val, hlt⟩ case_000786_mask =
        case_000786_b := by
    simpa [hrank] using case_000786_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000786_support case_000786_rank.val hlt
          case_000786_mask = case_000786_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000786_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000786_support case_000786_rank.val hlt
          case_000786_mask = case_000786_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000786_secondLine_eq]
  have case_000786_rowFirst :
      OppPosRow (FirstLineAt case_000786_support case_000786_rank.val hlt case_000786_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000786_firstLine, OppPosRow]
  have case_000786_fixedSecond :
      FixedRow (SecondLineAt case_000786_support case_000786_rank.val hlt case_000786_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000786_secondLine, FixedRow]
  exact ⟨case_000786_rowFirst, case_000786_fixedSecond⟩

private theorem case_000786_existsRows :
    ExistsOppOneMinusVarFirstRows case_000786_rank.val case_000786_mask :=
  ⟨case_000786_support, case_000786_sourceAgrees, case_000786_rows⟩

private theorem case_000786_covered :
    RowPropertyParametricCovered case_000786_rank.val case_000786_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000786_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000787_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000787_mask : SignMask := ⟨30, by decide⟩
private def case_000787_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000787_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000787_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000787_b : Vec3 Rat := { x := (-164/9), y := (-4/9), z := 4 }
private def case_000787_firstLine : StrictLin2 := { a := (41/31), b := (-41/31), c := (-1025/279) }
private def case_000787_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000787_rankWord :
    rankPairWord? case_000787_word = some case_000787_rank := by
  decide

private theorem case_000787_unrank :
    unrankPairWord case_000787_rank = case_000787_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000787_word case_000787_rank).1
    case_000787_rankWord |>.symm

private theorem case_000787_seqChoice :
    translationChoiceSeq case_000787_word case_000787_mask = case_000787_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000787_seqAtRank :
    translationSeqAtRankMask case_000787_rank case_000787_mask = case_000787_seq := by
  rw [translationSeqAtRankMask, case_000787_unrank]
  exact case_000787_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000787_bAtRank :
    translationBAtRankMask case_000787_rank case_000787_mask = case_000787_b := by
  rw [translationBAtRankMask, case_000787_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000787_b, case_000787_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000787_firstLine_eq :
    case_000787_support.firstLine case_000787_seq case_000787_b = case_000787_firstLine := by
  norm_num [case_000787_firstLine, case_000787_support, case_000787_seq, case_000787_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000787_secondLine_eq :
    case_000787_support.secondLine case_000787_seq case_000787_b = case_000787_secondLine := by
  norm_num [case_000787_secondLine, case_000787_support, case_000787_seq, case_000787_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000787_sourceAgrees :
    SourceAgrees case_000787_support case_000787_rank.val case_000787_mask := by
  intro hlt
  have hrank : (⟨case_000787_rank.val, hlt⟩ : Fin numPairWords) = case_000787_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000787_rank.val, hlt⟩ case_000787_mask =
        case_000787_seq := by
    simpa [hrank] using case_000787_seqAtRank
  simp [SourceChecks, hseq, case_000787_support,
    checkTranslationConstraintSource, case_000787_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000787_rows :
    OppMinusOneVarFirstRows case_000787_support case_000787_rank.val case_000787_mask := by
  intro hlt
  have hrank : (⟨case_000787_rank.val, hlt⟩ : Fin numPairWords) = case_000787_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000787_rank.val, hlt⟩ case_000787_mask =
        case_000787_seq := by
    simpa [hrank] using case_000787_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000787_rank.val, hlt⟩ case_000787_mask =
        case_000787_b := by
    simpa [hrank] using case_000787_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000787_support case_000787_rank.val hlt
          case_000787_mask = case_000787_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000787_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000787_support case_000787_rank.val hlt
          case_000787_mask = case_000787_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000787_secondLine_eq]
  have case_000787_rowFirst :
      OppNegRow (FirstLineAt case_000787_support case_000787_rank.val hlt case_000787_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000787_firstLine, OppNegRow]
  have case_000787_fixedSecond :
      FixedRow (SecondLineAt case_000787_support case_000787_rank.val hlt case_000787_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000787_secondLine, FixedRow]
  exact ⟨case_000787_rowFirst, case_000787_fixedSecond⟩

private theorem case_000787_existsRows :
    ExistsOppMinusOneVarFirstRows case_000787_rank.val case_000787_mask :=
  ⟨case_000787_support, case_000787_sourceAgrees, case_000787_rows⟩

private theorem case_000787_covered :
    RowPropertyParametricCovered case_000787_rank.val case_000787_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000787_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000788_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000788_mask : SignMask := ⟨31, by decide⟩
private def case_000788_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000788_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000788_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000788_b : Vec3 Rat := { x := (-164/9), y := (68/9), z := 4 }
private def case_000788_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000788_secondLine : StrictLin2 := { a := (-1107/23986), b := (-1107/23986), c := (-2673/11993) }

private theorem case_000788_rankWord :
    rankPairWord? case_000788_word = some case_000788_rank := by
  decide

private theorem case_000788_unrank :
    unrankPairWord case_000788_rank = case_000788_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000788_word case_000788_rank).1
    case_000788_rankWord |>.symm

private theorem case_000788_seqChoice :
    translationChoiceSeq case_000788_word case_000788_mask = case_000788_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000788_seqAtRank :
    translationSeqAtRankMask case_000788_rank case_000788_mask = case_000788_seq := by
  rw [translationSeqAtRankMask, case_000788_unrank]
  exact case_000788_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000788_bAtRank :
    translationBAtRankMask case_000788_rank case_000788_mask = case_000788_b := by
  rw [translationBAtRankMask, case_000788_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000788_b, case_000788_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000788_firstLine_eq :
    case_000788_support.firstLine case_000788_seq case_000788_b = case_000788_firstLine := by
  norm_num [case_000788_firstLine, case_000788_support, case_000788_seq, case_000788_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000788_secondLine_eq :
    case_000788_support.secondLine case_000788_seq case_000788_b = case_000788_secondLine := by
  norm_num [case_000788_secondLine, case_000788_support, case_000788_seq, case_000788_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000788_sourceAgrees :
    SourceAgrees case_000788_support case_000788_rank.val case_000788_mask := by
  intro hlt
  have hrank : (⟨case_000788_rank.val, hlt⟩ : Fin numPairWords) = case_000788_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000788_rank.val, hlt⟩ case_000788_mask =
        case_000788_seq := by
    simpa [hrank] using case_000788_seqAtRank
  simp [SourceChecks, hseq, case_000788_support,
    checkTranslationConstraintSource, case_000788_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000788_rows :
    EqEqPosVarSecondRows case_000788_support case_000788_rank.val case_000788_mask := by
  intro hlt
  have hrank : (⟨case_000788_rank.val, hlt⟩ : Fin numPairWords) = case_000788_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000788_rank.val, hlt⟩ case_000788_mask =
        case_000788_seq := by
    simpa [hrank] using case_000788_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000788_rank.val, hlt⟩ case_000788_mask =
        case_000788_b := by
    simpa [hrank] using case_000788_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000788_support case_000788_rank.val hlt
          case_000788_mask = case_000788_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000788_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000788_support case_000788_rank.val hlt
          case_000788_mask = case_000788_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000788_secondLine_eq]
  have case_000788_fixedFirst :
      FixedRow (FirstLineAt case_000788_support case_000788_rank.val hlt case_000788_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000788_firstLine, FixedRow]
  have case_000788_rowSecond :
      EqEqPosRow (SecondLineAt case_000788_support case_000788_rank.val hlt case_000788_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000788_secondLine, EqEqPosRow]
  exact ⟨case_000788_fixedFirst, case_000788_rowSecond⟩

private theorem case_000788_existsRows :
    ExistsEqEqPosVarSecondRows case_000788_rank.val case_000788_mask :=
  ⟨case_000788_support, case_000788_sourceAgrees, case_000788_rows⟩

private theorem case_000788_covered :
    RowPropertyParametricCovered case_000788_rank.val case_000788_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000788_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000789_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000789_mask : SignMask := ⟨45, by decide⟩
private def case_000789_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000789_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000789_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000789_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := -4 }
private def case_000789_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000789_secondLine : StrictLin2 := { a := (-27/2030), b := (27/2030), c := (-432/1015) }

private theorem case_000789_rankWord :
    rankPairWord? case_000789_word = some case_000789_rank := by
  decide

private theorem case_000789_unrank :
    unrankPairWord case_000789_rank = case_000789_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000789_word case_000789_rank).1
    case_000789_rankWord |>.symm

private theorem case_000789_seqChoice :
    translationChoiceSeq case_000789_word case_000789_mask = case_000789_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000789_seqAtRank :
    translationSeqAtRankMask case_000789_rank case_000789_mask = case_000789_seq := by
  rw [translationSeqAtRankMask, case_000789_unrank]
  exact case_000789_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000789_bAtRank :
    translationBAtRankMask case_000789_rank case_000789_mask = case_000789_b := by
  rw [translationBAtRankMask, case_000789_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000789_b, case_000789_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000789_firstLine_eq :
    case_000789_support.firstLine case_000789_seq case_000789_b = case_000789_firstLine := by
  norm_num [case_000789_firstLine, case_000789_support, case_000789_seq, case_000789_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000789_secondLine_eq :
    case_000789_support.secondLine case_000789_seq case_000789_b = case_000789_secondLine := by
  norm_num [case_000789_secondLine, case_000789_support, case_000789_seq, case_000789_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000789_sourceAgrees :
    SourceAgrees case_000789_support case_000789_rank.val case_000789_mask := by
  intro hlt
  have hrank : (⟨case_000789_rank.val, hlt⟩ : Fin numPairWords) = case_000789_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000789_rank.val, hlt⟩ case_000789_mask =
        case_000789_seq := by
    simpa [hrank] using case_000789_seqAtRank
  simp [SourceChecks, hseq, case_000789_support,
    checkTranslationConstraintSource, case_000789_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000789_rows :
    OppOneMinusVarSecondRows case_000789_support case_000789_rank.val case_000789_mask := by
  intro hlt
  have hrank : (⟨case_000789_rank.val, hlt⟩ : Fin numPairWords) = case_000789_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000789_rank.val, hlt⟩ case_000789_mask =
        case_000789_seq := by
    simpa [hrank] using case_000789_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000789_rank.val, hlt⟩ case_000789_mask =
        case_000789_b := by
    simpa [hrank] using case_000789_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000789_support case_000789_rank.val hlt
          case_000789_mask = case_000789_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000789_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000789_support case_000789_rank.val hlt
          case_000789_mask = case_000789_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000789_secondLine_eq]
  have case_000789_fixedFirst :
      FixedRow (FirstLineAt case_000789_support case_000789_rank.val hlt case_000789_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000789_firstLine, FixedRow]
  have case_000789_rowSecond :
      OppPosRow (SecondLineAt case_000789_support case_000789_rank.val hlt case_000789_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000789_secondLine, OppPosRow]
  exact ⟨case_000789_fixedFirst, case_000789_rowSecond⟩

private theorem case_000789_existsRows :
    ExistsOppOneMinusVarSecondRows case_000789_rank.val case_000789_mask :=
  ⟨case_000789_support, case_000789_sourceAgrees, case_000789_rows⟩

private theorem case_000789_covered :
    RowPropertyParametricCovered case_000789_rank.val case_000789_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000789_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000790_rank : Fin numPairWords := ⟨602, by decide⟩
private def case_000790_mask : SignMask := ⟨47, by decide⟩
private def case_000790_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000790_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000790_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000790_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := 4 }
private def case_000790_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000790_secondLine : StrictLin2 := { a := (-27/374), b := (27/374), c := (-189/187) }

private theorem case_000790_rankWord :
    rankPairWord? case_000790_word = some case_000790_rank := by
  decide

private theorem case_000790_unrank :
    unrankPairWord case_000790_rank = case_000790_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000790_word case_000790_rank).1
    case_000790_rankWord |>.symm

private theorem case_000790_seqChoice :
    translationChoiceSeq case_000790_word case_000790_mask = case_000790_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000790_seqAtRank :
    translationSeqAtRankMask case_000790_rank case_000790_mask = case_000790_seq := by
  rw [translationSeqAtRankMask, case_000790_unrank]
  exact case_000790_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000790_bAtRank :
    translationBAtRankMask case_000790_rank case_000790_mask = case_000790_b := by
  rw [translationBAtRankMask, case_000790_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000790_b, case_000790_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000790_firstLine_eq :
    case_000790_support.firstLine case_000790_seq case_000790_b = case_000790_firstLine := by
  norm_num [case_000790_firstLine, case_000790_support, case_000790_seq, case_000790_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000790_secondLine_eq :
    case_000790_support.secondLine case_000790_seq case_000790_b = case_000790_secondLine := by
  norm_num [case_000790_secondLine, case_000790_support, case_000790_seq, case_000790_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000790_sourceAgrees :
    SourceAgrees case_000790_support case_000790_rank.val case_000790_mask := by
  intro hlt
  have hrank : (⟨case_000790_rank.val, hlt⟩ : Fin numPairWords) = case_000790_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000790_rank.val, hlt⟩ case_000790_mask =
        case_000790_seq := by
    simpa [hrank] using case_000790_seqAtRank
  simp [SourceChecks, hseq, case_000790_support,
    checkTranslationConstraintSource, case_000790_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000790_rows :
    OppOneMinusVarSecondRows case_000790_support case_000790_rank.val case_000790_mask := by
  intro hlt
  have hrank : (⟨case_000790_rank.val, hlt⟩ : Fin numPairWords) = case_000790_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000790_rank.val, hlt⟩ case_000790_mask =
        case_000790_seq := by
    simpa [hrank] using case_000790_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000790_rank.val, hlt⟩ case_000790_mask =
        case_000790_b := by
    simpa [hrank] using case_000790_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000790_support case_000790_rank.val hlt
          case_000790_mask = case_000790_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000790_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000790_support case_000790_rank.val hlt
          case_000790_mask = case_000790_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000790_secondLine_eq]
  have case_000790_fixedFirst :
      FixedRow (FirstLineAt case_000790_support case_000790_rank.val hlt case_000790_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000790_firstLine, FixedRow]
  have case_000790_rowSecond :
      OppPosRow (SecondLineAt case_000790_support case_000790_rank.val hlt case_000790_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000790_secondLine, OppPosRow]
  exact ⟨case_000790_fixedFirst, case_000790_rowSecond⟩

private theorem case_000790_existsRows :
    ExistsOppOneMinusVarSecondRows case_000790_rank.val case_000790_mask :=
  ⟨case_000790_support, case_000790_sourceAgrees, case_000790_rows⟩

private theorem case_000790_covered :
    RowPropertyParametricCovered case_000790_rank.val case_000790_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000790_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000791_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000791_mask : SignMask := ⟨13, by decide⟩
private def case_000791_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000791_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000791_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000791_b : Vec3 Rat := { x := (-116/9), y := (28/3), z := (-52/9) }
private def case_000791_firstLine : StrictLin2 := { a := 1, b := -1, c := (-39/29) }
private def case_000791_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000791_rankWord :
    rankPairWord? case_000791_word = some case_000791_rank := by
  decide

private theorem case_000791_unrank :
    unrankPairWord case_000791_rank = case_000791_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000791_word case_000791_rank).1
    case_000791_rankWord |>.symm

private theorem case_000791_seqChoice :
    translationChoiceSeq case_000791_word case_000791_mask = case_000791_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000791_seqAtRank :
    translationSeqAtRankMask case_000791_rank case_000791_mask = case_000791_seq := by
  rw [translationSeqAtRankMask, case_000791_unrank]
  exact case_000791_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000791_bAtRank :
    translationBAtRankMask case_000791_rank case_000791_mask = case_000791_b := by
  rw [translationBAtRankMask, case_000791_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000791_b, case_000791_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000791_firstLine_eq :
    case_000791_support.firstLine case_000791_seq case_000791_b = case_000791_firstLine := by
  norm_num [case_000791_firstLine, case_000791_support, case_000791_seq, case_000791_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000791_secondLine_eq :
    case_000791_support.secondLine case_000791_seq case_000791_b = case_000791_secondLine := by
  norm_num [case_000791_secondLine, case_000791_support, case_000791_seq, case_000791_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000791_sourceAgrees :
    SourceAgrees case_000791_support case_000791_rank.val case_000791_mask := by
  intro hlt
  have hrank : (⟨case_000791_rank.val, hlt⟩ : Fin numPairWords) = case_000791_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000791_rank.val, hlt⟩ case_000791_mask =
        case_000791_seq := by
    simpa [hrank] using case_000791_seqAtRank
  simp [SourceChecks, hseq, case_000791_support,
    checkTranslationConstraintSource, case_000791_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000791_rows :
    OppMinusOneVarFirstRows case_000791_support case_000791_rank.val case_000791_mask := by
  intro hlt
  have hrank : (⟨case_000791_rank.val, hlt⟩ : Fin numPairWords) = case_000791_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000791_rank.val, hlt⟩ case_000791_mask =
        case_000791_seq := by
    simpa [hrank] using case_000791_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000791_rank.val, hlt⟩ case_000791_mask =
        case_000791_b := by
    simpa [hrank] using case_000791_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000791_support case_000791_rank.val hlt
          case_000791_mask = case_000791_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000791_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000791_support case_000791_rank.val hlt
          case_000791_mask = case_000791_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000791_secondLine_eq]
  have case_000791_rowFirst :
      OppNegRow (FirstLineAt case_000791_support case_000791_rank.val hlt case_000791_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000791_firstLine, OppNegRow]
  have case_000791_fixedSecond :
      FixedRow (SecondLineAt case_000791_support case_000791_rank.val hlt case_000791_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000791_secondLine, FixedRow]
  exact ⟨case_000791_rowFirst, case_000791_fixedSecond⟩

private theorem case_000791_existsRows :
    ExistsOppMinusOneVarFirstRows case_000791_rank.val case_000791_mask :=
  ⟨case_000791_support, case_000791_sourceAgrees, case_000791_rows⟩

private theorem case_000791_covered :
    RowPropertyParametricCovered case_000791_rank.val case_000791_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000791_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000792_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000792_mask : SignMask := ⟨24, by decide⟩
private def case_000792_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000792_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000792_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000792_b : Vec3 Rat := { x := (-116/9), y := (-28/3), z := (-52/9) }
private def case_000792_firstLine : StrictLin2 := { a := -1, b := -1, c := (-39/29) }
private def case_000792_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000792_rankWord :
    rankPairWord? case_000792_word = some case_000792_rank := by
  decide

private theorem case_000792_unrank :
    unrankPairWord case_000792_rank = case_000792_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000792_word case_000792_rank).1
    case_000792_rankWord |>.symm

private theorem case_000792_seqChoice :
    translationChoiceSeq case_000792_word case_000792_mask = case_000792_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000792_seqAtRank :
    translationSeqAtRankMask case_000792_rank case_000792_mask = case_000792_seq := by
  rw [translationSeqAtRankMask, case_000792_unrank]
  exact case_000792_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000792_bAtRank :
    translationBAtRankMask case_000792_rank case_000792_mask = case_000792_b := by
  rw [translationBAtRankMask, case_000792_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000792_b, case_000792_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000792_firstLine_eq :
    case_000792_support.firstLine case_000792_seq case_000792_b = case_000792_firstLine := by
  norm_num [case_000792_firstLine, case_000792_support, case_000792_seq, case_000792_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000792_secondLine_eq :
    case_000792_support.secondLine case_000792_seq case_000792_b = case_000792_secondLine := by
  norm_num [case_000792_secondLine, case_000792_support, case_000792_seq, case_000792_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000792_sourceAgrees :
    SourceAgrees case_000792_support case_000792_rank.val case_000792_mask := by
  intro hlt
  have hrank : (⟨case_000792_rank.val, hlt⟩ : Fin numPairWords) = case_000792_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000792_rank.val, hlt⟩ case_000792_mask =
        case_000792_seq := by
    simpa [hrank] using case_000792_seqAtRank
  simp [SourceChecks, hseq, case_000792_support,
    checkTranslationConstraintSource, case_000792_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000792_rows :
    EqEqPosVarFirstRows case_000792_support case_000792_rank.val case_000792_mask := by
  intro hlt
  have hrank : (⟨case_000792_rank.val, hlt⟩ : Fin numPairWords) = case_000792_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000792_rank.val, hlt⟩ case_000792_mask =
        case_000792_seq := by
    simpa [hrank] using case_000792_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000792_rank.val, hlt⟩ case_000792_mask =
        case_000792_b := by
    simpa [hrank] using case_000792_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000792_support case_000792_rank.val hlt
          case_000792_mask = case_000792_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000792_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000792_support case_000792_rank.val hlt
          case_000792_mask = case_000792_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000792_secondLine_eq]
  have case_000792_rowFirst :
      EqEqPosRow (FirstLineAt case_000792_support case_000792_rank.val hlt case_000792_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000792_firstLine, EqEqPosRow]
  have case_000792_fixedSecond :
      FixedRow (SecondLineAt case_000792_support case_000792_rank.val hlt case_000792_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000792_secondLine, FixedRow]
  exact ⟨case_000792_rowFirst, case_000792_fixedSecond⟩

private theorem case_000792_existsRows :
    ExistsEqEqPosVarFirstRows case_000792_rank.val case_000792_mask :=
  ⟨case_000792_support, case_000792_sourceAgrees, case_000792_rows⟩

private theorem case_000792_covered :
    RowPropertyParametricCovered case_000792_rank.val case_000792_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000792_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000793_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000793_mask : SignMask := ⟨28, by decide⟩
private def case_000793_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000793_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000793_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000793_b : Vec3 Rat := { x := (-164/9), y := -4, z := (-4/9) }
private def case_000793_firstLine : StrictLin2 := { a := (-123/197), b := (123/197), c := (-125/197) }
private def case_000793_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000793_rankWord :
    rankPairWord? case_000793_word = some case_000793_rank := by
  decide

private theorem case_000793_unrank :
    unrankPairWord case_000793_rank = case_000793_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000793_word case_000793_rank).1
    case_000793_rankWord |>.symm

private theorem case_000793_seqChoice :
    translationChoiceSeq case_000793_word case_000793_mask = case_000793_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000793_seqAtRank :
    translationSeqAtRankMask case_000793_rank case_000793_mask = case_000793_seq := by
  rw [translationSeqAtRankMask, case_000793_unrank]
  exact case_000793_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000793_bAtRank :
    translationBAtRankMask case_000793_rank case_000793_mask = case_000793_b := by
  rw [translationBAtRankMask, case_000793_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000793_b, case_000793_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000793_firstLine_eq :
    case_000793_support.firstLine case_000793_seq case_000793_b = case_000793_firstLine := by
  norm_num [case_000793_firstLine, case_000793_support, case_000793_seq, case_000793_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000793_secondLine_eq :
    case_000793_support.secondLine case_000793_seq case_000793_b = case_000793_secondLine := by
  norm_num [case_000793_secondLine, case_000793_support, case_000793_seq, case_000793_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000793_sourceAgrees :
    SourceAgrees case_000793_support case_000793_rank.val case_000793_mask := by
  intro hlt
  have hrank : (⟨case_000793_rank.val, hlt⟩ : Fin numPairWords) = case_000793_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000793_rank.val, hlt⟩ case_000793_mask =
        case_000793_seq := by
    simpa [hrank] using case_000793_seqAtRank
  simp [SourceChecks, hseq, case_000793_support,
    checkTranslationConstraintSource, case_000793_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000793_rows :
    OppOneMinusVarFirstRows case_000793_support case_000793_rank.val case_000793_mask := by
  intro hlt
  have hrank : (⟨case_000793_rank.val, hlt⟩ : Fin numPairWords) = case_000793_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000793_rank.val, hlt⟩ case_000793_mask =
        case_000793_seq := by
    simpa [hrank] using case_000793_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000793_rank.val, hlt⟩ case_000793_mask =
        case_000793_b := by
    simpa [hrank] using case_000793_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000793_support case_000793_rank.val hlt
          case_000793_mask = case_000793_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000793_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000793_support case_000793_rank.val hlt
          case_000793_mask = case_000793_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000793_secondLine_eq]
  have case_000793_rowFirst :
      OppPosRow (FirstLineAt case_000793_support case_000793_rank.val hlt case_000793_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000793_firstLine, OppPosRow]
  have case_000793_fixedSecond :
      FixedRow (SecondLineAt case_000793_support case_000793_rank.val hlt case_000793_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000793_secondLine, FixedRow]
  exact ⟨case_000793_rowFirst, case_000793_fixedSecond⟩

private theorem case_000793_existsRows :
    ExistsOppOneMinusVarFirstRows case_000793_rank.val case_000793_mask :=
  ⟨case_000793_support, case_000793_sourceAgrees, case_000793_rows⟩

private theorem case_000793_covered :
    RowPropertyParametricCovered case_000793_rank.val case_000793_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000793_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000794_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000794_mask : SignMask := ⟨29, by decide⟩
private def case_000794_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000794_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000794_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000794_b : Vec3 Rat := { x := (-164/9), y := 4, z := (-4/9) }
private def case_000794_firstLine : StrictLin2 := { a := (-41/31), b := (41/31), c := (-1025/279) }
private def case_000794_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000794_rankWord :
    rankPairWord? case_000794_word = some case_000794_rank := by
  decide

private theorem case_000794_unrank :
    unrankPairWord case_000794_rank = case_000794_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000794_word case_000794_rank).1
    case_000794_rankWord |>.symm

private theorem case_000794_seqChoice :
    translationChoiceSeq case_000794_word case_000794_mask = case_000794_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000794_seqAtRank :
    translationSeqAtRankMask case_000794_rank case_000794_mask = case_000794_seq := by
  rw [translationSeqAtRankMask, case_000794_unrank]
  exact case_000794_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000794_bAtRank :
    translationBAtRankMask case_000794_rank case_000794_mask = case_000794_b := by
  rw [translationBAtRankMask, case_000794_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000794_b, case_000794_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000794_firstLine_eq :
    case_000794_support.firstLine case_000794_seq case_000794_b = case_000794_firstLine := by
  norm_num [case_000794_firstLine, case_000794_support, case_000794_seq, case_000794_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000794_secondLine_eq :
    case_000794_support.secondLine case_000794_seq case_000794_b = case_000794_secondLine := by
  norm_num [case_000794_secondLine, case_000794_support, case_000794_seq, case_000794_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000794_sourceAgrees :
    SourceAgrees case_000794_support case_000794_rank.val case_000794_mask := by
  intro hlt
  have hrank : (⟨case_000794_rank.val, hlt⟩ : Fin numPairWords) = case_000794_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000794_rank.val, hlt⟩ case_000794_mask =
        case_000794_seq := by
    simpa [hrank] using case_000794_seqAtRank
  simp [SourceChecks, hseq, case_000794_support,
    checkTranslationConstraintSource, case_000794_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000794_rows :
    OppOneMinusVarFirstRows case_000794_support case_000794_rank.val case_000794_mask := by
  intro hlt
  have hrank : (⟨case_000794_rank.val, hlt⟩ : Fin numPairWords) = case_000794_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000794_rank.val, hlt⟩ case_000794_mask =
        case_000794_seq := by
    simpa [hrank] using case_000794_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000794_rank.val, hlt⟩ case_000794_mask =
        case_000794_b := by
    simpa [hrank] using case_000794_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000794_support case_000794_rank.val hlt
          case_000794_mask = case_000794_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000794_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000794_support case_000794_rank.val hlt
          case_000794_mask = case_000794_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000794_secondLine_eq]
  have case_000794_rowFirst :
      OppPosRow (FirstLineAt case_000794_support case_000794_rank.val hlt case_000794_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000794_firstLine, OppPosRow]
  have case_000794_fixedSecond :
      FixedRow (SecondLineAt case_000794_support case_000794_rank.val hlt case_000794_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000794_secondLine, FixedRow]
  exact ⟨case_000794_rowFirst, case_000794_fixedSecond⟩

private theorem case_000794_existsRows :
    ExistsOppOneMinusVarFirstRows case_000794_rank.val case_000794_mask :=
  ⟨case_000794_support, case_000794_sourceAgrees, case_000794_rows⟩

private theorem case_000794_covered :
    RowPropertyParametricCovered case_000794_rank.val case_000794_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000794_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000795_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000795_mask : SignMask := ⟨30, by decide⟩
private def case_000795_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000795_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000795_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000795_b : Vec3 Rat := { x := (-164/9), y := -4, z := (68/9) }
private def case_000795_firstLine : StrictLin2 := { a := (41/67), b := (-41/67), c := (-721/603) }
private def case_000795_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000795_rankWord :
    rankPairWord? case_000795_word = some case_000795_rank := by
  decide

private theorem case_000795_unrank :
    unrankPairWord case_000795_rank = case_000795_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000795_word case_000795_rank).1
    case_000795_rankWord |>.symm

private theorem case_000795_seqChoice :
    translationChoiceSeq case_000795_word case_000795_mask = case_000795_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000795_seqAtRank :
    translationSeqAtRankMask case_000795_rank case_000795_mask = case_000795_seq := by
  rw [translationSeqAtRankMask, case_000795_unrank]
  exact case_000795_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000795_bAtRank :
    translationBAtRankMask case_000795_rank case_000795_mask = case_000795_b := by
  rw [translationBAtRankMask, case_000795_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000795_b, case_000795_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000795_firstLine_eq :
    case_000795_support.firstLine case_000795_seq case_000795_b = case_000795_firstLine := by
  norm_num [case_000795_firstLine, case_000795_support, case_000795_seq, case_000795_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000795_secondLine_eq :
    case_000795_support.secondLine case_000795_seq case_000795_b = case_000795_secondLine := by
  norm_num [case_000795_secondLine, case_000795_support, case_000795_seq, case_000795_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000795_sourceAgrees :
    SourceAgrees case_000795_support case_000795_rank.val case_000795_mask := by
  intro hlt
  have hrank : (⟨case_000795_rank.val, hlt⟩ : Fin numPairWords) = case_000795_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000795_rank.val, hlt⟩ case_000795_mask =
        case_000795_seq := by
    simpa [hrank] using case_000795_seqAtRank
  simp [SourceChecks, hseq, case_000795_support,
    checkTranslationConstraintSource, case_000795_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000795_rows :
    OppMinusOneVarFirstRows case_000795_support case_000795_rank.val case_000795_mask := by
  intro hlt
  have hrank : (⟨case_000795_rank.val, hlt⟩ : Fin numPairWords) = case_000795_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000795_rank.val, hlt⟩ case_000795_mask =
        case_000795_seq := by
    simpa [hrank] using case_000795_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000795_rank.val, hlt⟩ case_000795_mask =
        case_000795_b := by
    simpa [hrank] using case_000795_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000795_support case_000795_rank.val hlt
          case_000795_mask = case_000795_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000795_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000795_support case_000795_rank.val hlt
          case_000795_mask = case_000795_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000795_secondLine_eq]
  have case_000795_rowFirst :
      OppNegRow (FirstLineAt case_000795_support case_000795_rank.val hlt case_000795_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000795_firstLine, OppNegRow]
  have case_000795_fixedSecond :
      FixedRow (SecondLineAt case_000795_support case_000795_rank.val hlt case_000795_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000795_secondLine, FixedRow]
  exact ⟨case_000795_rowFirst, case_000795_fixedSecond⟩

private theorem case_000795_existsRows :
    ExistsOppMinusOneVarFirstRows case_000795_rank.val case_000795_mask :=
  ⟨case_000795_support, case_000795_sourceAgrees, case_000795_rows⟩

private theorem case_000795_covered :
    RowPropertyParametricCovered case_000795_rank.val case_000795_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000795_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000796_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000796_mask : SignMask := ⟨31, by decide⟩
private def case_000796_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000796_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000796_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000796_b : Vec3 Rat := { x := (-164/9), y := 4, z := (68/9) }
private def case_000796_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000796_secondLine : StrictLin2 := { a := (-1107/23986), b := (-1107/23986), c := (-2673/11993) }

private theorem case_000796_rankWord :
    rankPairWord? case_000796_word = some case_000796_rank := by
  decide

private theorem case_000796_unrank :
    unrankPairWord case_000796_rank = case_000796_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000796_word case_000796_rank).1
    case_000796_rankWord |>.symm

private theorem case_000796_seqChoice :
    translationChoiceSeq case_000796_word case_000796_mask = case_000796_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000796_seqAtRank :
    translationSeqAtRankMask case_000796_rank case_000796_mask = case_000796_seq := by
  rw [translationSeqAtRankMask, case_000796_unrank]
  exact case_000796_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000796_bAtRank :
    translationBAtRankMask case_000796_rank case_000796_mask = case_000796_b := by
  rw [translationBAtRankMask, case_000796_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000796_b, case_000796_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000796_firstLine_eq :
    case_000796_support.firstLine case_000796_seq case_000796_b = case_000796_firstLine := by
  norm_num [case_000796_firstLine, case_000796_support, case_000796_seq, case_000796_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000796_secondLine_eq :
    case_000796_support.secondLine case_000796_seq case_000796_b = case_000796_secondLine := by
  norm_num [case_000796_secondLine, case_000796_support, case_000796_seq, case_000796_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000796_sourceAgrees :
    SourceAgrees case_000796_support case_000796_rank.val case_000796_mask := by
  intro hlt
  have hrank : (⟨case_000796_rank.val, hlt⟩ : Fin numPairWords) = case_000796_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000796_rank.val, hlt⟩ case_000796_mask =
        case_000796_seq := by
    simpa [hrank] using case_000796_seqAtRank
  simp [SourceChecks, hseq, case_000796_support,
    checkTranslationConstraintSource, case_000796_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000796_rows :
    EqEqPosVarSecondRows case_000796_support case_000796_rank.val case_000796_mask := by
  intro hlt
  have hrank : (⟨case_000796_rank.val, hlt⟩ : Fin numPairWords) = case_000796_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000796_rank.val, hlt⟩ case_000796_mask =
        case_000796_seq := by
    simpa [hrank] using case_000796_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000796_rank.val, hlt⟩ case_000796_mask =
        case_000796_b := by
    simpa [hrank] using case_000796_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000796_support case_000796_rank.val hlt
          case_000796_mask = case_000796_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000796_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000796_support case_000796_rank.val hlt
          case_000796_mask = case_000796_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000796_secondLine_eq]
  have case_000796_fixedFirst :
      FixedRow (FirstLineAt case_000796_support case_000796_rank.val hlt case_000796_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000796_firstLine, FixedRow]
  have case_000796_rowSecond :
      EqEqPosRow (SecondLineAt case_000796_support case_000796_rank.val hlt case_000796_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000796_secondLine, EqEqPosRow]
  exact ⟨case_000796_fixedFirst, case_000796_rowSecond⟩

private theorem case_000796_existsRows :
    ExistsEqEqPosVarSecondRows case_000796_rank.val case_000796_mask :=
  ⟨case_000796_support, case_000796_sourceAgrees, case_000796_rows⟩

private theorem case_000796_covered :
    RowPropertyParametricCovered case_000796_rank.val case_000796_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000796_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000797_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000797_mask : SignMask := ⟨54, by decide⟩
private def case_000797_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000797_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000797_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpm
private def case_000797_b : Vec3 Rat := { x := (-4/9), y := -4, z := (100/9) }
private def case_000797_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000797_secondLine : StrictLin2 := { a := (-27/2030), b := (27/2030), c := (-426/1015) }

private theorem case_000797_rankWord :
    rankPairWord? case_000797_word = some case_000797_rank := by
  decide

private theorem case_000797_unrank :
    unrankPairWord case_000797_rank = case_000797_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000797_word case_000797_rank).1
    case_000797_rankWord |>.symm

private theorem case_000797_seqChoice :
    translationChoiceSeq case_000797_word case_000797_mask = case_000797_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000797_seqAtRank :
    translationSeqAtRankMask case_000797_rank case_000797_mask = case_000797_seq := by
  rw [translationSeqAtRankMask, case_000797_unrank]
  exact case_000797_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000797_bAtRank :
    translationBAtRankMask case_000797_rank case_000797_mask = case_000797_b := by
  rw [translationBAtRankMask, case_000797_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000797_b, case_000797_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000797_firstLine_eq :
    case_000797_support.firstLine case_000797_seq case_000797_b = case_000797_firstLine := by
  norm_num [case_000797_firstLine, case_000797_support, case_000797_seq, case_000797_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000797_secondLine_eq :
    case_000797_support.secondLine case_000797_seq case_000797_b = case_000797_secondLine := by
  norm_num [case_000797_secondLine, case_000797_support, case_000797_seq, case_000797_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000797_sourceAgrees :
    SourceAgrees case_000797_support case_000797_rank.val case_000797_mask := by
  intro hlt
  have hrank : (⟨case_000797_rank.val, hlt⟩ : Fin numPairWords) = case_000797_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000797_rank.val, hlt⟩ case_000797_mask =
        case_000797_seq := by
    simpa [hrank] using case_000797_seqAtRank
  simp [SourceChecks, hseq, case_000797_support,
    checkTranslationConstraintSource, case_000797_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000797_rows :
    OppOneMinusVarSecondRows case_000797_support case_000797_rank.val case_000797_mask := by
  intro hlt
  have hrank : (⟨case_000797_rank.val, hlt⟩ : Fin numPairWords) = case_000797_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000797_rank.val, hlt⟩ case_000797_mask =
        case_000797_seq := by
    simpa [hrank] using case_000797_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000797_rank.val, hlt⟩ case_000797_mask =
        case_000797_b := by
    simpa [hrank] using case_000797_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000797_support case_000797_rank.val hlt
          case_000797_mask = case_000797_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000797_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000797_support case_000797_rank.val hlt
          case_000797_mask = case_000797_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000797_secondLine_eq]
  have case_000797_fixedFirst :
      FixedRow (FirstLineAt case_000797_support case_000797_rank.val hlt case_000797_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000797_firstLine, FixedRow]
  have case_000797_rowSecond :
      OppPosRow (SecondLineAt case_000797_support case_000797_rank.val hlt case_000797_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000797_secondLine, OppPosRow]
  exact ⟨case_000797_fixedFirst, case_000797_rowSecond⟩

private theorem case_000797_existsRows :
    ExistsOppOneMinusVarSecondRows case_000797_rank.val case_000797_mask :=
  ⟨case_000797_support, case_000797_sourceAgrees, case_000797_rows⟩

private theorem case_000797_covered :
    RowPropertyParametricCovered case_000797_rank.val case_000797_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000797_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000798_rank : Fin numPairWords := ⟨603, by decide⟩
private def case_000798_mask : SignMask := ⟨55, by decide⟩
private def case_000798_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000798_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000798_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpm
private def case_000798_b : Vec3 Rat := { x := (-4/9), y := 4, z := (100/9) }
private def case_000798_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000798_secondLine : StrictLin2 := { a := (-27/374), b := (27/374), c := (-237/187) }

private theorem case_000798_rankWord :
    rankPairWord? case_000798_word = some case_000798_rank := by
  decide

private theorem case_000798_unrank :
    unrankPairWord case_000798_rank = case_000798_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000798_word case_000798_rank).1
    case_000798_rankWord |>.symm

private theorem case_000798_seqChoice :
    translationChoiceSeq case_000798_word case_000798_mask = case_000798_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000798_seqAtRank :
    translationSeqAtRankMask case_000798_rank case_000798_mask = case_000798_seq := by
  rw [translationSeqAtRankMask, case_000798_unrank]
  exact case_000798_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000798_bAtRank :
    translationBAtRankMask case_000798_rank case_000798_mask = case_000798_b := by
  rw [translationBAtRankMask, case_000798_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000798_b, case_000798_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000798_firstLine_eq :
    case_000798_support.firstLine case_000798_seq case_000798_b = case_000798_firstLine := by
  norm_num [case_000798_firstLine, case_000798_support, case_000798_seq, case_000798_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000798_secondLine_eq :
    case_000798_support.secondLine case_000798_seq case_000798_b = case_000798_secondLine := by
  norm_num [case_000798_secondLine, case_000798_support, case_000798_seq, case_000798_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000798_sourceAgrees :
    SourceAgrees case_000798_support case_000798_rank.val case_000798_mask := by
  intro hlt
  have hrank : (⟨case_000798_rank.val, hlt⟩ : Fin numPairWords) = case_000798_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000798_rank.val, hlt⟩ case_000798_mask =
        case_000798_seq := by
    simpa [hrank] using case_000798_seqAtRank
  simp [SourceChecks, hseq, case_000798_support,
    checkTranslationConstraintSource, case_000798_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000798_rows :
    OppOneMinusVarSecondRows case_000798_support case_000798_rank.val case_000798_mask := by
  intro hlt
  have hrank : (⟨case_000798_rank.val, hlt⟩ : Fin numPairWords) = case_000798_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000798_rank.val, hlt⟩ case_000798_mask =
        case_000798_seq := by
    simpa [hrank] using case_000798_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000798_rank.val, hlt⟩ case_000798_mask =
        case_000798_b := by
    simpa [hrank] using case_000798_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000798_support case_000798_rank.val hlt
          case_000798_mask = case_000798_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000798_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000798_support case_000798_rank.val hlt
          case_000798_mask = case_000798_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000798_secondLine_eq]
  have case_000798_fixedFirst :
      FixedRow (FirstLineAt case_000798_support case_000798_rank.val hlt case_000798_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000798_firstLine, FixedRow]
  have case_000798_rowSecond :
      OppPosRow (SecondLineAt case_000798_support case_000798_rank.val hlt case_000798_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000798_secondLine, OppPosRow]
  exact ⟨case_000798_fixedFirst, case_000798_rowSecond⟩

private theorem case_000798_existsRows :
    ExistsOppOneMinusVarSecondRows case_000798_rank.val case_000798_mask :=
  ⟨case_000798_support, case_000798_sourceAgrees, case_000798_rows⟩

private theorem case_000798_covered :
    RowPropertyParametricCovered case_000798_rank.val case_000798_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000798_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000799_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000799_mask : SignMask := ⟨8, by decide⟩
private def case_000799_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000799_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000799_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000799_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-116/9) }
private def case_000799_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000799_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000799_rankWord :
    rankPairWord? case_000799_word = some case_000799_rank := by
  decide

private theorem case_000799_unrank :
    unrankPairWord case_000799_rank = case_000799_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000799_word case_000799_rank).1
    case_000799_rankWord |>.symm

private theorem case_000799_seqChoice :
    translationChoiceSeq case_000799_word case_000799_mask = case_000799_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000799_seqAtRank :
    translationSeqAtRankMask case_000799_rank case_000799_mask = case_000799_seq := by
  rw [translationSeqAtRankMask, case_000799_unrank]
  exact case_000799_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000799_bAtRank :
    translationBAtRankMask case_000799_rank case_000799_mask = case_000799_b := by
  rw [translationBAtRankMask, case_000799_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000799_b, case_000799_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000799_firstLine_eq :
    case_000799_support.firstLine case_000799_seq case_000799_b = case_000799_firstLine := by
  norm_num [case_000799_firstLine, case_000799_support, case_000799_seq, case_000799_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000799_secondLine_eq :
    case_000799_support.secondLine case_000799_seq case_000799_b = case_000799_secondLine := by
  norm_num [case_000799_secondLine, case_000799_support, case_000799_seq, case_000799_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000799_sourceAgrees :
    SourceAgrees case_000799_support case_000799_rank.val case_000799_mask := by
  intro hlt
  have hrank : (⟨case_000799_rank.val, hlt⟩ : Fin numPairWords) = case_000799_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000799_rank.val, hlt⟩ case_000799_mask =
        case_000799_seq := by
    simpa [hrank] using case_000799_seqAtRank
  simp [SourceChecks, hseq, case_000799_support,
    checkTranslationConstraintSource, case_000799_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000799_rows :
    EqEqPosVarFirstRows case_000799_support case_000799_rank.val case_000799_mask := by
  intro hlt
  have hrank : (⟨case_000799_rank.val, hlt⟩ : Fin numPairWords) = case_000799_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000799_rank.val, hlt⟩ case_000799_mask =
        case_000799_seq := by
    simpa [hrank] using case_000799_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000799_rank.val, hlt⟩ case_000799_mask =
        case_000799_b := by
    simpa [hrank] using case_000799_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000799_support case_000799_rank.val hlt
          case_000799_mask = case_000799_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000799_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000799_support case_000799_rank.val hlt
          case_000799_mask = case_000799_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000799_secondLine_eq]
  have case_000799_rowFirst :
      EqEqPosRow (FirstLineAt case_000799_support case_000799_rank.val hlt case_000799_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000799_firstLine, EqEqPosRow]
  have case_000799_fixedSecond :
      FixedRow (SecondLineAt case_000799_support case_000799_rank.val hlt case_000799_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000799_secondLine, FixedRow]
  exact ⟨case_000799_rowFirst, case_000799_fixedSecond⟩

private theorem case_000799_existsRows :
    ExistsEqEqPosVarFirstRows case_000799_rank.val case_000799_mask :=
  ⟨case_000799_support, case_000799_sourceAgrees, case_000799_rows⟩

private theorem case_000799_covered :
    RowPropertyParametricCovered case_000799_rank.val case_000799_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000799_existsRows

inductive Group024Covered : Nat -> SignMask -> Prop
  | case_000768 : Group024Covered case_000768_rank.val case_000768_mask
  | case_000769 : Group024Covered case_000769_rank.val case_000769_mask
  | case_000770 : Group024Covered case_000770_rank.val case_000770_mask
  | case_000771 : Group024Covered case_000771_rank.val case_000771_mask
  | case_000772 : Group024Covered case_000772_rank.val case_000772_mask
  | case_000773 : Group024Covered case_000773_rank.val case_000773_mask
  | case_000774 : Group024Covered case_000774_rank.val case_000774_mask
  | case_000775 : Group024Covered case_000775_rank.val case_000775_mask
  | case_000776 : Group024Covered case_000776_rank.val case_000776_mask
  | case_000777 : Group024Covered case_000777_rank.val case_000777_mask
  | case_000778 : Group024Covered case_000778_rank.val case_000778_mask
  | case_000779 : Group024Covered case_000779_rank.val case_000779_mask
  | case_000780 : Group024Covered case_000780_rank.val case_000780_mask
  | case_000781 : Group024Covered case_000781_rank.val case_000781_mask
  | case_000782 : Group024Covered case_000782_rank.val case_000782_mask
  | case_000783 : Group024Covered case_000783_rank.val case_000783_mask
  | case_000784 : Group024Covered case_000784_rank.val case_000784_mask
  | case_000785 : Group024Covered case_000785_rank.val case_000785_mask
  | case_000786 : Group024Covered case_000786_rank.val case_000786_mask
  | case_000787 : Group024Covered case_000787_rank.val case_000787_mask
  | case_000788 : Group024Covered case_000788_rank.val case_000788_mask
  | case_000789 : Group024Covered case_000789_rank.val case_000789_mask
  | case_000790 : Group024Covered case_000790_rank.val case_000790_mask
  | case_000791 : Group024Covered case_000791_rank.val case_000791_mask
  | case_000792 : Group024Covered case_000792_rank.val case_000792_mask
  | case_000793 : Group024Covered case_000793_rank.val case_000793_mask
  | case_000794 : Group024Covered case_000794_rank.val case_000794_mask
  | case_000795 : Group024Covered case_000795_rank.val case_000795_mask
  | case_000796 : Group024Covered case_000796_rank.val case_000796_mask
  | case_000797 : Group024Covered case_000797_rank.val case_000797_mask
  | case_000798 : Group024Covered case_000798_rank.val case_000798_mask
  | case_000799 : Group024Covered case_000799_rank.val case_000799_mask

theorem Group024GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group024Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000768 =>
      exact RowPropertyParametricCovered.kills case_000768_covered
  | case_000769 =>
      exact RowPropertyParametricCovered.kills case_000769_covered
  | case_000770 =>
      exact RowPropertyParametricCovered.kills case_000770_covered
  | case_000771 =>
      exact RowPropertyParametricCovered.kills case_000771_covered
  | case_000772 =>
      exact RowPropertyParametricCovered.kills case_000772_covered
  | case_000773 =>
      exact RowPropertyParametricCovered.kills case_000773_covered
  | case_000774 =>
      exact RowPropertyParametricCovered.kills case_000774_covered
  | case_000775 =>
      exact RowPropertyParametricCovered.kills case_000775_covered
  | case_000776 =>
      exact RowPropertyParametricCovered.kills case_000776_covered
  | case_000777 =>
      exact RowPropertyParametricCovered.kills case_000777_covered
  | case_000778 =>
      exact RowPropertyParametricCovered.kills case_000778_covered
  | case_000779 =>
      exact RowPropertyParametricCovered.kills case_000779_covered
  | case_000780 =>
      exact RowPropertyParametricCovered.kills case_000780_covered
  | case_000781 =>
      exact RowPropertyParametricCovered.kills case_000781_covered
  | case_000782 =>
      exact RowPropertyParametricCovered.kills case_000782_covered
  | case_000783 =>
      exact RowPropertyParametricCovered.kills case_000783_covered
  | case_000784 =>
      exact RowPropertyParametricCovered.kills case_000784_covered
  | case_000785 =>
      exact RowPropertyParametricCovered.kills case_000785_covered
  | case_000786 =>
      exact RowPropertyParametricCovered.kills case_000786_covered
  | case_000787 =>
      exact RowPropertyParametricCovered.kills case_000787_covered
  | case_000788 =>
      exact RowPropertyParametricCovered.kills case_000788_covered
  | case_000789 =>
      exact RowPropertyParametricCovered.kills case_000789_covered
  | case_000790 =>
      exact RowPropertyParametricCovered.kills case_000790_covered
  | case_000791 =>
      exact RowPropertyParametricCovered.kills case_000791_covered
  | case_000792 =>
      exact RowPropertyParametricCovered.kills case_000792_covered
  | case_000793 =>
      exact RowPropertyParametricCovered.kills case_000793_covered
  | case_000794 =>
      exact RowPropertyParametricCovered.kills case_000794_covered
  | case_000795 =>
      exact RowPropertyParametricCovered.kills case_000795_covered
  | case_000796 =>
      exact RowPropertyParametricCovered.kills case_000796_covered
  | case_000797 =>
      exact RowPropertyParametricCovered.kills case_000797_covered
  | case_000798 =>
      exact RowPropertyParametricCovered.kills case_000798_covered
  | case_000799 =>
      exact RowPropertyParametricCovered.kills case_000799_covered

theorem Group024_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group024
