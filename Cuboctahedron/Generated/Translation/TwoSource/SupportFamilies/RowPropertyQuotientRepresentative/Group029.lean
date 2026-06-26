import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group029

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
private def case_000928_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000928_mask : SignMask := ⟨63, by decide⟩
private def case_000928_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000928_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000928_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000928_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000928_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000928_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_000928_rankWord :
    rankPairWord? case_000928_word = some case_000928_rank := by
  decide

private theorem case_000928_unrank :
    unrankPairWord case_000928_rank = case_000928_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000928_word case_000928_rank).1
    case_000928_rankWord |>.symm

private theorem case_000928_seqChoice :
    translationChoiceSeq case_000928_word case_000928_mask = case_000928_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000928_seqAtRank :
    translationSeqAtRankMask case_000928_rank case_000928_mask = case_000928_seq := by
  rw [translationSeqAtRankMask, case_000928_unrank]
  exact case_000928_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000928_bAtRank :
    translationBAtRankMask case_000928_rank case_000928_mask = case_000928_b := by
  rw [translationBAtRankMask, case_000928_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000928_b, case_000928_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000928_firstLine_eq :
    case_000928_support.firstLine case_000928_seq case_000928_b = case_000928_firstLine := by
  norm_num [case_000928_firstLine, case_000928_support, case_000928_seq, case_000928_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000928_secondLine_eq :
    case_000928_support.secondLine case_000928_seq case_000928_b = case_000928_secondLine := by
  norm_num [case_000928_secondLine, case_000928_support, case_000928_seq, case_000928_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000928_sourceAgrees :
    SourceAgrees case_000928_support case_000928_rank.val case_000928_mask := by
  intro hlt
  have hrank : (⟨case_000928_rank.val, hlt⟩ : Fin numPairWords) = case_000928_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000928_rank.val, hlt⟩ case_000928_mask =
        case_000928_seq := by
    simpa [hrank] using case_000928_seqAtRank
  simp [SourceChecks, hseq, case_000928_support,
    checkTranslationConstraintSource, case_000928_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000928_rows :
    OppOneMinusVarSecondRows case_000928_support case_000928_rank.val case_000928_mask := by
  intro hlt
  have hrank : (⟨case_000928_rank.val, hlt⟩ : Fin numPairWords) = case_000928_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000928_rank.val, hlt⟩ case_000928_mask =
        case_000928_seq := by
    simpa [hrank] using case_000928_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000928_rank.val, hlt⟩ case_000928_mask =
        case_000928_b := by
    simpa [hrank] using case_000928_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000928_support case_000928_rank.val hlt
          case_000928_mask = case_000928_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000928_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000928_support case_000928_rank.val hlt
          case_000928_mask = case_000928_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000928_secondLine_eq]
  have case_000928_fixedFirst :
      FixedRow (FirstLineAt case_000928_support case_000928_rank.val hlt case_000928_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000928_firstLine, FixedRow]
  have case_000928_rowSecond :
      OppPosRow (SecondLineAt case_000928_support case_000928_rank.val hlt case_000928_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000928_secondLine, OppPosRow]
  exact ⟨case_000928_fixedFirst, case_000928_rowSecond⟩

private theorem case_000928_existsRows :
    ExistsOppOneMinusVarSecondRows case_000928_rank.val case_000928_mask :=
  ⟨case_000928_support, case_000928_sourceAgrees, case_000928_rows⟩

private theorem case_000928_covered :
    RowPropertyParametricCovered case_000928_rank.val case_000928_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000928_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000929_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000929_mask : SignMask := ⟨9, by decide⟩
private def case_000929_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000929_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000929_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000929_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000929_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000929_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000929_rankWord :
    rankPairWord? case_000929_word = some case_000929_rank := by
  decide

private theorem case_000929_unrank :
    unrankPairWord case_000929_rank = case_000929_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000929_word case_000929_rank).1
    case_000929_rankWord |>.symm

private theorem case_000929_seqChoice :
    translationChoiceSeq case_000929_word case_000929_mask = case_000929_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000929_seqAtRank :
    translationSeqAtRankMask case_000929_rank case_000929_mask = case_000929_seq := by
  rw [translationSeqAtRankMask, case_000929_unrank]
  exact case_000929_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000929_bAtRank :
    translationBAtRankMask case_000929_rank case_000929_mask = case_000929_b := by
  rw [translationBAtRankMask, case_000929_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000929_b, case_000929_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000929_firstLine_eq :
    case_000929_support.firstLine case_000929_seq case_000929_b = case_000929_firstLine := by
  norm_num [case_000929_firstLine, case_000929_support, case_000929_seq, case_000929_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000929_secondLine_eq :
    case_000929_support.secondLine case_000929_seq case_000929_b = case_000929_secondLine := by
  norm_num [case_000929_secondLine, case_000929_support, case_000929_seq, case_000929_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000929_sourceAgrees :
    SourceAgrees case_000929_support case_000929_rank.val case_000929_mask := by
  intro hlt
  have hrank : (⟨case_000929_rank.val, hlt⟩ : Fin numPairWords) = case_000929_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000929_rank.val, hlt⟩ case_000929_mask =
        case_000929_seq := by
    simpa [hrank] using case_000929_seqAtRank
  simp [SourceChecks, hseq, case_000929_support,
    checkTranslationConstraintSource, case_000929_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000929_rows :
    EqEqPosVarFirstRows case_000929_support case_000929_rank.val case_000929_mask := by
  intro hlt
  have hrank : (⟨case_000929_rank.val, hlt⟩ : Fin numPairWords) = case_000929_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000929_rank.val, hlt⟩ case_000929_mask =
        case_000929_seq := by
    simpa [hrank] using case_000929_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000929_rank.val, hlt⟩ case_000929_mask =
        case_000929_b := by
    simpa [hrank] using case_000929_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000929_support case_000929_rank.val hlt
          case_000929_mask = case_000929_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000929_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000929_support case_000929_rank.val hlt
          case_000929_mask = case_000929_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000929_secondLine_eq]
  have case_000929_rowFirst :
      EqEqPosRow (FirstLineAt case_000929_support case_000929_rank.val hlt case_000929_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000929_firstLine, EqEqPosRow]
  have case_000929_fixedSecond :
      FixedRow (SecondLineAt case_000929_support case_000929_rank.val hlt case_000929_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000929_secondLine, FixedRow]
  exact ⟨case_000929_rowFirst, case_000929_fixedSecond⟩

private theorem case_000929_existsRows :
    ExistsEqEqPosVarFirstRows case_000929_rank.val case_000929_mask :=
  ⟨case_000929_support, case_000929_sourceAgrees, case_000929_rows⟩

private theorem case_000929_covered :
    RowPropertyParametricCovered case_000929_rank.val case_000929_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000929_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000930_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000930_mask : SignMask := ⟨16, by decide⟩
private def case_000930_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000930_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000930_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000930_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000930_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000930_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000930_rankWord :
    rankPairWord? case_000930_word = some case_000930_rank := by
  decide

private theorem case_000930_unrank :
    unrankPairWord case_000930_rank = case_000930_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000930_word case_000930_rank).1
    case_000930_rankWord |>.symm

private theorem case_000930_seqChoice :
    translationChoiceSeq case_000930_word case_000930_mask = case_000930_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000930_seqAtRank :
    translationSeqAtRankMask case_000930_rank case_000930_mask = case_000930_seq := by
  rw [translationSeqAtRankMask, case_000930_unrank]
  exact case_000930_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000930_bAtRank :
    translationBAtRankMask case_000930_rank case_000930_mask = case_000930_b := by
  rw [translationBAtRankMask, case_000930_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000930_b, case_000930_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000930_firstLine_eq :
    case_000930_support.firstLine case_000930_seq case_000930_b = case_000930_firstLine := by
  norm_num [case_000930_firstLine, case_000930_support, case_000930_seq, case_000930_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000930_secondLine_eq :
    case_000930_support.secondLine case_000930_seq case_000930_b = case_000930_secondLine := by
  norm_num [case_000930_secondLine, case_000930_support, case_000930_seq, case_000930_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000930_sourceAgrees :
    SourceAgrees case_000930_support case_000930_rank.val case_000930_mask := by
  intro hlt
  have hrank : (⟨case_000930_rank.val, hlt⟩ : Fin numPairWords) = case_000930_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000930_rank.val, hlt⟩ case_000930_mask =
        case_000930_seq := by
    simpa [hrank] using case_000930_seqAtRank
  simp [SourceChecks, hseq, case_000930_support,
    checkTranslationConstraintSource, case_000930_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000930_rows :
    EqEqPosVarFirstRows case_000930_support case_000930_rank.val case_000930_mask := by
  intro hlt
  have hrank : (⟨case_000930_rank.val, hlt⟩ : Fin numPairWords) = case_000930_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000930_rank.val, hlt⟩ case_000930_mask =
        case_000930_seq := by
    simpa [hrank] using case_000930_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000930_rank.val, hlt⟩ case_000930_mask =
        case_000930_b := by
    simpa [hrank] using case_000930_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000930_support case_000930_rank.val hlt
          case_000930_mask = case_000930_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000930_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000930_support case_000930_rank.val hlt
          case_000930_mask = case_000930_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000930_secondLine_eq]
  have case_000930_rowFirst :
      EqEqPosRow (FirstLineAt case_000930_support case_000930_rank.val hlt case_000930_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000930_firstLine, EqEqPosRow]
  have case_000930_fixedSecond :
      FixedRow (SecondLineAt case_000930_support case_000930_rank.val hlt case_000930_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000930_secondLine, FixedRow]
  exact ⟨case_000930_rowFirst, case_000930_fixedSecond⟩

private theorem case_000930_existsRows :
    ExistsEqEqPosVarFirstRows case_000930_rank.val case_000930_mask :=
  ⟨case_000930_support, case_000930_sourceAgrees, case_000930_rows⟩

private theorem case_000930_covered :
    RowPropertyParametricCovered case_000930_rank.val case_000930_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000930_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000931_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000931_mask : SignMask := ⟨22, by decide⟩
private def case_000931_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000931_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000931_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000931_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_000931_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000931_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000931_rankWord :
    rankPairWord? case_000931_word = some case_000931_rank := by
  decide

private theorem case_000931_unrank :
    unrankPairWord case_000931_rank = case_000931_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000931_word case_000931_rank).1
    case_000931_rankWord |>.symm

private theorem case_000931_seqChoice :
    translationChoiceSeq case_000931_word case_000931_mask = case_000931_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000931_seqAtRank :
    translationSeqAtRankMask case_000931_rank case_000931_mask = case_000931_seq := by
  rw [translationSeqAtRankMask, case_000931_unrank]
  exact case_000931_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000931_bAtRank :
    translationBAtRankMask case_000931_rank case_000931_mask = case_000931_b := by
  rw [translationBAtRankMask, case_000931_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000931_b, case_000931_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000931_firstLine_eq :
    case_000931_support.firstLine case_000931_seq case_000931_b = case_000931_firstLine := by
  norm_num [case_000931_firstLine, case_000931_support, case_000931_seq, case_000931_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000931_secondLine_eq :
    case_000931_support.secondLine case_000931_seq case_000931_b = case_000931_secondLine := by
  norm_num [case_000931_secondLine, case_000931_support, case_000931_seq, case_000931_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000931_sourceAgrees :
    SourceAgrees case_000931_support case_000931_rank.val case_000931_mask := by
  intro hlt
  have hrank : (⟨case_000931_rank.val, hlt⟩ : Fin numPairWords) = case_000931_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000931_rank.val, hlt⟩ case_000931_mask =
        case_000931_seq := by
    simpa [hrank] using case_000931_seqAtRank
  simp [SourceChecks, hseq, case_000931_support,
    checkTranslationConstraintSource, case_000931_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000931_rows :
    EqEqPosVarFirstRows case_000931_support case_000931_rank.val case_000931_mask := by
  intro hlt
  have hrank : (⟨case_000931_rank.val, hlt⟩ : Fin numPairWords) = case_000931_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000931_rank.val, hlt⟩ case_000931_mask =
        case_000931_seq := by
    simpa [hrank] using case_000931_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000931_rank.val, hlt⟩ case_000931_mask =
        case_000931_b := by
    simpa [hrank] using case_000931_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000931_support case_000931_rank.val hlt
          case_000931_mask = case_000931_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000931_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000931_support case_000931_rank.val hlt
          case_000931_mask = case_000931_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000931_secondLine_eq]
  have case_000931_rowFirst :
      EqEqPosRow (FirstLineAt case_000931_support case_000931_rank.val hlt case_000931_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000931_firstLine, EqEqPosRow]
  have case_000931_fixedSecond :
      FixedRow (SecondLineAt case_000931_support case_000931_rank.val hlt case_000931_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000931_secondLine, FixedRow]
  exact ⟨case_000931_rowFirst, case_000931_fixedSecond⟩

private theorem case_000931_existsRows :
    ExistsEqEqPosVarFirstRows case_000931_rank.val case_000931_mask :=
  ⟨case_000931_support, case_000931_sourceAgrees, case_000931_rows⟩

private theorem case_000931_covered :
    RowPropertyParametricCovered case_000931_rank.val case_000931_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000931_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000932_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000932_mask : SignMask := ⟨24, by decide⟩
private def case_000932_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000932_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000932_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000932_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000932_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000932_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000932_rankWord :
    rankPairWord? case_000932_word = some case_000932_rank := by
  decide

private theorem case_000932_unrank :
    unrankPairWord case_000932_rank = case_000932_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000932_word case_000932_rank).1
    case_000932_rankWord |>.symm

private theorem case_000932_seqChoice :
    translationChoiceSeq case_000932_word case_000932_mask = case_000932_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000932_seqAtRank :
    translationSeqAtRankMask case_000932_rank case_000932_mask = case_000932_seq := by
  rw [translationSeqAtRankMask, case_000932_unrank]
  exact case_000932_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000932_bAtRank :
    translationBAtRankMask case_000932_rank case_000932_mask = case_000932_b := by
  rw [translationBAtRankMask, case_000932_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000932_b, case_000932_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000932_firstLine_eq :
    case_000932_support.firstLine case_000932_seq case_000932_b = case_000932_firstLine := by
  norm_num [case_000932_firstLine, case_000932_support, case_000932_seq, case_000932_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000932_secondLine_eq :
    case_000932_support.secondLine case_000932_seq case_000932_b = case_000932_secondLine := by
  norm_num [case_000932_secondLine, case_000932_support, case_000932_seq, case_000932_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000932_sourceAgrees :
    SourceAgrees case_000932_support case_000932_rank.val case_000932_mask := by
  intro hlt
  have hrank : (⟨case_000932_rank.val, hlt⟩ : Fin numPairWords) = case_000932_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000932_rank.val, hlt⟩ case_000932_mask =
        case_000932_seq := by
    simpa [hrank] using case_000932_seqAtRank
  simp [SourceChecks, hseq, case_000932_support,
    checkTranslationConstraintSource, case_000932_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000932_rows :
    EqEqPosVarFirstRows case_000932_support case_000932_rank.val case_000932_mask := by
  intro hlt
  have hrank : (⟨case_000932_rank.val, hlt⟩ : Fin numPairWords) = case_000932_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000932_rank.val, hlt⟩ case_000932_mask =
        case_000932_seq := by
    simpa [hrank] using case_000932_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000932_rank.val, hlt⟩ case_000932_mask =
        case_000932_b := by
    simpa [hrank] using case_000932_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000932_support case_000932_rank.val hlt
          case_000932_mask = case_000932_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000932_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000932_support case_000932_rank.val hlt
          case_000932_mask = case_000932_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000932_secondLine_eq]
  have case_000932_rowFirst :
      EqEqPosRow (FirstLineAt case_000932_support case_000932_rank.val hlt case_000932_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000932_firstLine, EqEqPosRow]
  have case_000932_fixedSecond :
      FixedRow (SecondLineAt case_000932_support case_000932_rank.val hlt case_000932_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000932_secondLine, FixedRow]
  exact ⟨case_000932_rowFirst, case_000932_fixedSecond⟩

private theorem case_000932_existsRows :
    ExistsEqEqPosVarFirstRows case_000932_rank.val case_000932_mask :=
  ⟨case_000932_support, case_000932_sourceAgrees, case_000932_rows⟩

private theorem case_000932_covered :
    RowPropertyParametricCovered case_000932_rank.val case_000932_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000932_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000933_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000933_mask : SignMask := ⟨25, by decide⟩
private def case_000933_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000933_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000933_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000933_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-100/9) }
private def case_000933_firstLine : StrictLin2 := { a := (-25/51), b := (25/51), c := (-121/51) }
private def case_000933_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000933_rankWord :
    rankPairWord? case_000933_word = some case_000933_rank := by
  decide

private theorem case_000933_unrank :
    unrankPairWord case_000933_rank = case_000933_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000933_word case_000933_rank).1
    case_000933_rankWord |>.symm

private theorem case_000933_seqChoice :
    translationChoiceSeq case_000933_word case_000933_mask = case_000933_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000933_seqAtRank :
    translationSeqAtRankMask case_000933_rank case_000933_mask = case_000933_seq := by
  rw [translationSeqAtRankMask, case_000933_unrank]
  exact case_000933_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000933_bAtRank :
    translationBAtRankMask case_000933_rank case_000933_mask = case_000933_b := by
  rw [translationBAtRankMask, case_000933_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000933_b, case_000933_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000933_firstLine_eq :
    case_000933_support.firstLine case_000933_seq case_000933_b = case_000933_firstLine := by
  norm_num [case_000933_firstLine, case_000933_support, case_000933_seq, case_000933_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000933_secondLine_eq :
    case_000933_support.secondLine case_000933_seq case_000933_b = case_000933_secondLine := by
  norm_num [case_000933_secondLine, case_000933_support, case_000933_seq, case_000933_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000933_sourceAgrees :
    SourceAgrees case_000933_support case_000933_rank.val case_000933_mask := by
  intro hlt
  have hrank : (⟨case_000933_rank.val, hlt⟩ : Fin numPairWords) = case_000933_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000933_rank.val, hlt⟩ case_000933_mask =
        case_000933_seq := by
    simpa [hrank] using case_000933_seqAtRank
  simp [SourceChecks, hseq, case_000933_support,
    checkTranslationConstraintSource, case_000933_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000933_rows :
    OppOneMinusVarFirstRows case_000933_support case_000933_rank.val case_000933_mask := by
  intro hlt
  have hrank : (⟨case_000933_rank.val, hlt⟩ : Fin numPairWords) = case_000933_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000933_rank.val, hlt⟩ case_000933_mask =
        case_000933_seq := by
    simpa [hrank] using case_000933_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000933_rank.val, hlt⟩ case_000933_mask =
        case_000933_b := by
    simpa [hrank] using case_000933_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000933_support case_000933_rank.val hlt
          case_000933_mask = case_000933_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000933_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000933_support case_000933_rank.val hlt
          case_000933_mask = case_000933_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000933_secondLine_eq]
  have case_000933_rowFirst :
      OppPosRow (FirstLineAt case_000933_support case_000933_rank.val hlt case_000933_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000933_firstLine, OppPosRow]
  have case_000933_fixedSecond :
      FixedRow (SecondLineAt case_000933_support case_000933_rank.val hlt case_000933_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000933_secondLine, FixedRow]
  exact ⟨case_000933_rowFirst, case_000933_fixedSecond⟩

private theorem case_000933_existsRows :
    ExistsOppOneMinusVarFirstRows case_000933_rank.val case_000933_mask :=
  ⟨case_000933_support, case_000933_sourceAgrees, case_000933_rows⟩

private theorem case_000933_covered :
    RowPropertyParametricCovered case_000933_rank.val case_000933_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000933_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000934_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000934_mask : SignMask := ⟨29, by decide⟩
private def case_000934_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000934_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000934_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000934_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_000934_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000934_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000934_rankWord :
    rankPairWord? case_000934_word = some case_000934_rank := by
  decide

private theorem case_000934_unrank :
    unrankPairWord case_000934_rank = case_000934_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000934_word case_000934_rank).1
    case_000934_rankWord |>.symm

private theorem case_000934_seqChoice :
    translationChoiceSeq case_000934_word case_000934_mask = case_000934_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000934_seqAtRank :
    translationSeqAtRankMask case_000934_rank case_000934_mask = case_000934_seq := by
  rw [translationSeqAtRankMask, case_000934_unrank]
  exact case_000934_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000934_bAtRank :
    translationBAtRankMask case_000934_rank case_000934_mask = case_000934_b := by
  rw [translationBAtRankMask, case_000934_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000934_b, case_000934_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000934_firstLine_eq :
    case_000934_support.firstLine case_000934_seq case_000934_b = case_000934_firstLine := by
  norm_num [case_000934_firstLine, case_000934_support, case_000934_seq, case_000934_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000934_secondLine_eq :
    case_000934_support.secondLine case_000934_seq case_000934_b = case_000934_secondLine := by
  norm_num [case_000934_secondLine, case_000934_support, case_000934_seq, case_000934_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000934_sourceAgrees :
    SourceAgrees case_000934_support case_000934_rank.val case_000934_mask := by
  intro hlt
  have hrank : (⟨case_000934_rank.val, hlt⟩ : Fin numPairWords) = case_000934_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000934_rank.val, hlt⟩ case_000934_mask =
        case_000934_seq := by
    simpa [hrank] using case_000934_seqAtRank
  simp [SourceChecks, hseq, case_000934_support,
    checkTranslationConstraintSource, case_000934_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000934_rows :
    EqEqPosVarSecondRows case_000934_support case_000934_rank.val case_000934_mask := by
  intro hlt
  have hrank : (⟨case_000934_rank.val, hlt⟩ : Fin numPairWords) = case_000934_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000934_rank.val, hlt⟩ case_000934_mask =
        case_000934_seq := by
    simpa [hrank] using case_000934_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000934_rank.val, hlt⟩ case_000934_mask =
        case_000934_b := by
    simpa [hrank] using case_000934_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000934_support case_000934_rank.val hlt
          case_000934_mask = case_000934_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000934_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000934_support case_000934_rank.val hlt
          case_000934_mask = case_000934_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000934_secondLine_eq]
  have case_000934_fixedFirst :
      FixedRow (FirstLineAt case_000934_support case_000934_rank.val hlt case_000934_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000934_firstLine, FixedRow]
  have case_000934_rowSecond :
      EqEqPosRow (SecondLineAt case_000934_support case_000934_rank.val hlt case_000934_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000934_secondLine, EqEqPosRow]
  exact ⟨case_000934_fixedFirst, case_000934_rowSecond⟩

private theorem case_000934_existsRows :
    ExistsEqEqPosVarSecondRows case_000934_rank.val case_000934_mask :=
  ⟨case_000934_support, case_000934_sourceAgrees, case_000934_rows⟩

private theorem case_000934_covered :
    RowPropertyParametricCovered case_000934_rank.val case_000934_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000934_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000935_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000935_mask : SignMask := ⟨30, by decide⟩
private def case_000935_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000935_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000935_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000935_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_000935_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000935_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000935_rankWord :
    rankPairWord? case_000935_word = some case_000935_rank := by
  decide

private theorem case_000935_unrank :
    unrankPairWord case_000935_rank = case_000935_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000935_word case_000935_rank).1
    case_000935_rankWord |>.symm

private theorem case_000935_seqChoice :
    translationChoiceSeq case_000935_word case_000935_mask = case_000935_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000935_seqAtRank :
    translationSeqAtRankMask case_000935_rank case_000935_mask = case_000935_seq := by
  rw [translationSeqAtRankMask, case_000935_unrank]
  exact case_000935_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000935_bAtRank :
    translationBAtRankMask case_000935_rank case_000935_mask = case_000935_b := by
  rw [translationBAtRankMask, case_000935_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000935_b, case_000935_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000935_firstLine_eq :
    case_000935_support.firstLine case_000935_seq case_000935_b = case_000935_firstLine := by
  norm_num [case_000935_firstLine, case_000935_support, case_000935_seq, case_000935_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000935_secondLine_eq :
    case_000935_support.secondLine case_000935_seq case_000935_b = case_000935_secondLine := by
  norm_num [case_000935_secondLine, case_000935_support, case_000935_seq, case_000935_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000935_sourceAgrees :
    SourceAgrees case_000935_support case_000935_rank.val case_000935_mask := by
  intro hlt
  have hrank : (⟨case_000935_rank.val, hlt⟩ : Fin numPairWords) = case_000935_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000935_rank.val, hlt⟩ case_000935_mask =
        case_000935_seq := by
    simpa [hrank] using case_000935_seqAtRank
  simp [SourceChecks, hseq, case_000935_support,
    checkTranslationConstraintSource, case_000935_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000935_rows :
    EqEqPosVarFirstRows case_000935_support case_000935_rank.val case_000935_mask := by
  intro hlt
  have hrank : (⟨case_000935_rank.val, hlt⟩ : Fin numPairWords) = case_000935_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000935_rank.val, hlt⟩ case_000935_mask =
        case_000935_seq := by
    simpa [hrank] using case_000935_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000935_rank.val, hlt⟩ case_000935_mask =
        case_000935_b := by
    simpa [hrank] using case_000935_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000935_support case_000935_rank.val hlt
          case_000935_mask = case_000935_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000935_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000935_support case_000935_rank.val hlt
          case_000935_mask = case_000935_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000935_secondLine_eq]
  have case_000935_rowFirst :
      EqEqPosRow (FirstLineAt case_000935_support case_000935_rank.val hlt case_000935_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000935_firstLine, EqEqPosRow]
  have case_000935_fixedSecond :
      FixedRow (SecondLineAt case_000935_support case_000935_rank.val hlt case_000935_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000935_secondLine, FixedRow]
  exact ⟨case_000935_rowFirst, case_000935_fixedSecond⟩

private theorem case_000935_existsRows :
    ExistsEqEqPosVarFirstRows case_000935_rank.val case_000935_mask :=
  ⟨case_000935_support, case_000935_sourceAgrees, case_000935_rows⟩

private theorem case_000935_covered :
    RowPropertyParametricCovered case_000935_rank.val case_000935_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000935_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000936_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000936_mask : SignMask := ⟨41, by decide⟩
private def case_000936_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000936_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000936_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000936_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-100/9) }
private def case_000936_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000936_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_000936_rankWord :
    rankPairWord? case_000936_word = some case_000936_rank := by
  decide

private theorem case_000936_unrank :
    unrankPairWord case_000936_rank = case_000936_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000936_word case_000936_rank).1
    case_000936_rankWord |>.symm

private theorem case_000936_seqChoice :
    translationChoiceSeq case_000936_word case_000936_mask = case_000936_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000936_seqAtRank :
    translationSeqAtRankMask case_000936_rank case_000936_mask = case_000936_seq := by
  rw [translationSeqAtRankMask, case_000936_unrank]
  exact case_000936_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000936_bAtRank :
    translationBAtRankMask case_000936_rank case_000936_mask = case_000936_b := by
  rw [translationBAtRankMask, case_000936_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000936_b, case_000936_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000936_firstLine_eq :
    case_000936_support.firstLine case_000936_seq case_000936_b = case_000936_firstLine := by
  norm_num [case_000936_firstLine, case_000936_support, case_000936_seq, case_000936_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000936_secondLine_eq :
    case_000936_support.secondLine case_000936_seq case_000936_b = case_000936_secondLine := by
  norm_num [case_000936_secondLine, case_000936_support, case_000936_seq, case_000936_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000936_sourceAgrees :
    SourceAgrees case_000936_support case_000936_rank.val case_000936_mask := by
  intro hlt
  have hrank : (⟨case_000936_rank.val, hlt⟩ : Fin numPairWords) = case_000936_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000936_rank.val, hlt⟩ case_000936_mask =
        case_000936_seq := by
    simpa [hrank] using case_000936_seqAtRank
  simp [SourceChecks, hseq, case_000936_support,
    checkTranslationConstraintSource, case_000936_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000936_rows :
    EqEqPosVarSecondRows case_000936_support case_000936_rank.val case_000936_mask := by
  intro hlt
  have hrank : (⟨case_000936_rank.val, hlt⟩ : Fin numPairWords) = case_000936_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000936_rank.val, hlt⟩ case_000936_mask =
        case_000936_seq := by
    simpa [hrank] using case_000936_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000936_rank.val, hlt⟩ case_000936_mask =
        case_000936_b := by
    simpa [hrank] using case_000936_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000936_support case_000936_rank.val hlt
          case_000936_mask = case_000936_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000936_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000936_support case_000936_rank.val hlt
          case_000936_mask = case_000936_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000936_secondLine_eq]
  have case_000936_fixedFirst :
      FixedRow (FirstLineAt case_000936_support case_000936_rank.val hlt case_000936_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000936_firstLine, FixedRow]
  have case_000936_rowSecond :
      EqEqPosRow (SecondLineAt case_000936_support case_000936_rank.val hlt case_000936_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000936_secondLine, EqEqPosRow]
  exact ⟨case_000936_fixedFirst, case_000936_rowSecond⟩

private theorem case_000936_existsRows :
    ExistsEqEqPosVarSecondRows case_000936_rank.val case_000936_mask :=
  ⟨case_000936_support, case_000936_sourceAgrees, case_000936_rows⟩

private theorem case_000936_covered :
    RowPropertyParametricCovered case_000936_rank.val case_000936_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000936_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000937_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000937_mask : SignMask := ⟨45, by decide⟩
private def case_000937_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000937_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000937_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000937_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000937_firstLine : StrictLin2 := { a := (-10/39), b := (10/39), c := (-16/13) }
private def case_000937_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000937_rankWord :
    rankPairWord? case_000937_word = some case_000937_rank := by
  decide

private theorem case_000937_unrank :
    unrankPairWord case_000937_rank = case_000937_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000937_word case_000937_rank).1
    case_000937_rankWord |>.symm

private theorem case_000937_seqChoice :
    translationChoiceSeq case_000937_word case_000937_mask = case_000937_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000937_seqAtRank :
    translationSeqAtRankMask case_000937_rank case_000937_mask = case_000937_seq := by
  rw [translationSeqAtRankMask, case_000937_unrank]
  exact case_000937_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000937_bAtRank :
    translationBAtRankMask case_000937_rank case_000937_mask = case_000937_b := by
  rw [translationBAtRankMask, case_000937_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000937_b, case_000937_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000937_firstLine_eq :
    case_000937_support.firstLine case_000937_seq case_000937_b = case_000937_firstLine := by
  norm_num [case_000937_firstLine, case_000937_support, case_000937_seq, case_000937_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000937_secondLine_eq :
    case_000937_support.secondLine case_000937_seq case_000937_b = case_000937_secondLine := by
  norm_num [case_000937_secondLine, case_000937_support, case_000937_seq, case_000937_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000937_sourceAgrees :
    SourceAgrees case_000937_support case_000937_rank.val case_000937_mask := by
  intro hlt
  have hrank : (⟨case_000937_rank.val, hlt⟩ : Fin numPairWords) = case_000937_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000937_rank.val, hlt⟩ case_000937_mask =
        case_000937_seq := by
    simpa [hrank] using case_000937_seqAtRank
  simp [SourceChecks, hseq, case_000937_support,
    checkTranslationConstraintSource, case_000937_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000937_rows :
    OppOneMinusVarFirstRows case_000937_support case_000937_rank.val case_000937_mask := by
  intro hlt
  have hrank : (⟨case_000937_rank.val, hlt⟩ : Fin numPairWords) = case_000937_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000937_rank.val, hlt⟩ case_000937_mask =
        case_000937_seq := by
    simpa [hrank] using case_000937_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000937_rank.val, hlt⟩ case_000937_mask =
        case_000937_b := by
    simpa [hrank] using case_000937_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000937_support case_000937_rank.val hlt
          case_000937_mask = case_000937_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000937_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000937_support case_000937_rank.val hlt
          case_000937_mask = case_000937_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000937_secondLine_eq]
  have case_000937_rowFirst :
      OppPosRow (FirstLineAt case_000937_support case_000937_rank.val hlt case_000937_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000937_firstLine, OppPosRow]
  have case_000937_fixedSecond :
      FixedRow (SecondLineAt case_000937_support case_000937_rank.val hlt case_000937_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000937_secondLine, FixedRow]
  exact ⟨case_000937_rowFirst, case_000937_fixedSecond⟩

private theorem case_000937_existsRows :
    ExistsOppOneMinusVarFirstRows case_000937_rank.val case_000937_mask :=
  ⟨case_000937_support, case_000937_sourceAgrees, case_000937_rows⟩

private theorem case_000937_covered :
    RowPropertyParametricCovered case_000937_rank.val case_000937_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000937_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000938_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000938_mask : SignMask := ⟨55, by decide⟩
private def case_000938_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000938_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000938_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_000938_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000938_firstLine : StrictLin2 := { a := -1, b := 1, c := (-19/13) }
private def case_000938_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000938_rankWord :
    rankPairWord? case_000938_word = some case_000938_rank := by
  decide

private theorem case_000938_unrank :
    unrankPairWord case_000938_rank = case_000938_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000938_word case_000938_rank).1
    case_000938_rankWord |>.symm

private theorem case_000938_seqChoice :
    translationChoiceSeq case_000938_word case_000938_mask = case_000938_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000938_seqAtRank :
    translationSeqAtRankMask case_000938_rank case_000938_mask = case_000938_seq := by
  rw [translationSeqAtRankMask, case_000938_unrank]
  exact case_000938_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000938_bAtRank :
    translationBAtRankMask case_000938_rank case_000938_mask = case_000938_b := by
  rw [translationBAtRankMask, case_000938_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000938_b, case_000938_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000938_firstLine_eq :
    case_000938_support.firstLine case_000938_seq case_000938_b = case_000938_firstLine := by
  norm_num [case_000938_firstLine, case_000938_support, case_000938_seq, case_000938_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000938_secondLine_eq :
    case_000938_support.secondLine case_000938_seq case_000938_b = case_000938_secondLine := by
  norm_num [case_000938_secondLine, case_000938_support, case_000938_seq, case_000938_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000938_sourceAgrees :
    SourceAgrees case_000938_support case_000938_rank.val case_000938_mask := by
  intro hlt
  have hrank : (⟨case_000938_rank.val, hlt⟩ : Fin numPairWords) = case_000938_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000938_rank.val, hlt⟩ case_000938_mask =
        case_000938_seq := by
    simpa [hrank] using case_000938_seqAtRank
  simp [SourceChecks, hseq, case_000938_support,
    checkTranslationConstraintSource, case_000938_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000938_rows :
    OppOneMinusVarFirstRows case_000938_support case_000938_rank.val case_000938_mask := by
  intro hlt
  have hrank : (⟨case_000938_rank.val, hlt⟩ : Fin numPairWords) = case_000938_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000938_rank.val, hlt⟩ case_000938_mask =
        case_000938_seq := by
    simpa [hrank] using case_000938_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000938_rank.val, hlt⟩ case_000938_mask =
        case_000938_b := by
    simpa [hrank] using case_000938_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000938_support case_000938_rank.val hlt
          case_000938_mask = case_000938_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000938_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000938_support case_000938_rank.val hlt
          case_000938_mask = case_000938_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000938_secondLine_eq]
  have case_000938_rowFirst :
      OppPosRow (FirstLineAt case_000938_support case_000938_rank.val hlt case_000938_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000938_firstLine, OppPosRow]
  have case_000938_fixedSecond :
      FixedRow (SecondLineAt case_000938_support case_000938_rank.val hlt case_000938_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000938_secondLine, FixedRow]
  exact ⟨case_000938_rowFirst, case_000938_fixedSecond⟩

private theorem case_000938_existsRows :
    ExistsOppOneMinusVarFirstRows case_000938_rank.val case_000938_mask :=
  ⟨case_000938_support, case_000938_sourceAgrees, case_000938_rows⟩

private theorem case_000938_covered :
    RowPropertyParametricCovered case_000938_rank.val case_000938_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000938_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000939_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000939_mask : SignMask := ⟨57, by decide⟩
private def case_000939_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000939_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000939_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000939_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000939_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000939_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000939_rankWord :
    rankPairWord? case_000939_word = some case_000939_rank := by
  decide

private theorem case_000939_unrank :
    unrankPairWord case_000939_rank = case_000939_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000939_word case_000939_rank).1
    case_000939_rankWord |>.symm

private theorem case_000939_seqChoice :
    translationChoiceSeq case_000939_word case_000939_mask = case_000939_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000939_seqAtRank :
    translationSeqAtRankMask case_000939_rank case_000939_mask = case_000939_seq := by
  rw [translationSeqAtRankMask, case_000939_unrank]
  exact case_000939_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000939_bAtRank :
    translationBAtRankMask case_000939_rank case_000939_mask = case_000939_b := by
  rw [translationBAtRankMask, case_000939_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000939_b, case_000939_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000939_firstLine_eq :
    case_000939_support.firstLine case_000939_seq case_000939_b = case_000939_firstLine := by
  norm_num [case_000939_firstLine, case_000939_support, case_000939_seq, case_000939_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000939_secondLine_eq :
    case_000939_support.secondLine case_000939_seq case_000939_b = case_000939_secondLine := by
  norm_num [case_000939_secondLine, case_000939_support, case_000939_seq, case_000939_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000939_sourceAgrees :
    SourceAgrees case_000939_support case_000939_rank.val case_000939_mask := by
  intro hlt
  have hrank : (⟨case_000939_rank.val, hlt⟩ : Fin numPairWords) = case_000939_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000939_rank.val, hlt⟩ case_000939_mask =
        case_000939_seq := by
    simpa [hrank] using case_000939_seqAtRank
  simp [SourceChecks, hseq, case_000939_support,
    checkTranslationConstraintSource, case_000939_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000939_rows :
    EqEqPosVarSecondRows case_000939_support case_000939_rank.val case_000939_mask := by
  intro hlt
  have hrank : (⟨case_000939_rank.val, hlt⟩ : Fin numPairWords) = case_000939_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000939_rank.val, hlt⟩ case_000939_mask =
        case_000939_seq := by
    simpa [hrank] using case_000939_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000939_rank.val, hlt⟩ case_000939_mask =
        case_000939_b := by
    simpa [hrank] using case_000939_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000939_support case_000939_rank.val hlt
          case_000939_mask = case_000939_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000939_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000939_support case_000939_rank.val hlt
          case_000939_mask = case_000939_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000939_secondLine_eq]
  have case_000939_fixedFirst :
      FixedRow (FirstLineAt case_000939_support case_000939_rank.val hlt case_000939_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000939_firstLine, FixedRow]
  have case_000939_rowSecond :
      EqEqPosRow (SecondLineAt case_000939_support case_000939_rank.val hlt case_000939_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000939_secondLine, EqEqPosRow]
  exact ⟨case_000939_fixedFirst, case_000939_rowSecond⟩

private theorem case_000939_existsRows :
    ExistsEqEqPosVarSecondRows case_000939_rank.val case_000939_mask :=
  ⟨case_000939_support, case_000939_sourceAgrees, case_000939_rows⟩

private theorem case_000939_covered :
    RowPropertyParametricCovered case_000939_rank.val case_000939_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000939_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000940_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000940_mask : SignMask := ⟨61, by decide⟩
private def case_000940_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000940_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000940_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000940_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-4/9) }
private def case_000940_firstLine : StrictLin2 := { a := (-25/51), b := (25/51), c := (-121/51) }
private def case_000940_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000940_rankWord :
    rankPairWord? case_000940_word = some case_000940_rank := by
  decide

private theorem case_000940_unrank :
    unrankPairWord case_000940_rank = case_000940_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000940_word case_000940_rank).1
    case_000940_rankWord |>.symm

private theorem case_000940_seqChoice :
    translationChoiceSeq case_000940_word case_000940_mask = case_000940_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000940_seqAtRank :
    translationSeqAtRankMask case_000940_rank case_000940_mask = case_000940_seq := by
  rw [translationSeqAtRankMask, case_000940_unrank]
  exact case_000940_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000940_bAtRank :
    translationBAtRankMask case_000940_rank case_000940_mask = case_000940_b := by
  rw [translationBAtRankMask, case_000940_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000940_b, case_000940_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000940_firstLine_eq :
    case_000940_support.firstLine case_000940_seq case_000940_b = case_000940_firstLine := by
  norm_num [case_000940_firstLine, case_000940_support, case_000940_seq, case_000940_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000940_secondLine_eq :
    case_000940_support.secondLine case_000940_seq case_000940_b = case_000940_secondLine := by
  norm_num [case_000940_secondLine, case_000940_support, case_000940_seq, case_000940_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000940_sourceAgrees :
    SourceAgrees case_000940_support case_000940_rank.val case_000940_mask := by
  intro hlt
  have hrank : (⟨case_000940_rank.val, hlt⟩ : Fin numPairWords) = case_000940_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000940_rank.val, hlt⟩ case_000940_mask =
        case_000940_seq := by
    simpa [hrank] using case_000940_seqAtRank
  simp [SourceChecks, hseq, case_000940_support,
    checkTranslationConstraintSource, case_000940_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000940_rows :
    OppOneMinusVarFirstRows case_000940_support case_000940_rank.val case_000940_mask := by
  intro hlt
  have hrank : (⟨case_000940_rank.val, hlt⟩ : Fin numPairWords) = case_000940_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000940_rank.val, hlt⟩ case_000940_mask =
        case_000940_seq := by
    simpa [hrank] using case_000940_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000940_rank.val, hlt⟩ case_000940_mask =
        case_000940_b := by
    simpa [hrank] using case_000940_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000940_support case_000940_rank.val hlt
          case_000940_mask = case_000940_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000940_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000940_support case_000940_rank.val hlt
          case_000940_mask = case_000940_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000940_secondLine_eq]
  have case_000940_rowFirst :
      OppPosRow (FirstLineAt case_000940_support case_000940_rank.val hlt case_000940_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000940_firstLine, OppPosRow]
  have case_000940_fixedSecond :
      FixedRow (SecondLineAt case_000940_support case_000940_rank.val hlt case_000940_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000940_secondLine, FixedRow]
  exact ⟨case_000940_rowFirst, case_000940_fixedSecond⟩

private theorem case_000940_existsRows :
    ExistsOppOneMinusVarFirstRows case_000940_rank.val case_000940_mask :=
  ⟨case_000940_support, case_000940_sourceAgrees, case_000940_rows⟩

private theorem case_000940_covered :
    RowPropertyParametricCovered case_000940_rank.val case_000940_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000940_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000941_rank : Fin numPairWords := ⟨641, by decide⟩
private def case_000941_mask : SignMask := ⟨63, by decide⟩
private def case_000941_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000941_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000941_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000941_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000941_firstLine : StrictLin2 := { a := (50/39), b := (-50/39), c := (-116/39) }
private def case_000941_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000941_rankWord :
    rankPairWord? case_000941_word = some case_000941_rank := by
  decide

private theorem case_000941_unrank :
    unrankPairWord case_000941_rank = case_000941_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000941_word case_000941_rank).1
    case_000941_rankWord |>.symm

private theorem case_000941_seqChoice :
    translationChoiceSeq case_000941_word case_000941_mask = case_000941_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000941_seqAtRank :
    translationSeqAtRankMask case_000941_rank case_000941_mask = case_000941_seq := by
  rw [translationSeqAtRankMask, case_000941_unrank]
  exact case_000941_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000941_bAtRank :
    translationBAtRankMask case_000941_rank case_000941_mask = case_000941_b := by
  rw [translationBAtRankMask, case_000941_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000941_b, case_000941_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000941_firstLine_eq :
    case_000941_support.firstLine case_000941_seq case_000941_b = case_000941_firstLine := by
  norm_num [case_000941_firstLine, case_000941_support, case_000941_seq, case_000941_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000941_secondLine_eq :
    case_000941_support.secondLine case_000941_seq case_000941_b = case_000941_secondLine := by
  norm_num [case_000941_secondLine, case_000941_support, case_000941_seq, case_000941_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000941_sourceAgrees :
    SourceAgrees case_000941_support case_000941_rank.val case_000941_mask := by
  intro hlt
  have hrank : (⟨case_000941_rank.val, hlt⟩ : Fin numPairWords) = case_000941_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000941_rank.val, hlt⟩ case_000941_mask =
        case_000941_seq := by
    simpa [hrank] using case_000941_seqAtRank
  simp [SourceChecks, hseq, case_000941_support,
    checkTranslationConstraintSource, case_000941_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000941_rows :
    OppMinusOneVarFirstRows case_000941_support case_000941_rank.val case_000941_mask := by
  intro hlt
  have hrank : (⟨case_000941_rank.val, hlt⟩ : Fin numPairWords) = case_000941_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000941_rank.val, hlt⟩ case_000941_mask =
        case_000941_seq := by
    simpa [hrank] using case_000941_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000941_rank.val, hlt⟩ case_000941_mask =
        case_000941_b := by
    simpa [hrank] using case_000941_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000941_support case_000941_rank.val hlt
          case_000941_mask = case_000941_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000941_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000941_support case_000941_rank.val hlt
          case_000941_mask = case_000941_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000941_secondLine_eq]
  have case_000941_rowFirst :
      OppNegRow (FirstLineAt case_000941_support case_000941_rank.val hlt case_000941_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000941_firstLine, OppNegRow]
  have case_000941_fixedSecond :
      FixedRow (SecondLineAt case_000941_support case_000941_rank.val hlt case_000941_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000941_secondLine, FixedRow]
  exact ⟨case_000941_rowFirst, case_000941_fixedSecond⟩

private theorem case_000941_existsRows :
    ExistsOppMinusOneVarFirstRows case_000941_rank.val case_000941_mask :=
  ⟨case_000941_support, case_000941_sourceAgrees, case_000941_rows⟩

private theorem case_000941_covered :
    RowPropertyParametricCovered case_000941_rank.val case_000941_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000941_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000942_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000942_mask : SignMask := ⟨16, by decide⟩
private def case_000942_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000942_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000942_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000942_b : Vec3 Rat := { x := (-76/27), y := (-332/27), z := (-172/27) }
private def case_000942_firstLine : StrictLin2 := { a := -1, b := -1, c := (-233/19) }
private def case_000942_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000942_rankWord :
    rankPairWord? case_000942_word = some case_000942_rank := by
  decide

private theorem case_000942_unrank :
    unrankPairWord case_000942_rank = case_000942_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000942_word case_000942_rank).1
    case_000942_rankWord |>.symm

private theorem case_000942_seqChoice :
    translationChoiceSeq case_000942_word case_000942_mask = case_000942_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000942_seqAtRank :
    translationSeqAtRankMask case_000942_rank case_000942_mask = case_000942_seq := by
  rw [translationSeqAtRankMask, case_000942_unrank]
  exact case_000942_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000942_bAtRank :
    translationBAtRankMask case_000942_rank case_000942_mask = case_000942_b := by
  rw [translationBAtRankMask, case_000942_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000942_b, case_000942_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000942_firstLine_eq :
    case_000942_support.firstLine case_000942_seq case_000942_b = case_000942_firstLine := by
  norm_num [case_000942_firstLine, case_000942_support, case_000942_seq, case_000942_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000942_secondLine_eq :
    case_000942_support.secondLine case_000942_seq case_000942_b = case_000942_secondLine := by
  norm_num [case_000942_secondLine, case_000942_support, case_000942_seq, case_000942_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000942_sourceAgrees :
    SourceAgrees case_000942_support case_000942_rank.val case_000942_mask := by
  intro hlt
  have hrank : (⟨case_000942_rank.val, hlt⟩ : Fin numPairWords) = case_000942_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000942_rank.val, hlt⟩ case_000942_mask =
        case_000942_seq := by
    simpa [hrank] using case_000942_seqAtRank
  simp [SourceChecks, hseq, case_000942_support,
    checkTranslationConstraintSource, case_000942_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000942_rows :
    EqEqPosVarFirstRows case_000942_support case_000942_rank.val case_000942_mask := by
  intro hlt
  have hrank : (⟨case_000942_rank.val, hlt⟩ : Fin numPairWords) = case_000942_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000942_rank.val, hlt⟩ case_000942_mask =
        case_000942_seq := by
    simpa [hrank] using case_000942_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000942_rank.val, hlt⟩ case_000942_mask =
        case_000942_b := by
    simpa [hrank] using case_000942_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000942_support case_000942_rank.val hlt
          case_000942_mask = case_000942_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000942_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000942_support case_000942_rank.val hlt
          case_000942_mask = case_000942_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000942_secondLine_eq]
  have case_000942_rowFirst :
      EqEqPosRow (FirstLineAt case_000942_support case_000942_rank.val hlt case_000942_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000942_firstLine, EqEqPosRow]
  have case_000942_fixedSecond :
      FixedRow (SecondLineAt case_000942_support case_000942_rank.val hlt case_000942_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000942_secondLine, FixedRow]
  exact ⟨case_000942_rowFirst, case_000942_fixedSecond⟩

private theorem case_000942_existsRows :
    ExistsEqEqPosVarFirstRows case_000942_rank.val case_000942_mask :=
  ⟨case_000942_support, case_000942_sourceAgrees, case_000942_rows⟩

private theorem case_000942_covered :
    RowPropertyParametricCovered case_000942_rank.val case_000942_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000942_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000943_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000943_mask : SignMask := ⟨18, by decide⟩
private def case_000943_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000943_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000943_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000943_b : Vec3 Rat := { x := (-76/27), y := (-332/27), z := (44/27) }
private def case_000943_firstLine : StrictLin2 := { a := -1, b := -1, c := (-125/19) }
private def case_000943_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000943_rankWord :
    rankPairWord? case_000943_word = some case_000943_rank := by
  decide

private theorem case_000943_unrank :
    unrankPairWord case_000943_rank = case_000943_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000943_word case_000943_rank).1
    case_000943_rankWord |>.symm

private theorem case_000943_seqChoice :
    translationChoiceSeq case_000943_word case_000943_mask = case_000943_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000943_seqAtRank :
    translationSeqAtRankMask case_000943_rank case_000943_mask = case_000943_seq := by
  rw [translationSeqAtRankMask, case_000943_unrank]
  exact case_000943_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000943_bAtRank :
    translationBAtRankMask case_000943_rank case_000943_mask = case_000943_b := by
  rw [translationBAtRankMask, case_000943_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000943_b, case_000943_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000943_firstLine_eq :
    case_000943_support.firstLine case_000943_seq case_000943_b = case_000943_firstLine := by
  norm_num [case_000943_firstLine, case_000943_support, case_000943_seq, case_000943_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000943_secondLine_eq :
    case_000943_support.secondLine case_000943_seq case_000943_b = case_000943_secondLine := by
  norm_num [case_000943_secondLine, case_000943_support, case_000943_seq, case_000943_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000943_sourceAgrees :
    SourceAgrees case_000943_support case_000943_rank.val case_000943_mask := by
  intro hlt
  have hrank : (⟨case_000943_rank.val, hlt⟩ : Fin numPairWords) = case_000943_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000943_rank.val, hlt⟩ case_000943_mask =
        case_000943_seq := by
    simpa [hrank] using case_000943_seqAtRank
  simp [SourceChecks, hseq, case_000943_support,
    checkTranslationConstraintSource, case_000943_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000943_rows :
    EqEqPosVarFirstRows case_000943_support case_000943_rank.val case_000943_mask := by
  intro hlt
  have hrank : (⟨case_000943_rank.val, hlt⟩ : Fin numPairWords) = case_000943_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000943_rank.val, hlt⟩ case_000943_mask =
        case_000943_seq := by
    simpa [hrank] using case_000943_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000943_rank.val, hlt⟩ case_000943_mask =
        case_000943_b := by
    simpa [hrank] using case_000943_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000943_support case_000943_rank.val hlt
          case_000943_mask = case_000943_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000943_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000943_support case_000943_rank.val hlt
          case_000943_mask = case_000943_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000943_secondLine_eq]
  have case_000943_rowFirst :
      EqEqPosRow (FirstLineAt case_000943_support case_000943_rank.val hlt case_000943_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000943_firstLine, EqEqPosRow]
  have case_000943_fixedSecond :
      FixedRow (SecondLineAt case_000943_support case_000943_rank.val hlt case_000943_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000943_secondLine, FixedRow]
  exact ⟨case_000943_rowFirst, case_000943_fixedSecond⟩

private theorem case_000943_existsRows :
    ExistsEqEqPosVarFirstRows case_000943_rank.val case_000943_mask :=
  ⟨case_000943_support, case_000943_sourceAgrees, case_000943_rows⟩

private theorem case_000943_covered :
    RowPropertyParametricCovered case_000943_rank.val case_000943_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000943_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000944_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000944_mask : SignMask := ⟨22, by decide⟩
private def case_000944_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000944_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000944_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000944_b : Vec3 Rat := { x := (-124/27), y := (-284/27), z := (284/27) }
private def case_000944_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000944_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000944_rankWord :
    rankPairWord? case_000944_word = some case_000944_rank := by
  decide

private theorem case_000944_unrank :
    unrankPairWord case_000944_rank = case_000944_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000944_word case_000944_rank).1
    case_000944_rankWord |>.symm

private theorem case_000944_seqChoice :
    translationChoiceSeq case_000944_word case_000944_mask = case_000944_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000944_seqAtRank :
    translationSeqAtRankMask case_000944_rank case_000944_mask = case_000944_seq := by
  rw [translationSeqAtRankMask, case_000944_unrank]
  exact case_000944_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000944_bAtRank :
    translationBAtRankMask case_000944_rank case_000944_mask = case_000944_b := by
  rw [translationBAtRankMask, case_000944_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000944_b, case_000944_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000944_firstLine_eq :
    case_000944_support.firstLine case_000944_seq case_000944_b = case_000944_firstLine := by
  norm_num [case_000944_firstLine, case_000944_support, case_000944_seq, case_000944_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000944_secondLine_eq :
    case_000944_support.secondLine case_000944_seq case_000944_b = case_000944_secondLine := by
  norm_num [case_000944_secondLine, case_000944_support, case_000944_seq, case_000944_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000944_sourceAgrees :
    SourceAgrees case_000944_support case_000944_rank.val case_000944_mask := by
  intro hlt
  have hrank : (⟨case_000944_rank.val, hlt⟩ : Fin numPairWords) = case_000944_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000944_rank.val, hlt⟩ case_000944_mask =
        case_000944_seq := by
    simpa [hrank] using case_000944_seqAtRank
  simp [SourceChecks, hseq, case_000944_support,
    checkTranslationConstraintSource, case_000944_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000944_rows :
    EqEqPosVarFirstRows case_000944_support case_000944_rank.val case_000944_mask := by
  intro hlt
  have hrank : (⟨case_000944_rank.val, hlt⟩ : Fin numPairWords) = case_000944_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000944_rank.val, hlt⟩ case_000944_mask =
        case_000944_seq := by
    simpa [hrank] using case_000944_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000944_rank.val, hlt⟩ case_000944_mask =
        case_000944_b := by
    simpa [hrank] using case_000944_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000944_support case_000944_rank.val hlt
          case_000944_mask = case_000944_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000944_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000944_support case_000944_rank.val hlt
          case_000944_mask = case_000944_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000944_secondLine_eq]
  have case_000944_rowFirst :
      EqEqPosRow (FirstLineAt case_000944_support case_000944_rank.val hlt case_000944_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000944_firstLine, EqEqPosRow]
  have case_000944_fixedSecond :
      FixedRow (SecondLineAt case_000944_support case_000944_rank.val hlt case_000944_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000944_secondLine, FixedRow]
  exact ⟨case_000944_rowFirst, case_000944_fixedSecond⟩

private theorem case_000944_existsRows :
    ExistsEqEqPosVarFirstRows case_000944_rank.val case_000944_mask :=
  ⟨case_000944_support, case_000944_sourceAgrees, case_000944_rows⟩

private theorem case_000944_covered :
    RowPropertyParametricCovered case_000944_rank.val case_000944_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000944_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000945_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000945_mask : SignMask := ⟨24, by decide⟩
private def case_000945_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000945_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000945_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000945_b : Vec3 Rat := { x := (-220/27), y := (-188/27), z := (-316/27) }
private def case_000945_firstLine : StrictLin2 := { a := -1, b := -1, c := (-197/55) }
private def case_000945_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000945_rankWord :
    rankPairWord? case_000945_word = some case_000945_rank := by
  decide

private theorem case_000945_unrank :
    unrankPairWord case_000945_rank = case_000945_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000945_word case_000945_rank).1
    case_000945_rankWord |>.symm

private theorem case_000945_seqChoice :
    translationChoiceSeq case_000945_word case_000945_mask = case_000945_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000945_seqAtRank :
    translationSeqAtRankMask case_000945_rank case_000945_mask = case_000945_seq := by
  rw [translationSeqAtRankMask, case_000945_unrank]
  exact case_000945_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000945_bAtRank :
    translationBAtRankMask case_000945_rank case_000945_mask = case_000945_b := by
  rw [translationBAtRankMask, case_000945_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000945_b, case_000945_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000945_firstLine_eq :
    case_000945_support.firstLine case_000945_seq case_000945_b = case_000945_firstLine := by
  norm_num [case_000945_firstLine, case_000945_support, case_000945_seq, case_000945_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000945_secondLine_eq :
    case_000945_support.secondLine case_000945_seq case_000945_b = case_000945_secondLine := by
  norm_num [case_000945_secondLine, case_000945_support, case_000945_seq, case_000945_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000945_sourceAgrees :
    SourceAgrees case_000945_support case_000945_rank.val case_000945_mask := by
  intro hlt
  have hrank : (⟨case_000945_rank.val, hlt⟩ : Fin numPairWords) = case_000945_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000945_rank.val, hlt⟩ case_000945_mask =
        case_000945_seq := by
    simpa [hrank] using case_000945_seqAtRank
  simp [SourceChecks, hseq, case_000945_support,
    checkTranslationConstraintSource, case_000945_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000945_rows :
    EqEqPosVarFirstRows case_000945_support case_000945_rank.val case_000945_mask := by
  intro hlt
  have hrank : (⟨case_000945_rank.val, hlt⟩ : Fin numPairWords) = case_000945_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000945_rank.val, hlt⟩ case_000945_mask =
        case_000945_seq := by
    simpa [hrank] using case_000945_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000945_rank.val, hlt⟩ case_000945_mask =
        case_000945_b := by
    simpa [hrank] using case_000945_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000945_support case_000945_rank.val hlt
          case_000945_mask = case_000945_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000945_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000945_support case_000945_rank.val hlt
          case_000945_mask = case_000945_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000945_secondLine_eq]
  have case_000945_rowFirst :
      EqEqPosRow (FirstLineAt case_000945_support case_000945_rank.val hlt case_000945_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000945_firstLine, EqEqPosRow]
  have case_000945_fixedSecond :
      FixedRow (SecondLineAt case_000945_support case_000945_rank.val hlt case_000945_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000945_secondLine, FixedRow]
  exact ⟨case_000945_rowFirst, case_000945_fixedSecond⟩

private theorem case_000945_existsRows :
    ExistsEqEqPosVarFirstRows case_000945_rank.val case_000945_mask :=
  ⟨case_000945_support, case_000945_sourceAgrees, case_000945_rows⟩

private theorem case_000945_covered :
    RowPropertyParametricCovered case_000945_rank.val case_000945_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000945_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000946_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000946_mask : SignMask := ⟨41, by decide⟩
private def case_000946_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000946_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000946_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000946_b : Vec3 Rat := { x := (-92/27), y := (284/27), z := (-284/27) }
private def case_000946_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000946_secondLine : StrictLin2 := { a := (-27/284), b := (-27/284), c := (-27/142) }

private theorem case_000946_rankWord :
    rankPairWord? case_000946_word = some case_000946_rank := by
  decide

private theorem case_000946_unrank :
    unrankPairWord case_000946_rank = case_000946_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000946_word case_000946_rank).1
    case_000946_rankWord |>.symm

private theorem case_000946_seqChoice :
    translationChoiceSeq case_000946_word case_000946_mask = case_000946_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000946_seqAtRank :
    translationSeqAtRankMask case_000946_rank case_000946_mask = case_000946_seq := by
  rw [translationSeqAtRankMask, case_000946_unrank]
  exact case_000946_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000946_bAtRank :
    translationBAtRankMask case_000946_rank case_000946_mask = case_000946_b := by
  rw [translationBAtRankMask, case_000946_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000946_b, case_000946_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000946_firstLine_eq :
    case_000946_support.firstLine case_000946_seq case_000946_b = case_000946_firstLine := by
  norm_num [case_000946_firstLine, case_000946_support, case_000946_seq, case_000946_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000946_secondLine_eq :
    case_000946_support.secondLine case_000946_seq case_000946_b = case_000946_secondLine := by
  norm_num [case_000946_secondLine, case_000946_support, case_000946_seq, case_000946_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000946_sourceAgrees :
    SourceAgrees case_000946_support case_000946_rank.val case_000946_mask := by
  intro hlt
  have hrank : (⟨case_000946_rank.val, hlt⟩ : Fin numPairWords) = case_000946_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000946_rank.val, hlt⟩ case_000946_mask =
        case_000946_seq := by
    simpa [hrank] using case_000946_seqAtRank
  simp [SourceChecks, hseq, case_000946_support,
    checkTranslationConstraintSource, case_000946_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000946_rows :
    EqEqPosVarSecondRows case_000946_support case_000946_rank.val case_000946_mask := by
  intro hlt
  have hrank : (⟨case_000946_rank.val, hlt⟩ : Fin numPairWords) = case_000946_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000946_rank.val, hlt⟩ case_000946_mask =
        case_000946_seq := by
    simpa [hrank] using case_000946_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000946_rank.val, hlt⟩ case_000946_mask =
        case_000946_b := by
    simpa [hrank] using case_000946_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000946_support case_000946_rank.val hlt
          case_000946_mask = case_000946_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000946_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000946_support case_000946_rank.val hlt
          case_000946_mask = case_000946_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000946_secondLine_eq]
  have case_000946_fixedFirst :
      FixedRow (FirstLineAt case_000946_support case_000946_rank.val hlt case_000946_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000946_firstLine, FixedRow]
  have case_000946_rowSecond :
      EqEqPosRow (SecondLineAt case_000946_support case_000946_rank.val hlt case_000946_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000946_secondLine, EqEqPosRow]
  exact ⟨case_000946_fixedFirst, case_000946_rowSecond⟩

private theorem case_000946_existsRows :
    ExistsEqEqPosVarSecondRows case_000946_rank.val case_000946_mask :=
  ⟨case_000946_support, case_000946_sourceAgrees, case_000946_rows⟩

private theorem case_000946_covered :
    RowPropertyParametricCovered case_000946_rank.val case_000946_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000946_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000947_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000947_mask : SignMask := ⟨54, by decide⟩
private def case_000947_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000947_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000947_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000947_b : Vec3 Rat := { x := (-236/27), y := (-76/27), z := (364/27) }
private def case_000947_firstLine : StrictLin2 := { a := -1, b := 1, c := (-161/59) }
private def case_000947_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000947_rankWord :
    rankPairWord? case_000947_word = some case_000947_rank := by
  decide

private theorem case_000947_unrank :
    unrankPairWord case_000947_rank = case_000947_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000947_word case_000947_rank).1
    case_000947_rankWord |>.symm

private theorem case_000947_seqChoice :
    translationChoiceSeq case_000947_word case_000947_mask = case_000947_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000947_seqAtRank :
    translationSeqAtRankMask case_000947_rank case_000947_mask = case_000947_seq := by
  rw [translationSeqAtRankMask, case_000947_unrank]
  exact case_000947_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000947_bAtRank :
    translationBAtRankMask case_000947_rank case_000947_mask = case_000947_b := by
  rw [translationBAtRankMask, case_000947_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000947_b, case_000947_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000947_firstLine_eq :
    case_000947_support.firstLine case_000947_seq case_000947_b = case_000947_firstLine := by
  norm_num [case_000947_firstLine, case_000947_support, case_000947_seq, case_000947_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000947_secondLine_eq :
    case_000947_support.secondLine case_000947_seq case_000947_b = case_000947_secondLine := by
  norm_num [case_000947_secondLine, case_000947_support, case_000947_seq, case_000947_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000947_sourceAgrees :
    SourceAgrees case_000947_support case_000947_rank.val case_000947_mask := by
  intro hlt
  have hrank : (⟨case_000947_rank.val, hlt⟩ : Fin numPairWords) = case_000947_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000947_rank.val, hlt⟩ case_000947_mask =
        case_000947_seq := by
    simpa [hrank] using case_000947_seqAtRank
  simp [SourceChecks, hseq, case_000947_support,
    checkTranslationConstraintSource, case_000947_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000947_rows :
    OppOneMinusVarFirstRows case_000947_support case_000947_rank.val case_000947_mask := by
  intro hlt
  have hrank : (⟨case_000947_rank.val, hlt⟩ : Fin numPairWords) = case_000947_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000947_rank.val, hlt⟩ case_000947_mask =
        case_000947_seq := by
    simpa [hrank] using case_000947_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000947_rank.val, hlt⟩ case_000947_mask =
        case_000947_b := by
    simpa [hrank] using case_000947_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000947_support case_000947_rank.val hlt
          case_000947_mask = case_000947_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000947_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000947_support case_000947_rank.val hlt
          case_000947_mask = case_000947_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000947_secondLine_eq]
  have case_000947_rowFirst :
      OppPosRow (FirstLineAt case_000947_support case_000947_rank.val hlt case_000947_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000947_firstLine, OppPosRow]
  have case_000947_fixedSecond :
      FixedRow (SecondLineAt case_000947_support case_000947_rank.val hlt case_000947_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000947_secondLine, FixedRow]
  exact ⟨case_000947_rowFirst, case_000947_fixedSecond⟩

private theorem case_000947_existsRows :
    ExistsOppOneMinusVarFirstRows case_000947_rank.val case_000947_mask :=
  ⟨case_000947_support, case_000947_sourceAgrees, case_000947_rows⟩

private theorem case_000947_covered :
    RowPropertyParametricCovered case_000947_rank.val case_000947_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000947_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000948_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000948_mask : SignMask := ⟨57, by decide⟩
private def case_000948_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000948_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000948_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000948_b : Vec3 Rat := { x := (-332/27), y := (236/27), z := (-236/27) }
private def case_000948_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000948_secondLine : StrictLin2 := { a := (-27/236), b := (-27/236), c := (-27/118) }

private theorem case_000948_rankWord :
    rankPairWord? case_000948_word = some case_000948_rank := by
  decide

private theorem case_000948_unrank :
    unrankPairWord case_000948_rank = case_000948_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000948_word case_000948_rank).1
    case_000948_rankWord |>.symm

private theorem case_000948_seqChoice :
    translationChoiceSeq case_000948_word case_000948_mask = case_000948_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000948_seqAtRank :
    translationSeqAtRankMask case_000948_rank case_000948_mask = case_000948_seq := by
  rw [translationSeqAtRankMask, case_000948_unrank]
  exact case_000948_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000948_bAtRank :
    translationBAtRankMask case_000948_rank case_000948_mask = case_000948_b := by
  rw [translationBAtRankMask, case_000948_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000948_b, case_000948_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000948_firstLine_eq :
    case_000948_support.firstLine case_000948_seq case_000948_b = case_000948_firstLine := by
  norm_num [case_000948_firstLine, case_000948_support, case_000948_seq, case_000948_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000948_secondLine_eq :
    case_000948_support.secondLine case_000948_seq case_000948_b = case_000948_secondLine := by
  norm_num [case_000948_secondLine, case_000948_support, case_000948_seq, case_000948_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000948_sourceAgrees :
    SourceAgrees case_000948_support case_000948_rank.val case_000948_mask := by
  intro hlt
  have hrank : (⟨case_000948_rank.val, hlt⟩ : Fin numPairWords) = case_000948_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000948_rank.val, hlt⟩ case_000948_mask =
        case_000948_seq := by
    simpa [hrank] using case_000948_seqAtRank
  simp [SourceChecks, hseq, case_000948_support,
    checkTranslationConstraintSource, case_000948_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000948_rows :
    EqEqPosVarSecondRows case_000948_support case_000948_rank.val case_000948_mask := by
  intro hlt
  have hrank : (⟨case_000948_rank.val, hlt⟩ : Fin numPairWords) = case_000948_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000948_rank.val, hlt⟩ case_000948_mask =
        case_000948_seq := by
    simpa [hrank] using case_000948_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000948_rank.val, hlt⟩ case_000948_mask =
        case_000948_b := by
    simpa [hrank] using case_000948_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000948_support case_000948_rank.val hlt
          case_000948_mask = case_000948_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000948_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000948_support case_000948_rank.val hlt
          case_000948_mask = case_000948_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000948_secondLine_eq]
  have case_000948_fixedFirst :
      FixedRow (FirstLineAt case_000948_support case_000948_rank.val hlt case_000948_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000948_firstLine, FixedRow]
  have case_000948_rowSecond :
      EqEqPosRow (SecondLineAt case_000948_support case_000948_rank.val hlt case_000948_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000948_secondLine, EqEqPosRow]
  exact ⟨case_000948_fixedFirst, case_000948_rowSecond⟩

private theorem case_000948_existsRows :
    ExistsEqEqPosVarSecondRows case_000948_rank.val case_000948_mask :=
  ⟨case_000948_support, case_000948_sourceAgrees, case_000948_rows⟩

private theorem case_000948_covered :
    RowPropertyParametricCovered case_000948_rank.val case_000948_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000948_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000949_rank : Fin numPairWords := ⟨647, by decide⟩
private def case_000949_mask : SignMask := ⟨63, by decide⟩
private def case_000949_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000949_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000949_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000949_b : Vec3 Rat := { x := (-380/27), y := (284/27), z := (220/27) }
private def case_000949_firstLine : StrictLin2 := { a := (190/153), b := (-190/153), c := (-28/17) }
private def case_000949_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000949_rankWord :
    rankPairWord? case_000949_word = some case_000949_rank := by
  decide

private theorem case_000949_unrank :
    unrankPairWord case_000949_rank = case_000949_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000949_word case_000949_rank).1
    case_000949_rankWord |>.symm

private theorem case_000949_seqChoice :
    translationChoiceSeq case_000949_word case_000949_mask = case_000949_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000949_seqAtRank :
    translationSeqAtRankMask case_000949_rank case_000949_mask = case_000949_seq := by
  rw [translationSeqAtRankMask, case_000949_unrank]
  exact case_000949_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000949_bAtRank :
    translationBAtRankMask case_000949_rank case_000949_mask = case_000949_b := by
  rw [translationBAtRankMask, case_000949_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000949_b, case_000949_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000949_firstLine_eq :
    case_000949_support.firstLine case_000949_seq case_000949_b = case_000949_firstLine := by
  norm_num [case_000949_firstLine, case_000949_support, case_000949_seq, case_000949_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000949_secondLine_eq :
    case_000949_support.secondLine case_000949_seq case_000949_b = case_000949_secondLine := by
  norm_num [case_000949_secondLine, case_000949_support, case_000949_seq, case_000949_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000949_sourceAgrees :
    SourceAgrees case_000949_support case_000949_rank.val case_000949_mask := by
  intro hlt
  have hrank : (⟨case_000949_rank.val, hlt⟩ : Fin numPairWords) = case_000949_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000949_rank.val, hlt⟩ case_000949_mask =
        case_000949_seq := by
    simpa [hrank] using case_000949_seqAtRank
  simp [SourceChecks, hseq, case_000949_support,
    checkTranslationConstraintSource, case_000949_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000949_rows :
    OppMinusOneVarFirstRows case_000949_support case_000949_rank.val case_000949_mask := by
  intro hlt
  have hrank : (⟨case_000949_rank.val, hlt⟩ : Fin numPairWords) = case_000949_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000949_rank.val, hlt⟩ case_000949_mask =
        case_000949_seq := by
    simpa [hrank] using case_000949_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000949_rank.val, hlt⟩ case_000949_mask =
        case_000949_b := by
    simpa [hrank] using case_000949_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000949_support case_000949_rank.val hlt
          case_000949_mask = case_000949_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000949_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000949_support case_000949_rank.val hlt
          case_000949_mask = case_000949_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000949_secondLine_eq]
  have case_000949_rowFirst :
      OppNegRow (FirstLineAt case_000949_support case_000949_rank.val hlt case_000949_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000949_firstLine, OppNegRow]
  have case_000949_fixedSecond :
      FixedRow (SecondLineAt case_000949_support case_000949_rank.val hlt case_000949_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000949_secondLine, FixedRow]
  exact ⟨case_000949_rowFirst, case_000949_fixedSecond⟩

private theorem case_000949_existsRows :
    ExistsOppMinusOneVarFirstRows case_000949_rank.val case_000949_mask :=
  ⟨case_000949_support, case_000949_sourceAgrees, case_000949_rows⟩

private theorem case_000949_covered :
    RowPropertyParametricCovered case_000949_rank.val case_000949_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000949_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000950_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000950_mask : SignMask := ⟨8, by decide⟩
private def case_000950_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000950_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000950_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000950_b : Vec3 Rat := { x := (-76/27), y := (-236/27), z := (-364/27) }
private def case_000950_firstLine : StrictLin2 := { a := -1, b := -1, c := (-281/19) }
private def case_000950_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000950_rankWord :
    rankPairWord? case_000950_word = some case_000950_rank := by
  decide

private theorem case_000950_unrank :
    unrankPairWord case_000950_rank = case_000950_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000950_word case_000950_rank).1
    case_000950_rankWord |>.symm

private theorem case_000950_seqChoice :
    translationChoiceSeq case_000950_word case_000950_mask = case_000950_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000950_seqAtRank :
    translationSeqAtRankMask case_000950_rank case_000950_mask = case_000950_seq := by
  rw [translationSeqAtRankMask, case_000950_unrank]
  exact case_000950_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000950_bAtRank :
    translationBAtRankMask case_000950_rank case_000950_mask = case_000950_b := by
  rw [translationBAtRankMask, case_000950_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000950_b, case_000950_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000950_firstLine_eq :
    case_000950_support.firstLine case_000950_seq case_000950_b = case_000950_firstLine := by
  norm_num [case_000950_firstLine, case_000950_support, case_000950_seq, case_000950_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000950_secondLine_eq :
    case_000950_support.secondLine case_000950_seq case_000950_b = case_000950_secondLine := by
  norm_num [case_000950_secondLine, case_000950_support, case_000950_seq, case_000950_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000950_sourceAgrees :
    SourceAgrees case_000950_support case_000950_rank.val case_000950_mask := by
  intro hlt
  have hrank : (⟨case_000950_rank.val, hlt⟩ : Fin numPairWords) = case_000950_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000950_rank.val, hlt⟩ case_000950_mask =
        case_000950_seq := by
    simpa [hrank] using case_000950_seqAtRank
  simp [SourceChecks, hseq, case_000950_support,
    checkTranslationConstraintSource, case_000950_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000950_rows :
    EqEqPosVarFirstRows case_000950_support case_000950_rank.val case_000950_mask := by
  intro hlt
  have hrank : (⟨case_000950_rank.val, hlt⟩ : Fin numPairWords) = case_000950_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000950_rank.val, hlt⟩ case_000950_mask =
        case_000950_seq := by
    simpa [hrank] using case_000950_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000950_rank.val, hlt⟩ case_000950_mask =
        case_000950_b := by
    simpa [hrank] using case_000950_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000950_support case_000950_rank.val hlt
          case_000950_mask = case_000950_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000950_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000950_support case_000950_rank.val hlt
          case_000950_mask = case_000950_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000950_secondLine_eq]
  have case_000950_rowFirst :
      EqEqPosRow (FirstLineAt case_000950_support case_000950_rank.val hlt case_000950_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000950_firstLine, EqEqPosRow]
  have case_000950_fixedSecond :
      FixedRow (SecondLineAt case_000950_support case_000950_rank.val hlt case_000950_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000950_secondLine, FixedRow]
  exact ⟨case_000950_rowFirst, case_000950_fixedSecond⟩

private theorem case_000950_existsRows :
    ExistsEqEqPosVarFirstRows case_000950_rank.val case_000950_mask :=
  ⟨case_000950_support, case_000950_sourceAgrees, case_000950_rows⟩

private theorem case_000950_covered :
    RowPropertyParametricCovered case_000950_rank.val case_000950_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000950_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000951_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000951_mask : SignMask := ⟨22, by decide⟩
private def case_000951_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000951_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000951_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000951_b : Vec3 Rat := { x := (-188/27), y := (-220/27), z := (316/27) }
private def case_000951_firstLine : StrictLin2 := { a := -1, b := 1, c := (-221/47) }
private def case_000951_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000951_rankWord :
    rankPairWord? case_000951_word = some case_000951_rank := by
  decide

private theorem case_000951_unrank :
    unrankPairWord case_000951_rank = case_000951_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000951_word case_000951_rank).1
    case_000951_rankWord |>.symm

private theorem case_000951_seqChoice :
    translationChoiceSeq case_000951_word case_000951_mask = case_000951_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000951_seqAtRank :
    translationSeqAtRankMask case_000951_rank case_000951_mask = case_000951_seq := by
  rw [translationSeqAtRankMask, case_000951_unrank]
  exact case_000951_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000951_bAtRank :
    translationBAtRankMask case_000951_rank case_000951_mask = case_000951_b := by
  rw [translationBAtRankMask, case_000951_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000951_b, case_000951_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000951_firstLine_eq :
    case_000951_support.firstLine case_000951_seq case_000951_b = case_000951_firstLine := by
  norm_num [case_000951_firstLine, case_000951_support, case_000951_seq, case_000951_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000951_secondLine_eq :
    case_000951_support.secondLine case_000951_seq case_000951_b = case_000951_secondLine := by
  norm_num [case_000951_secondLine, case_000951_support, case_000951_seq, case_000951_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000951_sourceAgrees :
    SourceAgrees case_000951_support case_000951_rank.val case_000951_mask := by
  intro hlt
  have hrank : (⟨case_000951_rank.val, hlt⟩ : Fin numPairWords) = case_000951_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000951_rank.val, hlt⟩ case_000951_mask =
        case_000951_seq := by
    simpa [hrank] using case_000951_seqAtRank
  simp [SourceChecks, hseq, case_000951_support,
    checkTranslationConstraintSource, case_000951_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000951_rows :
    OppOneMinusVarFirstRows case_000951_support case_000951_rank.val case_000951_mask := by
  intro hlt
  have hrank : (⟨case_000951_rank.val, hlt⟩ : Fin numPairWords) = case_000951_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000951_rank.val, hlt⟩ case_000951_mask =
        case_000951_seq := by
    simpa [hrank] using case_000951_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000951_rank.val, hlt⟩ case_000951_mask =
        case_000951_b := by
    simpa [hrank] using case_000951_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000951_support case_000951_rank.val hlt
          case_000951_mask = case_000951_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000951_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000951_support case_000951_rank.val hlt
          case_000951_mask = case_000951_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000951_secondLine_eq]
  have case_000951_rowFirst :
      OppPosRow (FirstLineAt case_000951_support case_000951_rank.val hlt case_000951_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000951_firstLine, OppPosRow]
  have case_000951_fixedSecond :
      FixedRow (SecondLineAt case_000951_support case_000951_rank.val hlt case_000951_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000951_secondLine, FixedRow]
  exact ⟨case_000951_rowFirst, case_000951_fixedSecond⟩

private theorem case_000951_existsRows :
    ExistsOppOneMinusVarFirstRows case_000951_rank.val case_000951_mask :=
  ⟨case_000951_support, case_000951_sourceAgrees, case_000951_rows⟩

private theorem case_000951_covered :
    RowPropertyParametricCovered case_000951_rank.val case_000951_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000951_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000952_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000952_mask : SignMask := ⟨24, by decide⟩
private def case_000952_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000952_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000952_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000952_b : Vec3 Rat := { x := (-284/27), y := (-124/27), z := (-284/27) }
private def case_000952_firstLine : StrictLin2 := { a := -1, b := -1, c := (-133/71) }
private def case_000952_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000952_rankWord :
    rankPairWord? case_000952_word = some case_000952_rank := by
  decide

private theorem case_000952_unrank :
    unrankPairWord case_000952_rank = case_000952_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000952_word case_000952_rank).1
    case_000952_rankWord |>.symm

private theorem case_000952_seqChoice :
    translationChoiceSeq case_000952_word case_000952_mask = case_000952_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000952_seqAtRank :
    translationSeqAtRankMask case_000952_rank case_000952_mask = case_000952_seq := by
  rw [translationSeqAtRankMask, case_000952_unrank]
  exact case_000952_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000952_bAtRank :
    translationBAtRankMask case_000952_rank case_000952_mask = case_000952_b := by
  rw [translationBAtRankMask, case_000952_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000952_b, case_000952_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000952_firstLine_eq :
    case_000952_support.firstLine case_000952_seq case_000952_b = case_000952_firstLine := by
  norm_num [case_000952_firstLine, case_000952_support, case_000952_seq, case_000952_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000952_secondLine_eq :
    case_000952_support.secondLine case_000952_seq case_000952_b = case_000952_secondLine := by
  norm_num [case_000952_secondLine, case_000952_support, case_000952_seq, case_000952_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000952_sourceAgrees :
    SourceAgrees case_000952_support case_000952_rank.val case_000952_mask := by
  intro hlt
  have hrank : (⟨case_000952_rank.val, hlt⟩ : Fin numPairWords) = case_000952_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000952_rank.val, hlt⟩ case_000952_mask =
        case_000952_seq := by
    simpa [hrank] using case_000952_seqAtRank
  simp [SourceChecks, hseq, case_000952_support,
    checkTranslationConstraintSource, case_000952_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000952_rows :
    EqEqPosVarFirstRows case_000952_support case_000952_rank.val case_000952_mask := by
  intro hlt
  have hrank : (⟨case_000952_rank.val, hlt⟩ : Fin numPairWords) = case_000952_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000952_rank.val, hlt⟩ case_000952_mask =
        case_000952_seq := by
    simpa [hrank] using case_000952_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000952_rank.val, hlt⟩ case_000952_mask =
        case_000952_b := by
    simpa [hrank] using case_000952_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000952_support case_000952_rank.val hlt
          case_000952_mask = case_000952_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000952_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000952_support case_000952_rank.val hlt
          case_000952_mask = case_000952_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000952_secondLine_eq]
  have case_000952_rowFirst :
      EqEqPosRow (FirstLineAt case_000952_support case_000952_rank.val hlt case_000952_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000952_firstLine, EqEqPosRow]
  have case_000952_fixedSecond :
      FixedRow (SecondLineAt case_000952_support case_000952_rank.val hlt case_000952_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000952_secondLine, FixedRow]
  exact ⟨case_000952_rowFirst, case_000952_fixedSecond⟩

private theorem case_000952_existsRows :
    ExistsEqEqPosVarFirstRows case_000952_rank.val case_000952_mask :=
  ⟨case_000952_support, case_000952_sourceAgrees, case_000952_rows⟩

private theorem case_000952_covered :
    RowPropertyParametricCovered case_000952_rank.val case_000952_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000952_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000953_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000953_mask : SignMask := ⟨25, by decide⟩
private def case_000953_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000953_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000953_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000953_b : Vec3 Rat := { x := (-284/27), y := (92/27), z := (-284/27) }
private def case_000953_firstLine : StrictLin2 := { a := (-71/165), b := (71/165), c := (-263/165) }
private def case_000953_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000953_rankWord :
    rankPairWord? case_000953_word = some case_000953_rank := by
  decide

private theorem case_000953_unrank :
    unrankPairWord case_000953_rank = case_000953_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000953_word case_000953_rank).1
    case_000953_rankWord |>.symm

private theorem case_000953_seqChoice :
    translationChoiceSeq case_000953_word case_000953_mask = case_000953_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000953_seqAtRank :
    translationSeqAtRankMask case_000953_rank case_000953_mask = case_000953_seq := by
  rw [translationSeqAtRankMask, case_000953_unrank]
  exact case_000953_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000953_bAtRank :
    translationBAtRankMask case_000953_rank case_000953_mask = case_000953_b := by
  rw [translationBAtRankMask, case_000953_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000953_b, case_000953_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000953_firstLine_eq :
    case_000953_support.firstLine case_000953_seq case_000953_b = case_000953_firstLine := by
  norm_num [case_000953_firstLine, case_000953_support, case_000953_seq, case_000953_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000953_secondLine_eq :
    case_000953_support.secondLine case_000953_seq case_000953_b = case_000953_secondLine := by
  norm_num [case_000953_secondLine, case_000953_support, case_000953_seq, case_000953_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000953_sourceAgrees :
    SourceAgrees case_000953_support case_000953_rank.val case_000953_mask := by
  intro hlt
  have hrank : (⟨case_000953_rank.val, hlt⟩ : Fin numPairWords) = case_000953_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000953_rank.val, hlt⟩ case_000953_mask =
        case_000953_seq := by
    simpa [hrank] using case_000953_seqAtRank
  simp [SourceChecks, hseq, case_000953_support,
    checkTranslationConstraintSource, case_000953_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000953_rows :
    OppOneMinusVarFirstRows case_000953_support case_000953_rank.val case_000953_mask := by
  intro hlt
  have hrank : (⟨case_000953_rank.val, hlt⟩ : Fin numPairWords) = case_000953_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000953_rank.val, hlt⟩ case_000953_mask =
        case_000953_seq := by
    simpa [hrank] using case_000953_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000953_rank.val, hlt⟩ case_000953_mask =
        case_000953_b := by
    simpa [hrank] using case_000953_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000953_support case_000953_rank.val hlt
          case_000953_mask = case_000953_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000953_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000953_support case_000953_rank.val hlt
          case_000953_mask = case_000953_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000953_secondLine_eq]
  have case_000953_rowFirst :
      OppPosRow (FirstLineAt case_000953_support case_000953_rank.val hlt case_000953_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000953_firstLine, OppPosRow]
  have case_000953_fixedSecond :
      FixedRow (SecondLineAt case_000953_support case_000953_rank.val hlt case_000953_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000953_secondLine, FixedRow]
  exact ⟨case_000953_rowFirst, case_000953_fixedSecond⟩

private theorem case_000953_existsRows :
    ExistsOppOneMinusVarFirstRows case_000953_rank.val case_000953_mask :=
  ⟨case_000953_support, case_000953_sourceAgrees, case_000953_rows⟩

private theorem case_000953_covered :
    RowPropertyParametricCovered case_000953_rank.val case_000953_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000953_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000954_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000954_mask : SignMask := ⟨28, by decide⟩
private def case_000954_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000954_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000954_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000954_b : Vec3 Rat := { x := (-332/27), y := (-76/27), z := (-44/27) }
private def case_000954_firstLine : StrictLin2 := { a := (-83/75), b := (83/75), c := (-23/15) }
private def case_000954_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000954_rankWord :
    rankPairWord? case_000954_word = some case_000954_rank := by
  decide

private theorem case_000954_unrank :
    unrankPairWord case_000954_rank = case_000954_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000954_word case_000954_rank).1
    case_000954_rankWord |>.symm

private theorem case_000954_seqChoice :
    translationChoiceSeq case_000954_word case_000954_mask = case_000954_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000954_seqAtRank :
    translationSeqAtRankMask case_000954_rank case_000954_mask = case_000954_seq := by
  rw [translationSeqAtRankMask, case_000954_unrank]
  exact case_000954_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000954_bAtRank :
    translationBAtRankMask case_000954_rank case_000954_mask = case_000954_b := by
  rw [translationBAtRankMask, case_000954_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000954_b, case_000954_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000954_firstLine_eq :
    case_000954_support.firstLine case_000954_seq case_000954_b = case_000954_firstLine := by
  norm_num [case_000954_firstLine, case_000954_support, case_000954_seq, case_000954_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000954_secondLine_eq :
    case_000954_support.secondLine case_000954_seq case_000954_b = case_000954_secondLine := by
  norm_num [case_000954_secondLine, case_000954_support, case_000954_seq, case_000954_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000954_sourceAgrees :
    SourceAgrees case_000954_support case_000954_rank.val case_000954_mask := by
  intro hlt
  have hrank : (⟨case_000954_rank.val, hlt⟩ : Fin numPairWords) = case_000954_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000954_rank.val, hlt⟩ case_000954_mask =
        case_000954_seq := by
    simpa [hrank] using case_000954_seqAtRank
  simp [SourceChecks, hseq, case_000954_support,
    checkTranslationConstraintSource, case_000954_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000954_rows :
    OppOneMinusVarFirstRows case_000954_support case_000954_rank.val case_000954_mask := by
  intro hlt
  have hrank : (⟨case_000954_rank.val, hlt⟩ : Fin numPairWords) = case_000954_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000954_rank.val, hlt⟩ case_000954_mask =
        case_000954_seq := by
    simpa [hrank] using case_000954_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000954_rank.val, hlt⟩ case_000954_mask =
        case_000954_b := by
    simpa [hrank] using case_000954_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000954_support case_000954_rank.val hlt
          case_000954_mask = case_000954_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000954_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000954_support case_000954_rank.val hlt
          case_000954_mask = case_000954_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000954_secondLine_eq]
  have case_000954_rowFirst :
      OppPosRow (FirstLineAt case_000954_support case_000954_rank.val hlt case_000954_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000954_firstLine, OppPosRow]
  have case_000954_fixedSecond :
      FixedRow (SecondLineAt case_000954_support case_000954_rank.val hlt case_000954_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000954_secondLine, FixedRow]
  exact ⟨case_000954_rowFirst, case_000954_fixedSecond⟩

private theorem case_000954_existsRows :
    ExistsOppOneMinusVarFirstRows case_000954_rank.val case_000954_mask :=
  ⟨case_000954_support, case_000954_sourceAgrees, case_000954_rows⟩

private theorem case_000954_covered :
    RowPropertyParametricCovered case_000954_rank.val case_000954_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000954_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000955_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000955_mask : SignMask := ⟨30, by decide⟩
private def case_000955_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000955_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000955_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000955_b : Vec3 Rat := { x := (-332/27), y := (-76/27), z := (172/27) }
private def case_000955_firstLine : StrictLin2 := { a := (83/21), b := (-83/21), c := (-97/7) }
private def case_000955_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000955_rankWord :
    rankPairWord? case_000955_word = some case_000955_rank := by
  decide

private theorem case_000955_unrank :
    unrankPairWord case_000955_rank = case_000955_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000955_word case_000955_rank).1
    case_000955_rankWord |>.symm

private theorem case_000955_seqChoice :
    translationChoiceSeq case_000955_word case_000955_mask = case_000955_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000955_seqAtRank :
    translationSeqAtRankMask case_000955_rank case_000955_mask = case_000955_seq := by
  rw [translationSeqAtRankMask, case_000955_unrank]
  exact case_000955_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000955_bAtRank :
    translationBAtRankMask case_000955_rank case_000955_mask = case_000955_b := by
  rw [translationBAtRankMask, case_000955_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000955_b, case_000955_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000955_firstLine_eq :
    case_000955_support.firstLine case_000955_seq case_000955_b = case_000955_firstLine := by
  norm_num [case_000955_firstLine, case_000955_support, case_000955_seq, case_000955_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000955_secondLine_eq :
    case_000955_support.secondLine case_000955_seq case_000955_b = case_000955_secondLine := by
  norm_num [case_000955_secondLine, case_000955_support, case_000955_seq, case_000955_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000955_sourceAgrees :
    SourceAgrees case_000955_support case_000955_rank.val case_000955_mask := by
  intro hlt
  have hrank : (⟨case_000955_rank.val, hlt⟩ : Fin numPairWords) = case_000955_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000955_rank.val, hlt⟩ case_000955_mask =
        case_000955_seq := by
    simpa [hrank] using case_000955_seqAtRank
  simp [SourceChecks, hseq, case_000955_support,
    checkTranslationConstraintSource, case_000955_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000955_rows :
    OppMinusOneVarFirstRows case_000955_support case_000955_rank.val case_000955_mask := by
  intro hlt
  have hrank : (⟨case_000955_rank.val, hlt⟩ : Fin numPairWords) = case_000955_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000955_rank.val, hlt⟩ case_000955_mask =
        case_000955_seq := by
    simpa [hrank] using case_000955_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000955_rank.val, hlt⟩ case_000955_mask =
        case_000955_b := by
    simpa [hrank] using case_000955_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000955_support case_000955_rank.val hlt
          case_000955_mask = case_000955_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000955_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000955_support case_000955_rank.val hlt
          case_000955_mask = case_000955_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000955_secondLine_eq]
  have case_000955_rowFirst :
      OppNegRow (FirstLineAt case_000955_support case_000955_rank.val hlt case_000955_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000955_firstLine, OppNegRow]
  have case_000955_fixedSecond :
      FixedRow (SecondLineAt case_000955_support case_000955_rank.val hlt case_000955_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000955_secondLine, FixedRow]
  exact ⟨case_000955_rowFirst, case_000955_fixedSecond⟩

private theorem case_000955_existsRows :
    ExistsOppMinusOneVarFirstRows case_000955_rank.val case_000955_mask :=
  ⟨case_000955_support, case_000955_sourceAgrees, case_000955_rows⟩

private theorem case_000955_covered :
    RowPropertyParametricCovered case_000955_rank.val case_000955_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000955_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000956_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000956_mask : SignMask := ⟨57, by decide⟩
private def case_000956_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000956_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000956_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000956_b : Vec3 Rat := { x := (-236/27), y := (332/27), z := (-236/27) }
private def case_000956_firstLine : StrictLin2 := { a := 1, b := -1, c := (-225/59) }
private def case_000956_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000956_rankWord :
    rankPairWord? case_000956_word = some case_000956_rank := by
  decide

private theorem case_000956_unrank :
    unrankPairWord case_000956_rank = case_000956_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000956_word case_000956_rank).1
    case_000956_rankWord |>.symm

private theorem case_000956_seqChoice :
    translationChoiceSeq case_000956_word case_000956_mask = case_000956_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000956_seqAtRank :
    translationSeqAtRankMask case_000956_rank case_000956_mask = case_000956_seq := by
  rw [translationSeqAtRankMask, case_000956_unrank]
  exact case_000956_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000956_bAtRank :
    translationBAtRankMask case_000956_rank case_000956_mask = case_000956_b := by
  rw [translationBAtRankMask, case_000956_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000956_b, case_000956_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000956_firstLine_eq :
    case_000956_support.firstLine case_000956_seq case_000956_b = case_000956_firstLine := by
  norm_num [case_000956_firstLine, case_000956_support, case_000956_seq, case_000956_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000956_secondLine_eq :
    case_000956_support.secondLine case_000956_seq case_000956_b = case_000956_secondLine := by
  norm_num [case_000956_secondLine, case_000956_support, case_000956_seq, case_000956_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000956_sourceAgrees :
    SourceAgrees case_000956_support case_000956_rank.val case_000956_mask := by
  intro hlt
  have hrank : (⟨case_000956_rank.val, hlt⟩ : Fin numPairWords) = case_000956_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000956_rank.val, hlt⟩ case_000956_mask =
        case_000956_seq := by
    simpa [hrank] using case_000956_seqAtRank
  simp [SourceChecks, hseq, case_000956_support,
    checkTranslationConstraintSource, case_000956_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000956_rows :
    OppMinusOneVarFirstRows case_000956_support case_000956_rank.val case_000956_mask := by
  intro hlt
  have hrank : (⟨case_000956_rank.val, hlt⟩ : Fin numPairWords) = case_000956_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000956_rank.val, hlt⟩ case_000956_mask =
        case_000956_seq := by
    simpa [hrank] using case_000956_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000956_rank.val, hlt⟩ case_000956_mask =
        case_000956_b := by
    simpa [hrank] using case_000956_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000956_support case_000956_rank.val hlt
          case_000956_mask = case_000956_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000956_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000956_support case_000956_rank.val hlt
          case_000956_mask = case_000956_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000956_secondLine_eq]
  have case_000956_rowFirst :
      OppNegRow (FirstLineAt case_000956_support case_000956_rank.val hlt case_000956_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000956_firstLine, OppNegRow]
  have case_000956_fixedSecond :
      FixedRow (SecondLineAt case_000956_support case_000956_rank.val hlt case_000956_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000956_secondLine, FixedRow]
  exact ⟨case_000956_rowFirst, case_000956_fixedSecond⟩

private theorem case_000956_existsRows :
    ExistsOppMinusOneVarFirstRows case_000956_rank.val case_000956_mask :=
  ⟨case_000956_support, case_000956_sourceAgrees, case_000956_rows⟩

private theorem case_000956_covered :
    RowPropertyParametricCovered case_000956_rank.val case_000956_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000956_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000957_rank : Fin numPairWords := ⟨654, by decide⟩
private def case_000957_mask : SignMask := ⟨63, by decide⟩
private def case_000957_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000957_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000957_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000957_b : Vec3 Rat := { x := (-284/27), y := (380/27), z := (220/27) }
private def case_000957_firstLine : StrictLin2 := { a := 1, b := 1, c := (-229/71) }
private def case_000957_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000957_rankWord :
    rankPairWord? case_000957_word = some case_000957_rank := by
  decide

private theorem case_000957_unrank :
    unrankPairWord case_000957_rank = case_000957_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000957_word case_000957_rank).1
    case_000957_rankWord |>.symm

private theorem case_000957_seqChoice :
    translationChoiceSeq case_000957_word case_000957_mask = case_000957_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000957_seqAtRank :
    translationSeqAtRankMask case_000957_rank case_000957_mask = case_000957_seq := by
  rw [translationSeqAtRankMask, case_000957_unrank]
  exact case_000957_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000957_bAtRank :
    translationBAtRankMask case_000957_rank case_000957_mask = case_000957_b := by
  rw [translationBAtRankMask, case_000957_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000957_b, case_000957_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000957_firstLine_eq :
    case_000957_support.firstLine case_000957_seq case_000957_b = case_000957_firstLine := by
  norm_num [case_000957_firstLine, case_000957_support, case_000957_seq, case_000957_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000957_secondLine_eq :
    case_000957_support.secondLine case_000957_seq case_000957_b = case_000957_secondLine := by
  norm_num [case_000957_secondLine, case_000957_support, case_000957_seq, case_000957_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000957_sourceAgrees :
    SourceAgrees case_000957_support case_000957_rank.val case_000957_mask := by
  intro hlt
  have hrank : (⟨case_000957_rank.val, hlt⟩ : Fin numPairWords) = case_000957_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000957_rank.val, hlt⟩ case_000957_mask =
        case_000957_seq := by
    simpa [hrank] using case_000957_seqAtRank
  simp [SourceChecks, hseq, case_000957_support,
    checkTranslationConstraintSource, case_000957_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000957_rows :
    EqEqNegVarFirstRows case_000957_support case_000957_rank.val case_000957_mask := by
  intro hlt
  have hrank : (⟨case_000957_rank.val, hlt⟩ : Fin numPairWords) = case_000957_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000957_rank.val, hlt⟩ case_000957_mask =
        case_000957_seq := by
    simpa [hrank] using case_000957_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000957_rank.val, hlt⟩ case_000957_mask =
        case_000957_b := by
    simpa [hrank] using case_000957_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000957_support case_000957_rank.val hlt
          case_000957_mask = case_000957_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000957_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000957_support case_000957_rank.val hlt
          case_000957_mask = case_000957_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000957_secondLine_eq]
  have case_000957_rowFirst :
      EqEqNegRow (FirstLineAt case_000957_support case_000957_rank.val hlt case_000957_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000957_firstLine, EqEqNegRow]
  have case_000957_fixedSecond :
      FixedRow (SecondLineAt case_000957_support case_000957_rank.val hlt case_000957_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000957_secondLine, FixedRow]
  exact ⟨case_000957_rowFirst, case_000957_fixedSecond⟩

private theorem case_000957_existsRows :
    ExistsEqEqNegVarFirstRows case_000957_rank.val case_000957_mask :=
  ⟨case_000957_support, case_000957_sourceAgrees, case_000957_rows⟩

private theorem case_000957_covered :
    RowPropertyParametricCovered case_000957_rank.val case_000957_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000957_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000958_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000958_mask : SignMask := ⟨8, by decide⟩
private def case_000958_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000958_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000958_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000958_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000958_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000958_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000958_rankWord :
    rankPairWord? case_000958_word = some case_000958_rank := by
  decide

private theorem case_000958_unrank :
    unrankPairWord case_000958_rank = case_000958_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000958_word case_000958_rank).1
    case_000958_rankWord |>.symm

private theorem case_000958_seqChoice :
    translationChoiceSeq case_000958_word case_000958_mask = case_000958_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000958_seqAtRank :
    translationSeqAtRankMask case_000958_rank case_000958_mask = case_000958_seq := by
  rw [translationSeqAtRankMask, case_000958_unrank]
  exact case_000958_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000958_bAtRank :
    translationBAtRankMask case_000958_rank case_000958_mask = case_000958_b := by
  rw [translationBAtRankMask, case_000958_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000958_b, case_000958_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000958_firstLine_eq :
    case_000958_support.firstLine case_000958_seq case_000958_b = case_000958_firstLine := by
  norm_num [case_000958_firstLine, case_000958_support, case_000958_seq, case_000958_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000958_secondLine_eq :
    case_000958_support.secondLine case_000958_seq case_000958_b = case_000958_secondLine := by
  norm_num [case_000958_secondLine, case_000958_support, case_000958_seq, case_000958_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000958_sourceAgrees :
    SourceAgrees case_000958_support case_000958_rank.val case_000958_mask := by
  intro hlt
  have hrank : (⟨case_000958_rank.val, hlt⟩ : Fin numPairWords) = case_000958_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000958_rank.val, hlt⟩ case_000958_mask =
        case_000958_seq := by
    simpa [hrank] using case_000958_seqAtRank
  simp [SourceChecks, hseq, case_000958_support,
    checkTranslationConstraintSource, case_000958_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000958_rows :
    EqEqPosVarFirstRows case_000958_support case_000958_rank.val case_000958_mask := by
  intro hlt
  have hrank : (⟨case_000958_rank.val, hlt⟩ : Fin numPairWords) = case_000958_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000958_rank.val, hlt⟩ case_000958_mask =
        case_000958_seq := by
    simpa [hrank] using case_000958_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000958_rank.val, hlt⟩ case_000958_mask =
        case_000958_b := by
    simpa [hrank] using case_000958_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000958_support case_000958_rank.val hlt
          case_000958_mask = case_000958_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000958_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000958_support case_000958_rank.val hlt
          case_000958_mask = case_000958_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000958_secondLine_eq]
  have case_000958_rowFirst :
      EqEqPosRow (FirstLineAt case_000958_support case_000958_rank.val hlt case_000958_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000958_firstLine, EqEqPosRow]
  have case_000958_fixedSecond :
      FixedRow (SecondLineAt case_000958_support case_000958_rank.val hlt case_000958_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000958_secondLine, FixedRow]
  exact ⟨case_000958_rowFirst, case_000958_fixedSecond⟩

private theorem case_000958_existsRows :
    ExistsEqEqPosVarFirstRows case_000958_rank.val case_000958_mask :=
  ⟨case_000958_support, case_000958_sourceAgrees, case_000958_rows⟩

private theorem case_000958_covered :
    RowPropertyParametricCovered case_000958_rank.val case_000958_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000958_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000959_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000959_mask : SignMask := ⟨16, by decide⟩
private def case_000959_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000959_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000959_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000959_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000959_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000959_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000959_rankWord :
    rankPairWord? case_000959_word = some case_000959_rank := by
  decide

private theorem case_000959_unrank :
    unrankPairWord case_000959_rank = case_000959_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000959_word case_000959_rank).1
    case_000959_rankWord |>.symm

private theorem case_000959_seqChoice :
    translationChoiceSeq case_000959_word case_000959_mask = case_000959_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000959_seqAtRank :
    translationSeqAtRankMask case_000959_rank case_000959_mask = case_000959_seq := by
  rw [translationSeqAtRankMask, case_000959_unrank]
  exact case_000959_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000959_bAtRank :
    translationBAtRankMask case_000959_rank case_000959_mask = case_000959_b := by
  rw [translationBAtRankMask, case_000959_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000959_b, case_000959_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000959_firstLine_eq :
    case_000959_support.firstLine case_000959_seq case_000959_b = case_000959_firstLine := by
  norm_num [case_000959_firstLine, case_000959_support, case_000959_seq, case_000959_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000959_secondLine_eq :
    case_000959_support.secondLine case_000959_seq case_000959_b = case_000959_secondLine := by
  norm_num [case_000959_secondLine, case_000959_support, case_000959_seq, case_000959_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000959_sourceAgrees :
    SourceAgrees case_000959_support case_000959_rank.val case_000959_mask := by
  intro hlt
  have hrank : (⟨case_000959_rank.val, hlt⟩ : Fin numPairWords) = case_000959_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000959_rank.val, hlt⟩ case_000959_mask =
        case_000959_seq := by
    simpa [hrank] using case_000959_seqAtRank
  simp [SourceChecks, hseq, case_000959_support,
    checkTranslationConstraintSource, case_000959_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000959_rows :
    EqEqPosVarFirstRows case_000959_support case_000959_rank.val case_000959_mask := by
  intro hlt
  have hrank : (⟨case_000959_rank.val, hlt⟩ : Fin numPairWords) = case_000959_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000959_rank.val, hlt⟩ case_000959_mask =
        case_000959_seq := by
    simpa [hrank] using case_000959_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000959_rank.val, hlt⟩ case_000959_mask =
        case_000959_b := by
    simpa [hrank] using case_000959_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000959_support case_000959_rank.val hlt
          case_000959_mask = case_000959_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000959_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000959_support case_000959_rank.val hlt
          case_000959_mask = case_000959_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000959_secondLine_eq]
  have case_000959_rowFirst :
      EqEqPosRow (FirstLineAt case_000959_support case_000959_rank.val hlt case_000959_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000959_firstLine, EqEqPosRow]
  have case_000959_fixedSecond :
      FixedRow (SecondLineAt case_000959_support case_000959_rank.val hlt case_000959_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000959_secondLine, FixedRow]
  exact ⟨case_000959_rowFirst, case_000959_fixedSecond⟩

private theorem case_000959_existsRows :
    ExistsEqEqPosVarFirstRows case_000959_rank.val case_000959_mask :=
  ⟨case_000959_support, case_000959_sourceAgrees, case_000959_rows⟩

private theorem case_000959_covered :
    RowPropertyParametricCovered case_000959_rank.val case_000959_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000959_existsRows

inductive Group029Covered : Nat -> SignMask -> Prop
  | case_000928 : Group029Covered case_000928_rank.val case_000928_mask
  | case_000929 : Group029Covered case_000929_rank.val case_000929_mask
  | case_000930 : Group029Covered case_000930_rank.val case_000930_mask
  | case_000931 : Group029Covered case_000931_rank.val case_000931_mask
  | case_000932 : Group029Covered case_000932_rank.val case_000932_mask
  | case_000933 : Group029Covered case_000933_rank.val case_000933_mask
  | case_000934 : Group029Covered case_000934_rank.val case_000934_mask
  | case_000935 : Group029Covered case_000935_rank.val case_000935_mask
  | case_000936 : Group029Covered case_000936_rank.val case_000936_mask
  | case_000937 : Group029Covered case_000937_rank.val case_000937_mask
  | case_000938 : Group029Covered case_000938_rank.val case_000938_mask
  | case_000939 : Group029Covered case_000939_rank.val case_000939_mask
  | case_000940 : Group029Covered case_000940_rank.val case_000940_mask
  | case_000941 : Group029Covered case_000941_rank.val case_000941_mask
  | case_000942 : Group029Covered case_000942_rank.val case_000942_mask
  | case_000943 : Group029Covered case_000943_rank.val case_000943_mask
  | case_000944 : Group029Covered case_000944_rank.val case_000944_mask
  | case_000945 : Group029Covered case_000945_rank.val case_000945_mask
  | case_000946 : Group029Covered case_000946_rank.val case_000946_mask
  | case_000947 : Group029Covered case_000947_rank.val case_000947_mask
  | case_000948 : Group029Covered case_000948_rank.val case_000948_mask
  | case_000949 : Group029Covered case_000949_rank.val case_000949_mask
  | case_000950 : Group029Covered case_000950_rank.val case_000950_mask
  | case_000951 : Group029Covered case_000951_rank.val case_000951_mask
  | case_000952 : Group029Covered case_000952_rank.val case_000952_mask
  | case_000953 : Group029Covered case_000953_rank.val case_000953_mask
  | case_000954 : Group029Covered case_000954_rank.val case_000954_mask
  | case_000955 : Group029Covered case_000955_rank.val case_000955_mask
  | case_000956 : Group029Covered case_000956_rank.val case_000956_mask
  | case_000957 : Group029Covered case_000957_rank.val case_000957_mask
  | case_000958 : Group029Covered case_000958_rank.val case_000958_mask
  | case_000959 : Group029Covered case_000959_rank.val case_000959_mask

theorem Group029GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group029Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000928 =>
      exact RowPropertyParametricCovered.kills case_000928_covered
  | case_000929 =>
      exact RowPropertyParametricCovered.kills case_000929_covered
  | case_000930 =>
      exact RowPropertyParametricCovered.kills case_000930_covered
  | case_000931 =>
      exact RowPropertyParametricCovered.kills case_000931_covered
  | case_000932 =>
      exact RowPropertyParametricCovered.kills case_000932_covered
  | case_000933 =>
      exact RowPropertyParametricCovered.kills case_000933_covered
  | case_000934 =>
      exact RowPropertyParametricCovered.kills case_000934_covered
  | case_000935 =>
      exact RowPropertyParametricCovered.kills case_000935_covered
  | case_000936 =>
      exact RowPropertyParametricCovered.kills case_000936_covered
  | case_000937 =>
      exact RowPropertyParametricCovered.kills case_000937_covered
  | case_000938 =>
      exact RowPropertyParametricCovered.kills case_000938_covered
  | case_000939 =>
      exact RowPropertyParametricCovered.kills case_000939_covered
  | case_000940 =>
      exact RowPropertyParametricCovered.kills case_000940_covered
  | case_000941 =>
      exact RowPropertyParametricCovered.kills case_000941_covered
  | case_000942 =>
      exact RowPropertyParametricCovered.kills case_000942_covered
  | case_000943 =>
      exact RowPropertyParametricCovered.kills case_000943_covered
  | case_000944 =>
      exact RowPropertyParametricCovered.kills case_000944_covered
  | case_000945 =>
      exact RowPropertyParametricCovered.kills case_000945_covered
  | case_000946 =>
      exact RowPropertyParametricCovered.kills case_000946_covered
  | case_000947 =>
      exact RowPropertyParametricCovered.kills case_000947_covered
  | case_000948 =>
      exact RowPropertyParametricCovered.kills case_000948_covered
  | case_000949 =>
      exact RowPropertyParametricCovered.kills case_000949_covered
  | case_000950 =>
      exact RowPropertyParametricCovered.kills case_000950_covered
  | case_000951 =>
      exact RowPropertyParametricCovered.kills case_000951_covered
  | case_000952 =>
      exact RowPropertyParametricCovered.kills case_000952_covered
  | case_000953 =>
      exact RowPropertyParametricCovered.kills case_000953_covered
  | case_000954 =>
      exact RowPropertyParametricCovered.kills case_000954_covered
  | case_000955 =>
      exact RowPropertyParametricCovered.kills case_000955_covered
  | case_000956 =>
      exact RowPropertyParametricCovered.kills case_000956_covered
  | case_000957 =>
      exact RowPropertyParametricCovered.kills case_000957_covered
  | case_000958 =>
      exact RowPropertyParametricCovered.kills case_000958_covered
  | case_000959 =>
      exact RowPropertyParametricCovered.kills case_000959_covered

theorem Group029_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group029
