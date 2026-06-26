import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group006

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000192_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000192_mask : SignMask := ⟨63, by decide⟩
private def case_000192_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000192_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000192_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000192_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_000192_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000192_secondLine : StrictLin2 := { a := (-9/100), b := (9/100), c := (-9/50) }

private theorem case_000192_rankWord :
    rankPairWord? case_000192_word = some case_000192_rank := by
  decide

private theorem case_000192_unrank :
    unrankPairWord case_000192_rank = case_000192_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000192_word case_000192_rank).1
    case_000192_rankWord |>.symm

private theorem case_000192_seqChoice :
    translationChoiceSeq case_000192_word case_000192_mask = case_000192_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000192_seqAtRank :
    translationSeqAtRankMask case_000192_rank case_000192_mask = case_000192_seq := by
  rw [translationSeqAtRankMask, case_000192_unrank]
  exact case_000192_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000192_bAtRank :
    translationBAtRankMask case_000192_rank case_000192_mask = case_000192_b := by
  rw [translationBAtRankMask, case_000192_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000192_b, case_000192_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000192_firstLine_eq :
    case_000192_support.firstLine case_000192_seq case_000192_b = case_000192_firstLine := by
  norm_num [case_000192_firstLine, case_000192_support, case_000192_seq, case_000192_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000192_secondLine_eq :
    case_000192_support.secondLine case_000192_seq case_000192_b = case_000192_secondLine := by
  norm_num [case_000192_secondLine, case_000192_support, case_000192_seq, case_000192_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000192_sourceAgrees :
    SourceAgrees case_000192_support case_000192_rank.val case_000192_mask := by
  intro hlt
  have hrank : (⟨case_000192_rank.val, hlt⟩ : Fin numPairWords) = case_000192_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000192_rank.val, hlt⟩ case_000192_mask =
        case_000192_seq := by
    simpa [hrank] using case_000192_seqAtRank
  simp [SourceChecks, hseq, case_000192_support,
    checkTranslationConstraintSource, case_000192_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000192_rows :
    OppOneMinusVarSecondRows case_000192_support case_000192_rank.val case_000192_mask := by
  intro hlt
  have hrank : (⟨case_000192_rank.val, hlt⟩ : Fin numPairWords) = case_000192_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000192_rank.val, hlt⟩ case_000192_mask =
        case_000192_seq := by
    simpa [hrank] using case_000192_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000192_rank.val, hlt⟩ case_000192_mask =
        case_000192_b := by
    simpa [hrank] using case_000192_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000192_support case_000192_rank.val hlt
          case_000192_mask = case_000192_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000192_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000192_support case_000192_rank.val hlt
          case_000192_mask = case_000192_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000192_secondLine_eq]
  have case_000192_fixedFirst :
      FixedRow (FirstLineAt case_000192_support case_000192_rank.val hlt case_000192_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000192_firstLine, FixedRow]
  have case_000192_rowSecond :
      OppPosRow (SecondLineAt case_000192_support case_000192_rank.val hlt case_000192_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000192_secondLine, OppPosRow]
  exact ⟨case_000192_fixedFirst, case_000192_rowSecond⟩

private theorem case_000192_existsRows :
    ExistsOppOneMinusVarSecondRows case_000192_rank.val case_000192_mask :=
  ⟨case_000192_support, case_000192_sourceAgrees, case_000192_rows⟩

private theorem case_000192_covered :
    RowPropertyParametricCovered case_000192_rank.val case_000192_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000192_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000193_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000193_mask : SignMask := ⟨8, by decide⟩
private def case_000193_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000193_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000193_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000193_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000193_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000193_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000193_rankWord :
    rankPairWord? case_000193_word = some case_000193_rank := by
  decide

private theorem case_000193_unrank :
    unrankPairWord case_000193_rank = case_000193_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000193_word case_000193_rank).1
    case_000193_rankWord |>.symm

private theorem case_000193_seqChoice :
    translationChoiceSeq case_000193_word case_000193_mask = case_000193_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000193_seqAtRank :
    translationSeqAtRankMask case_000193_rank case_000193_mask = case_000193_seq := by
  rw [translationSeqAtRankMask, case_000193_unrank]
  exact case_000193_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000193_bAtRank :
    translationBAtRankMask case_000193_rank case_000193_mask = case_000193_b := by
  rw [translationBAtRankMask, case_000193_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000193_b, case_000193_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000193_firstLine_eq :
    case_000193_support.firstLine case_000193_seq case_000193_b = case_000193_firstLine := by
  norm_num [case_000193_firstLine, case_000193_support, case_000193_seq, case_000193_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000193_secondLine_eq :
    case_000193_support.secondLine case_000193_seq case_000193_b = case_000193_secondLine := by
  norm_num [case_000193_secondLine, case_000193_support, case_000193_seq, case_000193_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000193_sourceAgrees :
    SourceAgrees case_000193_support case_000193_rank.val case_000193_mask := by
  intro hlt
  have hrank : (⟨case_000193_rank.val, hlt⟩ : Fin numPairWords) = case_000193_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000193_rank.val, hlt⟩ case_000193_mask =
        case_000193_seq := by
    simpa [hrank] using case_000193_seqAtRank
  simp [SourceChecks, hseq, case_000193_support,
    checkTranslationConstraintSource, case_000193_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000193_rows :
    EqEqPosVarFirstRows case_000193_support case_000193_rank.val case_000193_mask := by
  intro hlt
  have hrank : (⟨case_000193_rank.val, hlt⟩ : Fin numPairWords) = case_000193_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000193_rank.val, hlt⟩ case_000193_mask =
        case_000193_seq := by
    simpa [hrank] using case_000193_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000193_rank.val, hlt⟩ case_000193_mask =
        case_000193_b := by
    simpa [hrank] using case_000193_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000193_support case_000193_rank.val hlt
          case_000193_mask = case_000193_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000193_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000193_support case_000193_rank.val hlt
          case_000193_mask = case_000193_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000193_secondLine_eq]
  have case_000193_rowFirst :
      EqEqPosRow (FirstLineAt case_000193_support case_000193_rank.val hlt case_000193_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000193_firstLine, EqEqPosRow]
  have case_000193_fixedSecond :
      FixedRow (SecondLineAt case_000193_support case_000193_rank.val hlt case_000193_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000193_secondLine, FixedRow]
  exact ⟨case_000193_rowFirst, case_000193_fixedSecond⟩

private theorem case_000193_existsRows :
    ExistsEqEqPosVarFirstRows case_000193_rank.val case_000193_mask :=
  ⟨case_000193_support, case_000193_sourceAgrees, case_000193_rows⟩

private theorem case_000193_covered :
    RowPropertyParametricCovered case_000193_rank.val case_000193_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000193_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000194_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000194_mask : SignMask := ⟨9, by decide⟩
private def case_000194_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000194_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000194_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000194_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000194_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000194_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000194_rankWord :
    rankPairWord? case_000194_word = some case_000194_rank := by
  decide

private theorem case_000194_unrank :
    unrankPairWord case_000194_rank = case_000194_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000194_word case_000194_rank).1
    case_000194_rankWord |>.symm

private theorem case_000194_seqChoice :
    translationChoiceSeq case_000194_word case_000194_mask = case_000194_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000194_seqAtRank :
    translationSeqAtRankMask case_000194_rank case_000194_mask = case_000194_seq := by
  rw [translationSeqAtRankMask, case_000194_unrank]
  exact case_000194_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000194_bAtRank :
    translationBAtRankMask case_000194_rank case_000194_mask = case_000194_b := by
  rw [translationBAtRankMask, case_000194_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000194_b, case_000194_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000194_firstLine_eq :
    case_000194_support.firstLine case_000194_seq case_000194_b = case_000194_firstLine := by
  norm_num [case_000194_firstLine, case_000194_support, case_000194_seq, case_000194_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000194_secondLine_eq :
    case_000194_support.secondLine case_000194_seq case_000194_b = case_000194_secondLine := by
  norm_num [case_000194_secondLine, case_000194_support, case_000194_seq, case_000194_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000194_sourceAgrees :
    SourceAgrees case_000194_support case_000194_rank.val case_000194_mask := by
  intro hlt
  have hrank : (⟨case_000194_rank.val, hlt⟩ : Fin numPairWords) = case_000194_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000194_rank.val, hlt⟩ case_000194_mask =
        case_000194_seq := by
    simpa [hrank] using case_000194_seqAtRank
  simp [SourceChecks, hseq, case_000194_support,
    checkTranslationConstraintSource, case_000194_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000194_rows :
    EqEqPosVarFirstRows case_000194_support case_000194_rank.val case_000194_mask := by
  intro hlt
  have hrank : (⟨case_000194_rank.val, hlt⟩ : Fin numPairWords) = case_000194_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000194_rank.val, hlt⟩ case_000194_mask =
        case_000194_seq := by
    simpa [hrank] using case_000194_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000194_rank.val, hlt⟩ case_000194_mask =
        case_000194_b := by
    simpa [hrank] using case_000194_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000194_support case_000194_rank.val hlt
          case_000194_mask = case_000194_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000194_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000194_support case_000194_rank.val hlt
          case_000194_mask = case_000194_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000194_secondLine_eq]
  have case_000194_rowFirst :
      EqEqPosRow (FirstLineAt case_000194_support case_000194_rank.val hlt case_000194_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000194_firstLine, EqEqPosRow]
  have case_000194_fixedSecond :
      FixedRow (SecondLineAt case_000194_support case_000194_rank.val hlt case_000194_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000194_secondLine, FixedRow]
  exact ⟨case_000194_rowFirst, case_000194_fixedSecond⟩

private theorem case_000194_existsRows :
    ExistsEqEqPosVarFirstRows case_000194_rank.val case_000194_mask :=
  ⟨case_000194_support, case_000194_sourceAgrees, case_000194_rows⟩

private theorem case_000194_covered :
    RowPropertyParametricCovered case_000194_rank.val case_000194_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000194_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000195_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000195_mask : SignMask := ⟨13, by decide⟩
private def case_000195_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000195_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000195_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000195_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000195_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000195_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000195_rankWord :
    rankPairWord? case_000195_word = some case_000195_rank := by
  decide

private theorem case_000195_unrank :
    unrankPairWord case_000195_rank = case_000195_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000195_word case_000195_rank).1
    case_000195_rankWord |>.symm

private theorem case_000195_seqChoice :
    translationChoiceSeq case_000195_word case_000195_mask = case_000195_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000195_seqAtRank :
    translationSeqAtRankMask case_000195_rank case_000195_mask = case_000195_seq := by
  rw [translationSeqAtRankMask, case_000195_unrank]
  exact case_000195_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000195_bAtRank :
    translationBAtRankMask case_000195_rank case_000195_mask = case_000195_b := by
  rw [translationBAtRankMask, case_000195_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000195_b, case_000195_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000195_firstLine_eq :
    case_000195_support.firstLine case_000195_seq case_000195_b = case_000195_firstLine := by
  norm_num [case_000195_firstLine, case_000195_support, case_000195_seq, case_000195_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000195_secondLine_eq :
    case_000195_support.secondLine case_000195_seq case_000195_b = case_000195_secondLine := by
  norm_num [case_000195_secondLine, case_000195_support, case_000195_seq, case_000195_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000195_sourceAgrees :
    SourceAgrees case_000195_support case_000195_rank.val case_000195_mask := by
  intro hlt
  have hrank : (⟨case_000195_rank.val, hlt⟩ : Fin numPairWords) = case_000195_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000195_rank.val, hlt⟩ case_000195_mask =
        case_000195_seq := by
    simpa [hrank] using case_000195_seqAtRank
  simp [SourceChecks, hseq, case_000195_support,
    checkTranslationConstraintSource, case_000195_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000195_rows :
    EqEqPosVarSecondRows case_000195_support case_000195_rank.val case_000195_mask := by
  intro hlt
  have hrank : (⟨case_000195_rank.val, hlt⟩ : Fin numPairWords) = case_000195_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000195_rank.val, hlt⟩ case_000195_mask =
        case_000195_seq := by
    simpa [hrank] using case_000195_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000195_rank.val, hlt⟩ case_000195_mask =
        case_000195_b := by
    simpa [hrank] using case_000195_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000195_support case_000195_rank.val hlt
          case_000195_mask = case_000195_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000195_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000195_support case_000195_rank.val hlt
          case_000195_mask = case_000195_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000195_secondLine_eq]
  have case_000195_fixedFirst :
      FixedRow (FirstLineAt case_000195_support case_000195_rank.val hlt case_000195_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000195_firstLine, FixedRow]
  have case_000195_rowSecond :
      EqEqPosRow (SecondLineAt case_000195_support case_000195_rank.val hlt case_000195_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000195_secondLine, EqEqPosRow]
  exact ⟨case_000195_fixedFirst, case_000195_rowSecond⟩

private theorem case_000195_existsRows :
    ExistsEqEqPosVarSecondRows case_000195_rank.val case_000195_mask :=
  ⟨case_000195_support, case_000195_sourceAgrees, case_000195_rows⟩

private theorem case_000195_covered :
    RowPropertyParametricCovered case_000195_rank.val case_000195_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000195_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000196_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000196_mask : SignMask := ⟨16, by decide⟩
private def case_000196_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000196_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000196_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000196_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000196_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000196_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000196_rankWord :
    rankPairWord? case_000196_word = some case_000196_rank := by
  decide

private theorem case_000196_unrank :
    unrankPairWord case_000196_rank = case_000196_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000196_word case_000196_rank).1
    case_000196_rankWord |>.symm

private theorem case_000196_seqChoice :
    translationChoiceSeq case_000196_word case_000196_mask = case_000196_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000196_seqAtRank :
    translationSeqAtRankMask case_000196_rank case_000196_mask = case_000196_seq := by
  rw [translationSeqAtRankMask, case_000196_unrank]
  exact case_000196_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000196_bAtRank :
    translationBAtRankMask case_000196_rank case_000196_mask = case_000196_b := by
  rw [translationBAtRankMask, case_000196_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000196_b, case_000196_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000196_firstLine_eq :
    case_000196_support.firstLine case_000196_seq case_000196_b = case_000196_firstLine := by
  norm_num [case_000196_firstLine, case_000196_support, case_000196_seq, case_000196_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000196_secondLine_eq :
    case_000196_support.secondLine case_000196_seq case_000196_b = case_000196_secondLine := by
  norm_num [case_000196_secondLine, case_000196_support, case_000196_seq, case_000196_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000196_sourceAgrees :
    SourceAgrees case_000196_support case_000196_rank.val case_000196_mask := by
  intro hlt
  have hrank : (⟨case_000196_rank.val, hlt⟩ : Fin numPairWords) = case_000196_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000196_rank.val, hlt⟩ case_000196_mask =
        case_000196_seq := by
    simpa [hrank] using case_000196_seqAtRank
  simp [SourceChecks, hseq, case_000196_support,
    checkTranslationConstraintSource, case_000196_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000196_rows :
    EqEqPosVarFirstRows case_000196_support case_000196_rank.val case_000196_mask := by
  intro hlt
  have hrank : (⟨case_000196_rank.val, hlt⟩ : Fin numPairWords) = case_000196_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000196_rank.val, hlt⟩ case_000196_mask =
        case_000196_seq := by
    simpa [hrank] using case_000196_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000196_rank.val, hlt⟩ case_000196_mask =
        case_000196_b := by
    simpa [hrank] using case_000196_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000196_support case_000196_rank.val hlt
          case_000196_mask = case_000196_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000196_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000196_support case_000196_rank.val hlt
          case_000196_mask = case_000196_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000196_secondLine_eq]
  have case_000196_rowFirst :
      EqEqPosRow (FirstLineAt case_000196_support case_000196_rank.val hlt case_000196_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000196_firstLine, EqEqPosRow]
  have case_000196_fixedSecond :
      FixedRow (SecondLineAt case_000196_support case_000196_rank.val hlt case_000196_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000196_secondLine, FixedRow]
  exact ⟨case_000196_rowFirst, case_000196_fixedSecond⟩

private theorem case_000196_existsRows :
    ExistsEqEqPosVarFirstRows case_000196_rank.val case_000196_mask :=
  ⟨case_000196_support, case_000196_sourceAgrees, case_000196_rows⟩

private theorem case_000196_covered :
    RowPropertyParametricCovered case_000196_rank.val case_000196_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000196_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000197_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000197_mask : SignMask := ⟨18, by decide⟩
private def case_000197_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000197_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000197_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000197_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000197_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000197_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000197_rankWord :
    rankPairWord? case_000197_word = some case_000197_rank := by
  decide

private theorem case_000197_unrank :
    unrankPairWord case_000197_rank = case_000197_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000197_word case_000197_rank).1
    case_000197_rankWord |>.symm

private theorem case_000197_seqChoice :
    translationChoiceSeq case_000197_word case_000197_mask = case_000197_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000197_seqAtRank :
    translationSeqAtRankMask case_000197_rank case_000197_mask = case_000197_seq := by
  rw [translationSeqAtRankMask, case_000197_unrank]
  exact case_000197_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000197_bAtRank :
    translationBAtRankMask case_000197_rank case_000197_mask = case_000197_b := by
  rw [translationBAtRankMask, case_000197_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000197_b, case_000197_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000197_firstLine_eq :
    case_000197_support.firstLine case_000197_seq case_000197_b = case_000197_firstLine := by
  norm_num [case_000197_firstLine, case_000197_support, case_000197_seq, case_000197_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000197_secondLine_eq :
    case_000197_support.secondLine case_000197_seq case_000197_b = case_000197_secondLine := by
  norm_num [case_000197_secondLine, case_000197_support, case_000197_seq, case_000197_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000197_sourceAgrees :
    SourceAgrees case_000197_support case_000197_rank.val case_000197_mask := by
  intro hlt
  have hrank : (⟨case_000197_rank.val, hlt⟩ : Fin numPairWords) = case_000197_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000197_rank.val, hlt⟩ case_000197_mask =
        case_000197_seq := by
    simpa [hrank] using case_000197_seqAtRank
  simp [SourceChecks, hseq, case_000197_support,
    checkTranslationConstraintSource, case_000197_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000197_rows :
    EqEqPosVarFirstRows case_000197_support case_000197_rank.val case_000197_mask := by
  intro hlt
  have hrank : (⟨case_000197_rank.val, hlt⟩ : Fin numPairWords) = case_000197_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000197_rank.val, hlt⟩ case_000197_mask =
        case_000197_seq := by
    simpa [hrank] using case_000197_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000197_rank.val, hlt⟩ case_000197_mask =
        case_000197_b := by
    simpa [hrank] using case_000197_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000197_support case_000197_rank.val hlt
          case_000197_mask = case_000197_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000197_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000197_support case_000197_rank.val hlt
          case_000197_mask = case_000197_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000197_secondLine_eq]
  have case_000197_rowFirst :
      EqEqPosRow (FirstLineAt case_000197_support case_000197_rank.val hlt case_000197_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000197_firstLine, EqEqPosRow]
  have case_000197_fixedSecond :
      FixedRow (SecondLineAt case_000197_support case_000197_rank.val hlt case_000197_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000197_secondLine, FixedRow]
  exact ⟨case_000197_rowFirst, case_000197_fixedSecond⟩

private theorem case_000197_existsRows :
    ExistsEqEqPosVarFirstRows case_000197_rank.val case_000197_mask :=
  ⟨case_000197_support, case_000197_sourceAgrees, case_000197_rows⟩

private theorem case_000197_covered :
    RowPropertyParametricCovered case_000197_rank.val case_000197_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000197_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000198_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000198_mask : SignMask := ⟨22, by decide⟩
private def case_000198_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000198_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000198_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000198_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000198_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000198_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000198_rankWord :
    rankPairWord? case_000198_word = some case_000198_rank := by
  decide

private theorem case_000198_unrank :
    unrankPairWord case_000198_rank = case_000198_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000198_word case_000198_rank).1
    case_000198_rankWord |>.symm

private theorem case_000198_seqChoice :
    translationChoiceSeq case_000198_word case_000198_mask = case_000198_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000198_seqAtRank :
    translationSeqAtRankMask case_000198_rank case_000198_mask = case_000198_seq := by
  rw [translationSeqAtRankMask, case_000198_unrank]
  exact case_000198_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000198_bAtRank :
    translationBAtRankMask case_000198_rank case_000198_mask = case_000198_b := by
  rw [translationBAtRankMask, case_000198_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000198_b, case_000198_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000198_firstLine_eq :
    case_000198_support.firstLine case_000198_seq case_000198_b = case_000198_firstLine := by
  norm_num [case_000198_firstLine, case_000198_support, case_000198_seq, case_000198_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000198_secondLine_eq :
    case_000198_support.secondLine case_000198_seq case_000198_b = case_000198_secondLine := by
  norm_num [case_000198_secondLine, case_000198_support, case_000198_seq, case_000198_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000198_sourceAgrees :
    SourceAgrees case_000198_support case_000198_rank.val case_000198_mask := by
  intro hlt
  have hrank : (⟨case_000198_rank.val, hlt⟩ : Fin numPairWords) = case_000198_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000198_rank.val, hlt⟩ case_000198_mask =
        case_000198_seq := by
    simpa [hrank] using case_000198_seqAtRank
  simp [SourceChecks, hseq, case_000198_support,
    checkTranslationConstraintSource, case_000198_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000198_rows :
    EqEqPosVarFirstRows case_000198_support case_000198_rank.val case_000198_mask := by
  intro hlt
  have hrank : (⟨case_000198_rank.val, hlt⟩ : Fin numPairWords) = case_000198_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000198_rank.val, hlt⟩ case_000198_mask =
        case_000198_seq := by
    simpa [hrank] using case_000198_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000198_rank.val, hlt⟩ case_000198_mask =
        case_000198_b := by
    simpa [hrank] using case_000198_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000198_support case_000198_rank.val hlt
          case_000198_mask = case_000198_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000198_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000198_support case_000198_rank.val hlt
          case_000198_mask = case_000198_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000198_secondLine_eq]
  have case_000198_rowFirst :
      EqEqPosRow (FirstLineAt case_000198_support case_000198_rank.val hlt case_000198_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000198_firstLine, EqEqPosRow]
  have case_000198_fixedSecond :
      FixedRow (SecondLineAt case_000198_support case_000198_rank.val hlt case_000198_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000198_secondLine, FixedRow]
  exact ⟨case_000198_rowFirst, case_000198_fixedSecond⟩

private theorem case_000198_existsRows :
    ExistsEqEqPosVarFirstRows case_000198_rank.val case_000198_mask :=
  ⟨case_000198_support, case_000198_sourceAgrees, case_000198_rows⟩

private theorem case_000198_covered :
    RowPropertyParametricCovered case_000198_rank.val case_000198_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000198_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000199_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000199_mask : SignMask := ⟨24, by decide⟩
private def case_000199_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000199_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000199_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000199_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000199_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000199_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000199_rankWord :
    rankPairWord? case_000199_word = some case_000199_rank := by
  decide

private theorem case_000199_unrank :
    unrankPairWord case_000199_rank = case_000199_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000199_word case_000199_rank).1
    case_000199_rankWord |>.symm

private theorem case_000199_seqChoice :
    translationChoiceSeq case_000199_word case_000199_mask = case_000199_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000199_seqAtRank :
    translationSeqAtRankMask case_000199_rank case_000199_mask = case_000199_seq := by
  rw [translationSeqAtRankMask, case_000199_unrank]
  exact case_000199_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000199_bAtRank :
    translationBAtRankMask case_000199_rank case_000199_mask = case_000199_b := by
  rw [translationBAtRankMask, case_000199_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000199_b, case_000199_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000199_firstLine_eq :
    case_000199_support.firstLine case_000199_seq case_000199_b = case_000199_firstLine := by
  norm_num [case_000199_firstLine, case_000199_support, case_000199_seq, case_000199_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000199_secondLine_eq :
    case_000199_support.secondLine case_000199_seq case_000199_b = case_000199_secondLine := by
  norm_num [case_000199_secondLine, case_000199_support, case_000199_seq, case_000199_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000199_sourceAgrees :
    SourceAgrees case_000199_support case_000199_rank.val case_000199_mask := by
  intro hlt
  have hrank : (⟨case_000199_rank.val, hlt⟩ : Fin numPairWords) = case_000199_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000199_rank.val, hlt⟩ case_000199_mask =
        case_000199_seq := by
    simpa [hrank] using case_000199_seqAtRank
  simp [SourceChecks, hseq, case_000199_support,
    checkTranslationConstraintSource, case_000199_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000199_rows :
    EqEqPosVarFirstRows case_000199_support case_000199_rank.val case_000199_mask := by
  intro hlt
  have hrank : (⟨case_000199_rank.val, hlt⟩ : Fin numPairWords) = case_000199_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000199_rank.val, hlt⟩ case_000199_mask =
        case_000199_seq := by
    simpa [hrank] using case_000199_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000199_rank.val, hlt⟩ case_000199_mask =
        case_000199_b := by
    simpa [hrank] using case_000199_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000199_support case_000199_rank.val hlt
          case_000199_mask = case_000199_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000199_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000199_support case_000199_rank.val hlt
          case_000199_mask = case_000199_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000199_secondLine_eq]
  have case_000199_rowFirst :
      EqEqPosRow (FirstLineAt case_000199_support case_000199_rank.val hlt case_000199_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000199_firstLine, EqEqPosRow]
  have case_000199_fixedSecond :
      FixedRow (SecondLineAt case_000199_support case_000199_rank.val hlt case_000199_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000199_secondLine, FixedRow]
  exact ⟨case_000199_rowFirst, case_000199_fixedSecond⟩

private theorem case_000199_existsRows :
    ExistsEqEqPosVarFirstRows case_000199_rank.val case_000199_mask :=
  ⟨case_000199_support, case_000199_sourceAgrees, case_000199_rows⟩

private theorem case_000199_covered :
    RowPropertyParametricCovered case_000199_rank.val case_000199_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000199_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000200_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000200_mask : SignMask := ⟨28, by decide⟩
private def case_000200_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000200_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000200_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000200_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000200_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000200_secondLine : StrictLin2 := { a := (1/4), b := (-1/4), c := (-1/2) }

private theorem case_000200_rankWord :
    rankPairWord? case_000200_word = some case_000200_rank := by
  decide

private theorem case_000200_unrank :
    unrankPairWord case_000200_rank = case_000200_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000200_word case_000200_rank).1
    case_000200_rankWord |>.symm

private theorem case_000200_seqChoice :
    translationChoiceSeq case_000200_word case_000200_mask = case_000200_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000200_seqAtRank :
    translationSeqAtRankMask case_000200_rank case_000200_mask = case_000200_seq := by
  rw [translationSeqAtRankMask, case_000200_unrank]
  exact case_000200_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000200_bAtRank :
    translationBAtRankMask case_000200_rank case_000200_mask = case_000200_b := by
  rw [translationBAtRankMask, case_000200_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000200_b, case_000200_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000200_firstLine_eq :
    case_000200_support.firstLine case_000200_seq case_000200_b = case_000200_firstLine := by
  norm_num [case_000200_firstLine, case_000200_support, case_000200_seq, case_000200_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000200_secondLine_eq :
    case_000200_support.secondLine case_000200_seq case_000200_b = case_000200_secondLine := by
  norm_num [case_000200_secondLine, case_000200_support, case_000200_seq, case_000200_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000200_sourceAgrees :
    SourceAgrees case_000200_support case_000200_rank.val case_000200_mask := by
  intro hlt
  have hrank : (⟨case_000200_rank.val, hlt⟩ : Fin numPairWords) = case_000200_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000200_rank.val, hlt⟩ case_000200_mask =
        case_000200_seq := by
    simpa [hrank] using case_000200_seqAtRank
  simp [SourceChecks, hseq, case_000200_support,
    checkTranslationConstraintSource, case_000200_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000200_rows :
    OppMinusOneVarSecondRows case_000200_support case_000200_rank.val case_000200_mask := by
  intro hlt
  have hrank : (⟨case_000200_rank.val, hlt⟩ : Fin numPairWords) = case_000200_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000200_rank.val, hlt⟩ case_000200_mask =
        case_000200_seq := by
    simpa [hrank] using case_000200_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000200_rank.val, hlt⟩ case_000200_mask =
        case_000200_b := by
    simpa [hrank] using case_000200_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000200_support case_000200_rank.val hlt
          case_000200_mask = case_000200_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000200_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000200_support case_000200_rank.val hlt
          case_000200_mask = case_000200_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000200_secondLine_eq]
  have case_000200_fixedFirst :
      FixedRow (FirstLineAt case_000200_support case_000200_rank.val hlt case_000200_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000200_firstLine, FixedRow]
  have case_000200_rowSecond :
      OppNegRow (SecondLineAt case_000200_support case_000200_rank.val hlt case_000200_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000200_secondLine, OppNegRow]
  exact ⟨case_000200_fixedFirst, case_000200_rowSecond⟩

private theorem case_000200_existsRows :
    ExistsOppMinusOneVarSecondRows case_000200_rank.val case_000200_mask :=
  ⟨case_000200_support, case_000200_sourceAgrees, case_000200_rows⟩

private theorem case_000200_covered :
    RowPropertyParametricCovered case_000200_rank.val case_000200_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000200_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000201_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000201_mask : SignMask := ⟨29, by decide⟩
private def case_000201_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000201_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000201_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000201_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000201_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000201_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000201_rankWord :
    rankPairWord? case_000201_word = some case_000201_rank := by
  decide

private theorem case_000201_unrank :
    unrankPairWord case_000201_rank = case_000201_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000201_word case_000201_rank).1
    case_000201_rankWord |>.symm

private theorem case_000201_seqChoice :
    translationChoiceSeq case_000201_word case_000201_mask = case_000201_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000201_seqAtRank :
    translationSeqAtRankMask case_000201_rank case_000201_mask = case_000201_seq := by
  rw [translationSeqAtRankMask, case_000201_unrank]
  exact case_000201_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000201_bAtRank :
    translationBAtRankMask case_000201_rank case_000201_mask = case_000201_b := by
  rw [translationBAtRankMask, case_000201_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000201_b, case_000201_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000201_firstLine_eq :
    case_000201_support.firstLine case_000201_seq case_000201_b = case_000201_firstLine := by
  norm_num [case_000201_firstLine, case_000201_support, case_000201_seq, case_000201_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000201_secondLine_eq :
    case_000201_support.secondLine case_000201_seq case_000201_b = case_000201_secondLine := by
  norm_num [case_000201_secondLine, case_000201_support, case_000201_seq, case_000201_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000201_sourceAgrees :
    SourceAgrees case_000201_support case_000201_rank.val case_000201_mask := by
  intro hlt
  have hrank : (⟨case_000201_rank.val, hlt⟩ : Fin numPairWords) = case_000201_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000201_rank.val, hlt⟩ case_000201_mask =
        case_000201_seq := by
    simpa [hrank] using case_000201_seqAtRank
  simp [SourceChecks, hseq, case_000201_support,
    checkTranslationConstraintSource, case_000201_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000201_rows :
    EqEqPosVarSecondRows case_000201_support case_000201_rank.val case_000201_mask := by
  intro hlt
  have hrank : (⟨case_000201_rank.val, hlt⟩ : Fin numPairWords) = case_000201_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000201_rank.val, hlt⟩ case_000201_mask =
        case_000201_seq := by
    simpa [hrank] using case_000201_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000201_rank.val, hlt⟩ case_000201_mask =
        case_000201_b := by
    simpa [hrank] using case_000201_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000201_support case_000201_rank.val hlt
          case_000201_mask = case_000201_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000201_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000201_support case_000201_rank.val hlt
          case_000201_mask = case_000201_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000201_secondLine_eq]
  have case_000201_fixedFirst :
      FixedRow (FirstLineAt case_000201_support case_000201_rank.val hlt case_000201_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000201_firstLine, FixedRow]
  have case_000201_rowSecond :
      EqEqPosRow (SecondLineAt case_000201_support case_000201_rank.val hlt case_000201_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000201_secondLine, EqEqPosRow]
  exact ⟨case_000201_fixedFirst, case_000201_rowSecond⟩

private theorem case_000201_existsRows :
    ExistsEqEqPosVarSecondRows case_000201_rank.val case_000201_mask :=
  ⟨case_000201_support, case_000201_sourceAgrees, case_000201_rows⟩

private theorem case_000201_covered :
    RowPropertyParametricCovered case_000201_rank.val case_000201_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000201_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000202_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000202_mask : SignMask := ⟨30, by decide⟩
private def case_000202_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000202_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000202_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000202_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000202_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000202_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000202_rankWord :
    rankPairWord? case_000202_word = some case_000202_rank := by
  decide

private theorem case_000202_unrank :
    unrankPairWord case_000202_rank = case_000202_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000202_word case_000202_rank).1
    case_000202_rankWord |>.symm

private theorem case_000202_seqChoice :
    translationChoiceSeq case_000202_word case_000202_mask = case_000202_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000202_seqAtRank :
    translationSeqAtRankMask case_000202_rank case_000202_mask = case_000202_seq := by
  rw [translationSeqAtRankMask, case_000202_unrank]
  exact case_000202_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000202_bAtRank :
    translationBAtRankMask case_000202_rank case_000202_mask = case_000202_b := by
  rw [translationBAtRankMask, case_000202_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000202_b, case_000202_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000202_firstLine_eq :
    case_000202_support.firstLine case_000202_seq case_000202_b = case_000202_firstLine := by
  norm_num [case_000202_firstLine, case_000202_support, case_000202_seq, case_000202_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000202_secondLine_eq :
    case_000202_support.secondLine case_000202_seq case_000202_b = case_000202_secondLine := by
  norm_num [case_000202_secondLine, case_000202_support, case_000202_seq, case_000202_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000202_sourceAgrees :
    SourceAgrees case_000202_support case_000202_rank.val case_000202_mask := by
  intro hlt
  have hrank : (⟨case_000202_rank.val, hlt⟩ : Fin numPairWords) = case_000202_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000202_rank.val, hlt⟩ case_000202_mask =
        case_000202_seq := by
    simpa [hrank] using case_000202_seqAtRank
  simp [SourceChecks, hseq, case_000202_support,
    checkTranslationConstraintSource, case_000202_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000202_rows :
    EqEqPosVarFirstRows case_000202_support case_000202_rank.val case_000202_mask := by
  intro hlt
  have hrank : (⟨case_000202_rank.val, hlt⟩ : Fin numPairWords) = case_000202_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000202_rank.val, hlt⟩ case_000202_mask =
        case_000202_seq := by
    simpa [hrank] using case_000202_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000202_rank.val, hlt⟩ case_000202_mask =
        case_000202_b := by
    simpa [hrank] using case_000202_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000202_support case_000202_rank.val hlt
          case_000202_mask = case_000202_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000202_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000202_support case_000202_rank.val hlt
          case_000202_mask = case_000202_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000202_secondLine_eq]
  have case_000202_rowFirst :
      EqEqPosRow (FirstLineAt case_000202_support case_000202_rank.val hlt case_000202_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000202_firstLine, EqEqPosRow]
  have case_000202_fixedSecond :
      FixedRow (SecondLineAt case_000202_support case_000202_rank.val hlt case_000202_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000202_secondLine, FixedRow]
  exact ⟨case_000202_rowFirst, case_000202_fixedSecond⟩

private theorem case_000202_existsRows :
    ExistsEqEqPosVarFirstRows case_000202_rank.val case_000202_mask :=
  ⟨case_000202_support, case_000202_sourceAgrees, case_000202_rows⟩

private theorem case_000202_covered :
    RowPropertyParametricCovered case_000202_rank.val case_000202_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000202_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000203_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000203_mask : SignMask := ⟨31, by decide⟩
private def case_000203_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000203_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000203_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000203_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000203_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-75/17) }
private def case_000203_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000203_rankWord :
    rankPairWord? case_000203_word = some case_000203_rank := by
  decide

private theorem case_000203_unrank :
    unrankPairWord case_000203_rank = case_000203_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000203_word case_000203_rank).1
    case_000203_rankWord |>.symm

private theorem case_000203_seqChoice :
    translationChoiceSeq case_000203_word case_000203_mask = case_000203_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000203_seqAtRank :
    translationSeqAtRankMask case_000203_rank case_000203_mask = case_000203_seq := by
  rw [translationSeqAtRankMask, case_000203_unrank]
  exact case_000203_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000203_bAtRank :
    translationBAtRankMask case_000203_rank case_000203_mask = case_000203_b := by
  rw [translationBAtRankMask, case_000203_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000203_b, case_000203_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000203_firstLine_eq :
    case_000203_support.firstLine case_000203_seq case_000203_b = case_000203_firstLine := by
  norm_num [case_000203_firstLine, case_000203_support, case_000203_seq, case_000203_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000203_secondLine_eq :
    case_000203_support.secondLine case_000203_seq case_000203_b = case_000203_secondLine := by
  norm_num [case_000203_secondLine, case_000203_support, case_000203_seq, case_000203_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000203_sourceAgrees :
    SourceAgrees case_000203_support case_000203_rank.val case_000203_mask := by
  intro hlt
  have hrank : (⟨case_000203_rank.val, hlt⟩ : Fin numPairWords) = case_000203_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000203_rank.val, hlt⟩ case_000203_mask =
        case_000203_seq := by
    simpa [hrank] using case_000203_seqAtRank
  simp [SourceChecks, hseq, case_000203_support,
    checkTranslationConstraintSource, case_000203_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000203_rows :
    EqEqPosVarFirstRows case_000203_support case_000203_rank.val case_000203_mask := by
  intro hlt
  have hrank : (⟨case_000203_rank.val, hlt⟩ : Fin numPairWords) = case_000203_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000203_rank.val, hlt⟩ case_000203_mask =
        case_000203_seq := by
    simpa [hrank] using case_000203_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000203_rank.val, hlt⟩ case_000203_mask =
        case_000203_b := by
    simpa [hrank] using case_000203_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000203_support case_000203_rank.val hlt
          case_000203_mask = case_000203_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000203_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000203_support case_000203_rank.val hlt
          case_000203_mask = case_000203_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000203_secondLine_eq]
  have case_000203_rowFirst :
      EqEqPosRow (FirstLineAt case_000203_support case_000203_rank.val hlt case_000203_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000203_firstLine, EqEqPosRow]
  have case_000203_fixedSecond :
      FixedRow (SecondLineAt case_000203_support case_000203_rank.val hlt case_000203_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000203_secondLine, FixedRow]
  exact ⟨case_000203_rowFirst, case_000203_fixedSecond⟩

private theorem case_000203_existsRows :
    ExistsEqEqPosVarFirstRows case_000203_rank.val case_000203_mask :=
  ⟨case_000203_support, case_000203_sourceAgrees, case_000203_rows⟩

private theorem case_000203_covered :
    RowPropertyParametricCovered case_000203_rank.val case_000203_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000203_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000204_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000204_mask : SignMask := ⟨45, by decide⟩
private def case_000204_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000204_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000204_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000204_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000204_firstLine : StrictLin2 := { a := (-3/5), b := (-3/5), c := (-11/3) }
private def case_000204_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000204_rankWord :
    rankPairWord? case_000204_word = some case_000204_rank := by
  decide

private theorem case_000204_unrank :
    unrankPairWord case_000204_rank = case_000204_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000204_word case_000204_rank).1
    case_000204_rankWord |>.symm

private theorem case_000204_seqChoice :
    translationChoiceSeq case_000204_word case_000204_mask = case_000204_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000204_seqAtRank :
    translationSeqAtRankMask case_000204_rank case_000204_mask = case_000204_seq := by
  rw [translationSeqAtRankMask, case_000204_unrank]
  exact case_000204_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000204_bAtRank :
    translationBAtRankMask case_000204_rank case_000204_mask = case_000204_b := by
  rw [translationBAtRankMask, case_000204_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000204_b, case_000204_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000204_firstLine_eq :
    case_000204_support.firstLine case_000204_seq case_000204_b = case_000204_firstLine := by
  norm_num [case_000204_firstLine, case_000204_support, case_000204_seq, case_000204_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000204_secondLine_eq :
    case_000204_support.secondLine case_000204_seq case_000204_b = case_000204_secondLine := by
  norm_num [case_000204_secondLine, case_000204_support, case_000204_seq, case_000204_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000204_sourceAgrees :
    SourceAgrees case_000204_support case_000204_rank.val case_000204_mask := by
  intro hlt
  have hrank : (⟨case_000204_rank.val, hlt⟩ : Fin numPairWords) = case_000204_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000204_rank.val, hlt⟩ case_000204_mask =
        case_000204_seq := by
    simpa [hrank] using case_000204_seqAtRank
  simp [SourceChecks, hseq, case_000204_support,
    checkTranslationConstraintSource, case_000204_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000204_rows :
    EqEqPosVarFirstRows case_000204_support case_000204_rank.val case_000204_mask := by
  intro hlt
  have hrank : (⟨case_000204_rank.val, hlt⟩ : Fin numPairWords) = case_000204_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000204_rank.val, hlt⟩ case_000204_mask =
        case_000204_seq := by
    simpa [hrank] using case_000204_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000204_rank.val, hlt⟩ case_000204_mask =
        case_000204_b := by
    simpa [hrank] using case_000204_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000204_support case_000204_rank.val hlt
          case_000204_mask = case_000204_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000204_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000204_support case_000204_rank.val hlt
          case_000204_mask = case_000204_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000204_secondLine_eq]
  have case_000204_rowFirst :
      EqEqPosRow (FirstLineAt case_000204_support case_000204_rank.val hlt case_000204_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000204_firstLine, EqEqPosRow]
  have case_000204_fixedSecond :
      FixedRow (SecondLineAt case_000204_support case_000204_rank.val hlt case_000204_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000204_secondLine, FixedRow]
  exact ⟨case_000204_rowFirst, case_000204_fixedSecond⟩

private theorem case_000204_existsRows :
    ExistsEqEqPosVarFirstRows case_000204_rank.val case_000204_mask :=
  ⟨case_000204_support, case_000204_sourceAgrees, case_000204_rows⟩

private theorem case_000204_covered :
    RowPropertyParametricCovered case_000204_rank.val case_000204_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000204_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000205_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000205_mask : SignMask := ⟨47, by decide⟩
private def case_000205_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000205_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000205_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000205_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000205_firstLine : StrictLin2 := { a := (-6/11), b := (-6/11), c := (-8/11) }
private def case_000205_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000205_rankWord :
    rankPairWord? case_000205_word = some case_000205_rank := by
  decide

private theorem case_000205_unrank :
    unrankPairWord case_000205_rank = case_000205_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000205_word case_000205_rank).1
    case_000205_rankWord |>.symm

private theorem case_000205_seqChoice :
    translationChoiceSeq case_000205_word case_000205_mask = case_000205_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000205_seqAtRank :
    translationSeqAtRankMask case_000205_rank case_000205_mask = case_000205_seq := by
  rw [translationSeqAtRankMask, case_000205_unrank]
  exact case_000205_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000205_bAtRank :
    translationBAtRankMask case_000205_rank case_000205_mask = case_000205_b := by
  rw [translationBAtRankMask, case_000205_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000205_b, case_000205_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000205_firstLine_eq :
    case_000205_support.firstLine case_000205_seq case_000205_b = case_000205_firstLine := by
  norm_num [case_000205_firstLine, case_000205_support, case_000205_seq, case_000205_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000205_secondLine_eq :
    case_000205_support.secondLine case_000205_seq case_000205_b = case_000205_secondLine := by
  norm_num [case_000205_secondLine, case_000205_support, case_000205_seq, case_000205_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000205_sourceAgrees :
    SourceAgrees case_000205_support case_000205_rank.val case_000205_mask := by
  intro hlt
  have hrank : (⟨case_000205_rank.val, hlt⟩ : Fin numPairWords) = case_000205_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000205_rank.val, hlt⟩ case_000205_mask =
        case_000205_seq := by
    simpa [hrank] using case_000205_seqAtRank
  simp [SourceChecks, hseq, case_000205_support,
    checkTranslationConstraintSource, case_000205_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000205_rows :
    EqEqPosVarFirstRows case_000205_support case_000205_rank.val case_000205_mask := by
  intro hlt
  have hrank : (⟨case_000205_rank.val, hlt⟩ : Fin numPairWords) = case_000205_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000205_rank.val, hlt⟩ case_000205_mask =
        case_000205_seq := by
    simpa [hrank] using case_000205_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000205_rank.val, hlt⟩ case_000205_mask =
        case_000205_b := by
    simpa [hrank] using case_000205_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000205_support case_000205_rank.val hlt
          case_000205_mask = case_000205_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000205_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000205_support case_000205_rank.val hlt
          case_000205_mask = case_000205_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000205_secondLine_eq]
  have case_000205_rowFirst :
      EqEqPosRow (FirstLineAt case_000205_support case_000205_rank.val hlt case_000205_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000205_firstLine, EqEqPosRow]
  have case_000205_fixedSecond :
      FixedRow (SecondLineAt case_000205_support case_000205_rank.val hlt case_000205_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000205_secondLine, FixedRow]
  exact ⟨case_000205_rowFirst, case_000205_fixedSecond⟩

private theorem case_000205_existsRows :
    ExistsEqEqPosVarFirstRows case_000205_rank.val case_000205_mask :=
  ⟨case_000205_support, case_000205_sourceAgrees, case_000205_rows⟩

private theorem case_000205_covered :
    RowPropertyParametricCovered case_000205_rank.val case_000205_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000205_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000206_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000206_mask : SignMask := ⟨54, by decide⟩
private def case_000206_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000206_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000206_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000206_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000206_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000206_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000206_rankWord :
    rankPairWord? case_000206_word = some case_000206_rank := by
  decide

private theorem case_000206_unrank :
    unrankPairWord case_000206_rank = case_000206_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000206_word case_000206_rank).1
    case_000206_rankWord |>.symm

private theorem case_000206_seqChoice :
    translationChoiceSeq case_000206_word case_000206_mask = case_000206_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000206_seqAtRank :
    translationSeqAtRankMask case_000206_rank case_000206_mask = case_000206_seq := by
  rw [translationSeqAtRankMask, case_000206_unrank]
  exact case_000206_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000206_bAtRank :
    translationBAtRankMask case_000206_rank case_000206_mask = case_000206_b := by
  rw [translationBAtRankMask, case_000206_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000206_b, case_000206_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000206_firstLine_eq :
    case_000206_support.firstLine case_000206_seq case_000206_b = case_000206_firstLine := by
  norm_num [case_000206_firstLine, case_000206_support, case_000206_seq, case_000206_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000206_secondLine_eq :
    case_000206_support.secondLine case_000206_seq case_000206_b = case_000206_secondLine := by
  norm_num [case_000206_secondLine, case_000206_support, case_000206_seq, case_000206_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000206_sourceAgrees :
    SourceAgrees case_000206_support case_000206_rank.val case_000206_mask := by
  intro hlt
  have hrank : (⟨case_000206_rank.val, hlt⟩ : Fin numPairWords) = case_000206_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000206_rank.val, hlt⟩ case_000206_mask =
        case_000206_seq := by
    simpa [hrank] using case_000206_seqAtRank
  simp [SourceChecks, hseq, case_000206_support,
    checkTranslationConstraintSource, case_000206_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000206_rows :
    OppOneMinusVarFirstRows case_000206_support case_000206_rank.val case_000206_mask := by
  intro hlt
  have hrank : (⟨case_000206_rank.val, hlt⟩ : Fin numPairWords) = case_000206_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000206_rank.val, hlt⟩ case_000206_mask =
        case_000206_seq := by
    simpa [hrank] using case_000206_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000206_rank.val, hlt⟩ case_000206_mask =
        case_000206_b := by
    simpa [hrank] using case_000206_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000206_support case_000206_rank.val hlt
          case_000206_mask = case_000206_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000206_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000206_support case_000206_rank.val hlt
          case_000206_mask = case_000206_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000206_secondLine_eq]
  have case_000206_rowFirst :
      OppPosRow (FirstLineAt case_000206_support case_000206_rank.val hlt case_000206_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000206_firstLine, OppPosRow]
  have case_000206_fixedSecond :
      FixedRow (SecondLineAt case_000206_support case_000206_rank.val hlt case_000206_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000206_secondLine, FixedRow]
  exact ⟨case_000206_rowFirst, case_000206_fixedSecond⟩

private theorem case_000206_existsRows :
    ExistsOppOneMinusVarFirstRows case_000206_rank.val case_000206_mask :=
  ⟨case_000206_support, case_000206_sourceAgrees, case_000206_rows⟩

private theorem case_000206_covered :
    RowPropertyParametricCovered case_000206_rank.val case_000206_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000206_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000207_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000207_mask : SignMask := ⟨55, by decide⟩
private def case_000207_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000207_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000207_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000207_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000207_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000207_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000207_rankWord :
    rankPairWord? case_000207_word = some case_000207_rank := by
  decide

private theorem case_000207_unrank :
    unrankPairWord case_000207_rank = case_000207_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000207_word case_000207_rank).1
    case_000207_rankWord |>.symm

private theorem case_000207_seqChoice :
    translationChoiceSeq case_000207_word case_000207_mask = case_000207_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000207_seqAtRank :
    translationSeqAtRankMask case_000207_rank case_000207_mask = case_000207_seq := by
  rw [translationSeqAtRankMask, case_000207_unrank]
  exact case_000207_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000207_bAtRank :
    translationBAtRankMask case_000207_rank case_000207_mask = case_000207_b := by
  rw [translationBAtRankMask, case_000207_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000207_b, case_000207_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000207_firstLine_eq :
    case_000207_support.firstLine case_000207_seq case_000207_b = case_000207_firstLine := by
  norm_num [case_000207_firstLine, case_000207_support, case_000207_seq, case_000207_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000207_secondLine_eq :
    case_000207_support.secondLine case_000207_seq case_000207_b = case_000207_secondLine := by
  norm_num [case_000207_secondLine, case_000207_support, case_000207_seq, case_000207_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000207_sourceAgrees :
    SourceAgrees case_000207_support case_000207_rank.val case_000207_mask := by
  intro hlt
  have hrank : (⟨case_000207_rank.val, hlt⟩ : Fin numPairWords) = case_000207_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000207_rank.val, hlt⟩ case_000207_mask =
        case_000207_seq := by
    simpa [hrank] using case_000207_seqAtRank
  simp [SourceChecks, hseq, case_000207_support,
    checkTranslationConstraintSource, case_000207_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000207_rows :
    OppOneMinusVarFirstRows case_000207_support case_000207_rank.val case_000207_mask := by
  intro hlt
  have hrank : (⟨case_000207_rank.val, hlt⟩ : Fin numPairWords) = case_000207_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000207_rank.val, hlt⟩ case_000207_mask =
        case_000207_seq := by
    simpa [hrank] using case_000207_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000207_rank.val, hlt⟩ case_000207_mask =
        case_000207_b := by
    simpa [hrank] using case_000207_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000207_support case_000207_rank.val hlt
          case_000207_mask = case_000207_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000207_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000207_support case_000207_rank.val hlt
          case_000207_mask = case_000207_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000207_secondLine_eq]
  have case_000207_rowFirst :
      OppPosRow (FirstLineAt case_000207_support case_000207_rank.val hlt case_000207_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000207_firstLine, OppPosRow]
  have case_000207_fixedSecond :
      FixedRow (SecondLineAt case_000207_support case_000207_rank.val hlt case_000207_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000207_secondLine, FixedRow]
  exact ⟨case_000207_rowFirst, case_000207_fixedSecond⟩

private theorem case_000207_existsRows :
    ExistsOppOneMinusVarFirstRows case_000207_rank.val case_000207_mask :=
  ⟨case_000207_support, case_000207_sourceAgrees, case_000207_rows⟩

private theorem case_000207_covered :
    RowPropertyParametricCovered case_000207_rank.val case_000207_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000207_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000208_rank : Fin numPairWords := ⟨47, by decide⟩
private def case_000208_mask : SignMask := ⟨63, by decide⟩
private def case_000208_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000208_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000208_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000208_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000208_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000208_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000208_rankWord :
    rankPairWord? case_000208_word = some case_000208_rank := by
  decide

private theorem case_000208_unrank :
    unrankPairWord case_000208_rank = case_000208_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000208_word case_000208_rank).1
    case_000208_rankWord |>.symm

private theorem case_000208_seqChoice :
    translationChoiceSeq case_000208_word case_000208_mask = case_000208_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000208_seqAtRank :
    translationSeqAtRankMask case_000208_rank case_000208_mask = case_000208_seq := by
  rw [translationSeqAtRankMask, case_000208_unrank]
  exact case_000208_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000208_bAtRank :
    translationBAtRankMask case_000208_rank case_000208_mask = case_000208_b := by
  rw [translationBAtRankMask, case_000208_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000208_b, case_000208_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000208_firstLine_eq :
    case_000208_support.firstLine case_000208_seq case_000208_b = case_000208_firstLine := by
  norm_num [case_000208_firstLine, case_000208_support, case_000208_seq, case_000208_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000208_secondLine_eq :
    case_000208_support.secondLine case_000208_seq case_000208_b = case_000208_secondLine := by
  norm_num [case_000208_secondLine, case_000208_support, case_000208_seq, case_000208_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000208_sourceAgrees :
    SourceAgrees case_000208_support case_000208_rank.val case_000208_mask := by
  intro hlt
  have hrank : (⟨case_000208_rank.val, hlt⟩ : Fin numPairWords) = case_000208_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000208_rank.val, hlt⟩ case_000208_mask =
        case_000208_seq := by
    simpa [hrank] using case_000208_seqAtRank
  simp [SourceChecks, hseq, case_000208_support,
    checkTranslationConstraintSource, case_000208_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000208_rows :
    EqEqPosVarFirstRows case_000208_support case_000208_rank.val case_000208_mask := by
  intro hlt
  have hrank : (⟨case_000208_rank.val, hlt⟩ : Fin numPairWords) = case_000208_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000208_rank.val, hlt⟩ case_000208_mask =
        case_000208_seq := by
    simpa [hrank] using case_000208_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000208_rank.val, hlt⟩ case_000208_mask =
        case_000208_b := by
    simpa [hrank] using case_000208_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000208_support case_000208_rank.val hlt
          case_000208_mask = case_000208_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000208_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000208_support case_000208_rank.val hlt
          case_000208_mask = case_000208_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000208_secondLine_eq]
  have case_000208_rowFirst :
      EqEqPosRow (FirstLineAt case_000208_support case_000208_rank.val hlt case_000208_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000208_firstLine, EqEqPosRow]
  have case_000208_fixedSecond :
      FixedRow (SecondLineAt case_000208_support case_000208_rank.val hlt case_000208_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000208_secondLine, FixedRow]
  exact ⟨case_000208_rowFirst, case_000208_fixedSecond⟩

private theorem case_000208_existsRows :
    ExistsEqEqPosVarFirstRows case_000208_rank.val case_000208_mask :=
  ⟨case_000208_support, case_000208_sourceAgrees, case_000208_rows⟩

private theorem case_000208_covered :
    RowPropertyParametricCovered case_000208_rank.val case_000208_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000208_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000209_rank : Fin numPairWords := ⟨49, by decide⟩
private def case_000209_mask : SignMask := ⟨13, by decide⟩
private def case_000209_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000209_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000209_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000209_b : Vec3 Rat := { x := (-236/27), y := (268/27), z := (-172/27) }
private def case_000209_firstLine : StrictLin2 := { a := (-118/83), b := (-118/83), c := (-364/249) }
private def case_000209_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000209_rankWord :
    rankPairWord? case_000209_word = some case_000209_rank := by
  decide

private theorem case_000209_unrank :
    unrankPairWord case_000209_rank = case_000209_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000209_word case_000209_rank).1
    case_000209_rankWord |>.symm

private theorem case_000209_seqChoice :
    translationChoiceSeq case_000209_word case_000209_mask = case_000209_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000209_seqAtRank :
    translationSeqAtRankMask case_000209_rank case_000209_mask = case_000209_seq := by
  rw [translationSeqAtRankMask, case_000209_unrank]
  exact case_000209_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000209_bAtRank :
    translationBAtRankMask case_000209_rank case_000209_mask = case_000209_b := by
  rw [translationBAtRankMask, case_000209_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000209_b, case_000209_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000209_firstLine_eq :
    case_000209_support.firstLine case_000209_seq case_000209_b = case_000209_firstLine := by
  norm_num [case_000209_firstLine, case_000209_support, case_000209_seq, case_000209_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000209_secondLine_eq :
    case_000209_support.secondLine case_000209_seq case_000209_b = case_000209_secondLine := by
  norm_num [case_000209_secondLine, case_000209_support, case_000209_seq, case_000209_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000209_sourceAgrees :
    SourceAgrees case_000209_support case_000209_rank.val case_000209_mask := by
  intro hlt
  have hrank : (⟨case_000209_rank.val, hlt⟩ : Fin numPairWords) = case_000209_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000209_rank.val, hlt⟩ case_000209_mask =
        case_000209_seq := by
    simpa [hrank] using case_000209_seqAtRank
  simp [SourceChecks, hseq, case_000209_support,
    checkTranslationConstraintSource, case_000209_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000209_rows :
    EqEqPosVarFirstRows case_000209_support case_000209_rank.val case_000209_mask := by
  intro hlt
  have hrank : (⟨case_000209_rank.val, hlt⟩ : Fin numPairWords) = case_000209_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000209_rank.val, hlt⟩ case_000209_mask =
        case_000209_seq := by
    simpa [hrank] using case_000209_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000209_rank.val, hlt⟩ case_000209_mask =
        case_000209_b := by
    simpa [hrank] using case_000209_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000209_support case_000209_rank.val hlt
          case_000209_mask = case_000209_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000209_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000209_support case_000209_rank.val hlt
          case_000209_mask = case_000209_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000209_secondLine_eq]
  have case_000209_rowFirst :
      EqEqPosRow (FirstLineAt case_000209_support case_000209_rank.val hlt case_000209_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000209_firstLine, EqEqPosRow]
  have case_000209_fixedSecond :
      FixedRow (SecondLineAt case_000209_support case_000209_rank.val hlt case_000209_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000209_secondLine, FixedRow]
  exact ⟨case_000209_rowFirst, case_000209_fixedSecond⟩

private theorem case_000209_existsRows :
    ExistsEqEqPosVarFirstRows case_000209_rank.val case_000209_mask :=
  ⟨case_000209_support, case_000209_sourceAgrees, case_000209_rows⟩

private theorem case_000209_covered :
    RowPropertyParametricCovered case_000209_rank.val case_000209_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000209_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000210_rank : Fin numPairWords := ⟨49, by decide⟩
private def case_000210_mask : SignMask := ⟨16, by decide⟩
private def case_000210_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000210_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000210_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000210_b : Vec3 Rat := { x := (-28/27), y := (-316/27), z := (-284/27) }
private def case_000210_firstLine : StrictLin2 := { a := -1, b := -1, c := (-293/7) }
private def case_000210_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000210_rankWord :
    rankPairWord? case_000210_word = some case_000210_rank := by
  decide

private theorem case_000210_unrank :
    unrankPairWord case_000210_rank = case_000210_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000210_word case_000210_rank).1
    case_000210_rankWord |>.symm

private theorem case_000210_seqChoice :
    translationChoiceSeq case_000210_word case_000210_mask = case_000210_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000210_seqAtRank :
    translationSeqAtRankMask case_000210_rank case_000210_mask = case_000210_seq := by
  rw [translationSeqAtRankMask, case_000210_unrank]
  exact case_000210_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000210_bAtRank :
    translationBAtRankMask case_000210_rank case_000210_mask = case_000210_b := by
  rw [translationBAtRankMask, case_000210_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000210_b, case_000210_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000210_firstLine_eq :
    case_000210_support.firstLine case_000210_seq case_000210_b = case_000210_firstLine := by
  norm_num [case_000210_firstLine, case_000210_support, case_000210_seq, case_000210_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000210_secondLine_eq :
    case_000210_support.secondLine case_000210_seq case_000210_b = case_000210_secondLine := by
  norm_num [case_000210_secondLine, case_000210_support, case_000210_seq, case_000210_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000210_sourceAgrees :
    SourceAgrees case_000210_support case_000210_rank.val case_000210_mask := by
  intro hlt
  have hrank : (⟨case_000210_rank.val, hlt⟩ : Fin numPairWords) = case_000210_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000210_rank.val, hlt⟩ case_000210_mask =
        case_000210_seq := by
    simpa [hrank] using case_000210_seqAtRank
  simp [SourceChecks, hseq, case_000210_support,
    checkTranslationConstraintSource, case_000210_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000210_rows :
    EqEqPosVarFirstRows case_000210_support case_000210_rank.val case_000210_mask := by
  intro hlt
  have hrank : (⟨case_000210_rank.val, hlt⟩ : Fin numPairWords) = case_000210_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000210_rank.val, hlt⟩ case_000210_mask =
        case_000210_seq := by
    simpa [hrank] using case_000210_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000210_rank.val, hlt⟩ case_000210_mask =
        case_000210_b := by
    simpa [hrank] using case_000210_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000210_support case_000210_rank.val hlt
          case_000210_mask = case_000210_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000210_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000210_support case_000210_rank.val hlt
          case_000210_mask = case_000210_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000210_secondLine_eq]
  have case_000210_rowFirst :
      EqEqPosRow (FirstLineAt case_000210_support case_000210_rank.val hlt case_000210_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000210_firstLine, EqEqPosRow]
  have case_000210_fixedSecond :
      FixedRow (SecondLineAt case_000210_support case_000210_rank.val hlt case_000210_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000210_secondLine, FixedRow]
  exact ⟨case_000210_rowFirst, case_000210_fixedSecond⟩

private theorem case_000210_existsRows :
    ExistsEqEqPosVarFirstRows case_000210_rank.val case_000210_mask :=
  ⟨case_000210_support, case_000210_sourceAgrees, case_000210_rows⟩

private theorem case_000210_covered :
    RowPropertyParametricCovered case_000210_rank.val case_000210_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000210_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000211_rank : Fin numPairWords := ⟨49, by decide⟩
private def case_000211_mask : SignMask := ⟨24, by decide⟩
private def case_000211_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000211_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000211_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000211_b : Vec3 Rat := { x := (-236/27), y := (-236/27), z := (-172/27) }
private def case_000211_firstLine : StrictLin2 := { a := -1, b := -1, c := (-145/59) }
private def case_000211_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000211_rankWord :
    rankPairWord? case_000211_word = some case_000211_rank := by
  decide

private theorem case_000211_unrank :
    unrankPairWord case_000211_rank = case_000211_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000211_word case_000211_rank).1
    case_000211_rankWord |>.symm

private theorem case_000211_seqChoice :
    translationChoiceSeq case_000211_word case_000211_mask = case_000211_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000211_seqAtRank :
    translationSeqAtRankMask case_000211_rank case_000211_mask = case_000211_seq := by
  rw [translationSeqAtRankMask, case_000211_unrank]
  exact case_000211_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000211_bAtRank :
    translationBAtRankMask case_000211_rank case_000211_mask = case_000211_b := by
  rw [translationBAtRankMask, case_000211_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000211_b, case_000211_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000211_firstLine_eq :
    case_000211_support.firstLine case_000211_seq case_000211_b = case_000211_firstLine := by
  norm_num [case_000211_firstLine, case_000211_support, case_000211_seq, case_000211_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000211_secondLine_eq :
    case_000211_support.secondLine case_000211_seq case_000211_b = case_000211_secondLine := by
  norm_num [case_000211_secondLine, case_000211_support, case_000211_seq, case_000211_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000211_sourceAgrees :
    SourceAgrees case_000211_support case_000211_rank.val case_000211_mask := by
  intro hlt
  have hrank : (⟨case_000211_rank.val, hlt⟩ : Fin numPairWords) = case_000211_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000211_rank.val, hlt⟩ case_000211_mask =
        case_000211_seq := by
    simpa [hrank] using case_000211_seqAtRank
  simp [SourceChecks, hseq, case_000211_support,
    checkTranslationConstraintSource, case_000211_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000211_rows :
    EqEqPosVarFirstRows case_000211_support case_000211_rank.val case_000211_mask := by
  intro hlt
  have hrank : (⟨case_000211_rank.val, hlt⟩ : Fin numPairWords) = case_000211_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000211_rank.val, hlt⟩ case_000211_mask =
        case_000211_seq := by
    simpa [hrank] using case_000211_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000211_rank.val, hlt⟩ case_000211_mask =
        case_000211_b := by
    simpa [hrank] using case_000211_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000211_support case_000211_rank.val hlt
          case_000211_mask = case_000211_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000211_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000211_support case_000211_rank.val hlt
          case_000211_mask = case_000211_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000211_secondLine_eq]
  have case_000211_rowFirst :
      EqEqPosRow (FirstLineAt case_000211_support case_000211_rank.val hlt case_000211_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000211_firstLine, EqEqPosRow]
  have case_000211_fixedSecond :
      FixedRow (SecondLineAt case_000211_support case_000211_rank.val hlt case_000211_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000211_secondLine, FixedRow]
  exact ⟨case_000211_rowFirst, case_000211_fixedSecond⟩

private theorem case_000211_existsRows :
    ExistsEqEqPosVarFirstRows case_000211_rank.val case_000211_mask :=
  ⟨case_000211_support, case_000211_sourceAgrees, case_000211_rows⟩

private theorem case_000211_covered :
    RowPropertyParametricCovered case_000211_rank.val case_000211_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000211_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000212_rank : Fin numPairWords := ⟨49, by decide⟩
private def case_000212_mask : SignMask := ⟨28, by decide⟩
private def case_000212_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000212_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000212_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000212_b : Vec3 Rat := { x := (-380/27), y := (-92/27), z := (-28/27) }
private def case_000212_firstLine : StrictLin2 := { a := (19/13), b := (19/13), c := (-83/13) }
private def case_000212_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000212_rankWord :
    rankPairWord? case_000212_word = some case_000212_rank := by
  decide

private theorem case_000212_unrank :
    unrankPairWord case_000212_rank = case_000212_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000212_word case_000212_rank).1
    case_000212_rankWord |>.symm

private theorem case_000212_seqChoice :
    translationChoiceSeq case_000212_word case_000212_mask = case_000212_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000212_seqAtRank :
    translationSeqAtRankMask case_000212_rank case_000212_mask = case_000212_seq := by
  rw [translationSeqAtRankMask, case_000212_unrank]
  exact case_000212_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000212_bAtRank :
    translationBAtRankMask case_000212_rank case_000212_mask = case_000212_b := by
  rw [translationBAtRankMask, case_000212_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000212_b, case_000212_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000212_firstLine_eq :
    case_000212_support.firstLine case_000212_seq case_000212_b = case_000212_firstLine := by
  norm_num [case_000212_firstLine, case_000212_support, case_000212_seq, case_000212_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000212_secondLine_eq :
    case_000212_support.secondLine case_000212_seq case_000212_b = case_000212_secondLine := by
  norm_num [case_000212_secondLine, case_000212_support, case_000212_seq, case_000212_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000212_sourceAgrees :
    SourceAgrees case_000212_support case_000212_rank.val case_000212_mask := by
  intro hlt
  have hrank : (⟨case_000212_rank.val, hlt⟩ : Fin numPairWords) = case_000212_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000212_rank.val, hlt⟩ case_000212_mask =
        case_000212_seq := by
    simpa [hrank] using case_000212_seqAtRank
  simp [SourceChecks, hseq, case_000212_support,
    checkTranslationConstraintSource, case_000212_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000212_rows :
    EqEqNegVarFirstRows case_000212_support case_000212_rank.val case_000212_mask := by
  intro hlt
  have hrank : (⟨case_000212_rank.val, hlt⟩ : Fin numPairWords) = case_000212_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000212_rank.val, hlt⟩ case_000212_mask =
        case_000212_seq := by
    simpa [hrank] using case_000212_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000212_rank.val, hlt⟩ case_000212_mask =
        case_000212_b := by
    simpa [hrank] using case_000212_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000212_support case_000212_rank.val hlt
          case_000212_mask = case_000212_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000212_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000212_support case_000212_rank.val hlt
          case_000212_mask = case_000212_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000212_secondLine_eq]
  have case_000212_rowFirst :
      EqEqNegRow (FirstLineAt case_000212_support case_000212_rank.val hlt case_000212_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000212_firstLine, EqEqNegRow]
  have case_000212_fixedSecond :
      FixedRow (SecondLineAt case_000212_support case_000212_rank.val hlt case_000212_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000212_secondLine, FixedRow]
  exact ⟨case_000212_rowFirst, case_000212_fixedSecond⟩

private theorem case_000212_existsRows :
    ExistsEqEqNegVarFirstRows case_000212_rank.val case_000212_mask :=
  ⟨case_000212_support, case_000212_sourceAgrees, case_000212_rows⟩

private theorem case_000212_covered :
    RowPropertyParametricCovered case_000212_rank.val case_000212_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000212_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000213_rank : Fin numPairWords := ⟨49, by decide⟩
private def case_000213_mask : SignMask := ⟨29, by decide⟩
private def case_000213_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000213_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000213_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000213_b : Vec3 Rat := { x := (-380/27), y := (124/27), z := (-28/27) }
private def case_000213_firstLine : StrictLin2 := { a := (-190/119), b := (-190/119), c := (-1084/357) }
private def case_000213_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000213_rankWord :
    rankPairWord? case_000213_word = some case_000213_rank := by
  decide

private theorem case_000213_unrank :
    unrankPairWord case_000213_rank = case_000213_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000213_word case_000213_rank).1
    case_000213_rankWord |>.symm

private theorem case_000213_seqChoice :
    translationChoiceSeq case_000213_word case_000213_mask = case_000213_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000213_seqAtRank :
    translationSeqAtRankMask case_000213_rank case_000213_mask = case_000213_seq := by
  rw [translationSeqAtRankMask, case_000213_unrank]
  exact case_000213_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000213_bAtRank :
    translationBAtRankMask case_000213_rank case_000213_mask = case_000213_b := by
  rw [translationBAtRankMask, case_000213_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000213_b, case_000213_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000213_firstLine_eq :
    case_000213_support.firstLine case_000213_seq case_000213_b = case_000213_firstLine := by
  norm_num [case_000213_firstLine, case_000213_support, case_000213_seq, case_000213_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000213_secondLine_eq :
    case_000213_support.secondLine case_000213_seq case_000213_b = case_000213_secondLine := by
  norm_num [case_000213_secondLine, case_000213_support, case_000213_seq, case_000213_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000213_sourceAgrees :
    SourceAgrees case_000213_support case_000213_rank.val case_000213_mask := by
  intro hlt
  have hrank : (⟨case_000213_rank.val, hlt⟩ : Fin numPairWords) = case_000213_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000213_rank.val, hlt⟩ case_000213_mask =
        case_000213_seq := by
    simpa [hrank] using case_000213_seqAtRank
  simp [SourceChecks, hseq, case_000213_support,
    checkTranslationConstraintSource, case_000213_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000213_rows :
    EqEqPosVarFirstRows case_000213_support case_000213_rank.val case_000213_mask := by
  intro hlt
  have hrank : (⟨case_000213_rank.val, hlt⟩ : Fin numPairWords) = case_000213_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000213_rank.val, hlt⟩ case_000213_mask =
        case_000213_seq := by
    simpa [hrank] using case_000213_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000213_rank.val, hlt⟩ case_000213_mask =
        case_000213_b := by
    simpa [hrank] using case_000213_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000213_support case_000213_rank.val hlt
          case_000213_mask = case_000213_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000213_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000213_support case_000213_rank.val hlt
          case_000213_mask = case_000213_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000213_secondLine_eq]
  have case_000213_rowFirst :
      EqEqPosRow (FirstLineAt case_000213_support case_000213_rank.val hlt case_000213_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000213_firstLine, EqEqPosRow]
  have case_000213_fixedSecond :
      FixedRow (SecondLineAt case_000213_support case_000213_rank.val hlt case_000213_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000213_secondLine, FixedRow]
  exact ⟨case_000213_rowFirst, case_000213_fixedSecond⟩

private theorem case_000213_existsRows :
    ExistsEqEqPosVarFirstRows case_000213_rank.val case_000213_mask :=
  ⟨case_000213_support, case_000213_sourceAgrees, case_000213_rows⟩

private theorem case_000213_covered :
    RowPropertyParametricCovered case_000213_rank.val case_000213_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000213_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000214_rank : Fin numPairWords := ⟨49, by decide⟩
private def case_000214_mask : SignMask := ⟨62, by decide⟩
private def case_000214_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000214_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000214_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000214_b : Vec3 Rat := { x := (-332/27), y := (-44/27), z := (428/27) }
private def case_000214_firstLine : StrictLin2 := { a := -1, b := 1, c := (-153/83) }
private def case_000214_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000214_rankWord :
    rankPairWord? case_000214_word = some case_000214_rank := by
  decide

private theorem case_000214_unrank :
    unrankPairWord case_000214_rank = case_000214_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000214_word case_000214_rank).1
    case_000214_rankWord |>.symm

private theorem case_000214_seqChoice :
    translationChoiceSeq case_000214_word case_000214_mask = case_000214_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000214_seqAtRank :
    translationSeqAtRankMask case_000214_rank case_000214_mask = case_000214_seq := by
  rw [translationSeqAtRankMask, case_000214_unrank]
  exact case_000214_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000214_bAtRank :
    translationBAtRankMask case_000214_rank case_000214_mask = case_000214_b := by
  rw [translationBAtRankMask, case_000214_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000214_b, case_000214_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000214_firstLine_eq :
    case_000214_support.firstLine case_000214_seq case_000214_b = case_000214_firstLine := by
  norm_num [case_000214_firstLine, case_000214_support, case_000214_seq, case_000214_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000214_secondLine_eq :
    case_000214_support.secondLine case_000214_seq case_000214_b = case_000214_secondLine := by
  norm_num [case_000214_secondLine, case_000214_support, case_000214_seq, case_000214_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000214_sourceAgrees :
    SourceAgrees case_000214_support case_000214_rank.val case_000214_mask := by
  intro hlt
  have hrank : (⟨case_000214_rank.val, hlt⟩ : Fin numPairWords) = case_000214_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000214_rank.val, hlt⟩ case_000214_mask =
        case_000214_seq := by
    simpa [hrank] using case_000214_seqAtRank
  simp [SourceChecks, hseq, case_000214_support,
    checkTranslationConstraintSource, case_000214_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000214_rows :
    OppOneMinusVarFirstRows case_000214_support case_000214_rank.val case_000214_mask := by
  intro hlt
  have hrank : (⟨case_000214_rank.val, hlt⟩ : Fin numPairWords) = case_000214_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000214_rank.val, hlt⟩ case_000214_mask =
        case_000214_seq := by
    simpa [hrank] using case_000214_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000214_rank.val, hlt⟩ case_000214_mask =
        case_000214_b := by
    simpa [hrank] using case_000214_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000214_support case_000214_rank.val hlt
          case_000214_mask = case_000214_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000214_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000214_support case_000214_rank.val hlt
          case_000214_mask = case_000214_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000214_secondLine_eq]
  have case_000214_rowFirst :
      OppPosRow (FirstLineAt case_000214_support case_000214_rank.val hlt case_000214_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000214_firstLine, OppPosRow]
  have case_000214_fixedSecond :
      FixedRow (SecondLineAt case_000214_support case_000214_rank.val hlt case_000214_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000214_secondLine, FixedRow]
  exact ⟨case_000214_rowFirst, case_000214_fixedSecond⟩

private theorem case_000214_existsRows :
    ExistsOppOneMinusVarFirstRows case_000214_rank.val case_000214_mask :=
  ⟨case_000214_support, case_000214_sourceAgrees, case_000214_rows⟩

private theorem case_000214_covered :
    RowPropertyParametricCovered case_000214_rank.val case_000214_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000214_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000215_rank : Fin numPairWords := ⟨49, by decide⟩
private def case_000215_mask : SignMask := ⟨63, by decide⟩
private def case_000215_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000215_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000215_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000215_b : Vec3 Rat := { x := (-332/27), y := (172/27), z := (428/27) }
private def case_000215_firstLine : StrictLin2 := { a := (-83/233), b := (-83/233), c := (-147/233) }
private def case_000215_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000215_rankWord :
    rankPairWord? case_000215_word = some case_000215_rank := by
  decide

private theorem case_000215_unrank :
    unrankPairWord case_000215_rank = case_000215_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000215_word case_000215_rank).1
    case_000215_rankWord |>.symm

private theorem case_000215_seqChoice :
    translationChoiceSeq case_000215_word case_000215_mask = case_000215_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000215_seqAtRank :
    translationSeqAtRankMask case_000215_rank case_000215_mask = case_000215_seq := by
  rw [translationSeqAtRankMask, case_000215_unrank]
  exact case_000215_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000215_bAtRank :
    translationBAtRankMask case_000215_rank case_000215_mask = case_000215_b := by
  rw [translationBAtRankMask, case_000215_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000215_b, case_000215_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000215_firstLine_eq :
    case_000215_support.firstLine case_000215_seq case_000215_b = case_000215_firstLine := by
  norm_num [case_000215_firstLine, case_000215_support, case_000215_seq, case_000215_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000215_secondLine_eq :
    case_000215_support.secondLine case_000215_seq case_000215_b = case_000215_secondLine := by
  norm_num [case_000215_secondLine, case_000215_support, case_000215_seq, case_000215_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000215_sourceAgrees :
    SourceAgrees case_000215_support case_000215_rank.val case_000215_mask := by
  intro hlt
  have hrank : (⟨case_000215_rank.val, hlt⟩ : Fin numPairWords) = case_000215_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000215_rank.val, hlt⟩ case_000215_mask =
        case_000215_seq := by
    simpa [hrank] using case_000215_seqAtRank
  simp [SourceChecks, hseq, case_000215_support,
    checkTranslationConstraintSource, case_000215_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000215_rows :
    EqEqPosVarFirstRows case_000215_support case_000215_rank.val case_000215_mask := by
  intro hlt
  have hrank : (⟨case_000215_rank.val, hlt⟩ : Fin numPairWords) = case_000215_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000215_rank.val, hlt⟩ case_000215_mask =
        case_000215_seq := by
    simpa [hrank] using case_000215_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000215_rank.val, hlt⟩ case_000215_mask =
        case_000215_b := by
    simpa [hrank] using case_000215_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000215_support case_000215_rank.val hlt
          case_000215_mask = case_000215_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000215_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000215_support case_000215_rank.val hlt
          case_000215_mask = case_000215_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000215_secondLine_eq]
  have case_000215_rowFirst :
      EqEqPosRow (FirstLineAt case_000215_support case_000215_rank.val hlt case_000215_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000215_firstLine, EqEqPosRow]
  have case_000215_fixedSecond :
      FixedRow (SecondLineAt case_000215_support case_000215_rank.val hlt case_000215_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000215_secondLine, FixedRow]
  exact ⟨case_000215_rowFirst, case_000215_fixedSecond⟩

private theorem case_000215_existsRows :
    ExistsEqEqPosVarFirstRows case_000215_rank.val case_000215_mask :=
  ⟨case_000215_support, case_000215_sourceAgrees, case_000215_rows⟩

private theorem case_000215_covered :
    RowPropertyParametricCovered case_000215_rank.val case_000215_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000215_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000216_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000216_mask : SignMask := ⟨8, by decide⟩
private def case_000216_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000216_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000216_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000216_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000216_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000216_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000216_rankWord :
    rankPairWord? case_000216_word = some case_000216_rank := by
  decide

private theorem case_000216_unrank :
    unrankPairWord case_000216_rank = case_000216_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000216_word case_000216_rank).1
    case_000216_rankWord |>.symm

private theorem case_000216_seqChoice :
    translationChoiceSeq case_000216_word case_000216_mask = case_000216_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000216_seqAtRank :
    translationSeqAtRankMask case_000216_rank case_000216_mask = case_000216_seq := by
  rw [translationSeqAtRankMask, case_000216_unrank]
  exact case_000216_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000216_bAtRank :
    translationBAtRankMask case_000216_rank case_000216_mask = case_000216_b := by
  rw [translationBAtRankMask, case_000216_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000216_b, case_000216_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000216_firstLine_eq :
    case_000216_support.firstLine case_000216_seq case_000216_b = case_000216_firstLine := by
  norm_num [case_000216_firstLine, case_000216_support, case_000216_seq, case_000216_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000216_secondLine_eq :
    case_000216_support.secondLine case_000216_seq case_000216_b = case_000216_secondLine := by
  norm_num [case_000216_secondLine, case_000216_support, case_000216_seq, case_000216_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000216_sourceAgrees :
    SourceAgrees case_000216_support case_000216_rank.val case_000216_mask := by
  intro hlt
  have hrank : (⟨case_000216_rank.val, hlt⟩ : Fin numPairWords) = case_000216_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000216_rank.val, hlt⟩ case_000216_mask =
        case_000216_seq := by
    simpa [hrank] using case_000216_seqAtRank
  simp [SourceChecks, hseq, case_000216_support,
    checkTranslationConstraintSource, case_000216_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000216_rows :
    EqEqPosVarFirstRows case_000216_support case_000216_rank.val case_000216_mask := by
  intro hlt
  have hrank : (⟨case_000216_rank.val, hlt⟩ : Fin numPairWords) = case_000216_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000216_rank.val, hlt⟩ case_000216_mask =
        case_000216_seq := by
    simpa [hrank] using case_000216_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000216_rank.val, hlt⟩ case_000216_mask =
        case_000216_b := by
    simpa [hrank] using case_000216_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000216_support case_000216_rank.val hlt
          case_000216_mask = case_000216_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000216_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000216_support case_000216_rank.val hlt
          case_000216_mask = case_000216_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000216_secondLine_eq]
  have case_000216_rowFirst :
      EqEqPosRow (FirstLineAt case_000216_support case_000216_rank.val hlt case_000216_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000216_firstLine, EqEqPosRow]
  have case_000216_fixedSecond :
      FixedRow (SecondLineAt case_000216_support case_000216_rank.val hlt case_000216_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000216_secondLine, FixedRow]
  exact ⟨case_000216_rowFirst, case_000216_fixedSecond⟩

private theorem case_000216_existsRows :
    ExistsEqEqPosVarFirstRows case_000216_rank.val case_000216_mask :=
  ⟨case_000216_support, case_000216_sourceAgrees, case_000216_rows⟩

private theorem case_000216_covered :
    RowPropertyParametricCovered case_000216_rank.val case_000216_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000216_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000217_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000217_mask : SignMask := ⟨9, by decide⟩
private def case_000217_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000217_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000217_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000217_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000217_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000217_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000217_rankWord :
    rankPairWord? case_000217_word = some case_000217_rank := by
  decide

private theorem case_000217_unrank :
    unrankPairWord case_000217_rank = case_000217_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000217_word case_000217_rank).1
    case_000217_rankWord |>.symm

private theorem case_000217_seqChoice :
    translationChoiceSeq case_000217_word case_000217_mask = case_000217_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000217_seqAtRank :
    translationSeqAtRankMask case_000217_rank case_000217_mask = case_000217_seq := by
  rw [translationSeqAtRankMask, case_000217_unrank]
  exact case_000217_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000217_bAtRank :
    translationBAtRankMask case_000217_rank case_000217_mask = case_000217_b := by
  rw [translationBAtRankMask, case_000217_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000217_b, case_000217_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000217_firstLine_eq :
    case_000217_support.firstLine case_000217_seq case_000217_b = case_000217_firstLine := by
  norm_num [case_000217_firstLine, case_000217_support, case_000217_seq, case_000217_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000217_secondLine_eq :
    case_000217_support.secondLine case_000217_seq case_000217_b = case_000217_secondLine := by
  norm_num [case_000217_secondLine, case_000217_support, case_000217_seq, case_000217_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000217_sourceAgrees :
    SourceAgrees case_000217_support case_000217_rank.val case_000217_mask := by
  intro hlt
  have hrank : (⟨case_000217_rank.val, hlt⟩ : Fin numPairWords) = case_000217_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000217_rank.val, hlt⟩ case_000217_mask =
        case_000217_seq := by
    simpa [hrank] using case_000217_seqAtRank
  simp [SourceChecks, hseq, case_000217_support,
    checkTranslationConstraintSource, case_000217_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000217_rows :
    EqEqPosVarFirstRows case_000217_support case_000217_rank.val case_000217_mask := by
  intro hlt
  have hrank : (⟨case_000217_rank.val, hlt⟩ : Fin numPairWords) = case_000217_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000217_rank.val, hlt⟩ case_000217_mask =
        case_000217_seq := by
    simpa [hrank] using case_000217_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000217_rank.val, hlt⟩ case_000217_mask =
        case_000217_b := by
    simpa [hrank] using case_000217_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000217_support case_000217_rank.val hlt
          case_000217_mask = case_000217_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000217_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000217_support case_000217_rank.val hlt
          case_000217_mask = case_000217_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000217_secondLine_eq]
  have case_000217_rowFirst :
      EqEqPosRow (FirstLineAt case_000217_support case_000217_rank.val hlt case_000217_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000217_firstLine, EqEqPosRow]
  have case_000217_fixedSecond :
      FixedRow (SecondLineAt case_000217_support case_000217_rank.val hlt case_000217_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000217_secondLine, FixedRow]
  exact ⟨case_000217_rowFirst, case_000217_fixedSecond⟩

private theorem case_000217_existsRows :
    ExistsEqEqPosVarFirstRows case_000217_rank.val case_000217_mask :=
  ⟨case_000217_support, case_000217_sourceAgrees, case_000217_rows⟩

private theorem case_000217_covered :
    RowPropertyParametricCovered case_000217_rank.val case_000217_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000217_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000218_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000218_mask : SignMask := ⟨13, by decide⟩
private def case_000218_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000218_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000218_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000218_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000218_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000218_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000218_rankWord :
    rankPairWord? case_000218_word = some case_000218_rank := by
  decide

private theorem case_000218_unrank :
    unrankPairWord case_000218_rank = case_000218_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000218_word case_000218_rank).1
    case_000218_rankWord |>.symm

private theorem case_000218_seqChoice :
    translationChoiceSeq case_000218_word case_000218_mask = case_000218_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000218_seqAtRank :
    translationSeqAtRankMask case_000218_rank case_000218_mask = case_000218_seq := by
  rw [translationSeqAtRankMask, case_000218_unrank]
  exact case_000218_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000218_bAtRank :
    translationBAtRankMask case_000218_rank case_000218_mask = case_000218_b := by
  rw [translationBAtRankMask, case_000218_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000218_b, case_000218_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000218_firstLine_eq :
    case_000218_support.firstLine case_000218_seq case_000218_b = case_000218_firstLine := by
  norm_num [case_000218_firstLine, case_000218_support, case_000218_seq, case_000218_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000218_secondLine_eq :
    case_000218_support.secondLine case_000218_seq case_000218_b = case_000218_secondLine := by
  norm_num [case_000218_secondLine, case_000218_support, case_000218_seq, case_000218_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000218_sourceAgrees :
    SourceAgrees case_000218_support case_000218_rank.val case_000218_mask := by
  intro hlt
  have hrank : (⟨case_000218_rank.val, hlt⟩ : Fin numPairWords) = case_000218_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000218_rank.val, hlt⟩ case_000218_mask =
        case_000218_seq := by
    simpa [hrank] using case_000218_seqAtRank
  simp [SourceChecks, hseq, case_000218_support,
    checkTranslationConstraintSource, case_000218_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000218_rows :
    EqEqPosVarSecondRows case_000218_support case_000218_rank.val case_000218_mask := by
  intro hlt
  have hrank : (⟨case_000218_rank.val, hlt⟩ : Fin numPairWords) = case_000218_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000218_rank.val, hlt⟩ case_000218_mask =
        case_000218_seq := by
    simpa [hrank] using case_000218_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000218_rank.val, hlt⟩ case_000218_mask =
        case_000218_b := by
    simpa [hrank] using case_000218_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000218_support case_000218_rank.val hlt
          case_000218_mask = case_000218_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000218_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000218_support case_000218_rank.val hlt
          case_000218_mask = case_000218_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000218_secondLine_eq]
  have case_000218_fixedFirst :
      FixedRow (FirstLineAt case_000218_support case_000218_rank.val hlt case_000218_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000218_firstLine, FixedRow]
  have case_000218_rowSecond :
      EqEqPosRow (SecondLineAt case_000218_support case_000218_rank.val hlt case_000218_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000218_secondLine, EqEqPosRow]
  exact ⟨case_000218_fixedFirst, case_000218_rowSecond⟩

private theorem case_000218_existsRows :
    ExistsEqEqPosVarSecondRows case_000218_rank.val case_000218_mask :=
  ⟨case_000218_support, case_000218_sourceAgrees, case_000218_rows⟩

private theorem case_000218_covered :
    RowPropertyParametricCovered case_000218_rank.val case_000218_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000218_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000219_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000219_mask : SignMask := ⟨16, by decide⟩
private def case_000219_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000219_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000219_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpm
private def case_000219_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (-68/9) }
private def case_000219_firstLine : StrictLin2 := { a := -1, b := -1, c := -83 }
private def case_000219_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000219_rankWord :
    rankPairWord? case_000219_word = some case_000219_rank := by
  decide

private theorem case_000219_unrank :
    unrankPairWord case_000219_rank = case_000219_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000219_word case_000219_rank).1
    case_000219_rankWord |>.symm

private theorem case_000219_seqChoice :
    translationChoiceSeq case_000219_word case_000219_mask = case_000219_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000219_seqAtRank :
    translationSeqAtRankMask case_000219_rank case_000219_mask = case_000219_seq := by
  rw [translationSeqAtRankMask, case_000219_unrank]
  exact case_000219_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000219_bAtRank :
    translationBAtRankMask case_000219_rank case_000219_mask = case_000219_b := by
  rw [translationBAtRankMask, case_000219_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000219_b, case_000219_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000219_firstLine_eq :
    case_000219_support.firstLine case_000219_seq case_000219_b = case_000219_firstLine := by
  norm_num [case_000219_firstLine, case_000219_support, case_000219_seq, case_000219_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000219_secondLine_eq :
    case_000219_support.secondLine case_000219_seq case_000219_b = case_000219_secondLine := by
  norm_num [case_000219_secondLine, case_000219_support, case_000219_seq, case_000219_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000219_sourceAgrees :
    SourceAgrees case_000219_support case_000219_rank.val case_000219_mask := by
  intro hlt
  have hrank : (⟨case_000219_rank.val, hlt⟩ : Fin numPairWords) = case_000219_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000219_rank.val, hlt⟩ case_000219_mask =
        case_000219_seq := by
    simpa [hrank] using case_000219_seqAtRank
  simp [SourceChecks, hseq, case_000219_support,
    checkTranslationConstraintSource, case_000219_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000219_rows :
    EqEqPosVarFirstRows case_000219_support case_000219_rank.val case_000219_mask := by
  intro hlt
  have hrank : (⟨case_000219_rank.val, hlt⟩ : Fin numPairWords) = case_000219_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000219_rank.val, hlt⟩ case_000219_mask =
        case_000219_seq := by
    simpa [hrank] using case_000219_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000219_rank.val, hlt⟩ case_000219_mask =
        case_000219_b := by
    simpa [hrank] using case_000219_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000219_support case_000219_rank.val hlt
          case_000219_mask = case_000219_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000219_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000219_support case_000219_rank.val hlt
          case_000219_mask = case_000219_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000219_secondLine_eq]
  have case_000219_rowFirst :
      EqEqPosRow (FirstLineAt case_000219_support case_000219_rank.val hlt case_000219_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000219_firstLine, EqEqPosRow]
  have case_000219_fixedSecond :
      FixedRow (SecondLineAt case_000219_support case_000219_rank.val hlt case_000219_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000219_secondLine, FixedRow]
  exact ⟨case_000219_rowFirst, case_000219_fixedSecond⟩

private theorem case_000219_existsRows :
    ExistsEqEqPosVarFirstRows case_000219_rank.val case_000219_mask :=
  ⟨case_000219_support, case_000219_sourceAgrees, case_000219_rows⟩

private theorem case_000219_covered :
    RowPropertyParametricCovered case_000219_rank.val case_000219_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000219_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000220_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000220_mask : SignMask := ⟨18, by decide⟩
private def case_000220_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000220_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000220_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpm
private def case_000220_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (4/9) }
private def case_000220_firstLine : StrictLin2 := { a := -1, b := -1, c := -47 }
private def case_000220_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000220_rankWord :
    rankPairWord? case_000220_word = some case_000220_rank := by
  decide

private theorem case_000220_unrank :
    unrankPairWord case_000220_rank = case_000220_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000220_word case_000220_rank).1
    case_000220_rankWord |>.symm

private theorem case_000220_seqChoice :
    translationChoiceSeq case_000220_word case_000220_mask = case_000220_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000220_seqAtRank :
    translationSeqAtRankMask case_000220_rank case_000220_mask = case_000220_seq := by
  rw [translationSeqAtRankMask, case_000220_unrank]
  exact case_000220_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000220_bAtRank :
    translationBAtRankMask case_000220_rank case_000220_mask = case_000220_b := by
  rw [translationBAtRankMask, case_000220_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000220_b, case_000220_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000220_firstLine_eq :
    case_000220_support.firstLine case_000220_seq case_000220_b = case_000220_firstLine := by
  norm_num [case_000220_firstLine, case_000220_support, case_000220_seq, case_000220_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000220_secondLine_eq :
    case_000220_support.secondLine case_000220_seq case_000220_b = case_000220_secondLine := by
  norm_num [case_000220_secondLine, case_000220_support, case_000220_seq, case_000220_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000220_sourceAgrees :
    SourceAgrees case_000220_support case_000220_rank.val case_000220_mask := by
  intro hlt
  have hrank : (⟨case_000220_rank.val, hlt⟩ : Fin numPairWords) = case_000220_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000220_rank.val, hlt⟩ case_000220_mask =
        case_000220_seq := by
    simpa [hrank] using case_000220_seqAtRank
  simp [SourceChecks, hseq, case_000220_support,
    checkTranslationConstraintSource, case_000220_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000220_rows :
    EqEqPosVarFirstRows case_000220_support case_000220_rank.val case_000220_mask := by
  intro hlt
  have hrank : (⟨case_000220_rank.val, hlt⟩ : Fin numPairWords) = case_000220_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000220_rank.val, hlt⟩ case_000220_mask =
        case_000220_seq := by
    simpa [hrank] using case_000220_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000220_rank.val, hlt⟩ case_000220_mask =
        case_000220_b := by
    simpa [hrank] using case_000220_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000220_support case_000220_rank.val hlt
          case_000220_mask = case_000220_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000220_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000220_support case_000220_rank.val hlt
          case_000220_mask = case_000220_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000220_secondLine_eq]
  have case_000220_rowFirst :
      EqEqPosRow (FirstLineAt case_000220_support case_000220_rank.val hlt case_000220_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000220_firstLine, EqEqPosRow]
  have case_000220_fixedSecond :
      FixedRow (SecondLineAt case_000220_support case_000220_rank.val hlt case_000220_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000220_secondLine, FixedRow]
  exact ⟨case_000220_rowFirst, case_000220_fixedSecond⟩

private theorem case_000220_existsRows :
    ExistsEqEqPosVarFirstRows case_000220_rank.val case_000220_mask :=
  ⟨case_000220_support, case_000220_sourceAgrees, case_000220_rows⟩

private theorem case_000220_covered :
    RowPropertyParametricCovered case_000220_rank.val case_000220_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000220_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000221_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000221_mask : SignMask := ⟨24, by decide⟩
private def case_000221_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000221_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000221_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000221_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000221_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000221_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000221_rankWord :
    rankPairWord? case_000221_word = some case_000221_rank := by
  decide

private theorem case_000221_unrank :
    unrankPairWord case_000221_rank = case_000221_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000221_word case_000221_rank).1
    case_000221_rankWord |>.symm

private theorem case_000221_seqChoice :
    translationChoiceSeq case_000221_word case_000221_mask = case_000221_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000221_seqAtRank :
    translationSeqAtRankMask case_000221_rank case_000221_mask = case_000221_seq := by
  rw [translationSeqAtRankMask, case_000221_unrank]
  exact case_000221_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000221_bAtRank :
    translationBAtRankMask case_000221_rank case_000221_mask = case_000221_b := by
  rw [translationBAtRankMask, case_000221_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000221_b, case_000221_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000221_firstLine_eq :
    case_000221_support.firstLine case_000221_seq case_000221_b = case_000221_firstLine := by
  norm_num [case_000221_firstLine, case_000221_support, case_000221_seq, case_000221_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000221_secondLine_eq :
    case_000221_support.secondLine case_000221_seq case_000221_b = case_000221_secondLine := by
  norm_num [case_000221_secondLine, case_000221_support, case_000221_seq, case_000221_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000221_sourceAgrees :
    SourceAgrees case_000221_support case_000221_rank.val case_000221_mask := by
  intro hlt
  have hrank : (⟨case_000221_rank.val, hlt⟩ : Fin numPairWords) = case_000221_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000221_rank.val, hlt⟩ case_000221_mask =
        case_000221_seq := by
    simpa [hrank] using case_000221_seqAtRank
  simp [SourceChecks, hseq, case_000221_support,
    checkTranslationConstraintSource, case_000221_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000221_rows :
    EqEqPosVarFirstRows case_000221_support case_000221_rank.val case_000221_mask := by
  intro hlt
  have hrank : (⟨case_000221_rank.val, hlt⟩ : Fin numPairWords) = case_000221_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000221_rank.val, hlt⟩ case_000221_mask =
        case_000221_seq := by
    simpa [hrank] using case_000221_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000221_rank.val, hlt⟩ case_000221_mask =
        case_000221_b := by
    simpa [hrank] using case_000221_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000221_support case_000221_rank.val hlt
          case_000221_mask = case_000221_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000221_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000221_support case_000221_rank.val hlt
          case_000221_mask = case_000221_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000221_secondLine_eq]
  have case_000221_rowFirst :
      EqEqPosRow (FirstLineAt case_000221_support case_000221_rank.val hlt case_000221_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000221_firstLine, EqEqPosRow]
  have case_000221_fixedSecond :
      FixedRow (SecondLineAt case_000221_support case_000221_rank.val hlt case_000221_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000221_secondLine, FixedRow]
  exact ⟨case_000221_rowFirst, case_000221_fixedSecond⟩

private theorem case_000221_existsRows :
    ExistsEqEqPosVarFirstRows case_000221_rank.val case_000221_mask :=
  ⟨case_000221_support, case_000221_sourceAgrees, case_000221_rows⟩

private theorem case_000221_covered :
    RowPropertyParametricCovered case_000221_rank.val case_000221_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000221_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000222_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000222_mask : SignMask := ⟨28, by decide⟩
private def case_000222_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000222_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000222_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000222_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000222_firstLine : StrictLin2 := { a := (-3/5), b := (3/5), c := -1 }
private def case_000222_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000222_rankWord :
    rankPairWord? case_000222_word = some case_000222_rank := by
  decide

private theorem case_000222_unrank :
    unrankPairWord case_000222_rank = case_000222_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000222_word case_000222_rank).1
    case_000222_rankWord |>.symm

private theorem case_000222_seqChoice :
    translationChoiceSeq case_000222_word case_000222_mask = case_000222_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000222_seqAtRank :
    translationSeqAtRankMask case_000222_rank case_000222_mask = case_000222_seq := by
  rw [translationSeqAtRankMask, case_000222_unrank]
  exact case_000222_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000222_bAtRank :
    translationBAtRankMask case_000222_rank case_000222_mask = case_000222_b := by
  rw [translationBAtRankMask, case_000222_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000222_b, case_000222_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000222_firstLine_eq :
    case_000222_support.firstLine case_000222_seq case_000222_b = case_000222_firstLine := by
  norm_num [case_000222_firstLine, case_000222_support, case_000222_seq, case_000222_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000222_secondLine_eq :
    case_000222_support.secondLine case_000222_seq case_000222_b = case_000222_secondLine := by
  norm_num [case_000222_secondLine, case_000222_support, case_000222_seq, case_000222_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000222_sourceAgrees :
    SourceAgrees case_000222_support case_000222_rank.val case_000222_mask := by
  intro hlt
  have hrank : (⟨case_000222_rank.val, hlt⟩ : Fin numPairWords) = case_000222_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000222_rank.val, hlt⟩ case_000222_mask =
        case_000222_seq := by
    simpa [hrank] using case_000222_seqAtRank
  simp [SourceChecks, hseq, case_000222_support,
    checkTranslationConstraintSource, case_000222_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000222_rows :
    OppOneMinusVarFirstRows case_000222_support case_000222_rank.val case_000222_mask := by
  intro hlt
  have hrank : (⟨case_000222_rank.val, hlt⟩ : Fin numPairWords) = case_000222_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000222_rank.val, hlt⟩ case_000222_mask =
        case_000222_seq := by
    simpa [hrank] using case_000222_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000222_rank.val, hlt⟩ case_000222_mask =
        case_000222_b := by
    simpa [hrank] using case_000222_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000222_support case_000222_rank.val hlt
          case_000222_mask = case_000222_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000222_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000222_support case_000222_rank.val hlt
          case_000222_mask = case_000222_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000222_secondLine_eq]
  have case_000222_rowFirst :
      OppPosRow (FirstLineAt case_000222_support case_000222_rank.val hlt case_000222_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000222_firstLine, OppPosRow]
  have case_000222_fixedSecond :
      FixedRow (SecondLineAt case_000222_support case_000222_rank.val hlt case_000222_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000222_secondLine, FixedRow]
  exact ⟨case_000222_rowFirst, case_000222_fixedSecond⟩

private theorem case_000222_existsRows :
    ExistsOppOneMinusVarFirstRows case_000222_rank.val case_000222_mask :=
  ⟨case_000222_support, case_000222_sourceAgrees, case_000222_rows⟩

private theorem case_000222_covered :
    RowPropertyParametricCovered case_000222_rank.val case_000222_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000222_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000223_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000223_mask : SignMask := ⟨29, by decide⟩
private def case_000223_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000223_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000223_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000223_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000223_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000223_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000223_rankWord :
    rankPairWord? case_000223_word = some case_000223_rank := by
  decide

private theorem case_000223_unrank :
    unrankPairWord case_000223_rank = case_000223_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000223_word case_000223_rank).1
    case_000223_rankWord |>.symm

private theorem case_000223_seqChoice :
    translationChoiceSeq case_000223_word case_000223_mask = case_000223_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000223_seqAtRank :
    translationSeqAtRankMask case_000223_rank case_000223_mask = case_000223_seq := by
  rw [translationSeqAtRankMask, case_000223_unrank]
  exact case_000223_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000223_bAtRank :
    translationBAtRankMask case_000223_rank case_000223_mask = case_000223_b := by
  rw [translationBAtRankMask, case_000223_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000223_b, case_000223_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000223_firstLine_eq :
    case_000223_support.firstLine case_000223_seq case_000223_b = case_000223_firstLine := by
  norm_num [case_000223_firstLine, case_000223_support, case_000223_seq, case_000223_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000223_secondLine_eq :
    case_000223_support.secondLine case_000223_seq case_000223_b = case_000223_secondLine := by
  norm_num [case_000223_secondLine, case_000223_support, case_000223_seq, case_000223_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000223_sourceAgrees :
    SourceAgrees case_000223_support case_000223_rank.val case_000223_mask := by
  intro hlt
  have hrank : (⟨case_000223_rank.val, hlt⟩ : Fin numPairWords) = case_000223_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000223_rank.val, hlt⟩ case_000223_mask =
        case_000223_seq := by
    simpa [hrank] using case_000223_seqAtRank
  simp [SourceChecks, hseq, case_000223_support,
    checkTranslationConstraintSource, case_000223_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000223_rows :
    EqEqPosVarSecondRows case_000223_support case_000223_rank.val case_000223_mask := by
  intro hlt
  have hrank : (⟨case_000223_rank.val, hlt⟩ : Fin numPairWords) = case_000223_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000223_rank.val, hlt⟩ case_000223_mask =
        case_000223_seq := by
    simpa [hrank] using case_000223_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000223_rank.val, hlt⟩ case_000223_mask =
        case_000223_b := by
    simpa [hrank] using case_000223_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000223_support case_000223_rank.val hlt
          case_000223_mask = case_000223_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000223_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000223_support case_000223_rank.val hlt
          case_000223_mask = case_000223_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000223_secondLine_eq]
  have case_000223_fixedFirst :
      FixedRow (FirstLineAt case_000223_support case_000223_rank.val hlt case_000223_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000223_firstLine, FixedRow]
  have case_000223_rowSecond :
      EqEqPosRow (SecondLineAt case_000223_support case_000223_rank.val hlt case_000223_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000223_secondLine, EqEqPosRow]
  exact ⟨case_000223_fixedFirst, case_000223_rowSecond⟩

private theorem case_000223_existsRows :
    ExistsEqEqPosVarSecondRows case_000223_rank.val case_000223_mask :=
  ⟨case_000223_support, case_000223_sourceAgrees, case_000223_rows⟩

private theorem case_000223_covered :
    RowPropertyParametricCovered case_000223_rank.val case_000223_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000223_existsRows

inductive Group006Covered : Nat -> SignMask -> Prop
  | case_000192 : Group006Covered case_000192_rank.val case_000192_mask
  | case_000193 : Group006Covered case_000193_rank.val case_000193_mask
  | case_000194 : Group006Covered case_000194_rank.val case_000194_mask
  | case_000195 : Group006Covered case_000195_rank.val case_000195_mask
  | case_000196 : Group006Covered case_000196_rank.val case_000196_mask
  | case_000197 : Group006Covered case_000197_rank.val case_000197_mask
  | case_000198 : Group006Covered case_000198_rank.val case_000198_mask
  | case_000199 : Group006Covered case_000199_rank.val case_000199_mask
  | case_000200 : Group006Covered case_000200_rank.val case_000200_mask
  | case_000201 : Group006Covered case_000201_rank.val case_000201_mask
  | case_000202 : Group006Covered case_000202_rank.val case_000202_mask
  | case_000203 : Group006Covered case_000203_rank.val case_000203_mask
  | case_000204 : Group006Covered case_000204_rank.val case_000204_mask
  | case_000205 : Group006Covered case_000205_rank.val case_000205_mask
  | case_000206 : Group006Covered case_000206_rank.val case_000206_mask
  | case_000207 : Group006Covered case_000207_rank.val case_000207_mask
  | case_000208 : Group006Covered case_000208_rank.val case_000208_mask
  | case_000209 : Group006Covered case_000209_rank.val case_000209_mask
  | case_000210 : Group006Covered case_000210_rank.val case_000210_mask
  | case_000211 : Group006Covered case_000211_rank.val case_000211_mask
  | case_000212 : Group006Covered case_000212_rank.val case_000212_mask
  | case_000213 : Group006Covered case_000213_rank.val case_000213_mask
  | case_000214 : Group006Covered case_000214_rank.val case_000214_mask
  | case_000215 : Group006Covered case_000215_rank.val case_000215_mask
  | case_000216 : Group006Covered case_000216_rank.val case_000216_mask
  | case_000217 : Group006Covered case_000217_rank.val case_000217_mask
  | case_000218 : Group006Covered case_000218_rank.val case_000218_mask
  | case_000219 : Group006Covered case_000219_rank.val case_000219_mask
  | case_000220 : Group006Covered case_000220_rank.val case_000220_mask
  | case_000221 : Group006Covered case_000221_rank.val case_000221_mask
  | case_000222 : Group006Covered case_000222_rank.val case_000222_mask
  | case_000223 : Group006Covered case_000223_rank.val case_000223_mask

theorem Group006GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group006Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000192 =>
      exact RowPropertyParametricCovered.kills case_000192_covered
  | case_000193 =>
      exact RowPropertyParametricCovered.kills case_000193_covered
  | case_000194 =>
      exact RowPropertyParametricCovered.kills case_000194_covered
  | case_000195 =>
      exact RowPropertyParametricCovered.kills case_000195_covered
  | case_000196 =>
      exact RowPropertyParametricCovered.kills case_000196_covered
  | case_000197 =>
      exact RowPropertyParametricCovered.kills case_000197_covered
  | case_000198 =>
      exact RowPropertyParametricCovered.kills case_000198_covered
  | case_000199 =>
      exact RowPropertyParametricCovered.kills case_000199_covered
  | case_000200 =>
      exact RowPropertyParametricCovered.kills case_000200_covered
  | case_000201 =>
      exact RowPropertyParametricCovered.kills case_000201_covered
  | case_000202 =>
      exact RowPropertyParametricCovered.kills case_000202_covered
  | case_000203 =>
      exact RowPropertyParametricCovered.kills case_000203_covered
  | case_000204 =>
      exact RowPropertyParametricCovered.kills case_000204_covered
  | case_000205 =>
      exact RowPropertyParametricCovered.kills case_000205_covered
  | case_000206 =>
      exact RowPropertyParametricCovered.kills case_000206_covered
  | case_000207 =>
      exact RowPropertyParametricCovered.kills case_000207_covered
  | case_000208 =>
      exact RowPropertyParametricCovered.kills case_000208_covered
  | case_000209 =>
      exact RowPropertyParametricCovered.kills case_000209_covered
  | case_000210 =>
      exact RowPropertyParametricCovered.kills case_000210_covered
  | case_000211 =>
      exact RowPropertyParametricCovered.kills case_000211_covered
  | case_000212 =>
      exact RowPropertyParametricCovered.kills case_000212_covered
  | case_000213 =>
      exact RowPropertyParametricCovered.kills case_000213_covered
  | case_000214 =>
      exact RowPropertyParametricCovered.kills case_000214_covered
  | case_000215 =>
      exact RowPropertyParametricCovered.kills case_000215_covered
  | case_000216 =>
      exact RowPropertyParametricCovered.kills case_000216_covered
  | case_000217 =>
      exact RowPropertyParametricCovered.kills case_000217_covered
  | case_000218 =>
      exact RowPropertyParametricCovered.kills case_000218_covered
  | case_000219 =>
      exact RowPropertyParametricCovered.kills case_000219_covered
  | case_000220 =>
      exact RowPropertyParametricCovered.kills case_000220_covered
  | case_000221 =>
      exact RowPropertyParametricCovered.kills case_000221_covered
  | case_000222 =>
      exact RowPropertyParametricCovered.kills case_000222_covered
  | case_000223 =>
      exact RowPropertyParametricCovered.kills case_000223_covered

theorem Group006_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group006
