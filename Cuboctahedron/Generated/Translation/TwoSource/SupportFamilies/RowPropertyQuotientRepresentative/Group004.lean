import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group004

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
private def case_000128_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000128_mask : SignMask := ⟨31, by decide⟩
private def case_000128_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000128_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000128_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (52/9) }
private def case_000128_firstLine : StrictLin2 := { a := (-37/55), b := (-37/55), c := (-261/55) }
private def case_000128_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000128_rankWord :
    rankPairWord? case_000128_word = some case_000128_rank := by
  decide

private theorem case_000128_unrank :
    unrankPairWord case_000128_rank = case_000128_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000128_word case_000128_rank).1
    case_000128_rankWord |>.symm

private theorem case_000128_seqChoice :
    translationChoiceSeq case_000128_word case_000128_mask = case_000128_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000128_seqAtRank :
    translationSeqAtRankMask case_000128_rank case_000128_mask = case_000128_seq := by
  rw [translationSeqAtRankMask, case_000128_unrank]
  exact case_000128_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000128_bAtRank :
    translationBAtRankMask case_000128_rank case_000128_mask = case_000128_b := by
  rw [translationBAtRankMask, case_000128_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000128_b, case_000128_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000128_firstLine_eq :
    case_000128_support.firstLine case_000128_seq case_000128_b = case_000128_firstLine := by
  norm_num [case_000128_firstLine, case_000128_support, case_000128_seq, case_000128_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000128_secondLine_eq :
    case_000128_support.secondLine case_000128_seq case_000128_b = case_000128_secondLine := by
  norm_num [case_000128_secondLine, case_000128_support, case_000128_seq, case_000128_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000128_sourceAgrees :
    SourceAgrees case_000128_support case_000128_rank.val case_000128_mask := by
  intro hlt
  have hrank : (⟨case_000128_rank.val, hlt⟩ : Fin numPairWords) = case_000128_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000128_rank.val, hlt⟩ case_000128_mask =
        case_000128_seq := by
    simpa [hrank] using case_000128_seqAtRank
  simp [SourceChecks, hseq, case_000128_support,
    checkTranslationConstraintSource, case_000128_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000128_rows :
    EqEqPosVarFirstRows case_000128_support case_000128_rank.val case_000128_mask := by
  intro hlt
  have hrank : (⟨case_000128_rank.val, hlt⟩ : Fin numPairWords) = case_000128_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000128_rank.val, hlt⟩ case_000128_mask =
        case_000128_seq := by
    simpa [hrank] using case_000128_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000128_rank.val, hlt⟩ case_000128_mask =
        case_000128_b := by
    simpa [hrank] using case_000128_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000128_support case_000128_rank.val hlt
          case_000128_mask = case_000128_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000128_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000128_support case_000128_rank.val hlt
          case_000128_mask = case_000128_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000128_secondLine_eq]
  have case_000128_rowFirst :
      EqEqPosRow (FirstLineAt case_000128_support case_000128_rank.val hlt case_000128_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000128_firstLine, EqEqPosRow]
  have case_000128_fixedSecond :
      FixedRow (SecondLineAt case_000128_support case_000128_rank.val hlt case_000128_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000128_secondLine, FixedRow]
  exact ⟨case_000128_rowFirst, case_000128_fixedSecond⟩

private theorem case_000128_existsRows :
    ExistsEqEqPosVarFirstRows case_000128_rank.val case_000128_mask :=
  ⟨case_000128_support, case_000128_sourceAgrees, case_000128_rows⟩

private theorem case_000128_covered :
    RowPropertyParametricCovered case_000128_rank.val case_000128_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000128_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000129_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000129_mask : SignMask := ⟨45, by decide⟩
private def case_000129_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000129_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000129_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-20/9) }
private def case_000129_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000129_secondLine : StrictLin2 := { a := (13/154), b := (-13/154), c := (-124/231) }

private theorem case_000129_rankWord :
    rankPairWord? case_000129_word = some case_000129_rank := by
  decide

private theorem case_000129_unrank :
    unrankPairWord case_000129_rank = case_000129_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000129_word case_000129_rank).1
    case_000129_rankWord |>.symm

private theorem case_000129_seqChoice :
    translationChoiceSeq case_000129_word case_000129_mask = case_000129_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000129_seqAtRank :
    translationSeqAtRankMask case_000129_rank case_000129_mask = case_000129_seq := by
  rw [translationSeqAtRankMask, case_000129_unrank]
  exact case_000129_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000129_bAtRank :
    translationBAtRankMask case_000129_rank case_000129_mask = case_000129_b := by
  rw [translationBAtRankMask, case_000129_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000129_b, case_000129_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000129_firstLine_eq :
    case_000129_support.firstLine case_000129_seq case_000129_b = case_000129_firstLine := by
  norm_num [case_000129_firstLine, case_000129_support, case_000129_seq, case_000129_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000129_secondLine_eq :
    case_000129_support.secondLine case_000129_seq case_000129_b = case_000129_secondLine := by
  norm_num [case_000129_secondLine, case_000129_support, case_000129_seq, case_000129_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000129_sourceAgrees :
    SourceAgrees case_000129_support case_000129_rank.val case_000129_mask := by
  intro hlt
  have hrank : (⟨case_000129_rank.val, hlt⟩ : Fin numPairWords) = case_000129_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000129_rank.val, hlt⟩ case_000129_mask =
        case_000129_seq := by
    simpa [hrank] using case_000129_seqAtRank
  simp [SourceChecks, hseq, case_000129_support,
    checkTranslationConstraintSource, case_000129_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000129_rows :
    OppMinusOneVarSecondRows case_000129_support case_000129_rank.val case_000129_mask := by
  intro hlt
  have hrank : (⟨case_000129_rank.val, hlt⟩ : Fin numPairWords) = case_000129_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000129_rank.val, hlt⟩ case_000129_mask =
        case_000129_seq := by
    simpa [hrank] using case_000129_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000129_rank.val, hlt⟩ case_000129_mask =
        case_000129_b := by
    simpa [hrank] using case_000129_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000129_support case_000129_rank.val hlt
          case_000129_mask = case_000129_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000129_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000129_support case_000129_rank.val hlt
          case_000129_mask = case_000129_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000129_secondLine_eq]
  have case_000129_fixedFirst :
      FixedRow (FirstLineAt case_000129_support case_000129_rank.val hlt case_000129_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000129_firstLine, FixedRow]
  have case_000129_rowSecond :
      OppNegRow (SecondLineAt case_000129_support case_000129_rank.val hlt case_000129_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000129_secondLine, OppNegRow]
  exact ⟨case_000129_fixedFirst, case_000129_rowSecond⟩

private theorem case_000129_existsRows :
    ExistsOppMinusOneVarSecondRows case_000129_rank.val case_000129_mask :=
  ⟨case_000129_support, case_000129_sourceAgrees, case_000129_rows⟩

private theorem case_000129_covered :
    RowPropertyParametricCovered case_000129_rank.val case_000129_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000129_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000130_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000130_mask : SignMask := ⟨47, by decide⟩
private def case_000130_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000130_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000130_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (52/9) }
private def case_000130_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000130_secondLine : StrictLin2 := { a := (13/18), b := (-13/18), c := (-79/27) }

private theorem case_000130_rankWord :
    rankPairWord? case_000130_word = some case_000130_rank := by
  decide

private theorem case_000130_unrank :
    unrankPairWord case_000130_rank = case_000130_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000130_word case_000130_rank).1
    case_000130_rankWord |>.symm

private theorem case_000130_seqChoice :
    translationChoiceSeq case_000130_word case_000130_mask = case_000130_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000130_seqAtRank :
    translationSeqAtRankMask case_000130_rank case_000130_mask = case_000130_seq := by
  rw [translationSeqAtRankMask, case_000130_unrank]
  exact case_000130_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000130_bAtRank :
    translationBAtRankMask case_000130_rank case_000130_mask = case_000130_b := by
  rw [translationBAtRankMask, case_000130_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000130_b, case_000130_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000130_firstLine_eq :
    case_000130_support.firstLine case_000130_seq case_000130_b = case_000130_firstLine := by
  norm_num [case_000130_firstLine, case_000130_support, case_000130_seq, case_000130_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000130_secondLine_eq :
    case_000130_support.secondLine case_000130_seq case_000130_b = case_000130_secondLine := by
  norm_num [case_000130_secondLine, case_000130_support, case_000130_seq, case_000130_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000130_sourceAgrees :
    SourceAgrees case_000130_support case_000130_rank.val case_000130_mask := by
  intro hlt
  have hrank : (⟨case_000130_rank.val, hlt⟩ : Fin numPairWords) = case_000130_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000130_rank.val, hlt⟩ case_000130_mask =
        case_000130_seq := by
    simpa [hrank] using case_000130_seqAtRank
  simp [SourceChecks, hseq, case_000130_support,
    checkTranslationConstraintSource, case_000130_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000130_rows :
    OppMinusOneVarSecondRows case_000130_support case_000130_rank.val case_000130_mask := by
  intro hlt
  have hrank : (⟨case_000130_rank.val, hlt⟩ : Fin numPairWords) = case_000130_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000130_rank.val, hlt⟩ case_000130_mask =
        case_000130_seq := by
    simpa [hrank] using case_000130_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000130_rank.val, hlt⟩ case_000130_mask =
        case_000130_b := by
    simpa [hrank] using case_000130_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000130_support case_000130_rank.val hlt
          case_000130_mask = case_000130_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000130_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000130_support case_000130_rank.val hlt
          case_000130_mask = case_000130_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000130_secondLine_eq]
  have case_000130_fixedFirst :
      FixedRow (FirstLineAt case_000130_support case_000130_rank.val hlt case_000130_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000130_firstLine, FixedRow]
  have case_000130_rowSecond :
      OppNegRow (SecondLineAt case_000130_support case_000130_rank.val hlt case_000130_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000130_secondLine, OppNegRow]
  exact ⟨case_000130_fixedFirst, case_000130_rowSecond⟩

private theorem case_000130_existsRows :
    ExistsOppMinusOneVarSecondRows case_000130_rank.val case_000130_mask :=
  ⟨case_000130_support, case_000130_sourceAgrees, case_000130_rows⟩

private theorem case_000130_covered :
    RowPropertyParametricCovered case_000130_rank.val case_000130_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000130_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000131_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000131_mask : SignMask := ⟨54, by decide⟩
private def case_000131_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000131_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000131_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (116/9) }
private def case_000131_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000131_secondLine : StrictLin2 := { a := (-5/26), b := (5/26), c := (-214/39) }

private theorem case_000131_rankWord :
    rankPairWord? case_000131_word = some case_000131_rank := by
  decide

private theorem case_000131_unrank :
    unrankPairWord case_000131_rank = case_000131_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000131_word case_000131_rank).1
    case_000131_rankWord |>.symm

private theorem case_000131_seqChoice :
    translationChoiceSeq case_000131_word case_000131_mask = case_000131_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000131_seqAtRank :
    translationSeqAtRankMask case_000131_rank case_000131_mask = case_000131_seq := by
  rw [translationSeqAtRankMask, case_000131_unrank]
  exact case_000131_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000131_bAtRank :
    translationBAtRankMask case_000131_rank case_000131_mask = case_000131_b := by
  rw [translationBAtRankMask, case_000131_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000131_b, case_000131_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000131_firstLine_eq :
    case_000131_support.firstLine case_000131_seq case_000131_b = case_000131_firstLine := by
  norm_num [case_000131_firstLine, case_000131_support, case_000131_seq, case_000131_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000131_secondLine_eq :
    case_000131_support.secondLine case_000131_seq case_000131_b = case_000131_secondLine := by
  norm_num [case_000131_secondLine, case_000131_support, case_000131_seq, case_000131_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000131_sourceAgrees :
    SourceAgrees case_000131_support case_000131_rank.val case_000131_mask := by
  intro hlt
  have hrank : (⟨case_000131_rank.val, hlt⟩ : Fin numPairWords) = case_000131_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000131_rank.val, hlt⟩ case_000131_mask =
        case_000131_seq := by
    simpa [hrank] using case_000131_seqAtRank
  simp [SourceChecks, hseq, case_000131_support,
    checkTranslationConstraintSource, case_000131_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000131_rows :
    OppOneMinusVarSecondRows case_000131_support case_000131_rank.val case_000131_mask := by
  intro hlt
  have hrank : (⟨case_000131_rank.val, hlt⟩ : Fin numPairWords) = case_000131_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000131_rank.val, hlt⟩ case_000131_mask =
        case_000131_seq := by
    simpa [hrank] using case_000131_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000131_rank.val, hlt⟩ case_000131_mask =
        case_000131_b := by
    simpa [hrank] using case_000131_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000131_support case_000131_rank.val hlt
          case_000131_mask = case_000131_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000131_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000131_support case_000131_rank.val hlt
          case_000131_mask = case_000131_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000131_secondLine_eq]
  have case_000131_fixedFirst :
      FixedRow (FirstLineAt case_000131_support case_000131_rank.val hlt case_000131_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000131_firstLine, FixedRow]
  have case_000131_rowSecond :
      OppPosRow (SecondLineAt case_000131_support case_000131_rank.val hlt case_000131_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000131_secondLine, OppPosRow]
  exact ⟨case_000131_fixedFirst, case_000131_rowSecond⟩

private theorem case_000131_existsRows :
    ExistsOppOneMinusVarSecondRows case_000131_rank.val case_000131_mask :=
  ⟨case_000131_support, case_000131_sourceAgrees, case_000131_rows⟩

private theorem case_000131_covered :
    RowPropertyParametricCovered case_000131_rank.val case_000131_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000131_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000132_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000132_mask : SignMask := ⟨63, by decide⟩
private def case_000132_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000132_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000132_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (100/9) }
private def case_000132_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000132_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000132_rankWord :
    rankPairWord? case_000132_word = some case_000132_rank := by
  decide

private theorem case_000132_unrank :
    unrankPairWord case_000132_rank = case_000132_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000132_word case_000132_rank).1
    case_000132_rankWord |>.symm

private theorem case_000132_seqChoice :
    translationChoiceSeq case_000132_word case_000132_mask = case_000132_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000132_seqAtRank :
    translationSeqAtRankMask case_000132_rank case_000132_mask = case_000132_seq := by
  rw [translationSeqAtRankMask, case_000132_unrank]
  exact case_000132_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000132_bAtRank :
    translationBAtRankMask case_000132_rank case_000132_mask = case_000132_b := by
  rw [translationBAtRankMask, case_000132_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000132_b, case_000132_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000132_firstLine_eq :
    case_000132_support.firstLine case_000132_seq case_000132_b = case_000132_firstLine := by
  norm_num [case_000132_firstLine, case_000132_support, case_000132_seq, case_000132_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000132_secondLine_eq :
    case_000132_support.secondLine case_000132_seq case_000132_b = case_000132_secondLine := by
  norm_num [case_000132_secondLine, case_000132_support, case_000132_seq, case_000132_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000132_sourceAgrees :
    SourceAgrees case_000132_support case_000132_rank.val case_000132_mask := by
  intro hlt
  have hrank : (⟨case_000132_rank.val, hlt⟩ : Fin numPairWords) = case_000132_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000132_rank.val, hlt⟩ case_000132_mask =
        case_000132_seq := by
    simpa [hrank] using case_000132_seqAtRank
  simp [SourceChecks, hseq, case_000132_support,
    checkTranslationConstraintSource, case_000132_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000132_rows :
    EqEqPosVarFirstRows case_000132_support case_000132_rank.val case_000132_mask := by
  intro hlt
  have hrank : (⟨case_000132_rank.val, hlt⟩ : Fin numPairWords) = case_000132_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000132_rank.val, hlt⟩ case_000132_mask =
        case_000132_seq := by
    simpa [hrank] using case_000132_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000132_rank.val, hlt⟩ case_000132_mask =
        case_000132_b := by
    simpa [hrank] using case_000132_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000132_support case_000132_rank.val hlt
          case_000132_mask = case_000132_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000132_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000132_support case_000132_rank.val hlt
          case_000132_mask = case_000132_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000132_secondLine_eq]
  have case_000132_rowFirst :
      EqEqPosRow (FirstLineAt case_000132_support case_000132_rank.val hlt case_000132_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000132_firstLine, EqEqPosRow]
  have case_000132_fixedSecond :
      FixedRow (SecondLineAt case_000132_support case_000132_rank.val hlt case_000132_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000132_secondLine, FixedRow]
  exact ⟨case_000132_rowFirst, case_000132_fixedSecond⟩

private theorem case_000132_existsRows :
    ExistsEqEqPosVarFirstRows case_000132_rank.val case_000132_mask :=
  ⟨case_000132_support, case_000132_sourceAgrees, case_000132_rows⟩

private theorem case_000132_covered :
    RowPropertyParametricCovered case_000132_rank.val case_000132_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000132_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000133_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000133_mask : SignMask := ⟨8, by decide⟩
private def case_000133_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000133_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000133_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000133_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000133_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000133_rankWord :
    rankPairWord? case_000133_word = some case_000133_rank := by
  decide

private theorem case_000133_unrank :
    unrankPairWord case_000133_rank = case_000133_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000133_word case_000133_rank).1
    case_000133_rankWord |>.symm

private theorem case_000133_seqChoice :
    translationChoiceSeq case_000133_word case_000133_mask = case_000133_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000133_seqAtRank :
    translationSeqAtRankMask case_000133_rank case_000133_mask = case_000133_seq := by
  rw [translationSeqAtRankMask, case_000133_unrank]
  exact case_000133_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000133_bAtRank :
    translationBAtRankMask case_000133_rank case_000133_mask = case_000133_b := by
  rw [translationBAtRankMask, case_000133_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000133_b, case_000133_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000133_firstLine_eq :
    case_000133_support.firstLine case_000133_seq case_000133_b = case_000133_firstLine := by
  norm_num [case_000133_firstLine, case_000133_support, case_000133_seq, case_000133_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000133_secondLine_eq :
    case_000133_support.secondLine case_000133_seq case_000133_b = case_000133_secondLine := by
  norm_num [case_000133_secondLine, case_000133_support, case_000133_seq, case_000133_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000133_sourceAgrees :
    SourceAgrees case_000133_support case_000133_rank.val case_000133_mask := by
  intro hlt
  have hrank : (⟨case_000133_rank.val, hlt⟩ : Fin numPairWords) = case_000133_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000133_rank.val, hlt⟩ case_000133_mask =
        case_000133_seq := by
    simpa [hrank] using case_000133_seqAtRank
  simp [SourceChecks, hseq, case_000133_support,
    checkTranslationConstraintSource, case_000133_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000133_rows :
    EqEqPosVarFirstRows case_000133_support case_000133_rank.val case_000133_mask := by
  intro hlt
  have hrank : (⟨case_000133_rank.val, hlt⟩ : Fin numPairWords) = case_000133_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000133_rank.val, hlt⟩ case_000133_mask =
        case_000133_seq := by
    simpa [hrank] using case_000133_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000133_rank.val, hlt⟩ case_000133_mask =
        case_000133_b := by
    simpa [hrank] using case_000133_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000133_support case_000133_rank.val hlt
          case_000133_mask = case_000133_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000133_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000133_support case_000133_rank.val hlt
          case_000133_mask = case_000133_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000133_secondLine_eq]
  have case_000133_rowFirst :
      EqEqPosRow (FirstLineAt case_000133_support case_000133_rank.val hlt case_000133_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000133_firstLine, EqEqPosRow]
  have case_000133_fixedSecond :
      FixedRow (SecondLineAt case_000133_support case_000133_rank.val hlt case_000133_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000133_secondLine, FixedRow]
  exact ⟨case_000133_rowFirst, case_000133_fixedSecond⟩

private theorem case_000133_existsRows :
    ExistsEqEqPosVarFirstRows case_000133_rank.val case_000133_mask :=
  ⟨case_000133_support, case_000133_sourceAgrees, case_000133_rows⟩

private theorem case_000133_covered :
    RowPropertyParametricCovered case_000133_rank.val case_000133_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000133_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000134_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000134_mask : SignMask := ⟨9, by decide⟩
private def case_000134_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000134_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000134_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000134_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000134_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000134_rankWord :
    rankPairWord? case_000134_word = some case_000134_rank := by
  decide

private theorem case_000134_unrank :
    unrankPairWord case_000134_rank = case_000134_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000134_word case_000134_rank).1
    case_000134_rankWord |>.symm

private theorem case_000134_seqChoice :
    translationChoiceSeq case_000134_word case_000134_mask = case_000134_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000134_seqAtRank :
    translationSeqAtRankMask case_000134_rank case_000134_mask = case_000134_seq := by
  rw [translationSeqAtRankMask, case_000134_unrank]
  exact case_000134_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000134_bAtRank :
    translationBAtRankMask case_000134_rank case_000134_mask = case_000134_b := by
  rw [translationBAtRankMask, case_000134_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000134_b, case_000134_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000134_firstLine_eq :
    case_000134_support.firstLine case_000134_seq case_000134_b = case_000134_firstLine := by
  norm_num [case_000134_firstLine, case_000134_support, case_000134_seq, case_000134_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000134_secondLine_eq :
    case_000134_support.secondLine case_000134_seq case_000134_b = case_000134_secondLine := by
  norm_num [case_000134_secondLine, case_000134_support, case_000134_seq, case_000134_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000134_sourceAgrees :
    SourceAgrees case_000134_support case_000134_rank.val case_000134_mask := by
  intro hlt
  have hrank : (⟨case_000134_rank.val, hlt⟩ : Fin numPairWords) = case_000134_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000134_rank.val, hlt⟩ case_000134_mask =
        case_000134_seq := by
    simpa [hrank] using case_000134_seqAtRank
  simp [SourceChecks, hseq, case_000134_support,
    checkTranslationConstraintSource, case_000134_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000134_rows :
    EqEqPosVarFirstRows case_000134_support case_000134_rank.val case_000134_mask := by
  intro hlt
  have hrank : (⟨case_000134_rank.val, hlt⟩ : Fin numPairWords) = case_000134_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000134_rank.val, hlt⟩ case_000134_mask =
        case_000134_seq := by
    simpa [hrank] using case_000134_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000134_rank.val, hlt⟩ case_000134_mask =
        case_000134_b := by
    simpa [hrank] using case_000134_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000134_support case_000134_rank.val hlt
          case_000134_mask = case_000134_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000134_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000134_support case_000134_rank.val hlt
          case_000134_mask = case_000134_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000134_secondLine_eq]
  have case_000134_rowFirst :
      EqEqPosRow (FirstLineAt case_000134_support case_000134_rank.val hlt case_000134_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000134_firstLine, EqEqPosRow]
  have case_000134_fixedSecond :
      FixedRow (SecondLineAt case_000134_support case_000134_rank.val hlt case_000134_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000134_secondLine, FixedRow]
  exact ⟨case_000134_rowFirst, case_000134_fixedSecond⟩

private theorem case_000134_existsRows :
    ExistsEqEqPosVarFirstRows case_000134_rank.val case_000134_mask :=
  ⟨case_000134_support, case_000134_sourceAgrees, case_000134_rows⟩

private theorem case_000134_covered :
    RowPropertyParametricCovered case_000134_rank.val case_000134_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000134_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000135_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000135_mask : SignMask := ⟨13, by decide⟩
private def case_000135_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000135_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000135_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000135_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000135_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000135_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000135_rankWord :
    rankPairWord? case_000135_word = some case_000135_rank := by
  decide

private theorem case_000135_unrank :
    unrankPairWord case_000135_rank = case_000135_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000135_word case_000135_rank).1
    case_000135_rankWord |>.symm

private theorem case_000135_seqChoice :
    translationChoiceSeq case_000135_word case_000135_mask = case_000135_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000135_seqAtRank :
    translationSeqAtRankMask case_000135_rank case_000135_mask = case_000135_seq := by
  rw [translationSeqAtRankMask, case_000135_unrank]
  exact case_000135_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000135_bAtRank :
    translationBAtRankMask case_000135_rank case_000135_mask = case_000135_b := by
  rw [translationBAtRankMask, case_000135_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000135_b, case_000135_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000135_firstLine_eq :
    case_000135_support.firstLine case_000135_seq case_000135_b = case_000135_firstLine := by
  norm_num [case_000135_firstLine, case_000135_support, case_000135_seq, case_000135_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000135_secondLine_eq :
    case_000135_support.secondLine case_000135_seq case_000135_b = case_000135_secondLine := by
  norm_num [case_000135_secondLine, case_000135_support, case_000135_seq, case_000135_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000135_sourceAgrees :
    SourceAgrees case_000135_support case_000135_rank.val case_000135_mask := by
  intro hlt
  have hrank : (⟨case_000135_rank.val, hlt⟩ : Fin numPairWords) = case_000135_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000135_rank.val, hlt⟩ case_000135_mask =
        case_000135_seq := by
    simpa [hrank] using case_000135_seqAtRank
  simp [SourceChecks, hseq, case_000135_support,
    checkTranslationConstraintSource, case_000135_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000135_rows :
    EqEqPosVarSecondRows case_000135_support case_000135_rank.val case_000135_mask := by
  intro hlt
  have hrank : (⟨case_000135_rank.val, hlt⟩ : Fin numPairWords) = case_000135_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000135_rank.val, hlt⟩ case_000135_mask =
        case_000135_seq := by
    simpa [hrank] using case_000135_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000135_rank.val, hlt⟩ case_000135_mask =
        case_000135_b := by
    simpa [hrank] using case_000135_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000135_support case_000135_rank.val hlt
          case_000135_mask = case_000135_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000135_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000135_support case_000135_rank.val hlt
          case_000135_mask = case_000135_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000135_secondLine_eq]
  have case_000135_fixedFirst :
      FixedRow (FirstLineAt case_000135_support case_000135_rank.val hlt case_000135_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000135_firstLine, FixedRow]
  have case_000135_rowSecond :
      EqEqPosRow (SecondLineAt case_000135_support case_000135_rank.val hlt case_000135_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000135_secondLine, EqEqPosRow]
  exact ⟨case_000135_fixedFirst, case_000135_rowSecond⟩

private theorem case_000135_existsRows :
    ExistsEqEqPosVarSecondRows case_000135_rank.val case_000135_mask :=
  ⟨case_000135_support, case_000135_sourceAgrees, case_000135_rows⟩

private theorem case_000135_covered :
    RowPropertyParametricCovered case_000135_rank.val case_000135_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000135_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000136_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000136_mask : SignMask := ⟨16, by decide⟩
private def case_000136_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000136_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000136_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000136_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (-68/9) }
private def case_000136_firstLine : StrictLin2 := { a := -1, b := -1, c := -83 }
private def case_000136_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000136_rankWord :
    rankPairWord? case_000136_word = some case_000136_rank := by
  decide

private theorem case_000136_unrank :
    unrankPairWord case_000136_rank = case_000136_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000136_word case_000136_rank).1
    case_000136_rankWord |>.symm

private theorem case_000136_seqChoice :
    translationChoiceSeq case_000136_word case_000136_mask = case_000136_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000136_seqAtRank :
    translationSeqAtRankMask case_000136_rank case_000136_mask = case_000136_seq := by
  rw [translationSeqAtRankMask, case_000136_unrank]
  exact case_000136_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000136_bAtRank :
    translationBAtRankMask case_000136_rank case_000136_mask = case_000136_b := by
  rw [translationBAtRankMask, case_000136_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000136_b, case_000136_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000136_firstLine_eq :
    case_000136_support.firstLine case_000136_seq case_000136_b = case_000136_firstLine := by
  norm_num [case_000136_firstLine, case_000136_support, case_000136_seq, case_000136_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000136_secondLine_eq :
    case_000136_support.secondLine case_000136_seq case_000136_b = case_000136_secondLine := by
  norm_num [case_000136_secondLine, case_000136_support, case_000136_seq, case_000136_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000136_sourceAgrees :
    SourceAgrees case_000136_support case_000136_rank.val case_000136_mask := by
  intro hlt
  have hrank : (⟨case_000136_rank.val, hlt⟩ : Fin numPairWords) = case_000136_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000136_rank.val, hlt⟩ case_000136_mask =
        case_000136_seq := by
    simpa [hrank] using case_000136_seqAtRank
  simp [SourceChecks, hseq, case_000136_support,
    checkTranslationConstraintSource, case_000136_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000136_rows :
    EqEqPosVarFirstRows case_000136_support case_000136_rank.val case_000136_mask := by
  intro hlt
  have hrank : (⟨case_000136_rank.val, hlt⟩ : Fin numPairWords) = case_000136_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000136_rank.val, hlt⟩ case_000136_mask =
        case_000136_seq := by
    simpa [hrank] using case_000136_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000136_rank.val, hlt⟩ case_000136_mask =
        case_000136_b := by
    simpa [hrank] using case_000136_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000136_support case_000136_rank.val hlt
          case_000136_mask = case_000136_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000136_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000136_support case_000136_rank.val hlt
          case_000136_mask = case_000136_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000136_secondLine_eq]
  have case_000136_rowFirst :
      EqEqPosRow (FirstLineAt case_000136_support case_000136_rank.val hlt case_000136_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000136_firstLine, EqEqPosRow]
  have case_000136_fixedSecond :
      FixedRow (SecondLineAt case_000136_support case_000136_rank.val hlt case_000136_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000136_secondLine, FixedRow]
  exact ⟨case_000136_rowFirst, case_000136_fixedSecond⟩

private theorem case_000136_existsRows :
    ExistsEqEqPosVarFirstRows case_000136_rank.val case_000136_mask :=
  ⟨case_000136_support, case_000136_sourceAgrees, case_000136_rows⟩

private theorem case_000136_covered :
    RowPropertyParametricCovered case_000136_rank.val case_000136_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000136_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000137_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000137_mask : SignMask := ⟨18, by decide⟩
private def case_000137_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000137_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000137_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000137_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (4/9) }
private def case_000137_firstLine : StrictLin2 := { a := -1, b := -1, c := -47 }
private def case_000137_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000137_rankWord :
    rankPairWord? case_000137_word = some case_000137_rank := by
  decide

private theorem case_000137_unrank :
    unrankPairWord case_000137_rank = case_000137_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000137_word case_000137_rank).1
    case_000137_rankWord |>.symm

private theorem case_000137_seqChoice :
    translationChoiceSeq case_000137_word case_000137_mask = case_000137_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000137_seqAtRank :
    translationSeqAtRankMask case_000137_rank case_000137_mask = case_000137_seq := by
  rw [translationSeqAtRankMask, case_000137_unrank]
  exact case_000137_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000137_bAtRank :
    translationBAtRankMask case_000137_rank case_000137_mask = case_000137_b := by
  rw [translationBAtRankMask, case_000137_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000137_b, case_000137_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000137_firstLine_eq :
    case_000137_support.firstLine case_000137_seq case_000137_b = case_000137_firstLine := by
  norm_num [case_000137_firstLine, case_000137_support, case_000137_seq, case_000137_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000137_secondLine_eq :
    case_000137_support.secondLine case_000137_seq case_000137_b = case_000137_secondLine := by
  norm_num [case_000137_secondLine, case_000137_support, case_000137_seq, case_000137_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000137_sourceAgrees :
    SourceAgrees case_000137_support case_000137_rank.val case_000137_mask := by
  intro hlt
  have hrank : (⟨case_000137_rank.val, hlt⟩ : Fin numPairWords) = case_000137_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000137_rank.val, hlt⟩ case_000137_mask =
        case_000137_seq := by
    simpa [hrank] using case_000137_seqAtRank
  simp [SourceChecks, hseq, case_000137_support,
    checkTranslationConstraintSource, case_000137_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000137_rows :
    EqEqPosVarFirstRows case_000137_support case_000137_rank.val case_000137_mask := by
  intro hlt
  have hrank : (⟨case_000137_rank.val, hlt⟩ : Fin numPairWords) = case_000137_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000137_rank.val, hlt⟩ case_000137_mask =
        case_000137_seq := by
    simpa [hrank] using case_000137_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000137_rank.val, hlt⟩ case_000137_mask =
        case_000137_b := by
    simpa [hrank] using case_000137_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000137_support case_000137_rank.val hlt
          case_000137_mask = case_000137_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000137_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000137_support case_000137_rank.val hlt
          case_000137_mask = case_000137_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000137_secondLine_eq]
  have case_000137_rowFirst :
      EqEqPosRow (FirstLineAt case_000137_support case_000137_rank.val hlt case_000137_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000137_firstLine, EqEqPosRow]
  have case_000137_fixedSecond :
      FixedRow (SecondLineAt case_000137_support case_000137_rank.val hlt case_000137_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000137_secondLine, FixedRow]
  exact ⟨case_000137_rowFirst, case_000137_fixedSecond⟩

private theorem case_000137_existsRows :
    ExistsEqEqPosVarFirstRows case_000137_rank.val case_000137_mask :=
  ⟨case_000137_support, case_000137_sourceAgrees, case_000137_rows⟩

private theorem case_000137_covered :
    RowPropertyParametricCovered case_000137_rank.val case_000137_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000137_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000138_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000138_mask : SignMask := ⟨24, by decide⟩
private def case_000138_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000138_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000138_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000138_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000138_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000138_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000138_rankWord :
    rankPairWord? case_000138_word = some case_000138_rank := by
  decide

private theorem case_000138_unrank :
    unrankPairWord case_000138_rank = case_000138_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000138_word case_000138_rank).1
    case_000138_rankWord |>.symm

private theorem case_000138_seqChoice :
    translationChoiceSeq case_000138_word case_000138_mask = case_000138_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000138_seqAtRank :
    translationSeqAtRankMask case_000138_rank case_000138_mask = case_000138_seq := by
  rw [translationSeqAtRankMask, case_000138_unrank]
  exact case_000138_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000138_bAtRank :
    translationBAtRankMask case_000138_rank case_000138_mask = case_000138_b := by
  rw [translationBAtRankMask, case_000138_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000138_b, case_000138_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000138_firstLine_eq :
    case_000138_support.firstLine case_000138_seq case_000138_b = case_000138_firstLine := by
  norm_num [case_000138_firstLine, case_000138_support, case_000138_seq, case_000138_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000138_secondLine_eq :
    case_000138_support.secondLine case_000138_seq case_000138_b = case_000138_secondLine := by
  norm_num [case_000138_secondLine, case_000138_support, case_000138_seq, case_000138_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000138_sourceAgrees :
    SourceAgrees case_000138_support case_000138_rank.val case_000138_mask := by
  intro hlt
  have hrank : (⟨case_000138_rank.val, hlt⟩ : Fin numPairWords) = case_000138_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000138_rank.val, hlt⟩ case_000138_mask =
        case_000138_seq := by
    simpa [hrank] using case_000138_seqAtRank
  simp [SourceChecks, hseq, case_000138_support,
    checkTranslationConstraintSource, case_000138_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000138_rows :
    EqEqPosVarFirstRows case_000138_support case_000138_rank.val case_000138_mask := by
  intro hlt
  have hrank : (⟨case_000138_rank.val, hlt⟩ : Fin numPairWords) = case_000138_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000138_rank.val, hlt⟩ case_000138_mask =
        case_000138_seq := by
    simpa [hrank] using case_000138_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000138_rank.val, hlt⟩ case_000138_mask =
        case_000138_b := by
    simpa [hrank] using case_000138_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000138_support case_000138_rank.val hlt
          case_000138_mask = case_000138_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000138_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000138_support case_000138_rank.val hlt
          case_000138_mask = case_000138_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000138_secondLine_eq]
  have case_000138_rowFirst :
      EqEqPosRow (FirstLineAt case_000138_support case_000138_rank.val hlt case_000138_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000138_firstLine, EqEqPosRow]
  have case_000138_fixedSecond :
      FixedRow (SecondLineAt case_000138_support case_000138_rank.val hlt case_000138_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000138_secondLine, FixedRow]
  exact ⟨case_000138_rowFirst, case_000138_fixedSecond⟩

private theorem case_000138_existsRows :
    ExistsEqEqPosVarFirstRows case_000138_rank.val case_000138_mask :=
  ⟨case_000138_support, case_000138_sourceAgrees, case_000138_rows⟩

private theorem case_000138_covered :
    RowPropertyParametricCovered case_000138_rank.val case_000138_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000138_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000139_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000139_mask : SignMask := ⟨28, by decide⟩
private def case_000139_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000139_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000139_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000139_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000139_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000139_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000139_rankWord :
    rankPairWord? case_000139_word = some case_000139_rank := by
  decide

private theorem case_000139_unrank :
    unrankPairWord case_000139_rank = case_000139_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000139_word case_000139_rank).1
    case_000139_rankWord |>.symm

private theorem case_000139_seqChoice :
    translationChoiceSeq case_000139_word case_000139_mask = case_000139_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000139_seqAtRank :
    translationSeqAtRankMask case_000139_rank case_000139_mask = case_000139_seq := by
  rw [translationSeqAtRankMask, case_000139_unrank]
  exact case_000139_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000139_bAtRank :
    translationBAtRankMask case_000139_rank case_000139_mask = case_000139_b := by
  rw [translationBAtRankMask, case_000139_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000139_b, case_000139_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000139_firstLine_eq :
    case_000139_support.firstLine case_000139_seq case_000139_b = case_000139_firstLine := by
  norm_num [case_000139_firstLine, case_000139_support, case_000139_seq, case_000139_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000139_secondLine_eq :
    case_000139_support.secondLine case_000139_seq case_000139_b = case_000139_secondLine := by
  norm_num [case_000139_secondLine, case_000139_support, case_000139_seq, case_000139_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000139_sourceAgrees :
    SourceAgrees case_000139_support case_000139_rank.val case_000139_mask := by
  intro hlt
  have hrank : (⟨case_000139_rank.val, hlt⟩ : Fin numPairWords) = case_000139_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000139_rank.val, hlt⟩ case_000139_mask =
        case_000139_seq := by
    simpa [hrank] using case_000139_seqAtRank
  simp [SourceChecks, hseq, case_000139_support,
    checkTranslationConstraintSource, case_000139_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000139_rows :
    OppOneMinusVarFirstRows case_000139_support case_000139_rank.val case_000139_mask := by
  intro hlt
  have hrank : (⟨case_000139_rank.val, hlt⟩ : Fin numPairWords) = case_000139_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000139_rank.val, hlt⟩ case_000139_mask =
        case_000139_seq := by
    simpa [hrank] using case_000139_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000139_rank.val, hlt⟩ case_000139_mask =
        case_000139_b := by
    simpa [hrank] using case_000139_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000139_support case_000139_rank.val hlt
          case_000139_mask = case_000139_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000139_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000139_support case_000139_rank.val hlt
          case_000139_mask = case_000139_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000139_secondLine_eq]
  have case_000139_rowFirst :
      OppPosRow (FirstLineAt case_000139_support case_000139_rank.val hlt case_000139_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000139_firstLine, OppPosRow]
  have case_000139_fixedSecond :
      FixedRow (SecondLineAt case_000139_support case_000139_rank.val hlt case_000139_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000139_secondLine, FixedRow]
  exact ⟨case_000139_rowFirst, case_000139_fixedSecond⟩

private theorem case_000139_existsRows :
    ExistsOppOneMinusVarFirstRows case_000139_rank.val case_000139_mask :=
  ⟨case_000139_support, case_000139_sourceAgrees, case_000139_rows⟩

private theorem case_000139_covered :
    RowPropertyParametricCovered case_000139_rank.val case_000139_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000139_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000140_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000140_mask : SignMask := ⟨29, by decide⟩
private def case_000140_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000140_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000140_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000140_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000140_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000140_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000140_rankWord :
    rankPairWord? case_000140_word = some case_000140_rank := by
  decide

private theorem case_000140_unrank :
    unrankPairWord case_000140_rank = case_000140_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000140_word case_000140_rank).1
    case_000140_rankWord |>.symm

private theorem case_000140_seqChoice :
    translationChoiceSeq case_000140_word case_000140_mask = case_000140_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000140_seqAtRank :
    translationSeqAtRankMask case_000140_rank case_000140_mask = case_000140_seq := by
  rw [translationSeqAtRankMask, case_000140_unrank]
  exact case_000140_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000140_bAtRank :
    translationBAtRankMask case_000140_rank case_000140_mask = case_000140_b := by
  rw [translationBAtRankMask, case_000140_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000140_b, case_000140_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000140_firstLine_eq :
    case_000140_support.firstLine case_000140_seq case_000140_b = case_000140_firstLine := by
  norm_num [case_000140_firstLine, case_000140_support, case_000140_seq, case_000140_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000140_secondLine_eq :
    case_000140_support.secondLine case_000140_seq case_000140_b = case_000140_secondLine := by
  norm_num [case_000140_secondLine, case_000140_support, case_000140_seq, case_000140_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000140_sourceAgrees :
    SourceAgrees case_000140_support case_000140_rank.val case_000140_mask := by
  intro hlt
  have hrank : (⟨case_000140_rank.val, hlt⟩ : Fin numPairWords) = case_000140_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000140_rank.val, hlt⟩ case_000140_mask =
        case_000140_seq := by
    simpa [hrank] using case_000140_seqAtRank
  simp [SourceChecks, hseq, case_000140_support,
    checkTranslationConstraintSource, case_000140_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000140_rows :
    EqEqPosVarSecondRows case_000140_support case_000140_rank.val case_000140_mask := by
  intro hlt
  have hrank : (⟨case_000140_rank.val, hlt⟩ : Fin numPairWords) = case_000140_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000140_rank.val, hlt⟩ case_000140_mask =
        case_000140_seq := by
    simpa [hrank] using case_000140_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000140_rank.val, hlt⟩ case_000140_mask =
        case_000140_b := by
    simpa [hrank] using case_000140_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000140_support case_000140_rank.val hlt
          case_000140_mask = case_000140_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000140_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000140_support case_000140_rank.val hlt
          case_000140_mask = case_000140_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000140_secondLine_eq]
  have case_000140_fixedFirst :
      FixedRow (FirstLineAt case_000140_support case_000140_rank.val hlt case_000140_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000140_firstLine, FixedRow]
  have case_000140_rowSecond :
      EqEqPosRow (SecondLineAt case_000140_support case_000140_rank.val hlt case_000140_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000140_secondLine, EqEqPosRow]
  exact ⟨case_000140_fixedFirst, case_000140_rowSecond⟩

private theorem case_000140_existsRows :
    ExistsEqEqPosVarSecondRows case_000140_rank.val case_000140_mask :=
  ⟨case_000140_support, case_000140_sourceAgrees, case_000140_rows⟩

private theorem case_000140_covered :
    RowPropertyParametricCovered case_000140_rank.val case_000140_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000140_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000141_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000141_mask : SignMask := ⟨45, by decide⟩
private def case_000141_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000141_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000141_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def case_000141_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-4/9) }
private def case_000141_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000141_secondLine : StrictLin2 := { a := (-17/74), b := (17/74), c := (-34/111) }

private theorem case_000141_rankWord :
    rankPairWord? case_000141_word = some case_000141_rank := by
  decide

private theorem case_000141_unrank :
    unrankPairWord case_000141_rank = case_000141_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000141_word case_000141_rank).1
    case_000141_rankWord |>.symm

private theorem case_000141_seqChoice :
    translationChoiceSeq case_000141_word case_000141_mask = case_000141_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000141_seqAtRank :
    translationSeqAtRankMask case_000141_rank case_000141_mask = case_000141_seq := by
  rw [translationSeqAtRankMask, case_000141_unrank]
  exact case_000141_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000141_bAtRank :
    translationBAtRankMask case_000141_rank case_000141_mask = case_000141_b := by
  rw [translationBAtRankMask, case_000141_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000141_b, case_000141_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000141_firstLine_eq :
    case_000141_support.firstLine case_000141_seq case_000141_b = case_000141_firstLine := by
  norm_num [case_000141_firstLine, case_000141_support, case_000141_seq, case_000141_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000141_secondLine_eq :
    case_000141_support.secondLine case_000141_seq case_000141_b = case_000141_secondLine := by
  norm_num [case_000141_secondLine, case_000141_support, case_000141_seq, case_000141_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000141_sourceAgrees :
    SourceAgrees case_000141_support case_000141_rank.val case_000141_mask := by
  intro hlt
  have hrank : (⟨case_000141_rank.val, hlt⟩ : Fin numPairWords) = case_000141_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000141_rank.val, hlt⟩ case_000141_mask =
        case_000141_seq := by
    simpa [hrank] using case_000141_seqAtRank
  simp [SourceChecks, hseq, case_000141_support,
    checkTranslationConstraintSource, case_000141_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000141_rows :
    OppOneMinusVarSecondRows case_000141_support case_000141_rank.val case_000141_mask := by
  intro hlt
  have hrank : (⟨case_000141_rank.val, hlt⟩ : Fin numPairWords) = case_000141_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000141_rank.val, hlt⟩ case_000141_mask =
        case_000141_seq := by
    simpa [hrank] using case_000141_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000141_rank.val, hlt⟩ case_000141_mask =
        case_000141_b := by
    simpa [hrank] using case_000141_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000141_support case_000141_rank.val hlt
          case_000141_mask = case_000141_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000141_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000141_support case_000141_rank.val hlt
          case_000141_mask = case_000141_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000141_secondLine_eq]
  have case_000141_fixedFirst :
      FixedRow (FirstLineAt case_000141_support case_000141_rank.val hlt case_000141_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000141_firstLine, FixedRow]
  have case_000141_rowSecond :
      OppPosRow (SecondLineAt case_000141_support case_000141_rank.val hlt case_000141_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000141_secondLine, OppPosRow]
  exact ⟨case_000141_fixedFirst, case_000141_rowSecond⟩

private theorem case_000141_existsRows :
    ExistsOppOneMinusVarSecondRows case_000141_rank.val case_000141_mask :=
  ⟨case_000141_support, case_000141_sourceAgrees, case_000141_rows⟩

private theorem case_000141_covered :
    RowPropertyParametricCovered case_000141_rank.val case_000141_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000141_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000142_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000142_mask : SignMask := ⟨62, by decide⟩
private def case_000142_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000142_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000142_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000142_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (116/9) }
private def case_000142_firstLine : StrictLin2 := { a := -1, b := 1, c := (-39/29) }
private def case_000142_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000142_rankWord :
    rankPairWord? case_000142_word = some case_000142_rank := by
  decide

private theorem case_000142_unrank :
    unrankPairWord case_000142_rank = case_000142_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000142_word case_000142_rank).1
    case_000142_rankWord |>.symm

private theorem case_000142_seqChoice :
    translationChoiceSeq case_000142_word case_000142_mask = case_000142_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000142_seqAtRank :
    translationSeqAtRankMask case_000142_rank case_000142_mask = case_000142_seq := by
  rw [translationSeqAtRankMask, case_000142_unrank]
  exact case_000142_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000142_bAtRank :
    translationBAtRankMask case_000142_rank case_000142_mask = case_000142_b := by
  rw [translationBAtRankMask, case_000142_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000142_b, case_000142_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000142_firstLine_eq :
    case_000142_support.firstLine case_000142_seq case_000142_b = case_000142_firstLine := by
  norm_num [case_000142_firstLine, case_000142_support, case_000142_seq, case_000142_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000142_secondLine_eq :
    case_000142_support.secondLine case_000142_seq case_000142_b = case_000142_secondLine := by
  norm_num [case_000142_secondLine, case_000142_support, case_000142_seq, case_000142_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000142_sourceAgrees :
    SourceAgrees case_000142_support case_000142_rank.val case_000142_mask := by
  intro hlt
  have hrank : (⟨case_000142_rank.val, hlt⟩ : Fin numPairWords) = case_000142_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000142_rank.val, hlt⟩ case_000142_mask =
        case_000142_seq := by
    simpa [hrank] using case_000142_seqAtRank
  simp [SourceChecks, hseq, case_000142_support,
    checkTranslationConstraintSource, case_000142_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000142_rows :
    OppOneMinusVarFirstRows case_000142_support case_000142_rank.val case_000142_mask := by
  intro hlt
  have hrank : (⟨case_000142_rank.val, hlt⟩ : Fin numPairWords) = case_000142_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000142_rank.val, hlt⟩ case_000142_mask =
        case_000142_seq := by
    simpa [hrank] using case_000142_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000142_rank.val, hlt⟩ case_000142_mask =
        case_000142_b := by
    simpa [hrank] using case_000142_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000142_support case_000142_rank.val hlt
          case_000142_mask = case_000142_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000142_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000142_support case_000142_rank.val hlt
          case_000142_mask = case_000142_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000142_secondLine_eq]
  have case_000142_rowFirst :
      OppPosRow (FirstLineAt case_000142_support case_000142_rank.val hlt case_000142_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000142_firstLine, OppPosRow]
  have case_000142_fixedSecond :
      FixedRow (SecondLineAt case_000142_support case_000142_rank.val hlt case_000142_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000142_secondLine, FixedRow]
  exact ⟨case_000142_rowFirst, case_000142_fixedSecond⟩

private theorem case_000142_existsRows :
    ExistsOppOneMinusVarFirstRows case_000142_rank.val case_000142_mask :=
  ⟨case_000142_support, case_000142_sourceAgrees, case_000142_rows⟩

private theorem case_000142_covered :
    RowPropertyParametricCovered case_000142_rank.val case_000142_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000142_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000143_rank : Fin numPairWords := ⟨32, by decide⟩
private def case_000143_mask : SignMask := ⟨63, by decide⟩
private def case_000143_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000143_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000143_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000143_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (116/9) }
private def case_000143_firstLine : StrictLin2 := { a := (-29/71), b := (-29/71), c := (-93/71) }
private def case_000143_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000143_rankWord :
    rankPairWord? case_000143_word = some case_000143_rank := by
  decide

private theorem case_000143_unrank :
    unrankPairWord case_000143_rank = case_000143_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000143_word case_000143_rank).1
    case_000143_rankWord |>.symm

private theorem case_000143_seqChoice :
    translationChoiceSeq case_000143_word case_000143_mask = case_000143_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000143_seqAtRank :
    translationSeqAtRankMask case_000143_rank case_000143_mask = case_000143_seq := by
  rw [translationSeqAtRankMask, case_000143_unrank]
  exact case_000143_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000143_bAtRank :
    translationBAtRankMask case_000143_rank case_000143_mask = case_000143_b := by
  rw [translationBAtRankMask, case_000143_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000143_b, case_000143_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000143_firstLine_eq :
    case_000143_support.firstLine case_000143_seq case_000143_b = case_000143_firstLine := by
  norm_num [case_000143_firstLine, case_000143_support, case_000143_seq, case_000143_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000143_secondLine_eq :
    case_000143_support.secondLine case_000143_seq case_000143_b = case_000143_secondLine := by
  norm_num [case_000143_secondLine, case_000143_support, case_000143_seq, case_000143_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000143_sourceAgrees :
    SourceAgrees case_000143_support case_000143_rank.val case_000143_mask := by
  intro hlt
  have hrank : (⟨case_000143_rank.val, hlt⟩ : Fin numPairWords) = case_000143_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000143_rank.val, hlt⟩ case_000143_mask =
        case_000143_seq := by
    simpa [hrank] using case_000143_seqAtRank
  simp [SourceChecks, hseq, case_000143_support,
    checkTranslationConstraintSource, case_000143_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000143_rows :
    EqEqPosVarFirstRows case_000143_support case_000143_rank.val case_000143_mask := by
  intro hlt
  have hrank : (⟨case_000143_rank.val, hlt⟩ : Fin numPairWords) = case_000143_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000143_rank.val, hlt⟩ case_000143_mask =
        case_000143_seq := by
    simpa [hrank] using case_000143_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000143_rank.val, hlt⟩ case_000143_mask =
        case_000143_b := by
    simpa [hrank] using case_000143_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000143_support case_000143_rank.val hlt
          case_000143_mask = case_000143_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000143_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000143_support case_000143_rank.val hlt
          case_000143_mask = case_000143_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000143_secondLine_eq]
  have case_000143_rowFirst :
      EqEqPosRow (FirstLineAt case_000143_support case_000143_rank.val hlt case_000143_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000143_firstLine, EqEqPosRow]
  have case_000143_fixedSecond :
      FixedRow (SecondLineAt case_000143_support case_000143_rank.val hlt case_000143_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000143_secondLine, FixedRow]
  exact ⟨case_000143_rowFirst, case_000143_fixedSecond⟩

private theorem case_000143_existsRows :
    ExistsEqEqPosVarFirstRows case_000143_rank.val case_000143_mask :=
  ⟨case_000143_support, case_000143_sourceAgrees, case_000143_rows⟩

private theorem case_000143_covered :
    RowPropertyParametricCovered case_000143_rank.val case_000143_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000143_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000144_rank : Fin numPairWords := ⟨40, by decide⟩
private def case_000144_mask : SignMask := ⟨8, by decide⟩
private def case_000144_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000144_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000144_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000144_b : Vec3 Rat := { x := (-28/27), y := (-124/27), z := (-380/27) }
private def case_000144_firstLine : StrictLin2 := { a := -1, b := -1, c := -35 }
private def case_000144_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000144_rankWord :
    rankPairWord? case_000144_word = some case_000144_rank := by
  decide

private theorem case_000144_unrank :
    unrankPairWord case_000144_rank = case_000144_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000144_word case_000144_rank).1
    case_000144_rankWord |>.symm

private theorem case_000144_seqChoice :
    translationChoiceSeq case_000144_word case_000144_mask = case_000144_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000144_seqAtRank :
    translationSeqAtRankMask case_000144_rank case_000144_mask = case_000144_seq := by
  rw [translationSeqAtRankMask, case_000144_unrank]
  exact case_000144_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000144_bAtRank :
    translationBAtRankMask case_000144_rank case_000144_mask = case_000144_b := by
  rw [translationBAtRankMask, case_000144_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000144_b, case_000144_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000144_firstLine_eq :
    case_000144_support.firstLine case_000144_seq case_000144_b = case_000144_firstLine := by
  norm_num [case_000144_firstLine, case_000144_support, case_000144_seq, case_000144_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000144_secondLine_eq :
    case_000144_support.secondLine case_000144_seq case_000144_b = case_000144_secondLine := by
  norm_num [case_000144_secondLine, case_000144_support, case_000144_seq, case_000144_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000144_sourceAgrees :
    SourceAgrees case_000144_support case_000144_rank.val case_000144_mask := by
  intro hlt
  have hrank : (⟨case_000144_rank.val, hlt⟩ : Fin numPairWords) = case_000144_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000144_rank.val, hlt⟩ case_000144_mask =
        case_000144_seq := by
    simpa [hrank] using case_000144_seqAtRank
  simp [SourceChecks, hseq, case_000144_support,
    checkTranslationConstraintSource, case_000144_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000144_rows :
    EqEqPosVarFirstRows case_000144_support case_000144_rank.val case_000144_mask := by
  intro hlt
  have hrank : (⟨case_000144_rank.val, hlt⟩ : Fin numPairWords) = case_000144_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000144_rank.val, hlt⟩ case_000144_mask =
        case_000144_seq := by
    simpa [hrank] using case_000144_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000144_rank.val, hlt⟩ case_000144_mask =
        case_000144_b := by
    simpa [hrank] using case_000144_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000144_support case_000144_rank.val hlt
          case_000144_mask = case_000144_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000144_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000144_support case_000144_rank.val hlt
          case_000144_mask = case_000144_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000144_secondLine_eq]
  have case_000144_rowFirst :
      EqEqPosRow (FirstLineAt case_000144_support case_000144_rank.val hlt case_000144_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000144_firstLine, EqEqPosRow]
  have case_000144_fixedSecond :
      FixedRow (SecondLineAt case_000144_support case_000144_rank.val hlt case_000144_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000144_secondLine, FixedRow]
  exact ⟨case_000144_rowFirst, case_000144_fixedSecond⟩

private theorem case_000144_existsRows :
    ExistsEqEqPosVarFirstRows case_000144_rank.val case_000144_mask :=
  ⟨case_000144_support, case_000144_sourceAgrees, case_000144_rows⟩

private theorem case_000144_covered :
    RowPropertyParametricCovered case_000144_rank.val case_000144_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000144_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000145_rank : Fin numPairWords := ⟨40, by decide⟩
private def case_000145_mask : SignMask := ⟨9, by decide⟩
private def case_000145_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000145_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000145_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000145_b : Vec3 Rat := { x := (-28/27), y := (92/27), z := (-380/27) }
private def case_000145_firstLine : StrictLin2 := { a := -1, b := -1, c := (-137/7) }
private def case_000145_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000145_rankWord :
    rankPairWord? case_000145_word = some case_000145_rank := by
  decide

private theorem case_000145_unrank :
    unrankPairWord case_000145_rank = case_000145_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000145_word case_000145_rank).1
    case_000145_rankWord |>.symm

private theorem case_000145_seqChoice :
    translationChoiceSeq case_000145_word case_000145_mask = case_000145_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000145_seqAtRank :
    translationSeqAtRankMask case_000145_rank case_000145_mask = case_000145_seq := by
  rw [translationSeqAtRankMask, case_000145_unrank]
  exact case_000145_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000145_bAtRank :
    translationBAtRankMask case_000145_rank case_000145_mask = case_000145_b := by
  rw [translationBAtRankMask, case_000145_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000145_b, case_000145_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000145_firstLine_eq :
    case_000145_support.firstLine case_000145_seq case_000145_b = case_000145_firstLine := by
  norm_num [case_000145_firstLine, case_000145_support, case_000145_seq, case_000145_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000145_secondLine_eq :
    case_000145_support.secondLine case_000145_seq case_000145_b = case_000145_secondLine := by
  norm_num [case_000145_secondLine, case_000145_support, case_000145_seq, case_000145_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000145_sourceAgrees :
    SourceAgrees case_000145_support case_000145_rank.val case_000145_mask := by
  intro hlt
  have hrank : (⟨case_000145_rank.val, hlt⟩ : Fin numPairWords) = case_000145_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000145_rank.val, hlt⟩ case_000145_mask =
        case_000145_seq := by
    simpa [hrank] using case_000145_seqAtRank
  simp [SourceChecks, hseq, case_000145_support,
    checkTranslationConstraintSource, case_000145_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000145_rows :
    EqEqPosVarFirstRows case_000145_support case_000145_rank.val case_000145_mask := by
  intro hlt
  have hrank : (⟨case_000145_rank.val, hlt⟩ : Fin numPairWords) = case_000145_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000145_rank.val, hlt⟩ case_000145_mask =
        case_000145_seq := by
    simpa [hrank] using case_000145_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000145_rank.val, hlt⟩ case_000145_mask =
        case_000145_b := by
    simpa [hrank] using case_000145_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000145_support case_000145_rank.val hlt
          case_000145_mask = case_000145_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000145_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000145_support case_000145_rank.val hlt
          case_000145_mask = case_000145_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000145_secondLine_eq]
  have case_000145_rowFirst :
      EqEqPosRow (FirstLineAt case_000145_support case_000145_rank.val hlt case_000145_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000145_firstLine, EqEqPosRow]
  have case_000145_fixedSecond :
      FixedRow (SecondLineAt case_000145_support case_000145_rank.val hlt case_000145_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000145_secondLine, FixedRow]
  exact ⟨case_000145_rowFirst, case_000145_fixedSecond⟩

private theorem case_000145_existsRows :
    ExistsEqEqPosVarFirstRows case_000145_rank.val case_000145_mask :=
  ⟨case_000145_support, case_000145_sourceAgrees, case_000145_rows⟩

private theorem case_000145_covered :
    RowPropertyParametricCovered case_000145_rank.val case_000145_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000145_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000146_rank : Fin numPairWords := ⟨40, by decide⟩
private def case_000146_mask : SignMask := ⟨13, by decide⟩
private def case_000146_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000146_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000146_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000146_b : Vec3 Rat := { x := (-172/27), y := (236/27), z := (-236/27) }
private def case_000146_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000146_secondLine : StrictLin2 := { a := (-27/236), b := (-27/236), c := (-27/118) }

private theorem case_000146_rankWord :
    rankPairWord? case_000146_word = some case_000146_rank := by
  decide

private theorem case_000146_unrank :
    unrankPairWord case_000146_rank = case_000146_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000146_word case_000146_rank).1
    case_000146_rankWord |>.symm

private theorem case_000146_seqChoice :
    translationChoiceSeq case_000146_word case_000146_mask = case_000146_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000146_seqAtRank :
    translationSeqAtRankMask case_000146_rank case_000146_mask = case_000146_seq := by
  rw [translationSeqAtRankMask, case_000146_unrank]
  exact case_000146_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000146_bAtRank :
    translationBAtRankMask case_000146_rank case_000146_mask = case_000146_b := by
  rw [translationBAtRankMask, case_000146_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000146_b, case_000146_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000146_firstLine_eq :
    case_000146_support.firstLine case_000146_seq case_000146_b = case_000146_firstLine := by
  norm_num [case_000146_firstLine, case_000146_support, case_000146_seq, case_000146_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000146_secondLine_eq :
    case_000146_support.secondLine case_000146_seq case_000146_b = case_000146_secondLine := by
  norm_num [case_000146_secondLine, case_000146_support, case_000146_seq, case_000146_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000146_sourceAgrees :
    SourceAgrees case_000146_support case_000146_rank.val case_000146_mask := by
  intro hlt
  have hrank : (⟨case_000146_rank.val, hlt⟩ : Fin numPairWords) = case_000146_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000146_rank.val, hlt⟩ case_000146_mask =
        case_000146_seq := by
    simpa [hrank] using case_000146_seqAtRank
  simp [SourceChecks, hseq, case_000146_support,
    checkTranslationConstraintSource, case_000146_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000146_rows :
    EqEqPosVarSecondRows case_000146_support case_000146_rank.val case_000146_mask := by
  intro hlt
  have hrank : (⟨case_000146_rank.val, hlt⟩ : Fin numPairWords) = case_000146_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000146_rank.val, hlt⟩ case_000146_mask =
        case_000146_seq := by
    simpa [hrank] using case_000146_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000146_rank.val, hlt⟩ case_000146_mask =
        case_000146_b := by
    simpa [hrank] using case_000146_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000146_support case_000146_rank.val hlt
          case_000146_mask = case_000146_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000146_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000146_support case_000146_rank.val hlt
          case_000146_mask = case_000146_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000146_secondLine_eq]
  have case_000146_fixedFirst :
      FixedRow (FirstLineAt case_000146_support case_000146_rank.val hlt case_000146_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000146_firstLine, FixedRow]
  have case_000146_rowSecond :
      EqEqPosRow (SecondLineAt case_000146_support case_000146_rank.val hlt case_000146_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000146_secondLine, EqEqPosRow]
  exact ⟨case_000146_fixedFirst, case_000146_rowSecond⟩

private theorem case_000146_existsRows :
    ExistsEqEqPosVarSecondRows case_000146_rank.val case_000146_mask :=
  ⟨case_000146_support, case_000146_sourceAgrees, case_000146_rows⟩

private theorem case_000146_covered :
    RowPropertyParametricCovered case_000146_rank.val case_000146_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000146_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000147_rank : Fin numPairWords := ⟨40, by decide⟩
private def case_000147_mask : SignMask := ⟨24, by decide⟩
private def case_000147_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000147_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000147_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000147_b : Vec3 Rat := { x := (-172/27), y := (-268/27), z := (-236/27) }
private def case_000147_firstLine : StrictLin2 := { a := -1, b := -1, c := (-209/43) }
private def case_000147_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000147_rankWord :
    rankPairWord? case_000147_word = some case_000147_rank := by
  decide

private theorem case_000147_unrank :
    unrankPairWord case_000147_rank = case_000147_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000147_word case_000147_rank).1
    case_000147_rankWord |>.symm

private theorem case_000147_seqChoice :
    translationChoiceSeq case_000147_word case_000147_mask = case_000147_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000147_seqAtRank :
    translationSeqAtRankMask case_000147_rank case_000147_mask = case_000147_seq := by
  rw [translationSeqAtRankMask, case_000147_unrank]
  exact case_000147_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000147_bAtRank :
    translationBAtRankMask case_000147_rank case_000147_mask = case_000147_b := by
  rw [translationBAtRankMask, case_000147_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000147_b, case_000147_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000147_firstLine_eq :
    case_000147_support.firstLine case_000147_seq case_000147_b = case_000147_firstLine := by
  norm_num [case_000147_firstLine, case_000147_support, case_000147_seq, case_000147_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000147_secondLine_eq :
    case_000147_support.secondLine case_000147_seq case_000147_b = case_000147_secondLine := by
  norm_num [case_000147_secondLine, case_000147_support, case_000147_seq, case_000147_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000147_sourceAgrees :
    SourceAgrees case_000147_support case_000147_rank.val case_000147_mask := by
  intro hlt
  have hrank : (⟨case_000147_rank.val, hlt⟩ : Fin numPairWords) = case_000147_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000147_rank.val, hlt⟩ case_000147_mask =
        case_000147_seq := by
    simpa [hrank] using case_000147_seqAtRank
  simp [SourceChecks, hseq, case_000147_support,
    checkTranslationConstraintSource, case_000147_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000147_rows :
    EqEqPosVarFirstRows case_000147_support case_000147_rank.val case_000147_mask := by
  intro hlt
  have hrank : (⟨case_000147_rank.val, hlt⟩ : Fin numPairWords) = case_000147_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000147_rank.val, hlt⟩ case_000147_mask =
        case_000147_seq := by
    simpa [hrank] using case_000147_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000147_rank.val, hlt⟩ case_000147_mask =
        case_000147_b := by
    simpa [hrank] using case_000147_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000147_support case_000147_rank.val hlt
          case_000147_mask = case_000147_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000147_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000147_support case_000147_rank.val hlt
          case_000147_mask = case_000147_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000147_secondLine_eq]
  have case_000147_rowFirst :
      EqEqPosRow (FirstLineAt case_000147_support case_000147_rank.val hlt case_000147_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000147_firstLine, EqEqPosRow]
  have case_000147_fixedSecond :
      FixedRow (SecondLineAt case_000147_support case_000147_rank.val hlt case_000147_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000147_secondLine, FixedRow]
  exact ⟨case_000147_rowFirst, case_000147_fixedSecond⟩

private theorem case_000147_existsRows :
    ExistsEqEqPosVarFirstRows case_000147_rank.val case_000147_mask :=
  ⟨case_000147_support, case_000147_sourceAgrees, case_000147_rows⟩

private theorem case_000147_covered :
    RowPropertyParametricCovered case_000147_rank.val case_000147_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000147_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000148_rank : Fin numPairWords := ⟨40, by decide⟩
private def case_000148_mask : SignMask := ⟨45, by decide⟩
private def case_000148_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000148_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000148_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000148_b : Vec3 Rat := { x := (-284/27), y := (316/27), z := (-28/27) }
private def case_000148_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000148_secondLine : StrictLin2 := { a := (-213/490), b := (213/490), c := (-334/245) }

private theorem case_000148_rankWord :
    rankPairWord? case_000148_word = some case_000148_rank := by
  decide

private theorem case_000148_unrank :
    unrankPairWord case_000148_rank = case_000148_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000148_word case_000148_rank).1
    case_000148_rankWord |>.symm

private theorem case_000148_seqChoice :
    translationChoiceSeq case_000148_word case_000148_mask = case_000148_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000148_seqAtRank :
    translationSeqAtRankMask case_000148_rank case_000148_mask = case_000148_seq := by
  rw [translationSeqAtRankMask, case_000148_unrank]
  exact case_000148_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000148_bAtRank :
    translationBAtRankMask case_000148_rank case_000148_mask = case_000148_b := by
  rw [translationBAtRankMask, case_000148_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000148_b, case_000148_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000148_firstLine_eq :
    case_000148_support.firstLine case_000148_seq case_000148_b = case_000148_firstLine := by
  norm_num [case_000148_firstLine, case_000148_support, case_000148_seq, case_000148_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000148_secondLine_eq :
    case_000148_support.secondLine case_000148_seq case_000148_b = case_000148_secondLine := by
  norm_num [case_000148_secondLine, case_000148_support, case_000148_seq, case_000148_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000148_sourceAgrees :
    SourceAgrees case_000148_support case_000148_rank.val case_000148_mask := by
  intro hlt
  have hrank : (⟨case_000148_rank.val, hlt⟩ : Fin numPairWords) = case_000148_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000148_rank.val, hlt⟩ case_000148_mask =
        case_000148_seq := by
    simpa [hrank] using case_000148_seqAtRank
  simp [SourceChecks, hseq, case_000148_support,
    checkTranslationConstraintSource, case_000148_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000148_rows :
    OppOneMinusVarSecondRows case_000148_support case_000148_rank.val case_000148_mask := by
  intro hlt
  have hrank : (⟨case_000148_rank.val, hlt⟩ : Fin numPairWords) = case_000148_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000148_rank.val, hlt⟩ case_000148_mask =
        case_000148_seq := by
    simpa [hrank] using case_000148_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000148_rank.val, hlt⟩ case_000148_mask =
        case_000148_b := by
    simpa [hrank] using case_000148_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000148_support case_000148_rank.val hlt
          case_000148_mask = case_000148_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000148_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000148_support case_000148_rank.val hlt
          case_000148_mask = case_000148_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000148_secondLine_eq]
  have case_000148_fixedFirst :
      FixedRow (FirstLineAt case_000148_support case_000148_rank.val hlt case_000148_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000148_firstLine, FixedRow]
  have case_000148_rowSecond :
      OppPosRow (SecondLineAt case_000148_support case_000148_rank.val hlt case_000148_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000148_secondLine, OppPosRow]
  exact ⟨case_000148_fixedFirst, case_000148_rowSecond⟩

private theorem case_000148_existsRows :
    ExistsOppOneMinusVarSecondRows case_000148_rank.val case_000148_mask :=
  ⟨case_000148_support, case_000148_sourceAgrees, case_000148_rows⟩

private theorem case_000148_covered :
    RowPropertyParametricCovered case_000148_rank.val case_000148_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000148_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000149_rank : Fin numPairWords := ⟨40, by decide⟩
private def case_000149_mask : SignMask := ⟨62, by decide⟩
private def case_000149_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000149_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000149_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000149_b : Vec3 Rat := { x := (-428/27), y := (-44/27), z := (332/27) }
private def case_000149_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000149_secondLine : StrictLin2 := { a := (321/6566), b := (-321/6566), c := (-29/469) }

private theorem case_000149_rankWord :
    rankPairWord? case_000149_word = some case_000149_rank := by
  decide

private theorem case_000149_unrank :
    unrankPairWord case_000149_rank = case_000149_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000149_word case_000149_rank).1
    case_000149_rankWord |>.symm

private theorem case_000149_seqChoice :
    translationChoiceSeq case_000149_word case_000149_mask = case_000149_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000149_seqAtRank :
    translationSeqAtRankMask case_000149_rank case_000149_mask = case_000149_seq := by
  rw [translationSeqAtRankMask, case_000149_unrank]
  exact case_000149_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000149_bAtRank :
    translationBAtRankMask case_000149_rank case_000149_mask = case_000149_b := by
  rw [translationBAtRankMask, case_000149_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000149_b, case_000149_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000149_firstLine_eq :
    case_000149_support.firstLine case_000149_seq case_000149_b = case_000149_firstLine := by
  norm_num [case_000149_firstLine, case_000149_support, case_000149_seq, case_000149_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000149_secondLine_eq :
    case_000149_support.secondLine case_000149_seq case_000149_b = case_000149_secondLine := by
  norm_num [case_000149_secondLine, case_000149_support, case_000149_seq, case_000149_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000149_sourceAgrees :
    SourceAgrees case_000149_support case_000149_rank.val case_000149_mask := by
  intro hlt
  have hrank : (⟨case_000149_rank.val, hlt⟩ : Fin numPairWords) = case_000149_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000149_rank.val, hlt⟩ case_000149_mask =
        case_000149_seq := by
    simpa [hrank] using case_000149_seqAtRank
  simp [SourceChecks, hseq, case_000149_support,
    checkTranslationConstraintSource, case_000149_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000149_rows :
    OppMinusOneVarSecondRows case_000149_support case_000149_rank.val case_000149_mask := by
  intro hlt
  have hrank : (⟨case_000149_rank.val, hlt⟩ : Fin numPairWords) = case_000149_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000149_rank.val, hlt⟩ case_000149_mask =
        case_000149_seq := by
    simpa [hrank] using case_000149_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000149_rank.val, hlt⟩ case_000149_mask =
        case_000149_b := by
    simpa [hrank] using case_000149_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000149_support case_000149_rank.val hlt
          case_000149_mask = case_000149_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000149_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000149_support case_000149_rank.val hlt
          case_000149_mask = case_000149_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000149_secondLine_eq]
  have case_000149_fixedFirst :
      FixedRow (FirstLineAt case_000149_support case_000149_rank.val hlt case_000149_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000149_firstLine, FixedRow]
  have case_000149_rowSecond :
      OppNegRow (SecondLineAt case_000149_support case_000149_rank.val hlt case_000149_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000149_secondLine, OppNegRow]
  exact ⟨case_000149_fixedFirst, case_000149_rowSecond⟩

private theorem case_000149_existsRows :
    ExistsOppMinusOneVarSecondRows case_000149_rank.val case_000149_mask :=
  ⟨case_000149_support, case_000149_sourceAgrees, case_000149_rows⟩

private theorem case_000149_covered :
    RowPropertyParametricCovered case_000149_rank.val case_000149_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000149_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000150_rank : Fin numPairWords := ⟨40, by decide⟩
private def case_000150_mask : SignMask := ⟨63, by decide⟩
private def case_000150_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000150_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000150_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000150_b : Vec3 Rat := { x := (-428/27), y := (172/27), z := (332/27) }
private def case_000150_firstLine : StrictLin2 := { a := (-107/233), b := (-107/233), c := (-459/233) }
private def case_000150_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000150_rankWord :
    rankPairWord? case_000150_word = some case_000150_rank := by
  decide

private theorem case_000150_unrank :
    unrankPairWord case_000150_rank = case_000150_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000150_word case_000150_rank).1
    case_000150_rankWord |>.symm

private theorem case_000150_seqChoice :
    translationChoiceSeq case_000150_word case_000150_mask = case_000150_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000150_seqAtRank :
    translationSeqAtRankMask case_000150_rank case_000150_mask = case_000150_seq := by
  rw [translationSeqAtRankMask, case_000150_unrank]
  exact case_000150_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000150_bAtRank :
    translationBAtRankMask case_000150_rank case_000150_mask = case_000150_b := by
  rw [translationBAtRankMask, case_000150_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000150_b, case_000150_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000150_firstLine_eq :
    case_000150_support.firstLine case_000150_seq case_000150_b = case_000150_firstLine := by
  norm_num [case_000150_firstLine, case_000150_support, case_000150_seq, case_000150_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000150_secondLine_eq :
    case_000150_support.secondLine case_000150_seq case_000150_b = case_000150_secondLine := by
  norm_num [case_000150_secondLine, case_000150_support, case_000150_seq, case_000150_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000150_sourceAgrees :
    SourceAgrees case_000150_support case_000150_rank.val case_000150_mask := by
  intro hlt
  have hrank : (⟨case_000150_rank.val, hlt⟩ : Fin numPairWords) = case_000150_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000150_rank.val, hlt⟩ case_000150_mask =
        case_000150_seq := by
    simpa [hrank] using case_000150_seqAtRank
  simp [SourceChecks, hseq, case_000150_support,
    checkTranslationConstraintSource, case_000150_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000150_rows :
    EqEqPosVarFirstRows case_000150_support case_000150_rank.val case_000150_mask := by
  intro hlt
  have hrank : (⟨case_000150_rank.val, hlt⟩ : Fin numPairWords) = case_000150_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000150_rank.val, hlt⟩ case_000150_mask =
        case_000150_seq := by
    simpa [hrank] using case_000150_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000150_rank.val, hlt⟩ case_000150_mask =
        case_000150_b := by
    simpa [hrank] using case_000150_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000150_support case_000150_rank.val hlt
          case_000150_mask = case_000150_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000150_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000150_support case_000150_rank.val hlt
          case_000150_mask = case_000150_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000150_secondLine_eq]
  have case_000150_rowFirst :
      EqEqPosRow (FirstLineAt case_000150_support case_000150_rank.val hlt case_000150_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000150_firstLine, EqEqPosRow]
  have case_000150_fixedSecond :
      FixedRow (SecondLineAt case_000150_support case_000150_rank.val hlt case_000150_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000150_secondLine, FixedRow]
  exact ⟨case_000150_rowFirst, case_000150_fixedSecond⟩

private theorem case_000150_existsRows :
    ExistsEqEqPosVarFirstRows case_000150_rank.val case_000150_mask :=
  ⟨case_000150_support, case_000150_sourceAgrees, case_000150_rows⟩

private theorem case_000150_covered :
    RowPropertyParametricCovered case_000150_rank.val case_000150_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000150_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000151_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000151_mask : SignMask := ⟨8, by decide⟩
private def case_000151_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000151_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000151_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000151_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000151_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000151_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000151_rankWord :
    rankPairWord? case_000151_word = some case_000151_rank := by
  decide

private theorem case_000151_unrank :
    unrankPairWord case_000151_rank = case_000151_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000151_word case_000151_rank).1
    case_000151_rankWord |>.symm

private theorem case_000151_seqChoice :
    translationChoiceSeq case_000151_word case_000151_mask = case_000151_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000151_seqAtRank :
    translationSeqAtRankMask case_000151_rank case_000151_mask = case_000151_seq := by
  rw [translationSeqAtRankMask, case_000151_unrank]
  exact case_000151_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000151_bAtRank :
    translationBAtRankMask case_000151_rank case_000151_mask = case_000151_b := by
  rw [translationBAtRankMask, case_000151_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000151_b, case_000151_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000151_firstLine_eq :
    case_000151_support.firstLine case_000151_seq case_000151_b = case_000151_firstLine := by
  norm_num [case_000151_firstLine, case_000151_support, case_000151_seq, case_000151_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000151_secondLine_eq :
    case_000151_support.secondLine case_000151_seq case_000151_b = case_000151_secondLine := by
  norm_num [case_000151_secondLine, case_000151_support, case_000151_seq, case_000151_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000151_sourceAgrees :
    SourceAgrees case_000151_support case_000151_rank.val case_000151_mask := by
  intro hlt
  have hrank : (⟨case_000151_rank.val, hlt⟩ : Fin numPairWords) = case_000151_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000151_rank.val, hlt⟩ case_000151_mask =
        case_000151_seq := by
    simpa [hrank] using case_000151_seqAtRank
  simp [SourceChecks, hseq, case_000151_support,
    checkTranslationConstraintSource, case_000151_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000151_rows :
    EqEqPosVarFirstRows case_000151_support case_000151_rank.val case_000151_mask := by
  intro hlt
  have hrank : (⟨case_000151_rank.val, hlt⟩ : Fin numPairWords) = case_000151_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000151_rank.val, hlt⟩ case_000151_mask =
        case_000151_seq := by
    simpa [hrank] using case_000151_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000151_rank.val, hlt⟩ case_000151_mask =
        case_000151_b := by
    simpa [hrank] using case_000151_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000151_support case_000151_rank.val hlt
          case_000151_mask = case_000151_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000151_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000151_support case_000151_rank.val hlt
          case_000151_mask = case_000151_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000151_secondLine_eq]
  have case_000151_rowFirst :
      EqEqPosRow (FirstLineAt case_000151_support case_000151_rank.val hlt case_000151_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000151_firstLine, EqEqPosRow]
  have case_000151_fixedSecond :
      FixedRow (SecondLineAt case_000151_support case_000151_rank.val hlt case_000151_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000151_secondLine, FixedRow]
  exact ⟨case_000151_rowFirst, case_000151_fixedSecond⟩

private theorem case_000151_existsRows :
    ExistsEqEqPosVarFirstRows case_000151_rank.val case_000151_mask :=
  ⟨case_000151_support, case_000151_sourceAgrees, case_000151_rows⟩

private theorem case_000151_covered :
    RowPropertyParametricCovered case_000151_rank.val case_000151_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000151_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000152_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000152_mask : SignMask := ⟨9, by decide⟩
private def case_000152_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000152_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000152_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000152_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000152_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000152_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000152_rankWord :
    rankPairWord? case_000152_word = some case_000152_rank := by
  decide

private theorem case_000152_unrank :
    unrankPairWord case_000152_rank = case_000152_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000152_word case_000152_rank).1
    case_000152_rankWord |>.symm

private theorem case_000152_seqChoice :
    translationChoiceSeq case_000152_word case_000152_mask = case_000152_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000152_seqAtRank :
    translationSeqAtRankMask case_000152_rank case_000152_mask = case_000152_seq := by
  rw [translationSeqAtRankMask, case_000152_unrank]
  exact case_000152_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000152_bAtRank :
    translationBAtRankMask case_000152_rank case_000152_mask = case_000152_b := by
  rw [translationBAtRankMask, case_000152_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000152_b, case_000152_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000152_firstLine_eq :
    case_000152_support.firstLine case_000152_seq case_000152_b = case_000152_firstLine := by
  norm_num [case_000152_firstLine, case_000152_support, case_000152_seq, case_000152_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000152_secondLine_eq :
    case_000152_support.secondLine case_000152_seq case_000152_b = case_000152_secondLine := by
  norm_num [case_000152_secondLine, case_000152_support, case_000152_seq, case_000152_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000152_sourceAgrees :
    SourceAgrees case_000152_support case_000152_rank.val case_000152_mask := by
  intro hlt
  have hrank : (⟨case_000152_rank.val, hlt⟩ : Fin numPairWords) = case_000152_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000152_rank.val, hlt⟩ case_000152_mask =
        case_000152_seq := by
    simpa [hrank] using case_000152_seqAtRank
  simp [SourceChecks, hseq, case_000152_support,
    checkTranslationConstraintSource, case_000152_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000152_rows :
    EqEqPosVarFirstRows case_000152_support case_000152_rank.val case_000152_mask := by
  intro hlt
  have hrank : (⟨case_000152_rank.val, hlt⟩ : Fin numPairWords) = case_000152_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000152_rank.val, hlt⟩ case_000152_mask =
        case_000152_seq := by
    simpa [hrank] using case_000152_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000152_rank.val, hlt⟩ case_000152_mask =
        case_000152_b := by
    simpa [hrank] using case_000152_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000152_support case_000152_rank.val hlt
          case_000152_mask = case_000152_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000152_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000152_support case_000152_rank.val hlt
          case_000152_mask = case_000152_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000152_secondLine_eq]
  have case_000152_rowFirst :
      EqEqPosRow (FirstLineAt case_000152_support case_000152_rank.val hlt case_000152_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000152_firstLine, EqEqPosRow]
  have case_000152_fixedSecond :
      FixedRow (SecondLineAt case_000152_support case_000152_rank.val hlt case_000152_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000152_secondLine, FixedRow]
  exact ⟨case_000152_rowFirst, case_000152_fixedSecond⟩

private theorem case_000152_existsRows :
    ExistsEqEqPosVarFirstRows case_000152_rank.val case_000152_mask :=
  ⟨case_000152_support, case_000152_sourceAgrees, case_000152_rows⟩

private theorem case_000152_covered :
    RowPropertyParametricCovered case_000152_rank.val case_000152_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000152_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000153_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000153_mask : SignMask := ⟨13, by decide⟩
private def case_000153_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000153_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000153_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000153_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000153_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000153_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000153_rankWord :
    rankPairWord? case_000153_word = some case_000153_rank := by
  decide

private theorem case_000153_unrank :
    unrankPairWord case_000153_rank = case_000153_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000153_word case_000153_rank).1
    case_000153_rankWord |>.symm

private theorem case_000153_seqChoice :
    translationChoiceSeq case_000153_word case_000153_mask = case_000153_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000153_seqAtRank :
    translationSeqAtRankMask case_000153_rank case_000153_mask = case_000153_seq := by
  rw [translationSeqAtRankMask, case_000153_unrank]
  exact case_000153_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000153_bAtRank :
    translationBAtRankMask case_000153_rank case_000153_mask = case_000153_b := by
  rw [translationBAtRankMask, case_000153_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000153_b, case_000153_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000153_firstLine_eq :
    case_000153_support.firstLine case_000153_seq case_000153_b = case_000153_firstLine := by
  norm_num [case_000153_firstLine, case_000153_support, case_000153_seq, case_000153_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000153_secondLine_eq :
    case_000153_support.secondLine case_000153_seq case_000153_b = case_000153_secondLine := by
  norm_num [case_000153_secondLine, case_000153_support, case_000153_seq, case_000153_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000153_sourceAgrees :
    SourceAgrees case_000153_support case_000153_rank.val case_000153_mask := by
  intro hlt
  have hrank : (⟨case_000153_rank.val, hlt⟩ : Fin numPairWords) = case_000153_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000153_rank.val, hlt⟩ case_000153_mask =
        case_000153_seq := by
    simpa [hrank] using case_000153_seqAtRank
  simp [SourceChecks, hseq, case_000153_support,
    checkTranslationConstraintSource, case_000153_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000153_rows :
    EqEqPosVarSecondRows case_000153_support case_000153_rank.val case_000153_mask := by
  intro hlt
  have hrank : (⟨case_000153_rank.val, hlt⟩ : Fin numPairWords) = case_000153_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000153_rank.val, hlt⟩ case_000153_mask =
        case_000153_seq := by
    simpa [hrank] using case_000153_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000153_rank.val, hlt⟩ case_000153_mask =
        case_000153_b := by
    simpa [hrank] using case_000153_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000153_support case_000153_rank.val hlt
          case_000153_mask = case_000153_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000153_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000153_support case_000153_rank.val hlt
          case_000153_mask = case_000153_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000153_secondLine_eq]
  have case_000153_fixedFirst :
      FixedRow (FirstLineAt case_000153_support case_000153_rank.val hlt case_000153_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000153_firstLine, FixedRow]
  have case_000153_rowSecond :
      EqEqPosRow (SecondLineAt case_000153_support case_000153_rank.val hlt case_000153_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000153_secondLine, EqEqPosRow]
  exact ⟨case_000153_fixedFirst, case_000153_rowSecond⟩

private theorem case_000153_existsRows :
    ExistsEqEqPosVarSecondRows case_000153_rank.val case_000153_mask :=
  ⟨case_000153_support, case_000153_sourceAgrees, case_000153_rows⟩

private theorem case_000153_covered :
    RowPropertyParametricCovered case_000153_rank.val case_000153_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000153_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000154_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000154_mask : SignMask := ⟨16, by decide⟩
private def case_000154_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000154_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000154_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000154_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000154_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000154_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000154_rankWord :
    rankPairWord? case_000154_word = some case_000154_rank := by
  decide

private theorem case_000154_unrank :
    unrankPairWord case_000154_rank = case_000154_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000154_word case_000154_rank).1
    case_000154_rankWord |>.symm

private theorem case_000154_seqChoice :
    translationChoiceSeq case_000154_word case_000154_mask = case_000154_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000154_seqAtRank :
    translationSeqAtRankMask case_000154_rank case_000154_mask = case_000154_seq := by
  rw [translationSeqAtRankMask, case_000154_unrank]
  exact case_000154_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000154_bAtRank :
    translationBAtRankMask case_000154_rank case_000154_mask = case_000154_b := by
  rw [translationBAtRankMask, case_000154_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000154_b, case_000154_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000154_firstLine_eq :
    case_000154_support.firstLine case_000154_seq case_000154_b = case_000154_firstLine := by
  norm_num [case_000154_firstLine, case_000154_support, case_000154_seq, case_000154_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000154_secondLine_eq :
    case_000154_support.secondLine case_000154_seq case_000154_b = case_000154_secondLine := by
  norm_num [case_000154_secondLine, case_000154_support, case_000154_seq, case_000154_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000154_sourceAgrees :
    SourceAgrees case_000154_support case_000154_rank.val case_000154_mask := by
  intro hlt
  have hrank : (⟨case_000154_rank.val, hlt⟩ : Fin numPairWords) = case_000154_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000154_rank.val, hlt⟩ case_000154_mask =
        case_000154_seq := by
    simpa [hrank] using case_000154_seqAtRank
  simp [SourceChecks, hseq, case_000154_support,
    checkTranslationConstraintSource, case_000154_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000154_rows :
    EqEqPosVarFirstRows case_000154_support case_000154_rank.val case_000154_mask := by
  intro hlt
  have hrank : (⟨case_000154_rank.val, hlt⟩ : Fin numPairWords) = case_000154_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000154_rank.val, hlt⟩ case_000154_mask =
        case_000154_seq := by
    simpa [hrank] using case_000154_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000154_rank.val, hlt⟩ case_000154_mask =
        case_000154_b := by
    simpa [hrank] using case_000154_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000154_support case_000154_rank.val hlt
          case_000154_mask = case_000154_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000154_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000154_support case_000154_rank.val hlt
          case_000154_mask = case_000154_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000154_secondLine_eq]
  have case_000154_rowFirst :
      EqEqPosRow (FirstLineAt case_000154_support case_000154_rank.val hlt case_000154_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000154_firstLine, EqEqPosRow]
  have case_000154_fixedSecond :
      FixedRow (SecondLineAt case_000154_support case_000154_rank.val hlt case_000154_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000154_secondLine, FixedRow]
  exact ⟨case_000154_rowFirst, case_000154_fixedSecond⟩

private theorem case_000154_existsRows :
    ExistsEqEqPosVarFirstRows case_000154_rank.val case_000154_mask :=
  ⟨case_000154_support, case_000154_sourceAgrees, case_000154_rows⟩

private theorem case_000154_covered :
    RowPropertyParametricCovered case_000154_rank.val case_000154_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000154_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000155_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000155_mask : SignMask := ⟨18, by decide⟩
private def case_000155_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000155_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000155_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000155_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000155_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000155_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000155_rankWord :
    rankPairWord? case_000155_word = some case_000155_rank := by
  decide

private theorem case_000155_unrank :
    unrankPairWord case_000155_rank = case_000155_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000155_word case_000155_rank).1
    case_000155_rankWord |>.symm

private theorem case_000155_seqChoice :
    translationChoiceSeq case_000155_word case_000155_mask = case_000155_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000155_seqAtRank :
    translationSeqAtRankMask case_000155_rank case_000155_mask = case_000155_seq := by
  rw [translationSeqAtRankMask, case_000155_unrank]
  exact case_000155_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000155_bAtRank :
    translationBAtRankMask case_000155_rank case_000155_mask = case_000155_b := by
  rw [translationBAtRankMask, case_000155_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000155_b, case_000155_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000155_firstLine_eq :
    case_000155_support.firstLine case_000155_seq case_000155_b = case_000155_firstLine := by
  norm_num [case_000155_firstLine, case_000155_support, case_000155_seq, case_000155_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000155_secondLine_eq :
    case_000155_support.secondLine case_000155_seq case_000155_b = case_000155_secondLine := by
  norm_num [case_000155_secondLine, case_000155_support, case_000155_seq, case_000155_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000155_sourceAgrees :
    SourceAgrees case_000155_support case_000155_rank.val case_000155_mask := by
  intro hlt
  have hrank : (⟨case_000155_rank.val, hlt⟩ : Fin numPairWords) = case_000155_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000155_rank.val, hlt⟩ case_000155_mask =
        case_000155_seq := by
    simpa [hrank] using case_000155_seqAtRank
  simp [SourceChecks, hseq, case_000155_support,
    checkTranslationConstraintSource, case_000155_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000155_rows :
    EqEqPosVarFirstRows case_000155_support case_000155_rank.val case_000155_mask := by
  intro hlt
  have hrank : (⟨case_000155_rank.val, hlt⟩ : Fin numPairWords) = case_000155_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000155_rank.val, hlt⟩ case_000155_mask =
        case_000155_seq := by
    simpa [hrank] using case_000155_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000155_rank.val, hlt⟩ case_000155_mask =
        case_000155_b := by
    simpa [hrank] using case_000155_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000155_support case_000155_rank.val hlt
          case_000155_mask = case_000155_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000155_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000155_support case_000155_rank.val hlt
          case_000155_mask = case_000155_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000155_secondLine_eq]
  have case_000155_rowFirst :
      EqEqPosRow (FirstLineAt case_000155_support case_000155_rank.val hlt case_000155_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000155_firstLine, EqEqPosRow]
  have case_000155_fixedSecond :
      FixedRow (SecondLineAt case_000155_support case_000155_rank.val hlt case_000155_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000155_secondLine, FixedRow]
  exact ⟨case_000155_rowFirst, case_000155_fixedSecond⟩

private theorem case_000155_existsRows :
    ExistsEqEqPosVarFirstRows case_000155_rank.val case_000155_mask :=
  ⟨case_000155_support, case_000155_sourceAgrees, case_000155_rows⟩

private theorem case_000155_covered :
    RowPropertyParametricCovered case_000155_rank.val case_000155_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000155_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000156_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000156_mask : SignMask := ⟨22, by decide⟩
private def case_000156_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000156_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000156_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000156_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000156_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000156_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000156_rankWord :
    rankPairWord? case_000156_word = some case_000156_rank := by
  decide

private theorem case_000156_unrank :
    unrankPairWord case_000156_rank = case_000156_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000156_word case_000156_rank).1
    case_000156_rankWord |>.symm

private theorem case_000156_seqChoice :
    translationChoiceSeq case_000156_word case_000156_mask = case_000156_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000156_seqAtRank :
    translationSeqAtRankMask case_000156_rank case_000156_mask = case_000156_seq := by
  rw [translationSeqAtRankMask, case_000156_unrank]
  exact case_000156_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000156_bAtRank :
    translationBAtRankMask case_000156_rank case_000156_mask = case_000156_b := by
  rw [translationBAtRankMask, case_000156_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000156_b, case_000156_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000156_firstLine_eq :
    case_000156_support.firstLine case_000156_seq case_000156_b = case_000156_firstLine := by
  norm_num [case_000156_firstLine, case_000156_support, case_000156_seq, case_000156_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000156_secondLine_eq :
    case_000156_support.secondLine case_000156_seq case_000156_b = case_000156_secondLine := by
  norm_num [case_000156_secondLine, case_000156_support, case_000156_seq, case_000156_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000156_sourceAgrees :
    SourceAgrees case_000156_support case_000156_rank.val case_000156_mask := by
  intro hlt
  have hrank : (⟨case_000156_rank.val, hlt⟩ : Fin numPairWords) = case_000156_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000156_rank.val, hlt⟩ case_000156_mask =
        case_000156_seq := by
    simpa [hrank] using case_000156_seqAtRank
  simp [SourceChecks, hseq, case_000156_support,
    checkTranslationConstraintSource, case_000156_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000156_rows :
    EqEqPosVarFirstRows case_000156_support case_000156_rank.val case_000156_mask := by
  intro hlt
  have hrank : (⟨case_000156_rank.val, hlt⟩ : Fin numPairWords) = case_000156_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000156_rank.val, hlt⟩ case_000156_mask =
        case_000156_seq := by
    simpa [hrank] using case_000156_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000156_rank.val, hlt⟩ case_000156_mask =
        case_000156_b := by
    simpa [hrank] using case_000156_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000156_support case_000156_rank.val hlt
          case_000156_mask = case_000156_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000156_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000156_support case_000156_rank.val hlt
          case_000156_mask = case_000156_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000156_secondLine_eq]
  have case_000156_rowFirst :
      EqEqPosRow (FirstLineAt case_000156_support case_000156_rank.val hlt case_000156_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000156_firstLine, EqEqPosRow]
  have case_000156_fixedSecond :
      FixedRow (SecondLineAt case_000156_support case_000156_rank.val hlt case_000156_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000156_secondLine, FixedRow]
  exact ⟨case_000156_rowFirst, case_000156_fixedSecond⟩

private theorem case_000156_existsRows :
    ExistsEqEqPosVarFirstRows case_000156_rank.val case_000156_mask :=
  ⟨case_000156_support, case_000156_sourceAgrees, case_000156_rows⟩

private theorem case_000156_covered :
    RowPropertyParametricCovered case_000156_rank.val case_000156_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000156_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000157_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000157_mask : SignMask := ⟨24, by decide⟩
private def case_000157_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000157_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000157_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000157_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000157_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000157_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000157_rankWord :
    rankPairWord? case_000157_word = some case_000157_rank := by
  decide

private theorem case_000157_unrank :
    unrankPairWord case_000157_rank = case_000157_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000157_word case_000157_rank).1
    case_000157_rankWord |>.symm

private theorem case_000157_seqChoice :
    translationChoiceSeq case_000157_word case_000157_mask = case_000157_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000157_seqAtRank :
    translationSeqAtRankMask case_000157_rank case_000157_mask = case_000157_seq := by
  rw [translationSeqAtRankMask, case_000157_unrank]
  exact case_000157_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000157_bAtRank :
    translationBAtRankMask case_000157_rank case_000157_mask = case_000157_b := by
  rw [translationBAtRankMask, case_000157_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000157_b, case_000157_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000157_firstLine_eq :
    case_000157_support.firstLine case_000157_seq case_000157_b = case_000157_firstLine := by
  norm_num [case_000157_firstLine, case_000157_support, case_000157_seq, case_000157_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000157_secondLine_eq :
    case_000157_support.secondLine case_000157_seq case_000157_b = case_000157_secondLine := by
  norm_num [case_000157_secondLine, case_000157_support, case_000157_seq, case_000157_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000157_sourceAgrees :
    SourceAgrees case_000157_support case_000157_rank.val case_000157_mask := by
  intro hlt
  have hrank : (⟨case_000157_rank.val, hlt⟩ : Fin numPairWords) = case_000157_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000157_rank.val, hlt⟩ case_000157_mask =
        case_000157_seq := by
    simpa [hrank] using case_000157_seqAtRank
  simp [SourceChecks, hseq, case_000157_support,
    checkTranslationConstraintSource, case_000157_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000157_rows :
    EqEqPosVarFirstRows case_000157_support case_000157_rank.val case_000157_mask := by
  intro hlt
  have hrank : (⟨case_000157_rank.val, hlt⟩ : Fin numPairWords) = case_000157_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000157_rank.val, hlt⟩ case_000157_mask =
        case_000157_seq := by
    simpa [hrank] using case_000157_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000157_rank.val, hlt⟩ case_000157_mask =
        case_000157_b := by
    simpa [hrank] using case_000157_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000157_support case_000157_rank.val hlt
          case_000157_mask = case_000157_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000157_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000157_support case_000157_rank.val hlt
          case_000157_mask = case_000157_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000157_secondLine_eq]
  have case_000157_rowFirst :
      EqEqPosRow (FirstLineAt case_000157_support case_000157_rank.val hlt case_000157_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000157_firstLine, EqEqPosRow]
  have case_000157_fixedSecond :
      FixedRow (SecondLineAt case_000157_support case_000157_rank.val hlt case_000157_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000157_secondLine, FixedRow]
  exact ⟨case_000157_rowFirst, case_000157_fixedSecond⟩

private theorem case_000157_existsRows :
    ExistsEqEqPosVarFirstRows case_000157_rank.val case_000157_mask :=
  ⟨case_000157_support, case_000157_sourceAgrees, case_000157_rows⟩

private theorem case_000157_covered :
    RowPropertyParametricCovered case_000157_rank.val case_000157_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000157_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000158_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000158_mask : SignMask := ⟨28, by decide⟩
private def case_000158_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000158_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000158_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000158_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000158_firstLine : StrictLin2 := { a := (-22/17), b := (-22/17), c := (-88/51) }
private def case_000158_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000158_rankWord :
    rankPairWord? case_000158_word = some case_000158_rank := by
  decide

private theorem case_000158_unrank :
    unrankPairWord case_000158_rank = case_000158_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000158_word case_000158_rank).1
    case_000158_rankWord |>.symm

private theorem case_000158_seqChoice :
    translationChoiceSeq case_000158_word case_000158_mask = case_000158_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000158_seqAtRank :
    translationSeqAtRankMask case_000158_rank case_000158_mask = case_000158_seq := by
  rw [translationSeqAtRankMask, case_000158_unrank]
  exact case_000158_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000158_bAtRank :
    translationBAtRankMask case_000158_rank case_000158_mask = case_000158_b := by
  rw [translationBAtRankMask, case_000158_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000158_b, case_000158_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000158_firstLine_eq :
    case_000158_support.firstLine case_000158_seq case_000158_b = case_000158_firstLine := by
  norm_num [case_000158_firstLine, case_000158_support, case_000158_seq, case_000158_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000158_secondLine_eq :
    case_000158_support.secondLine case_000158_seq case_000158_b = case_000158_secondLine := by
  norm_num [case_000158_secondLine, case_000158_support, case_000158_seq, case_000158_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000158_sourceAgrees :
    SourceAgrees case_000158_support case_000158_rank.val case_000158_mask := by
  intro hlt
  have hrank : (⟨case_000158_rank.val, hlt⟩ : Fin numPairWords) = case_000158_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000158_rank.val, hlt⟩ case_000158_mask =
        case_000158_seq := by
    simpa [hrank] using case_000158_seqAtRank
  simp [SourceChecks, hseq, case_000158_support,
    checkTranslationConstraintSource, case_000158_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000158_rows :
    EqEqPosVarFirstRows case_000158_support case_000158_rank.val case_000158_mask := by
  intro hlt
  have hrank : (⟨case_000158_rank.val, hlt⟩ : Fin numPairWords) = case_000158_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000158_rank.val, hlt⟩ case_000158_mask =
        case_000158_seq := by
    simpa [hrank] using case_000158_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000158_rank.val, hlt⟩ case_000158_mask =
        case_000158_b := by
    simpa [hrank] using case_000158_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000158_support case_000158_rank.val hlt
          case_000158_mask = case_000158_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000158_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000158_support case_000158_rank.val hlt
          case_000158_mask = case_000158_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000158_secondLine_eq]
  have case_000158_rowFirst :
      EqEqPosRow (FirstLineAt case_000158_support case_000158_rank.val hlt case_000158_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000158_firstLine, EqEqPosRow]
  have case_000158_fixedSecond :
      FixedRow (SecondLineAt case_000158_support case_000158_rank.val hlt case_000158_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000158_secondLine, FixedRow]
  exact ⟨case_000158_rowFirst, case_000158_fixedSecond⟩

private theorem case_000158_existsRows :
    ExistsEqEqPosVarFirstRows case_000158_rank.val case_000158_mask :=
  ⟨case_000158_support, case_000158_sourceAgrees, case_000158_rows⟩

private theorem case_000158_covered :
    RowPropertyParametricCovered case_000158_rank.val case_000158_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000158_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000159_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000159_mask : SignMask := ⟨29, by decide⟩
private def case_000159_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000159_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000159_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000159_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000159_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000159_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000159_rankWord :
    rankPairWord? case_000159_word = some case_000159_rank := by
  decide

private theorem case_000159_unrank :
    unrankPairWord case_000159_rank = case_000159_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000159_word case_000159_rank).1
    case_000159_rankWord |>.symm

private theorem case_000159_seqChoice :
    translationChoiceSeq case_000159_word case_000159_mask = case_000159_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000159_seqAtRank :
    translationSeqAtRankMask case_000159_rank case_000159_mask = case_000159_seq := by
  rw [translationSeqAtRankMask, case_000159_unrank]
  exact case_000159_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000159_bAtRank :
    translationBAtRankMask case_000159_rank case_000159_mask = case_000159_b := by
  rw [translationBAtRankMask, case_000159_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000159_b, case_000159_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000159_firstLine_eq :
    case_000159_support.firstLine case_000159_seq case_000159_b = case_000159_firstLine := by
  norm_num [case_000159_firstLine, case_000159_support, case_000159_seq, case_000159_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000159_secondLine_eq :
    case_000159_support.secondLine case_000159_seq case_000159_b = case_000159_secondLine := by
  norm_num [case_000159_secondLine, case_000159_support, case_000159_seq, case_000159_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000159_sourceAgrees :
    SourceAgrees case_000159_support case_000159_rank.val case_000159_mask := by
  intro hlt
  have hrank : (⟨case_000159_rank.val, hlt⟩ : Fin numPairWords) = case_000159_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000159_rank.val, hlt⟩ case_000159_mask =
        case_000159_seq := by
    simpa [hrank] using case_000159_seqAtRank
  simp [SourceChecks, hseq, case_000159_support,
    checkTranslationConstraintSource, case_000159_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000159_rows :
    EqEqPosVarSecondRows case_000159_support case_000159_rank.val case_000159_mask := by
  intro hlt
  have hrank : (⟨case_000159_rank.val, hlt⟩ : Fin numPairWords) = case_000159_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000159_rank.val, hlt⟩ case_000159_mask =
        case_000159_seq := by
    simpa [hrank] using case_000159_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000159_rank.val, hlt⟩ case_000159_mask =
        case_000159_b := by
    simpa [hrank] using case_000159_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000159_support case_000159_rank.val hlt
          case_000159_mask = case_000159_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000159_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000159_support case_000159_rank.val hlt
          case_000159_mask = case_000159_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000159_secondLine_eq]
  have case_000159_fixedFirst :
      FixedRow (FirstLineAt case_000159_support case_000159_rank.val hlt case_000159_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000159_firstLine, FixedRow]
  have case_000159_rowSecond :
      EqEqPosRow (SecondLineAt case_000159_support case_000159_rank.val hlt case_000159_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000159_secondLine, EqEqPosRow]
  exact ⟨case_000159_fixedFirst, case_000159_rowSecond⟩

private theorem case_000159_existsRows :
    ExistsEqEqPosVarSecondRows case_000159_rank.val case_000159_mask :=
  ⟨case_000159_support, case_000159_sourceAgrees, case_000159_rows⟩

private theorem case_000159_covered :
    RowPropertyParametricCovered case_000159_rank.val case_000159_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000159_existsRows

inductive Group004Covered : Nat -> SignMask -> Prop
  | case_000128 : Group004Covered case_000128_rank.val case_000128_mask
  | case_000129 : Group004Covered case_000129_rank.val case_000129_mask
  | case_000130 : Group004Covered case_000130_rank.val case_000130_mask
  | case_000131 : Group004Covered case_000131_rank.val case_000131_mask
  | case_000132 : Group004Covered case_000132_rank.val case_000132_mask
  | case_000133 : Group004Covered case_000133_rank.val case_000133_mask
  | case_000134 : Group004Covered case_000134_rank.val case_000134_mask
  | case_000135 : Group004Covered case_000135_rank.val case_000135_mask
  | case_000136 : Group004Covered case_000136_rank.val case_000136_mask
  | case_000137 : Group004Covered case_000137_rank.val case_000137_mask
  | case_000138 : Group004Covered case_000138_rank.val case_000138_mask
  | case_000139 : Group004Covered case_000139_rank.val case_000139_mask
  | case_000140 : Group004Covered case_000140_rank.val case_000140_mask
  | case_000141 : Group004Covered case_000141_rank.val case_000141_mask
  | case_000142 : Group004Covered case_000142_rank.val case_000142_mask
  | case_000143 : Group004Covered case_000143_rank.val case_000143_mask
  | case_000144 : Group004Covered case_000144_rank.val case_000144_mask
  | case_000145 : Group004Covered case_000145_rank.val case_000145_mask
  | case_000146 : Group004Covered case_000146_rank.val case_000146_mask
  | case_000147 : Group004Covered case_000147_rank.val case_000147_mask
  | case_000148 : Group004Covered case_000148_rank.val case_000148_mask
  | case_000149 : Group004Covered case_000149_rank.val case_000149_mask
  | case_000150 : Group004Covered case_000150_rank.val case_000150_mask
  | case_000151 : Group004Covered case_000151_rank.val case_000151_mask
  | case_000152 : Group004Covered case_000152_rank.val case_000152_mask
  | case_000153 : Group004Covered case_000153_rank.val case_000153_mask
  | case_000154 : Group004Covered case_000154_rank.val case_000154_mask
  | case_000155 : Group004Covered case_000155_rank.val case_000155_mask
  | case_000156 : Group004Covered case_000156_rank.val case_000156_mask
  | case_000157 : Group004Covered case_000157_rank.val case_000157_mask
  | case_000158 : Group004Covered case_000158_rank.val case_000158_mask
  | case_000159 : Group004Covered case_000159_rank.val case_000159_mask

theorem Group004GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group004Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000128 =>
      exact RowPropertyParametricCovered.kills case_000128_covered
  | case_000129 =>
      exact RowPropertyParametricCovered.kills case_000129_covered
  | case_000130 =>
      exact RowPropertyParametricCovered.kills case_000130_covered
  | case_000131 =>
      exact RowPropertyParametricCovered.kills case_000131_covered
  | case_000132 =>
      exact RowPropertyParametricCovered.kills case_000132_covered
  | case_000133 =>
      exact RowPropertyParametricCovered.kills case_000133_covered
  | case_000134 =>
      exact RowPropertyParametricCovered.kills case_000134_covered
  | case_000135 =>
      exact RowPropertyParametricCovered.kills case_000135_covered
  | case_000136 =>
      exact RowPropertyParametricCovered.kills case_000136_covered
  | case_000137 =>
      exact RowPropertyParametricCovered.kills case_000137_covered
  | case_000138 =>
      exact RowPropertyParametricCovered.kills case_000138_covered
  | case_000139 =>
      exact RowPropertyParametricCovered.kills case_000139_covered
  | case_000140 =>
      exact RowPropertyParametricCovered.kills case_000140_covered
  | case_000141 =>
      exact RowPropertyParametricCovered.kills case_000141_covered
  | case_000142 =>
      exact RowPropertyParametricCovered.kills case_000142_covered
  | case_000143 =>
      exact RowPropertyParametricCovered.kills case_000143_covered
  | case_000144 =>
      exact RowPropertyParametricCovered.kills case_000144_covered
  | case_000145 =>
      exact RowPropertyParametricCovered.kills case_000145_covered
  | case_000146 =>
      exact RowPropertyParametricCovered.kills case_000146_covered
  | case_000147 =>
      exact RowPropertyParametricCovered.kills case_000147_covered
  | case_000148 =>
      exact RowPropertyParametricCovered.kills case_000148_covered
  | case_000149 =>
      exact RowPropertyParametricCovered.kills case_000149_covered
  | case_000150 =>
      exact RowPropertyParametricCovered.kills case_000150_covered
  | case_000151 =>
      exact RowPropertyParametricCovered.kills case_000151_covered
  | case_000152 =>
      exact RowPropertyParametricCovered.kills case_000152_covered
  | case_000153 =>
      exact RowPropertyParametricCovered.kills case_000153_covered
  | case_000154 =>
      exact RowPropertyParametricCovered.kills case_000154_covered
  | case_000155 =>
      exact RowPropertyParametricCovered.kills case_000155_covered
  | case_000156 =>
      exact RowPropertyParametricCovered.kills case_000156_covered
  | case_000157 =>
      exact RowPropertyParametricCovered.kills case_000157_covered
  | case_000158 =>
      exact RowPropertyParametricCovered.kills case_000158_covered
  | case_000159 =>
      exact RowPropertyParametricCovered.kills case_000159_covered

theorem Group004_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group004
