import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group025

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
private def case_000800_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000800_mask : SignMask := ⟨9, by decide⟩
private def case_000800_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000800_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000800_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000800_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000800_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000800_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000800_rankWord :
    rankPairWord? case_000800_word = some case_000800_rank := by
  decide

private theorem case_000800_unrank :
    unrankPairWord case_000800_rank = case_000800_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000800_word case_000800_rank).1
    case_000800_rankWord |>.symm

private theorem case_000800_seqChoice :
    translationChoiceSeq case_000800_word case_000800_mask = case_000800_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000800_seqAtRank :
    translationSeqAtRankMask case_000800_rank case_000800_mask = case_000800_seq := by
  rw [translationSeqAtRankMask, case_000800_unrank]
  exact case_000800_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000800_bAtRank :
    translationBAtRankMask case_000800_rank case_000800_mask = case_000800_b := by
  rw [translationBAtRankMask, case_000800_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000800_b, case_000800_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000800_firstLine_eq :
    case_000800_support.firstLine case_000800_seq case_000800_b = case_000800_firstLine := by
  norm_num [case_000800_firstLine, case_000800_support, case_000800_seq, case_000800_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000800_secondLine_eq :
    case_000800_support.secondLine case_000800_seq case_000800_b = case_000800_secondLine := by
  norm_num [case_000800_secondLine, case_000800_support, case_000800_seq, case_000800_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000800_sourceAgrees :
    SourceAgrees case_000800_support case_000800_rank.val case_000800_mask := by
  intro hlt
  have hrank : (⟨case_000800_rank.val, hlt⟩ : Fin numPairWords) = case_000800_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000800_rank.val, hlt⟩ case_000800_mask =
        case_000800_seq := by
    simpa [hrank] using case_000800_seqAtRank
  simp [SourceChecks, hseq, case_000800_support,
    checkTranslationConstraintSource, case_000800_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000800_rows :
    EqEqPosVarFirstRows case_000800_support case_000800_rank.val case_000800_mask := by
  intro hlt
  have hrank : (⟨case_000800_rank.val, hlt⟩ : Fin numPairWords) = case_000800_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000800_rank.val, hlt⟩ case_000800_mask =
        case_000800_seq := by
    simpa [hrank] using case_000800_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000800_rank.val, hlt⟩ case_000800_mask =
        case_000800_b := by
    simpa [hrank] using case_000800_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000800_support case_000800_rank.val hlt
          case_000800_mask = case_000800_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000800_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000800_support case_000800_rank.val hlt
          case_000800_mask = case_000800_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000800_secondLine_eq]
  have case_000800_rowFirst :
      EqEqPosRow (FirstLineAt case_000800_support case_000800_rank.val hlt case_000800_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000800_firstLine, EqEqPosRow]
  have case_000800_fixedSecond :
      FixedRow (SecondLineAt case_000800_support case_000800_rank.val hlt case_000800_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000800_secondLine, FixedRow]
  exact ⟨case_000800_rowFirst, case_000800_fixedSecond⟩

private theorem case_000800_existsRows :
    ExistsEqEqPosVarFirstRows case_000800_rank.val case_000800_mask :=
  ⟨case_000800_support, case_000800_sourceAgrees, case_000800_rows⟩

private theorem case_000800_covered :
    RowPropertyParametricCovered case_000800_rank.val case_000800_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000800_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000801_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000801_mask : SignMask := ⟨13, by decide⟩
private def case_000801_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000801_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000801_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000801_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000801_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000801_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000801_rankWord :
    rankPairWord? case_000801_word = some case_000801_rank := by
  decide

private theorem case_000801_unrank :
    unrankPairWord case_000801_rank = case_000801_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000801_word case_000801_rank).1
    case_000801_rankWord |>.symm

private theorem case_000801_seqChoice :
    translationChoiceSeq case_000801_word case_000801_mask = case_000801_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000801_seqAtRank :
    translationSeqAtRankMask case_000801_rank case_000801_mask = case_000801_seq := by
  rw [translationSeqAtRankMask, case_000801_unrank]
  exact case_000801_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000801_bAtRank :
    translationBAtRankMask case_000801_rank case_000801_mask = case_000801_b := by
  rw [translationBAtRankMask, case_000801_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000801_b, case_000801_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000801_firstLine_eq :
    case_000801_support.firstLine case_000801_seq case_000801_b = case_000801_firstLine := by
  norm_num [case_000801_firstLine, case_000801_support, case_000801_seq, case_000801_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000801_secondLine_eq :
    case_000801_support.secondLine case_000801_seq case_000801_b = case_000801_secondLine := by
  norm_num [case_000801_secondLine, case_000801_support, case_000801_seq, case_000801_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000801_sourceAgrees :
    SourceAgrees case_000801_support case_000801_rank.val case_000801_mask := by
  intro hlt
  have hrank : (⟨case_000801_rank.val, hlt⟩ : Fin numPairWords) = case_000801_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000801_rank.val, hlt⟩ case_000801_mask =
        case_000801_seq := by
    simpa [hrank] using case_000801_seqAtRank
  simp [SourceChecks, hseq, case_000801_support,
    checkTranslationConstraintSource, case_000801_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000801_rows :
    OppMinusOneVarFirstRows case_000801_support case_000801_rank.val case_000801_mask := by
  intro hlt
  have hrank : (⟨case_000801_rank.val, hlt⟩ : Fin numPairWords) = case_000801_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000801_rank.val, hlt⟩ case_000801_mask =
        case_000801_seq := by
    simpa [hrank] using case_000801_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000801_rank.val, hlt⟩ case_000801_mask =
        case_000801_b := by
    simpa [hrank] using case_000801_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000801_support case_000801_rank.val hlt
          case_000801_mask = case_000801_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000801_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000801_support case_000801_rank.val hlt
          case_000801_mask = case_000801_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000801_secondLine_eq]
  have case_000801_rowFirst :
      OppNegRow (FirstLineAt case_000801_support case_000801_rank.val hlt case_000801_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000801_firstLine, OppNegRow]
  have case_000801_fixedSecond :
      FixedRow (SecondLineAt case_000801_support case_000801_rank.val hlt case_000801_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000801_secondLine, FixedRow]
  exact ⟨case_000801_rowFirst, case_000801_fixedSecond⟩

private theorem case_000801_existsRows :
    ExistsOppMinusOneVarFirstRows case_000801_rank.val case_000801_mask :=
  ⟨case_000801_support, case_000801_sourceAgrees, case_000801_rows⟩

private theorem case_000801_covered :
    RowPropertyParametricCovered case_000801_rank.val case_000801_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000801_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000802_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000802_mask : SignMask := ⟨16, by decide⟩
private def case_000802_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000802_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000802_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000802_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-20/9) }
private def case_000802_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000802_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000802_rankWord :
    rankPairWord? case_000802_word = some case_000802_rank := by
  decide

private theorem case_000802_unrank :
    unrankPairWord case_000802_rank = case_000802_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000802_word case_000802_rank).1
    case_000802_rankWord |>.symm

private theorem case_000802_seqChoice :
    translationChoiceSeq case_000802_word case_000802_mask = case_000802_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000802_seqAtRank :
    translationSeqAtRankMask case_000802_rank case_000802_mask = case_000802_seq := by
  rw [translationSeqAtRankMask, case_000802_unrank]
  exact case_000802_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000802_bAtRank :
    translationBAtRankMask case_000802_rank case_000802_mask = case_000802_b := by
  rw [translationBAtRankMask, case_000802_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000802_b, case_000802_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000802_firstLine_eq :
    case_000802_support.firstLine case_000802_seq case_000802_b = case_000802_firstLine := by
  norm_num [case_000802_firstLine, case_000802_support, case_000802_seq, case_000802_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000802_secondLine_eq :
    case_000802_support.secondLine case_000802_seq case_000802_b = case_000802_secondLine := by
  norm_num [case_000802_secondLine, case_000802_support, case_000802_seq, case_000802_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000802_sourceAgrees :
    SourceAgrees case_000802_support case_000802_rank.val case_000802_mask := by
  intro hlt
  have hrank : (⟨case_000802_rank.val, hlt⟩ : Fin numPairWords) = case_000802_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000802_rank.val, hlt⟩ case_000802_mask =
        case_000802_seq := by
    simpa [hrank] using case_000802_seqAtRank
  simp [SourceChecks, hseq, case_000802_support,
    checkTranslationConstraintSource, case_000802_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000802_rows :
    EqEqPosVarFirstRows case_000802_support case_000802_rank.val case_000802_mask := by
  intro hlt
  have hrank : (⟨case_000802_rank.val, hlt⟩ : Fin numPairWords) = case_000802_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000802_rank.val, hlt⟩ case_000802_mask =
        case_000802_seq := by
    simpa [hrank] using case_000802_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000802_rank.val, hlt⟩ case_000802_mask =
        case_000802_b := by
    simpa [hrank] using case_000802_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000802_support case_000802_rank.val hlt
          case_000802_mask = case_000802_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000802_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000802_support case_000802_rank.val hlt
          case_000802_mask = case_000802_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000802_secondLine_eq]
  have case_000802_rowFirst :
      EqEqPosRow (FirstLineAt case_000802_support case_000802_rank.val hlt case_000802_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000802_firstLine, EqEqPosRow]
  have case_000802_fixedSecond :
      FixedRow (SecondLineAt case_000802_support case_000802_rank.val hlt case_000802_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000802_secondLine, FixedRow]
  exact ⟨case_000802_rowFirst, case_000802_fixedSecond⟩

private theorem case_000802_existsRows :
    ExistsEqEqPosVarFirstRows case_000802_rank.val case_000802_mask :=
  ⟨case_000802_support, case_000802_sourceAgrees, case_000802_rows⟩

private theorem case_000802_covered :
    RowPropertyParametricCovered case_000802_rank.val case_000802_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000802_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000803_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000803_mask : SignMask := ⟨18, by decide⟩
private def case_000803_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000803_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000803_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000803_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000803_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000803_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000803_rankWord :
    rankPairWord? case_000803_word = some case_000803_rank := by
  decide

private theorem case_000803_unrank :
    unrankPairWord case_000803_rank = case_000803_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000803_word case_000803_rank).1
    case_000803_rankWord |>.symm

private theorem case_000803_seqChoice :
    translationChoiceSeq case_000803_word case_000803_mask = case_000803_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000803_seqAtRank :
    translationSeqAtRankMask case_000803_rank case_000803_mask = case_000803_seq := by
  rw [translationSeqAtRankMask, case_000803_unrank]
  exact case_000803_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000803_bAtRank :
    translationBAtRankMask case_000803_rank case_000803_mask = case_000803_b := by
  rw [translationBAtRankMask, case_000803_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000803_b, case_000803_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000803_firstLine_eq :
    case_000803_support.firstLine case_000803_seq case_000803_b = case_000803_firstLine := by
  norm_num [case_000803_firstLine, case_000803_support, case_000803_seq, case_000803_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000803_secondLine_eq :
    case_000803_support.secondLine case_000803_seq case_000803_b = case_000803_secondLine := by
  norm_num [case_000803_secondLine, case_000803_support, case_000803_seq, case_000803_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000803_sourceAgrees :
    SourceAgrees case_000803_support case_000803_rank.val case_000803_mask := by
  intro hlt
  have hrank : (⟨case_000803_rank.val, hlt⟩ : Fin numPairWords) = case_000803_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000803_rank.val, hlt⟩ case_000803_mask =
        case_000803_seq := by
    simpa [hrank] using case_000803_seqAtRank
  simp [SourceChecks, hseq, case_000803_support,
    checkTranslationConstraintSource, case_000803_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000803_rows :
    EqEqPosVarFirstRows case_000803_support case_000803_rank.val case_000803_mask := by
  intro hlt
  have hrank : (⟨case_000803_rank.val, hlt⟩ : Fin numPairWords) = case_000803_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000803_rank.val, hlt⟩ case_000803_mask =
        case_000803_seq := by
    simpa [hrank] using case_000803_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000803_rank.val, hlt⟩ case_000803_mask =
        case_000803_b := by
    simpa [hrank] using case_000803_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000803_support case_000803_rank.val hlt
          case_000803_mask = case_000803_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000803_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000803_support case_000803_rank.val hlt
          case_000803_mask = case_000803_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000803_secondLine_eq]
  have case_000803_rowFirst :
      EqEqPosRow (FirstLineAt case_000803_support case_000803_rank.val hlt case_000803_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000803_firstLine, EqEqPosRow]
  have case_000803_fixedSecond :
      FixedRow (SecondLineAt case_000803_support case_000803_rank.val hlt case_000803_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000803_secondLine, FixedRow]
  exact ⟨case_000803_rowFirst, case_000803_fixedSecond⟩

private theorem case_000803_existsRows :
    ExistsEqEqPosVarFirstRows case_000803_rank.val case_000803_mask :=
  ⟨case_000803_support, case_000803_sourceAgrees, case_000803_rows⟩

private theorem case_000803_covered :
    RowPropertyParametricCovered case_000803_rank.val case_000803_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000803_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000804_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000804_mask : SignMask := ⟨22, by decide⟩
private def case_000804_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000804_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000804_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000804_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000804_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000804_secondLine : StrictLin2 := { a := (-225/2278), b := (225/2278), c := (-537/1139) }

private theorem case_000804_rankWord :
    rankPairWord? case_000804_word = some case_000804_rank := by
  decide

private theorem case_000804_unrank :
    unrankPairWord case_000804_rank = case_000804_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000804_word case_000804_rank).1
    case_000804_rankWord |>.symm

private theorem case_000804_seqChoice :
    translationChoiceSeq case_000804_word case_000804_mask = case_000804_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000804_seqAtRank :
    translationSeqAtRankMask case_000804_rank case_000804_mask = case_000804_seq := by
  rw [translationSeqAtRankMask, case_000804_unrank]
  exact case_000804_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000804_bAtRank :
    translationBAtRankMask case_000804_rank case_000804_mask = case_000804_b := by
  rw [translationBAtRankMask, case_000804_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000804_b, case_000804_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000804_firstLine_eq :
    case_000804_support.firstLine case_000804_seq case_000804_b = case_000804_firstLine := by
  norm_num [case_000804_firstLine, case_000804_support, case_000804_seq, case_000804_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000804_secondLine_eq :
    case_000804_support.secondLine case_000804_seq case_000804_b = case_000804_secondLine := by
  norm_num [case_000804_secondLine, case_000804_support, case_000804_seq, case_000804_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000804_sourceAgrees :
    SourceAgrees case_000804_support case_000804_rank.val case_000804_mask := by
  intro hlt
  have hrank : (⟨case_000804_rank.val, hlt⟩ : Fin numPairWords) = case_000804_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000804_rank.val, hlt⟩ case_000804_mask =
        case_000804_seq := by
    simpa [hrank] using case_000804_seqAtRank
  simp [SourceChecks, hseq, case_000804_support,
    checkTranslationConstraintSource, case_000804_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000804_rows :
    OppOneMinusVarSecondRows case_000804_support case_000804_rank.val case_000804_mask := by
  intro hlt
  have hrank : (⟨case_000804_rank.val, hlt⟩ : Fin numPairWords) = case_000804_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000804_rank.val, hlt⟩ case_000804_mask =
        case_000804_seq := by
    simpa [hrank] using case_000804_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000804_rank.val, hlt⟩ case_000804_mask =
        case_000804_b := by
    simpa [hrank] using case_000804_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000804_support case_000804_rank.val hlt
          case_000804_mask = case_000804_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000804_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000804_support case_000804_rank.val hlt
          case_000804_mask = case_000804_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000804_secondLine_eq]
  have case_000804_fixedFirst :
      FixedRow (FirstLineAt case_000804_support case_000804_rank.val hlt case_000804_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000804_firstLine, FixedRow]
  have case_000804_rowSecond :
      OppPosRow (SecondLineAt case_000804_support case_000804_rank.val hlt case_000804_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000804_secondLine, OppPosRow]
  exact ⟨case_000804_fixedFirst, case_000804_rowSecond⟩

private theorem case_000804_existsRows :
    ExistsOppOneMinusVarSecondRows case_000804_rank.val case_000804_mask :=
  ⟨case_000804_support, case_000804_sourceAgrees, case_000804_rows⟩

private theorem case_000804_covered :
    RowPropertyParametricCovered case_000804_rank.val case_000804_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000804_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000805_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000805_mask : SignMask := ⟨24, by decide⟩
private def case_000805_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000805_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000805_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000805_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-68/9) }
private def case_000805_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/25) }
private def case_000805_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000805_rankWord :
    rankPairWord? case_000805_word = some case_000805_rank := by
  decide

private theorem case_000805_unrank :
    unrankPairWord case_000805_rank = case_000805_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000805_word case_000805_rank).1
    case_000805_rankWord |>.symm

private theorem case_000805_seqChoice :
    translationChoiceSeq case_000805_word case_000805_mask = case_000805_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000805_seqAtRank :
    translationSeqAtRankMask case_000805_rank case_000805_mask = case_000805_seq := by
  rw [translationSeqAtRankMask, case_000805_unrank]
  exact case_000805_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000805_bAtRank :
    translationBAtRankMask case_000805_rank case_000805_mask = case_000805_b := by
  rw [translationBAtRankMask, case_000805_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000805_b, case_000805_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000805_firstLine_eq :
    case_000805_support.firstLine case_000805_seq case_000805_b = case_000805_firstLine := by
  norm_num [case_000805_firstLine, case_000805_support, case_000805_seq, case_000805_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000805_secondLine_eq :
    case_000805_support.secondLine case_000805_seq case_000805_b = case_000805_secondLine := by
  norm_num [case_000805_secondLine, case_000805_support, case_000805_seq, case_000805_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000805_sourceAgrees :
    SourceAgrees case_000805_support case_000805_rank.val case_000805_mask := by
  intro hlt
  have hrank : (⟨case_000805_rank.val, hlt⟩ : Fin numPairWords) = case_000805_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000805_rank.val, hlt⟩ case_000805_mask =
        case_000805_seq := by
    simpa [hrank] using case_000805_seqAtRank
  simp [SourceChecks, hseq, case_000805_support,
    checkTranslationConstraintSource, case_000805_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000805_rows :
    EqEqPosVarFirstRows case_000805_support case_000805_rank.val case_000805_mask := by
  intro hlt
  have hrank : (⟨case_000805_rank.val, hlt⟩ : Fin numPairWords) = case_000805_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000805_rank.val, hlt⟩ case_000805_mask =
        case_000805_seq := by
    simpa [hrank] using case_000805_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000805_rank.val, hlt⟩ case_000805_mask =
        case_000805_b := by
    simpa [hrank] using case_000805_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000805_support case_000805_rank.val hlt
          case_000805_mask = case_000805_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000805_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000805_support case_000805_rank.val hlt
          case_000805_mask = case_000805_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000805_secondLine_eq]
  have case_000805_rowFirst :
      EqEqPosRow (FirstLineAt case_000805_support case_000805_rank.val hlt case_000805_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000805_firstLine, EqEqPosRow]
  have case_000805_fixedSecond :
      FixedRow (SecondLineAt case_000805_support case_000805_rank.val hlt case_000805_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000805_secondLine, FixedRow]
  exact ⟨case_000805_rowFirst, case_000805_fixedSecond⟩

private theorem case_000805_existsRows :
    ExistsEqEqPosVarFirstRows case_000805_rank.val case_000805_mask :=
  ⟨case_000805_support, case_000805_sourceAgrees, case_000805_rows⟩

private theorem case_000805_covered :
    RowPropertyParametricCovered case_000805_rank.val case_000805_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000805_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000806_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000806_mask : SignMask := ⟨28, by decide⟩
private def case_000806_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000806_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000806_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000806_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (-20/9) }
private def case_000806_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000806_secondLine : StrictLin2 := { a := (9/20), b := (-9/20), c := (-9/10) }

private theorem case_000806_rankWord :
    rankPairWord? case_000806_word = some case_000806_rank := by
  decide

private theorem case_000806_unrank :
    unrankPairWord case_000806_rank = case_000806_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000806_word case_000806_rank).1
    case_000806_rankWord |>.symm

private theorem case_000806_seqChoice :
    translationChoiceSeq case_000806_word case_000806_mask = case_000806_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000806_seqAtRank :
    translationSeqAtRankMask case_000806_rank case_000806_mask = case_000806_seq := by
  rw [translationSeqAtRankMask, case_000806_unrank]
  exact case_000806_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000806_bAtRank :
    translationBAtRankMask case_000806_rank case_000806_mask = case_000806_b := by
  rw [translationBAtRankMask, case_000806_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000806_b, case_000806_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000806_firstLine_eq :
    case_000806_support.firstLine case_000806_seq case_000806_b = case_000806_firstLine := by
  norm_num [case_000806_firstLine, case_000806_support, case_000806_seq, case_000806_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000806_secondLine_eq :
    case_000806_support.secondLine case_000806_seq case_000806_b = case_000806_secondLine := by
  norm_num [case_000806_secondLine, case_000806_support, case_000806_seq, case_000806_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000806_sourceAgrees :
    SourceAgrees case_000806_support case_000806_rank.val case_000806_mask := by
  intro hlt
  have hrank : (⟨case_000806_rank.val, hlt⟩ : Fin numPairWords) = case_000806_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000806_rank.val, hlt⟩ case_000806_mask =
        case_000806_seq := by
    simpa [hrank] using case_000806_seqAtRank
  simp [SourceChecks, hseq, case_000806_support,
    checkTranslationConstraintSource, case_000806_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000806_rows :
    OppMinusOneVarSecondRows case_000806_support case_000806_rank.val case_000806_mask := by
  intro hlt
  have hrank : (⟨case_000806_rank.val, hlt⟩ : Fin numPairWords) = case_000806_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000806_rank.val, hlt⟩ case_000806_mask =
        case_000806_seq := by
    simpa [hrank] using case_000806_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000806_rank.val, hlt⟩ case_000806_mask =
        case_000806_b := by
    simpa [hrank] using case_000806_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000806_support case_000806_rank.val hlt
          case_000806_mask = case_000806_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000806_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000806_support case_000806_rank.val hlt
          case_000806_mask = case_000806_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000806_secondLine_eq]
  have case_000806_fixedFirst :
      FixedRow (FirstLineAt case_000806_support case_000806_rank.val hlt case_000806_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000806_firstLine, FixedRow]
  have case_000806_rowSecond :
      OppNegRow (SecondLineAt case_000806_support case_000806_rank.val hlt case_000806_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000806_secondLine, OppNegRow]
  exact ⟨case_000806_fixedFirst, case_000806_rowSecond⟩

private theorem case_000806_existsRows :
    ExistsOppMinusOneVarSecondRows case_000806_rank.val case_000806_mask :=
  ⟨case_000806_support, case_000806_sourceAgrees, case_000806_rows⟩

private theorem case_000806_covered :
    RowPropertyParametricCovered case_000806_rank.val case_000806_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000806_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000807_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000807_mask : SignMask := ⟨29, by decide⟩
private def case_000807_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000807_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000807_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000807_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (-20/9) }
private def case_000807_firstLine : StrictLin2 := { a := (-74/19), b := (74/19), c := (-80/19) }
private def case_000807_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000807_rankWord :
    rankPairWord? case_000807_word = some case_000807_rank := by
  decide

private theorem case_000807_unrank :
    unrankPairWord case_000807_rank = case_000807_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000807_word case_000807_rank).1
    case_000807_rankWord |>.symm

private theorem case_000807_seqChoice :
    translationChoiceSeq case_000807_word case_000807_mask = case_000807_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000807_seqAtRank :
    translationSeqAtRankMask case_000807_rank case_000807_mask = case_000807_seq := by
  rw [translationSeqAtRankMask, case_000807_unrank]
  exact case_000807_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000807_bAtRank :
    translationBAtRankMask case_000807_rank case_000807_mask = case_000807_b := by
  rw [translationBAtRankMask, case_000807_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000807_b, case_000807_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000807_firstLine_eq :
    case_000807_support.firstLine case_000807_seq case_000807_b = case_000807_firstLine := by
  norm_num [case_000807_firstLine, case_000807_support, case_000807_seq, case_000807_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000807_secondLine_eq :
    case_000807_support.secondLine case_000807_seq case_000807_b = case_000807_secondLine := by
  norm_num [case_000807_secondLine, case_000807_support, case_000807_seq, case_000807_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000807_sourceAgrees :
    SourceAgrees case_000807_support case_000807_rank.val case_000807_mask := by
  intro hlt
  have hrank : (⟨case_000807_rank.val, hlt⟩ : Fin numPairWords) = case_000807_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000807_rank.val, hlt⟩ case_000807_mask =
        case_000807_seq := by
    simpa [hrank] using case_000807_seqAtRank
  simp [SourceChecks, hseq, case_000807_support,
    checkTranslationConstraintSource, case_000807_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000807_rows :
    OppOneMinusVarFirstRows case_000807_support case_000807_rank.val case_000807_mask := by
  intro hlt
  have hrank : (⟨case_000807_rank.val, hlt⟩ : Fin numPairWords) = case_000807_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000807_rank.val, hlt⟩ case_000807_mask =
        case_000807_seq := by
    simpa [hrank] using case_000807_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000807_rank.val, hlt⟩ case_000807_mask =
        case_000807_b := by
    simpa [hrank] using case_000807_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000807_support case_000807_rank.val hlt
          case_000807_mask = case_000807_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000807_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000807_support case_000807_rank.val hlt
          case_000807_mask = case_000807_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000807_secondLine_eq]
  have case_000807_rowFirst :
      OppPosRow (FirstLineAt case_000807_support case_000807_rank.val hlt case_000807_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000807_firstLine, OppPosRow]
  have case_000807_fixedSecond :
      FixedRow (SecondLineAt case_000807_support case_000807_rank.val hlt case_000807_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000807_secondLine, FixedRow]
  exact ⟨case_000807_rowFirst, case_000807_fixedSecond⟩

private theorem case_000807_existsRows :
    ExistsOppOneMinusVarFirstRows case_000807_rank.val case_000807_mask :=
  ⟨case_000807_support, case_000807_sourceAgrees, case_000807_rows⟩

private theorem case_000807_covered :
    RowPropertyParametricCovered case_000807_rank.val case_000807_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000807_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000808_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000808_mask : SignMask := ⟨30, by decide⟩
private def case_000808_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000808_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000808_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000808_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (52/9) }
private def case_000808_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000808_secondLine : StrictLin2 := { a := (333/2090), b := (-333/2090), c := (-852/1045) }

private theorem case_000808_rankWord :
    rankPairWord? case_000808_word = some case_000808_rank := by
  decide

private theorem case_000808_unrank :
    unrankPairWord case_000808_rank = case_000808_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000808_word case_000808_rank).1
    case_000808_rankWord |>.symm

private theorem case_000808_seqChoice :
    translationChoiceSeq case_000808_word case_000808_mask = case_000808_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000808_seqAtRank :
    translationSeqAtRankMask case_000808_rank case_000808_mask = case_000808_seq := by
  rw [translationSeqAtRankMask, case_000808_unrank]
  exact case_000808_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000808_bAtRank :
    translationBAtRankMask case_000808_rank case_000808_mask = case_000808_b := by
  rw [translationBAtRankMask, case_000808_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000808_b, case_000808_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000808_firstLine_eq :
    case_000808_support.firstLine case_000808_seq case_000808_b = case_000808_firstLine := by
  norm_num [case_000808_firstLine, case_000808_support, case_000808_seq, case_000808_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000808_secondLine_eq :
    case_000808_support.secondLine case_000808_seq case_000808_b = case_000808_secondLine := by
  norm_num [case_000808_secondLine, case_000808_support, case_000808_seq, case_000808_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000808_sourceAgrees :
    SourceAgrees case_000808_support case_000808_rank.val case_000808_mask := by
  intro hlt
  have hrank : (⟨case_000808_rank.val, hlt⟩ : Fin numPairWords) = case_000808_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000808_rank.val, hlt⟩ case_000808_mask =
        case_000808_seq := by
    simpa [hrank] using case_000808_seqAtRank
  simp [SourceChecks, hseq, case_000808_support,
    checkTranslationConstraintSource, case_000808_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000808_rows :
    OppMinusOneVarSecondRows case_000808_support case_000808_rank.val case_000808_mask := by
  intro hlt
  have hrank : (⟨case_000808_rank.val, hlt⟩ : Fin numPairWords) = case_000808_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000808_rank.val, hlt⟩ case_000808_mask =
        case_000808_seq := by
    simpa [hrank] using case_000808_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000808_rank.val, hlt⟩ case_000808_mask =
        case_000808_b := by
    simpa [hrank] using case_000808_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000808_support case_000808_rank.val hlt
          case_000808_mask = case_000808_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000808_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000808_support case_000808_rank.val hlt
          case_000808_mask = case_000808_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000808_secondLine_eq]
  have case_000808_fixedFirst :
      FixedRow (FirstLineAt case_000808_support case_000808_rank.val hlt case_000808_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000808_firstLine, FixedRow]
  have case_000808_rowSecond :
      OppNegRow (SecondLineAt case_000808_support case_000808_rank.val hlt case_000808_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000808_secondLine, OppNegRow]
  exact ⟨case_000808_fixedFirst, case_000808_rowSecond⟩

private theorem case_000808_existsRows :
    ExistsOppMinusOneVarSecondRows case_000808_rank.val case_000808_mask :=
  ⟨case_000808_support, case_000808_sourceAgrees, case_000808_rows⟩

private theorem case_000808_covered :
    RowPropertyParametricCovered case_000808_rank.val case_000808_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000808_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000809_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000809_mask : SignMask := ⟨31, by decide⟩
private def case_000809_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000809_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000809_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000809_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (52/9) }
private def case_000809_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000809_secondLine : StrictLin2 := { a := (-37/742), b := (-37/742), c := (-83/371) }

private theorem case_000809_rankWord :
    rankPairWord? case_000809_word = some case_000809_rank := by
  decide

private theorem case_000809_unrank :
    unrankPairWord case_000809_rank = case_000809_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000809_word case_000809_rank).1
    case_000809_rankWord |>.symm

private theorem case_000809_seqChoice :
    translationChoiceSeq case_000809_word case_000809_mask = case_000809_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000809_seqAtRank :
    translationSeqAtRankMask case_000809_rank case_000809_mask = case_000809_seq := by
  rw [translationSeqAtRankMask, case_000809_unrank]
  exact case_000809_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000809_bAtRank :
    translationBAtRankMask case_000809_rank case_000809_mask = case_000809_b := by
  rw [translationBAtRankMask, case_000809_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000809_b, case_000809_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000809_firstLine_eq :
    case_000809_support.firstLine case_000809_seq case_000809_b = case_000809_firstLine := by
  norm_num [case_000809_firstLine, case_000809_support, case_000809_seq, case_000809_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000809_secondLine_eq :
    case_000809_support.secondLine case_000809_seq case_000809_b = case_000809_secondLine := by
  norm_num [case_000809_secondLine, case_000809_support, case_000809_seq, case_000809_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000809_sourceAgrees :
    SourceAgrees case_000809_support case_000809_rank.val case_000809_mask := by
  intro hlt
  have hrank : (⟨case_000809_rank.val, hlt⟩ : Fin numPairWords) = case_000809_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000809_rank.val, hlt⟩ case_000809_mask =
        case_000809_seq := by
    simpa [hrank] using case_000809_seqAtRank
  simp [SourceChecks, hseq, case_000809_support,
    checkTranslationConstraintSource, case_000809_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000809_rows :
    EqEqPosVarSecondRows case_000809_support case_000809_rank.val case_000809_mask := by
  intro hlt
  have hrank : (⟨case_000809_rank.val, hlt⟩ : Fin numPairWords) = case_000809_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000809_rank.val, hlt⟩ case_000809_mask =
        case_000809_seq := by
    simpa [hrank] using case_000809_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000809_rank.val, hlt⟩ case_000809_mask =
        case_000809_b := by
    simpa [hrank] using case_000809_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000809_support case_000809_rank.val hlt
          case_000809_mask = case_000809_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000809_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000809_support case_000809_rank.val hlt
          case_000809_mask = case_000809_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000809_secondLine_eq]
  have case_000809_fixedFirst :
      FixedRow (FirstLineAt case_000809_support case_000809_rank.val hlt case_000809_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000809_firstLine, FixedRow]
  have case_000809_rowSecond :
      EqEqPosRow (SecondLineAt case_000809_support case_000809_rank.val hlt case_000809_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000809_secondLine, EqEqPosRow]
  exact ⟨case_000809_fixedFirst, case_000809_rowSecond⟩

private theorem case_000809_existsRows :
    ExistsEqEqPosVarSecondRows case_000809_rank.val case_000809_mask :=
  ⟨case_000809_support, case_000809_sourceAgrees, case_000809_rows⟩

private theorem case_000809_covered :
    RowPropertyParametricCovered case_000809_rank.val case_000809_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000809_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000810_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000810_mask : SignMask := ⟨47, by decide⟩
private def case_000810_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000810_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000810_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000810_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000810_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000810_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000810_rankWord :
    rankPairWord? case_000810_word = some case_000810_rank := by
  decide

private theorem case_000810_unrank :
    unrankPairWord case_000810_rank = case_000810_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000810_word case_000810_rank).1
    case_000810_rankWord |>.symm

private theorem case_000810_seqChoice :
    translationChoiceSeq case_000810_word case_000810_mask = case_000810_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000810_seqAtRank :
    translationSeqAtRankMask case_000810_rank case_000810_mask = case_000810_seq := by
  rw [translationSeqAtRankMask, case_000810_unrank]
  exact case_000810_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000810_bAtRank :
    translationBAtRankMask case_000810_rank case_000810_mask = case_000810_b := by
  rw [translationBAtRankMask, case_000810_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000810_b, case_000810_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000810_firstLine_eq :
    case_000810_support.firstLine case_000810_seq case_000810_b = case_000810_firstLine := by
  norm_num [case_000810_firstLine, case_000810_support, case_000810_seq, case_000810_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000810_secondLine_eq :
    case_000810_support.secondLine case_000810_seq case_000810_b = case_000810_secondLine := by
  norm_num [case_000810_secondLine, case_000810_support, case_000810_seq, case_000810_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000810_sourceAgrees :
    SourceAgrees case_000810_support case_000810_rank.val case_000810_mask := by
  intro hlt
  have hrank : (⟨case_000810_rank.val, hlt⟩ : Fin numPairWords) = case_000810_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000810_rank.val, hlt⟩ case_000810_mask =
        case_000810_seq := by
    simpa [hrank] using case_000810_seqAtRank
  simp [SourceChecks, hseq, case_000810_support,
    checkTranslationConstraintSource, case_000810_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000810_rows :
    EqEqPosVarSecondRows case_000810_support case_000810_rank.val case_000810_mask := by
  intro hlt
  have hrank : (⟨case_000810_rank.val, hlt⟩ : Fin numPairWords) = case_000810_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000810_rank.val, hlt⟩ case_000810_mask =
        case_000810_seq := by
    simpa [hrank] using case_000810_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000810_rank.val, hlt⟩ case_000810_mask =
        case_000810_b := by
    simpa [hrank] using case_000810_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000810_support case_000810_rank.val hlt
          case_000810_mask = case_000810_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000810_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000810_support case_000810_rank.val hlt
          case_000810_mask = case_000810_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000810_secondLine_eq]
  have case_000810_fixedFirst :
      FixedRow (FirstLineAt case_000810_support case_000810_rank.val hlt case_000810_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000810_firstLine, FixedRow]
  have case_000810_rowSecond :
      EqEqPosRow (SecondLineAt case_000810_support case_000810_rank.val hlt case_000810_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000810_secondLine, EqEqPosRow]
  exact ⟨case_000810_fixedFirst, case_000810_rowSecond⟩

private theorem case_000810_existsRows :
    ExistsEqEqPosVarSecondRows case_000810_rank.val case_000810_mask :=
  ⟨case_000810_support, case_000810_sourceAgrees, case_000810_rows⟩

private theorem case_000810_covered :
    RowPropertyParametricCovered case_000810_rank.val case_000810_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000810_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000811_rank : Fin numPairWords := ⟨605, by decide⟩
private def case_000811_mask : SignMask := ⟨55, by decide⟩
private def case_000811_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000811_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000811_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000811_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000811_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000811_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000811_rankWord :
    rankPairWord? case_000811_word = some case_000811_rank := by
  decide

private theorem case_000811_unrank :
    unrankPairWord case_000811_rank = case_000811_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000811_word case_000811_rank).1
    case_000811_rankWord |>.symm

private theorem case_000811_seqChoice :
    translationChoiceSeq case_000811_word case_000811_mask = case_000811_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000811_seqAtRank :
    translationSeqAtRankMask case_000811_rank case_000811_mask = case_000811_seq := by
  rw [translationSeqAtRankMask, case_000811_unrank]
  exact case_000811_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000811_bAtRank :
    translationBAtRankMask case_000811_rank case_000811_mask = case_000811_b := by
  rw [translationBAtRankMask, case_000811_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000811_b, case_000811_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000811_firstLine_eq :
    case_000811_support.firstLine case_000811_seq case_000811_b = case_000811_firstLine := by
  norm_num [case_000811_firstLine, case_000811_support, case_000811_seq, case_000811_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000811_secondLine_eq :
    case_000811_support.secondLine case_000811_seq case_000811_b = case_000811_secondLine := by
  norm_num [case_000811_secondLine, case_000811_support, case_000811_seq, case_000811_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000811_sourceAgrees :
    SourceAgrees case_000811_support case_000811_rank.val case_000811_mask := by
  intro hlt
  have hrank : (⟨case_000811_rank.val, hlt⟩ : Fin numPairWords) = case_000811_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000811_rank.val, hlt⟩ case_000811_mask =
        case_000811_seq := by
    simpa [hrank] using case_000811_seqAtRank
  simp [SourceChecks, hseq, case_000811_support,
    checkTranslationConstraintSource, case_000811_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000811_rows :
    EqEqPosVarSecondRows case_000811_support case_000811_rank.val case_000811_mask := by
  intro hlt
  have hrank : (⟨case_000811_rank.val, hlt⟩ : Fin numPairWords) = case_000811_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000811_rank.val, hlt⟩ case_000811_mask =
        case_000811_seq := by
    simpa [hrank] using case_000811_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000811_rank.val, hlt⟩ case_000811_mask =
        case_000811_b := by
    simpa [hrank] using case_000811_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000811_support case_000811_rank.val hlt
          case_000811_mask = case_000811_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000811_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000811_support case_000811_rank.val hlt
          case_000811_mask = case_000811_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000811_secondLine_eq]
  have case_000811_fixedFirst :
      FixedRow (FirstLineAt case_000811_support case_000811_rank.val hlt case_000811_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000811_firstLine, FixedRow]
  have case_000811_rowSecond :
      EqEqPosRow (SecondLineAt case_000811_support case_000811_rank.val hlt case_000811_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000811_secondLine, EqEqPosRow]
  exact ⟨case_000811_fixedFirst, case_000811_rowSecond⟩

private theorem case_000811_existsRows :
    ExistsEqEqPosVarSecondRows case_000811_rank.val case_000811_mask :=
  ⟨case_000811_support, case_000811_sourceAgrees, case_000811_rows⟩

private theorem case_000811_covered :
    RowPropertyParametricCovered case_000811_rank.val case_000811_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000811_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000812_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000812_mask : SignMask := ⟨8, by decide⟩
private def case_000812_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000812_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000812_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000812_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000812_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000812_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000812_rankWord :
    rankPairWord? case_000812_word = some case_000812_rank := by
  decide

private theorem case_000812_unrank :
    unrankPairWord case_000812_rank = case_000812_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000812_word case_000812_rank).1
    case_000812_rankWord |>.symm

private theorem case_000812_seqChoice :
    translationChoiceSeq case_000812_word case_000812_mask = case_000812_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000812_seqAtRank :
    translationSeqAtRankMask case_000812_rank case_000812_mask = case_000812_seq := by
  rw [translationSeqAtRankMask, case_000812_unrank]
  exact case_000812_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000812_bAtRank :
    translationBAtRankMask case_000812_rank case_000812_mask = case_000812_b := by
  rw [translationBAtRankMask, case_000812_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000812_b, case_000812_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000812_firstLine_eq :
    case_000812_support.firstLine case_000812_seq case_000812_b = case_000812_firstLine := by
  norm_num [case_000812_firstLine, case_000812_support, case_000812_seq, case_000812_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000812_secondLine_eq :
    case_000812_support.secondLine case_000812_seq case_000812_b = case_000812_secondLine := by
  norm_num [case_000812_secondLine, case_000812_support, case_000812_seq, case_000812_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000812_sourceAgrees :
    SourceAgrees case_000812_support case_000812_rank.val case_000812_mask := by
  intro hlt
  have hrank : (⟨case_000812_rank.val, hlt⟩ : Fin numPairWords) = case_000812_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000812_rank.val, hlt⟩ case_000812_mask =
        case_000812_seq := by
    simpa [hrank] using case_000812_seqAtRank
  simp [SourceChecks, hseq, case_000812_support,
    checkTranslationConstraintSource, case_000812_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000812_rows :
    EqEqPosVarFirstRows case_000812_support case_000812_rank.val case_000812_mask := by
  intro hlt
  have hrank : (⟨case_000812_rank.val, hlt⟩ : Fin numPairWords) = case_000812_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000812_rank.val, hlt⟩ case_000812_mask =
        case_000812_seq := by
    simpa [hrank] using case_000812_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000812_rank.val, hlt⟩ case_000812_mask =
        case_000812_b := by
    simpa [hrank] using case_000812_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000812_support case_000812_rank.val hlt
          case_000812_mask = case_000812_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000812_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000812_support case_000812_rank.val hlt
          case_000812_mask = case_000812_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000812_secondLine_eq]
  have case_000812_rowFirst :
      EqEqPosRow (FirstLineAt case_000812_support case_000812_rank.val hlt case_000812_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000812_firstLine, EqEqPosRow]
  have case_000812_fixedSecond :
      FixedRow (SecondLineAt case_000812_support case_000812_rank.val hlt case_000812_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000812_secondLine, FixedRow]
  exact ⟨case_000812_rowFirst, case_000812_fixedSecond⟩

private theorem case_000812_existsRows :
    ExistsEqEqPosVarFirstRows case_000812_rank.val case_000812_mask :=
  ⟨case_000812_support, case_000812_sourceAgrees, case_000812_rows⟩

private theorem case_000812_covered :
    RowPropertyParametricCovered case_000812_rank.val case_000812_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000812_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000813_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000813_mask : SignMask := ⟨9, by decide⟩
private def case_000813_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000813_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000813_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000813_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000813_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000813_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000813_rankWord :
    rankPairWord? case_000813_word = some case_000813_rank := by
  decide

private theorem case_000813_unrank :
    unrankPairWord case_000813_rank = case_000813_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000813_word case_000813_rank).1
    case_000813_rankWord |>.symm

private theorem case_000813_seqChoice :
    translationChoiceSeq case_000813_word case_000813_mask = case_000813_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000813_seqAtRank :
    translationSeqAtRankMask case_000813_rank case_000813_mask = case_000813_seq := by
  rw [translationSeqAtRankMask, case_000813_unrank]
  exact case_000813_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000813_bAtRank :
    translationBAtRankMask case_000813_rank case_000813_mask = case_000813_b := by
  rw [translationBAtRankMask, case_000813_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000813_b, case_000813_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000813_firstLine_eq :
    case_000813_support.firstLine case_000813_seq case_000813_b = case_000813_firstLine := by
  norm_num [case_000813_firstLine, case_000813_support, case_000813_seq, case_000813_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000813_secondLine_eq :
    case_000813_support.secondLine case_000813_seq case_000813_b = case_000813_secondLine := by
  norm_num [case_000813_secondLine, case_000813_support, case_000813_seq, case_000813_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000813_sourceAgrees :
    SourceAgrees case_000813_support case_000813_rank.val case_000813_mask := by
  intro hlt
  have hrank : (⟨case_000813_rank.val, hlt⟩ : Fin numPairWords) = case_000813_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000813_rank.val, hlt⟩ case_000813_mask =
        case_000813_seq := by
    simpa [hrank] using case_000813_seqAtRank
  simp [SourceChecks, hseq, case_000813_support,
    checkTranslationConstraintSource, case_000813_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000813_rows :
    EqEqPosVarFirstRows case_000813_support case_000813_rank.val case_000813_mask := by
  intro hlt
  have hrank : (⟨case_000813_rank.val, hlt⟩ : Fin numPairWords) = case_000813_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000813_rank.val, hlt⟩ case_000813_mask =
        case_000813_seq := by
    simpa [hrank] using case_000813_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000813_rank.val, hlt⟩ case_000813_mask =
        case_000813_b := by
    simpa [hrank] using case_000813_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000813_support case_000813_rank.val hlt
          case_000813_mask = case_000813_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000813_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000813_support case_000813_rank.val hlt
          case_000813_mask = case_000813_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000813_secondLine_eq]
  have case_000813_rowFirst :
      EqEqPosRow (FirstLineAt case_000813_support case_000813_rank.val hlt case_000813_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000813_firstLine, EqEqPosRow]
  have case_000813_fixedSecond :
      FixedRow (SecondLineAt case_000813_support case_000813_rank.val hlt case_000813_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000813_secondLine, FixedRow]
  exact ⟨case_000813_rowFirst, case_000813_fixedSecond⟩

private theorem case_000813_existsRows :
    ExistsEqEqPosVarFirstRows case_000813_rank.val case_000813_mask :=
  ⟨case_000813_support, case_000813_sourceAgrees, case_000813_rows⟩

private theorem case_000813_covered :
    RowPropertyParametricCovered case_000813_rank.val case_000813_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000813_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000814_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000814_mask : SignMask := ⟨13, by decide⟩
private def case_000814_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000814_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000814_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000814_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000814_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000814_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000814_rankWord :
    rankPairWord? case_000814_word = some case_000814_rank := by
  decide

private theorem case_000814_unrank :
    unrankPairWord case_000814_rank = case_000814_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000814_word case_000814_rank).1
    case_000814_rankWord |>.symm

private theorem case_000814_seqChoice :
    translationChoiceSeq case_000814_word case_000814_mask = case_000814_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000814_seqAtRank :
    translationSeqAtRankMask case_000814_rank case_000814_mask = case_000814_seq := by
  rw [translationSeqAtRankMask, case_000814_unrank]
  exact case_000814_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000814_bAtRank :
    translationBAtRankMask case_000814_rank case_000814_mask = case_000814_b := by
  rw [translationBAtRankMask, case_000814_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000814_b, case_000814_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000814_firstLine_eq :
    case_000814_support.firstLine case_000814_seq case_000814_b = case_000814_firstLine := by
  norm_num [case_000814_firstLine, case_000814_support, case_000814_seq, case_000814_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000814_secondLine_eq :
    case_000814_support.secondLine case_000814_seq case_000814_b = case_000814_secondLine := by
  norm_num [case_000814_secondLine, case_000814_support, case_000814_seq, case_000814_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000814_sourceAgrees :
    SourceAgrees case_000814_support case_000814_rank.val case_000814_mask := by
  intro hlt
  have hrank : (⟨case_000814_rank.val, hlt⟩ : Fin numPairWords) = case_000814_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000814_rank.val, hlt⟩ case_000814_mask =
        case_000814_seq := by
    simpa [hrank] using case_000814_seqAtRank
  simp [SourceChecks, hseq, case_000814_support,
    checkTranslationConstraintSource, case_000814_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000814_rows :
    EqEqPosVarSecondRows case_000814_support case_000814_rank.val case_000814_mask := by
  intro hlt
  have hrank : (⟨case_000814_rank.val, hlt⟩ : Fin numPairWords) = case_000814_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000814_rank.val, hlt⟩ case_000814_mask =
        case_000814_seq := by
    simpa [hrank] using case_000814_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000814_rank.val, hlt⟩ case_000814_mask =
        case_000814_b := by
    simpa [hrank] using case_000814_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000814_support case_000814_rank.val hlt
          case_000814_mask = case_000814_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000814_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000814_support case_000814_rank.val hlt
          case_000814_mask = case_000814_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000814_secondLine_eq]
  have case_000814_fixedFirst :
      FixedRow (FirstLineAt case_000814_support case_000814_rank.val hlt case_000814_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000814_firstLine, FixedRow]
  have case_000814_rowSecond :
      EqEqPosRow (SecondLineAt case_000814_support case_000814_rank.val hlt case_000814_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000814_secondLine, EqEqPosRow]
  exact ⟨case_000814_fixedFirst, case_000814_rowSecond⟩

private theorem case_000814_existsRows :
    ExistsEqEqPosVarSecondRows case_000814_rank.val case_000814_mask :=
  ⟨case_000814_support, case_000814_sourceAgrees, case_000814_rows⟩

private theorem case_000814_covered :
    RowPropertyParametricCovered case_000814_rank.val case_000814_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000814_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000815_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000815_mask : SignMask := ⟨16, by decide⟩
private def case_000815_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000815_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000815_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000815_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-4/9) }
private def case_000815_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/17) }
private def case_000815_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000815_rankWord :
    rankPairWord? case_000815_word = some case_000815_rank := by
  decide

private theorem case_000815_unrank :
    unrankPairWord case_000815_rank = case_000815_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000815_word case_000815_rank).1
    case_000815_rankWord |>.symm

private theorem case_000815_seqChoice :
    translationChoiceSeq case_000815_word case_000815_mask = case_000815_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000815_seqAtRank :
    translationSeqAtRankMask case_000815_rank case_000815_mask = case_000815_seq := by
  rw [translationSeqAtRankMask, case_000815_unrank]
  exact case_000815_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000815_bAtRank :
    translationBAtRankMask case_000815_rank case_000815_mask = case_000815_b := by
  rw [translationBAtRankMask, case_000815_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000815_b, case_000815_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000815_firstLine_eq :
    case_000815_support.firstLine case_000815_seq case_000815_b = case_000815_firstLine := by
  norm_num [case_000815_firstLine, case_000815_support, case_000815_seq, case_000815_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000815_secondLine_eq :
    case_000815_support.secondLine case_000815_seq case_000815_b = case_000815_secondLine := by
  norm_num [case_000815_secondLine, case_000815_support, case_000815_seq, case_000815_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000815_sourceAgrees :
    SourceAgrees case_000815_support case_000815_rank.val case_000815_mask := by
  intro hlt
  have hrank : (⟨case_000815_rank.val, hlt⟩ : Fin numPairWords) = case_000815_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000815_rank.val, hlt⟩ case_000815_mask =
        case_000815_seq := by
    simpa [hrank] using case_000815_seqAtRank
  simp [SourceChecks, hseq, case_000815_support,
    checkTranslationConstraintSource, case_000815_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000815_rows :
    EqEqPosVarFirstRows case_000815_support case_000815_rank.val case_000815_mask := by
  intro hlt
  have hrank : (⟨case_000815_rank.val, hlt⟩ : Fin numPairWords) = case_000815_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000815_rank.val, hlt⟩ case_000815_mask =
        case_000815_seq := by
    simpa [hrank] using case_000815_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000815_rank.val, hlt⟩ case_000815_mask =
        case_000815_b := by
    simpa [hrank] using case_000815_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000815_support case_000815_rank.val hlt
          case_000815_mask = case_000815_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000815_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000815_support case_000815_rank.val hlt
          case_000815_mask = case_000815_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000815_secondLine_eq]
  have case_000815_rowFirst :
      EqEqPosRow (FirstLineAt case_000815_support case_000815_rank.val hlt case_000815_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000815_firstLine, EqEqPosRow]
  have case_000815_fixedSecond :
      FixedRow (SecondLineAt case_000815_support case_000815_rank.val hlt case_000815_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000815_secondLine, FixedRow]
  exact ⟨case_000815_rowFirst, case_000815_fixedSecond⟩

private theorem case_000815_existsRows :
    ExistsEqEqPosVarFirstRows case_000815_rank.val case_000815_mask :=
  ⟨case_000815_support, case_000815_sourceAgrees, case_000815_rows⟩

private theorem case_000815_covered :
    RowPropertyParametricCovered case_000815_rank.val case_000815_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000815_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000816_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000816_mask : SignMask := ⟨22, by decide⟩
private def case_000816_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000816_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000816_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000816_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (116/9) }
private def case_000816_firstLine : StrictLin2 := { a := -1, b := 1, c := (-55/29) }
private def case_000816_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000816_rankWord :
    rankPairWord? case_000816_word = some case_000816_rank := by
  decide

private theorem case_000816_unrank :
    unrankPairWord case_000816_rank = case_000816_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000816_word case_000816_rank).1
    case_000816_rankWord |>.symm

private theorem case_000816_seqChoice :
    translationChoiceSeq case_000816_word case_000816_mask = case_000816_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000816_seqAtRank :
    translationSeqAtRankMask case_000816_rank case_000816_mask = case_000816_seq := by
  rw [translationSeqAtRankMask, case_000816_unrank]
  exact case_000816_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000816_bAtRank :
    translationBAtRankMask case_000816_rank case_000816_mask = case_000816_b := by
  rw [translationBAtRankMask, case_000816_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000816_b, case_000816_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000816_firstLine_eq :
    case_000816_support.firstLine case_000816_seq case_000816_b = case_000816_firstLine := by
  norm_num [case_000816_firstLine, case_000816_support, case_000816_seq, case_000816_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000816_secondLine_eq :
    case_000816_support.secondLine case_000816_seq case_000816_b = case_000816_secondLine := by
  norm_num [case_000816_secondLine, case_000816_support, case_000816_seq, case_000816_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000816_sourceAgrees :
    SourceAgrees case_000816_support case_000816_rank.val case_000816_mask := by
  intro hlt
  have hrank : (⟨case_000816_rank.val, hlt⟩ : Fin numPairWords) = case_000816_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000816_rank.val, hlt⟩ case_000816_mask =
        case_000816_seq := by
    simpa [hrank] using case_000816_seqAtRank
  simp [SourceChecks, hseq, case_000816_support,
    checkTranslationConstraintSource, case_000816_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000816_rows :
    OppOneMinusVarFirstRows case_000816_support case_000816_rank.val case_000816_mask := by
  intro hlt
  have hrank : (⟨case_000816_rank.val, hlt⟩ : Fin numPairWords) = case_000816_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000816_rank.val, hlt⟩ case_000816_mask =
        case_000816_seq := by
    simpa [hrank] using case_000816_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000816_rank.val, hlt⟩ case_000816_mask =
        case_000816_b := by
    simpa [hrank] using case_000816_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000816_support case_000816_rank.val hlt
          case_000816_mask = case_000816_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000816_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000816_support case_000816_rank.val hlt
          case_000816_mask = case_000816_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000816_secondLine_eq]
  have case_000816_rowFirst :
      OppPosRow (FirstLineAt case_000816_support case_000816_rank.val hlt case_000816_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000816_firstLine, OppPosRow]
  have case_000816_fixedSecond :
      FixedRow (SecondLineAt case_000816_support case_000816_rank.val hlt case_000816_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000816_secondLine, FixedRow]
  exact ⟨case_000816_rowFirst, case_000816_fixedSecond⟩

private theorem case_000816_existsRows :
    ExistsOppOneMinusVarFirstRows case_000816_rank.val case_000816_mask :=
  ⟨case_000816_support, case_000816_sourceAgrees, case_000816_rows⟩

private theorem case_000816_covered :
    RowPropertyParametricCovered case_000816_rank.val case_000816_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000816_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000817_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000817_mask : SignMask := ⟨23, by decide⟩
private def case_000817_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000817_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000817_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000817_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (116/9) }
private def case_000817_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000817_secondLine : StrictLin2 := { a := (-29/518), b := (-29/518), c := (-31/259) }

private theorem case_000817_rankWord :
    rankPairWord? case_000817_word = some case_000817_rank := by
  decide

private theorem case_000817_unrank :
    unrankPairWord case_000817_rank = case_000817_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000817_word case_000817_rank).1
    case_000817_rankWord |>.symm

private theorem case_000817_seqChoice :
    translationChoiceSeq case_000817_word case_000817_mask = case_000817_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000817_seqAtRank :
    translationSeqAtRankMask case_000817_rank case_000817_mask = case_000817_seq := by
  rw [translationSeqAtRankMask, case_000817_unrank]
  exact case_000817_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000817_bAtRank :
    translationBAtRankMask case_000817_rank case_000817_mask = case_000817_b := by
  rw [translationBAtRankMask, case_000817_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000817_b, case_000817_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000817_firstLine_eq :
    case_000817_support.firstLine case_000817_seq case_000817_b = case_000817_firstLine := by
  norm_num [case_000817_firstLine, case_000817_support, case_000817_seq, case_000817_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000817_secondLine_eq :
    case_000817_support.secondLine case_000817_seq case_000817_b = case_000817_secondLine := by
  norm_num [case_000817_secondLine, case_000817_support, case_000817_seq, case_000817_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000817_sourceAgrees :
    SourceAgrees case_000817_support case_000817_rank.val case_000817_mask := by
  intro hlt
  have hrank : (⟨case_000817_rank.val, hlt⟩ : Fin numPairWords) = case_000817_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000817_rank.val, hlt⟩ case_000817_mask =
        case_000817_seq := by
    simpa [hrank] using case_000817_seqAtRank
  simp [SourceChecks, hseq, case_000817_support,
    checkTranslationConstraintSource, case_000817_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000817_rows :
    EqEqPosVarSecondRows case_000817_support case_000817_rank.val case_000817_mask := by
  intro hlt
  have hrank : (⟨case_000817_rank.val, hlt⟩ : Fin numPairWords) = case_000817_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000817_rank.val, hlt⟩ case_000817_mask =
        case_000817_seq := by
    simpa [hrank] using case_000817_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000817_rank.val, hlt⟩ case_000817_mask =
        case_000817_b := by
    simpa [hrank] using case_000817_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000817_support case_000817_rank.val hlt
          case_000817_mask = case_000817_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000817_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000817_support case_000817_rank.val hlt
          case_000817_mask = case_000817_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000817_secondLine_eq]
  have case_000817_fixedFirst :
      FixedRow (FirstLineAt case_000817_support case_000817_rank.val hlt case_000817_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000817_firstLine, FixedRow]
  have case_000817_rowSecond :
      EqEqPosRow (SecondLineAt case_000817_support case_000817_rank.val hlt case_000817_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000817_secondLine, EqEqPosRow]
  exact ⟨case_000817_fixedFirst, case_000817_rowSecond⟩

private theorem case_000817_existsRows :
    ExistsEqEqPosVarSecondRows case_000817_rank.val case_000817_mask :=
  ⟨case_000817_support, case_000817_sourceAgrees, case_000817_rows⟩

private theorem case_000817_covered :
    RowPropertyParametricCovered case_000817_rank.val case_000817_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000817_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000818_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000818_mask : SignMask := ⟨24, by decide⟩
private def case_000818_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000818_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000818_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000818_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000818_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000818_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000818_rankWord :
    rankPairWord? case_000818_word = some case_000818_rank := by
  decide

private theorem case_000818_unrank :
    unrankPairWord case_000818_rank = case_000818_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000818_word case_000818_rank).1
    case_000818_rankWord |>.symm

private theorem case_000818_seqChoice :
    translationChoiceSeq case_000818_word case_000818_mask = case_000818_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000818_seqAtRank :
    translationSeqAtRankMask case_000818_rank case_000818_mask = case_000818_seq := by
  rw [translationSeqAtRankMask, case_000818_unrank]
  exact case_000818_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000818_bAtRank :
    translationBAtRankMask case_000818_rank case_000818_mask = case_000818_b := by
  rw [translationBAtRankMask, case_000818_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000818_b, case_000818_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000818_firstLine_eq :
    case_000818_support.firstLine case_000818_seq case_000818_b = case_000818_firstLine := by
  norm_num [case_000818_firstLine, case_000818_support, case_000818_seq, case_000818_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000818_secondLine_eq :
    case_000818_support.secondLine case_000818_seq case_000818_b = case_000818_secondLine := by
  norm_num [case_000818_secondLine, case_000818_support, case_000818_seq, case_000818_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000818_sourceAgrees :
    SourceAgrees case_000818_support case_000818_rank.val case_000818_mask := by
  intro hlt
  have hrank : (⟨case_000818_rank.val, hlt⟩ : Fin numPairWords) = case_000818_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000818_rank.val, hlt⟩ case_000818_mask =
        case_000818_seq := by
    simpa [hrank] using case_000818_seqAtRank
  simp [SourceChecks, hseq, case_000818_support,
    checkTranslationConstraintSource, case_000818_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000818_rows :
    EqEqPosVarFirstRows case_000818_support case_000818_rank.val case_000818_mask := by
  intro hlt
  have hrank : (⟨case_000818_rank.val, hlt⟩ : Fin numPairWords) = case_000818_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000818_rank.val, hlt⟩ case_000818_mask =
        case_000818_seq := by
    simpa [hrank] using case_000818_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000818_rank.val, hlt⟩ case_000818_mask =
        case_000818_b := by
    simpa [hrank] using case_000818_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000818_support case_000818_rank.val hlt
          case_000818_mask = case_000818_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000818_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000818_support case_000818_rank.val hlt
          case_000818_mask = case_000818_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000818_secondLine_eq]
  have case_000818_rowFirst :
      EqEqPosRow (FirstLineAt case_000818_support case_000818_rank.val hlt case_000818_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000818_firstLine, EqEqPosRow]
  have case_000818_fixedSecond :
      FixedRow (SecondLineAt case_000818_support case_000818_rank.val hlt case_000818_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000818_secondLine, FixedRow]
  exact ⟨case_000818_rowFirst, case_000818_fixedSecond⟩

private theorem case_000818_existsRows :
    ExistsEqEqPosVarFirstRows case_000818_rank.val case_000818_mask :=
  ⟨case_000818_support, case_000818_sourceAgrees, case_000818_rows⟩

private theorem case_000818_covered :
    RowPropertyParametricCovered case_000818_rank.val case_000818_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000818_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000819_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000819_mask : SignMask := ⟨28, by decide⟩
private def case_000819_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000819_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000819_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000819_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000819_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000819_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000819_rankWord :
    rankPairWord? case_000819_word = some case_000819_rank := by
  decide

private theorem case_000819_unrank :
    unrankPairWord case_000819_rank = case_000819_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000819_word case_000819_rank).1
    case_000819_rankWord |>.symm

private theorem case_000819_seqChoice :
    translationChoiceSeq case_000819_word case_000819_mask = case_000819_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000819_seqAtRank :
    translationSeqAtRankMask case_000819_rank case_000819_mask = case_000819_seq := by
  rw [translationSeqAtRankMask, case_000819_unrank]
  exact case_000819_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000819_bAtRank :
    translationBAtRankMask case_000819_rank case_000819_mask = case_000819_b := by
  rw [translationBAtRankMask, case_000819_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000819_b, case_000819_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000819_firstLine_eq :
    case_000819_support.firstLine case_000819_seq case_000819_b = case_000819_firstLine := by
  norm_num [case_000819_firstLine, case_000819_support, case_000819_seq, case_000819_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000819_secondLine_eq :
    case_000819_support.secondLine case_000819_seq case_000819_b = case_000819_secondLine := by
  norm_num [case_000819_secondLine, case_000819_support, case_000819_seq, case_000819_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000819_sourceAgrees :
    SourceAgrees case_000819_support case_000819_rank.val case_000819_mask := by
  intro hlt
  have hrank : (⟨case_000819_rank.val, hlt⟩ : Fin numPairWords) = case_000819_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000819_rank.val, hlt⟩ case_000819_mask =
        case_000819_seq := by
    simpa [hrank] using case_000819_seqAtRank
  simp [SourceChecks, hseq, case_000819_support,
    checkTranslationConstraintSource, case_000819_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000819_rows :
    OppOneMinusVarFirstRows case_000819_support case_000819_rank.val case_000819_mask := by
  intro hlt
  have hrank : (⟨case_000819_rank.val, hlt⟩ : Fin numPairWords) = case_000819_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000819_rank.val, hlt⟩ case_000819_mask =
        case_000819_seq := by
    simpa [hrank] using case_000819_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000819_rank.val, hlt⟩ case_000819_mask =
        case_000819_b := by
    simpa [hrank] using case_000819_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000819_support case_000819_rank.val hlt
          case_000819_mask = case_000819_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000819_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000819_support case_000819_rank.val hlt
          case_000819_mask = case_000819_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000819_secondLine_eq]
  have case_000819_rowFirst :
      OppPosRow (FirstLineAt case_000819_support case_000819_rank.val hlt case_000819_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000819_firstLine, OppPosRow]
  have case_000819_fixedSecond :
      FixedRow (SecondLineAt case_000819_support case_000819_rank.val hlt case_000819_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000819_secondLine, FixedRow]
  exact ⟨case_000819_rowFirst, case_000819_fixedSecond⟩

private theorem case_000819_existsRows :
    ExistsOppOneMinusVarFirstRows case_000819_rank.val case_000819_mask :=
  ⟨case_000819_support, case_000819_sourceAgrees, case_000819_rows⟩

private theorem case_000819_covered :
    RowPropertyParametricCovered case_000819_rank.val case_000819_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000819_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000820_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000820_mask : SignMask := ⟨29, by decide⟩
private def case_000820_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000820_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000820_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000820_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000820_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000820_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000820_rankWord :
    rankPairWord? case_000820_word = some case_000820_rank := by
  decide

private theorem case_000820_unrank :
    unrankPairWord case_000820_rank = case_000820_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000820_word case_000820_rank).1
    case_000820_rankWord |>.symm

private theorem case_000820_seqChoice :
    translationChoiceSeq case_000820_word case_000820_mask = case_000820_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000820_seqAtRank :
    translationSeqAtRankMask case_000820_rank case_000820_mask = case_000820_seq := by
  rw [translationSeqAtRankMask, case_000820_unrank]
  exact case_000820_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000820_bAtRank :
    translationBAtRankMask case_000820_rank case_000820_mask = case_000820_b := by
  rw [translationBAtRankMask, case_000820_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000820_b, case_000820_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000820_firstLine_eq :
    case_000820_support.firstLine case_000820_seq case_000820_b = case_000820_firstLine := by
  norm_num [case_000820_firstLine, case_000820_support, case_000820_seq, case_000820_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000820_secondLine_eq :
    case_000820_support.secondLine case_000820_seq case_000820_b = case_000820_secondLine := by
  norm_num [case_000820_secondLine, case_000820_support, case_000820_seq, case_000820_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000820_sourceAgrees :
    SourceAgrees case_000820_support case_000820_rank.val case_000820_mask := by
  intro hlt
  have hrank : (⟨case_000820_rank.val, hlt⟩ : Fin numPairWords) = case_000820_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000820_rank.val, hlt⟩ case_000820_mask =
        case_000820_seq := by
    simpa [hrank] using case_000820_seqAtRank
  simp [SourceChecks, hseq, case_000820_support,
    checkTranslationConstraintSource, case_000820_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000820_rows :
    EqEqPosVarSecondRows case_000820_support case_000820_rank.val case_000820_mask := by
  intro hlt
  have hrank : (⟨case_000820_rank.val, hlt⟩ : Fin numPairWords) = case_000820_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000820_rank.val, hlt⟩ case_000820_mask =
        case_000820_seq := by
    simpa [hrank] using case_000820_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000820_rank.val, hlt⟩ case_000820_mask =
        case_000820_b := by
    simpa [hrank] using case_000820_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000820_support case_000820_rank.val hlt
          case_000820_mask = case_000820_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000820_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000820_support case_000820_rank.val hlt
          case_000820_mask = case_000820_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000820_secondLine_eq]
  have case_000820_fixedFirst :
      FixedRow (FirstLineAt case_000820_support case_000820_rank.val hlt case_000820_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000820_firstLine, FixedRow]
  have case_000820_rowSecond :
      EqEqPosRow (SecondLineAt case_000820_support case_000820_rank.val hlt case_000820_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000820_secondLine, EqEqPosRow]
  exact ⟨case_000820_fixedFirst, case_000820_rowSecond⟩

private theorem case_000820_existsRows :
    ExistsEqEqPosVarSecondRows case_000820_rank.val case_000820_mask :=
  ⟨case_000820_support, case_000820_sourceAgrees, case_000820_rows⟩

private theorem case_000820_covered :
    RowPropertyParametricCovered case_000820_rank.val case_000820_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000820_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000821_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000821_mask : SignMask := ⟨45, by decide⟩
private def case_000821_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000821_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000821_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000821_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-68/9) }
private def case_000821_firstLine : StrictLin2 := { a := 1, b := -1, c := -83 }
private def case_000821_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000821_rankWord :
    rankPairWord? case_000821_word = some case_000821_rank := by
  decide

private theorem case_000821_unrank :
    unrankPairWord case_000821_rank = case_000821_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000821_word case_000821_rank).1
    case_000821_rankWord |>.symm

private theorem case_000821_seqChoice :
    translationChoiceSeq case_000821_word case_000821_mask = case_000821_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000821_seqAtRank :
    translationSeqAtRankMask case_000821_rank case_000821_mask = case_000821_seq := by
  rw [translationSeqAtRankMask, case_000821_unrank]
  exact case_000821_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000821_bAtRank :
    translationBAtRankMask case_000821_rank case_000821_mask = case_000821_b := by
  rw [translationBAtRankMask, case_000821_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000821_b, case_000821_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000821_firstLine_eq :
    case_000821_support.firstLine case_000821_seq case_000821_b = case_000821_firstLine := by
  norm_num [case_000821_firstLine, case_000821_support, case_000821_seq, case_000821_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000821_secondLine_eq :
    case_000821_support.secondLine case_000821_seq case_000821_b = case_000821_secondLine := by
  norm_num [case_000821_secondLine, case_000821_support, case_000821_seq, case_000821_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000821_sourceAgrees :
    SourceAgrees case_000821_support case_000821_rank.val case_000821_mask := by
  intro hlt
  have hrank : (⟨case_000821_rank.val, hlt⟩ : Fin numPairWords) = case_000821_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000821_rank.val, hlt⟩ case_000821_mask =
        case_000821_seq := by
    simpa [hrank] using case_000821_seqAtRank
  simp [SourceChecks, hseq, case_000821_support,
    checkTranslationConstraintSource, case_000821_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000821_rows :
    OppMinusOneVarFirstRows case_000821_support case_000821_rank.val case_000821_mask := by
  intro hlt
  have hrank : (⟨case_000821_rank.val, hlt⟩ : Fin numPairWords) = case_000821_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000821_rank.val, hlt⟩ case_000821_mask =
        case_000821_seq := by
    simpa [hrank] using case_000821_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000821_rank.val, hlt⟩ case_000821_mask =
        case_000821_b := by
    simpa [hrank] using case_000821_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000821_support case_000821_rank.val hlt
          case_000821_mask = case_000821_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000821_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000821_support case_000821_rank.val hlt
          case_000821_mask = case_000821_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000821_secondLine_eq]
  have case_000821_rowFirst :
      OppNegRow (FirstLineAt case_000821_support case_000821_rank.val hlt case_000821_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000821_firstLine, OppNegRow]
  have case_000821_fixedSecond :
      FixedRow (SecondLineAt case_000821_support case_000821_rank.val hlt case_000821_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000821_secondLine, FixedRow]
  exact ⟨case_000821_rowFirst, case_000821_fixedSecond⟩

private theorem case_000821_existsRows :
    ExistsOppMinusOneVarFirstRows case_000821_rank.val case_000821_mask :=
  ⟨case_000821_support, case_000821_sourceAgrees, case_000821_rows⟩

private theorem case_000821_covered :
    RowPropertyParametricCovered case_000821_rank.val case_000821_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000821_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000822_rank : Fin numPairWords := ⟨609, by decide⟩
private def case_000822_mask : SignMask := ⟨47, by decide⟩
private def case_000822_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000822_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000822_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000822_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (4/9) }
private def case_000822_firstLine : StrictLin2 := { a := 1, b := -1, c := -47 }
private def case_000822_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000822_rankWord :
    rankPairWord? case_000822_word = some case_000822_rank := by
  decide

private theorem case_000822_unrank :
    unrankPairWord case_000822_rank = case_000822_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000822_word case_000822_rank).1
    case_000822_rankWord |>.symm

private theorem case_000822_seqChoice :
    translationChoiceSeq case_000822_word case_000822_mask = case_000822_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000822_seqAtRank :
    translationSeqAtRankMask case_000822_rank case_000822_mask = case_000822_seq := by
  rw [translationSeqAtRankMask, case_000822_unrank]
  exact case_000822_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000822_bAtRank :
    translationBAtRankMask case_000822_rank case_000822_mask = case_000822_b := by
  rw [translationBAtRankMask, case_000822_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000822_b, case_000822_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000822_firstLine_eq :
    case_000822_support.firstLine case_000822_seq case_000822_b = case_000822_firstLine := by
  norm_num [case_000822_firstLine, case_000822_support, case_000822_seq, case_000822_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000822_secondLine_eq :
    case_000822_support.secondLine case_000822_seq case_000822_b = case_000822_secondLine := by
  norm_num [case_000822_secondLine, case_000822_support, case_000822_seq, case_000822_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000822_sourceAgrees :
    SourceAgrees case_000822_support case_000822_rank.val case_000822_mask := by
  intro hlt
  have hrank : (⟨case_000822_rank.val, hlt⟩ : Fin numPairWords) = case_000822_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000822_rank.val, hlt⟩ case_000822_mask =
        case_000822_seq := by
    simpa [hrank] using case_000822_seqAtRank
  simp [SourceChecks, hseq, case_000822_support,
    checkTranslationConstraintSource, case_000822_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000822_rows :
    OppMinusOneVarFirstRows case_000822_support case_000822_rank.val case_000822_mask := by
  intro hlt
  have hrank : (⟨case_000822_rank.val, hlt⟩ : Fin numPairWords) = case_000822_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000822_rank.val, hlt⟩ case_000822_mask =
        case_000822_seq := by
    simpa [hrank] using case_000822_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000822_rank.val, hlt⟩ case_000822_mask =
        case_000822_b := by
    simpa [hrank] using case_000822_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000822_support case_000822_rank.val hlt
          case_000822_mask = case_000822_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000822_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000822_support case_000822_rank.val hlt
          case_000822_mask = case_000822_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000822_secondLine_eq]
  have case_000822_rowFirst :
      OppNegRow (FirstLineAt case_000822_support case_000822_rank.val hlt case_000822_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000822_firstLine, OppNegRow]
  have case_000822_fixedSecond :
      FixedRow (SecondLineAt case_000822_support case_000822_rank.val hlt case_000822_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000822_secondLine, FixedRow]
  exact ⟨case_000822_rowFirst, case_000822_fixedSecond⟩

private theorem case_000822_existsRows :
    ExistsOppMinusOneVarFirstRows case_000822_rank.val case_000822_mask :=
  ⟨case_000822_support, case_000822_sourceAgrees, case_000822_rows⟩

private theorem case_000822_covered :
    RowPropertyParametricCovered case_000822_rank.val case_000822_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000822_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000823_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000823_mask : SignMask := ⟨7, by decide⟩
private def case_000823_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000823_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000823_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000823_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000823_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000823_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000823_rankWord :
    rankPairWord? case_000823_word = some case_000823_rank := by
  decide

private theorem case_000823_unrank :
    unrankPairWord case_000823_rank = case_000823_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000823_word case_000823_rank).1
    case_000823_rankWord |>.symm

private theorem case_000823_seqChoice :
    translationChoiceSeq case_000823_word case_000823_mask = case_000823_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000823_seqAtRank :
    translationSeqAtRankMask case_000823_rank case_000823_mask = case_000823_seq := by
  rw [translationSeqAtRankMask, case_000823_unrank]
  exact case_000823_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000823_bAtRank :
    translationBAtRankMask case_000823_rank case_000823_mask = case_000823_b := by
  rw [translationBAtRankMask, case_000823_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000823_b, case_000823_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000823_firstLine_eq :
    case_000823_support.firstLine case_000823_seq case_000823_b = case_000823_firstLine := by
  norm_num [case_000823_firstLine, case_000823_support, case_000823_seq, case_000823_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000823_secondLine_eq :
    case_000823_support.secondLine case_000823_seq case_000823_b = case_000823_secondLine := by
  norm_num [case_000823_secondLine, case_000823_support, case_000823_seq, case_000823_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000823_sourceAgrees :
    SourceAgrees case_000823_support case_000823_rank.val case_000823_mask := by
  intro hlt
  have hrank : (⟨case_000823_rank.val, hlt⟩ : Fin numPairWords) = case_000823_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000823_rank.val, hlt⟩ case_000823_mask =
        case_000823_seq := by
    simpa [hrank] using case_000823_seqAtRank
  simp [SourceChecks, hseq, case_000823_support,
    checkTranslationConstraintSource, case_000823_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000823_rows :
    EqEqPosVarFirstRows case_000823_support case_000823_rank.val case_000823_mask := by
  intro hlt
  have hrank : (⟨case_000823_rank.val, hlt⟩ : Fin numPairWords) = case_000823_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000823_rank.val, hlt⟩ case_000823_mask =
        case_000823_seq := by
    simpa [hrank] using case_000823_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000823_rank.val, hlt⟩ case_000823_mask =
        case_000823_b := by
    simpa [hrank] using case_000823_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000823_support case_000823_rank.val hlt
          case_000823_mask = case_000823_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000823_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000823_support case_000823_rank.val hlt
          case_000823_mask = case_000823_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000823_secondLine_eq]
  have case_000823_rowFirst :
      EqEqPosRow (FirstLineAt case_000823_support case_000823_rank.val hlt case_000823_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000823_firstLine, EqEqPosRow]
  have case_000823_fixedSecond :
      FixedRow (SecondLineAt case_000823_support case_000823_rank.val hlt case_000823_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000823_secondLine, FixedRow]
  exact ⟨case_000823_rowFirst, case_000823_fixedSecond⟩

private theorem case_000823_existsRows :
    ExistsEqEqPosVarFirstRows case_000823_rank.val case_000823_mask :=
  ⟨case_000823_support, case_000823_sourceAgrees, case_000823_rows⟩

private theorem case_000823_covered :
    RowPropertyParametricCovered case_000823_rank.val case_000823_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000823_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000824_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000824_mask : SignMask := ⟨9, by decide⟩
private def case_000824_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000824_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000824_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000824_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000824_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000824_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000824_rankWord :
    rankPairWord? case_000824_word = some case_000824_rank := by
  decide

private theorem case_000824_unrank :
    unrankPairWord case_000824_rank = case_000824_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000824_word case_000824_rank).1
    case_000824_rankWord |>.symm

private theorem case_000824_seqChoice :
    translationChoiceSeq case_000824_word case_000824_mask = case_000824_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000824_seqAtRank :
    translationSeqAtRankMask case_000824_rank case_000824_mask = case_000824_seq := by
  rw [translationSeqAtRankMask, case_000824_unrank]
  exact case_000824_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000824_bAtRank :
    translationBAtRankMask case_000824_rank case_000824_mask = case_000824_b := by
  rw [translationBAtRankMask, case_000824_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000824_b, case_000824_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000824_firstLine_eq :
    case_000824_support.firstLine case_000824_seq case_000824_b = case_000824_firstLine := by
  norm_num [case_000824_firstLine, case_000824_support, case_000824_seq, case_000824_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000824_secondLine_eq :
    case_000824_support.secondLine case_000824_seq case_000824_b = case_000824_secondLine := by
  norm_num [case_000824_secondLine, case_000824_support, case_000824_seq, case_000824_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000824_sourceAgrees :
    SourceAgrees case_000824_support case_000824_rank.val case_000824_mask := by
  intro hlt
  have hrank : (⟨case_000824_rank.val, hlt⟩ : Fin numPairWords) = case_000824_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000824_rank.val, hlt⟩ case_000824_mask =
        case_000824_seq := by
    simpa [hrank] using case_000824_seqAtRank
  simp [SourceChecks, hseq, case_000824_support,
    checkTranslationConstraintSource, case_000824_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000824_rows :
    EqEqPosVarFirstRows case_000824_support case_000824_rank.val case_000824_mask := by
  intro hlt
  have hrank : (⟨case_000824_rank.val, hlt⟩ : Fin numPairWords) = case_000824_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000824_rank.val, hlt⟩ case_000824_mask =
        case_000824_seq := by
    simpa [hrank] using case_000824_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000824_rank.val, hlt⟩ case_000824_mask =
        case_000824_b := by
    simpa [hrank] using case_000824_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000824_support case_000824_rank.val hlt
          case_000824_mask = case_000824_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000824_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000824_support case_000824_rank.val hlt
          case_000824_mask = case_000824_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000824_secondLine_eq]
  have case_000824_rowFirst :
      EqEqPosRow (FirstLineAt case_000824_support case_000824_rank.val hlt case_000824_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000824_firstLine, EqEqPosRow]
  have case_000824_fixedSecond :
      FixedRow (SecondLineAt case_000824_support case_000824_rank.val hlt case_000824_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000824_secondLine, FixedRow]
  exact ⟨case_000824_rowFirst, case_000824_fixedSecond⟩

private theorem case_000824_existsRows :
    ExistsEqEqPosVarFirstRows case_000824_rank.val case_000824_mask :=
  ⟨case_000824_support, case_000824_sourceAgrees, case_000824_rows⟩

private theorem case_000824_covered :
    RowPropertyParametricCovered case_000824_rank.val case_000824_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000824_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000825_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000825_mask : SignMask := ⟨13, by decide⟩
private def case_000825_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000825_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000825_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000825_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000825_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000825_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000825_rankWord :
    rankPairWord? case_000825_word = some case_000825_rank := by
  decide

private theorem case_000825_unrank :
    unrankPairWord case_000825_rank = case_000825_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000825_word case_000825_rank).1
    case_000825_rankWord |>.symm

private theorem case_000825_seqChoice :
    translationChoiceSeq case_000825_word case_000825_mask = case_000825_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000825_seqAtRank :
    translationSeqAtRankMask case_000825_rank case_000825_mask = case_000825_seq := by
  rw [translationSeqAtRankMask, case_000825_unrank]
  exact case_000825_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000825_bAtRank :
    translationBAtRankMask case_000825_rank case_000825_mask = case_000825_b := by
  rw [translationBAtRankMask, case_000825_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000825_b, case_000825_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000825_firstLine_eq :
    case_000825_support.firstLine case_000825_seq case_000825_b = case_000825_firstLine := by
  norm_num [case_000825_firstLine, case_000825_support, case_000825_seq, case_000825_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000825_secondLine_eq :
    case_000825_support.secondLine case_000825_seq case_000825_b = case_000825_secondLine := by
  norm_num [case_000825_secondLine, case_000825_support, case_000825_seq, case_000825_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000825_sourceAgrees :
    SourceAgrees case_000825_support case_000825_rank.val case_000825_mask := by
  intro hlt
  have hrank : (⟨case_000825_rank.val, hlt⟩ : Fin numPairWords) = case_000825_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000825_rank.val, hlt⟩ case_000825_mask =
        case_000825_seq := by
    simpa [hrank] using case_000825_seqAtRank
  simp [SourceChecks, hseq, case_000825_support,
    checkTranslationConstraintSource, case_000825_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000825_rows :
    OppMinusOneVarFirstRows case_000825_support case_000825_rank.val case_000825_mask := by
  intro hlt
  have hrank : (⟨case_000825_rank.val, hlt⟩ : Fin numPairWords) = case_000825_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000825_rank.val, hlt⟩ case_000825_mask =
        case_000825_seq := by
    simpa [hrank] using case_000825_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000825_rank.val, hlt⟩ case_000825_mask =
        case_000825_b := by
    simpa [hrank] using case_000825_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000825_support case_000825_rank.val hlt
          case_000825_mask = case_000825_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000825_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000825_support case_000825_rank.val hlt
          case_000825_mask = case_000825_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000825_secondLine_eq]
  have case_000825_rowFirst :
      OppNegRow (FirstLineAt case_000825_support case_000825_rank.val hlt case_000825_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000825_firstLine, OppNegRow]
  have case_000825_fixedSecond :
      FixedRow (SecondLineAt case_000825_support case_000825_rank.val hlt case_000825_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000825_secondLine, FixedRow]
  exact ⟨case_000825_rowFirst, case_000825_fixedSecond⟩

private theorem case_000825_existsRows :
    ExistsOppMinusOneVarFirstRows case_000825_rank.val case_000825_mask :=
  ⟨case_000825_support, case_000825_sourceAgrees, case_000825_rows⟩

private theorem case_000825_covered :
    RowPropertyParametricCovered case_000825_rank.val case_000825_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000825_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000826_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000826_mask : SignMask := ⟨15, by decide⟩
private def case_000826_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000826_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000826_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000826_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (4/9) }
private def case_000826_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000826_secondLine : StrictLin2 := { a := (-25/374), b := (-25/374), c := (-35/187) }

private theorem case_000826_rankWord :
    rankPairWord? case_000826_word = some case_000826_rank := by
  decide

private theorem case_000826_unrank :
    unrankPairWord case_000826_rank = case_000826_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000826_word case_000826_rank).1
    case_000826_rankWord |>.symm

private theorem case_000826_seqChoice :
    translationChoiceSeq case_000826_word case_000826_mask = case_000826_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000826_seqAtRank :
    translationSeqAtRankMask case_000826_rank case_000826_mask = case_000826_seq := by
  rw [translationSeqAtRankMask, case_000826_unrank]
  exact case_000826_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000826_bAtRank :
    translationBAtRankMask case_000826_rank case_000826_mask = case_000826_b := by
  rw [translationBAtRankMask, case_000826_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000826_b, case_000826_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000826_firstLine_eq :
    case_000826_support.firstLine case_000826_seq case_000826_b = case_000826_firstLine := by
  norm_num [case_000826_firstLine, case_000826_support, case_000826_seq, case_000826_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000826_secondLine_eq :
    case_000826_support.secondLine case_000826_seq case_000826_b = case_000826_secondLine := by
  norm_num [case_000826_secondLine, case_000826_support, case_000826_seq, case_000826_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000826_sourceAgrees :
    SourceAgrees case_000826_support case_000826_rank.val case_000826_mask := by
  intro hlt
  have hrank : (⟨case_000826_rank.val, hlt⟩ : Fin numPairWords) = case_000826_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000826_rank.val, hlt⟩ case_000826_mask =
        case_000826_seq := by
    simpa [hrank] using case_000826_seqAtRank
  simp [SourceChecks, hseq, case_000826_support,
    checkTranslationConstraintSource, case_000826_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000826_rows :
    EqEqPosVarSecondRows case_000826_support case_000826_rank.val case_000826_mask := by
  intro hlt
  have hrank : (⟨case_000826_rank.val, hlt⟩ : Fin numPairWords) = case_000826_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000826_rank.val, hlt⟩ case_000826_mask =
        case_000826_seq := by
    simpa [hrank] using case_000826_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000826_rank.val, hlt⟩ case_000826_mask =
        case_000826_b := by
    simpa [hrank] using case_000826_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000826_support case_000826_rank.val hlt
          case_000826_mask = case_000826_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000826_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000826_support case_000826_rank.val hlt
          case_000826_mask = case_000826_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000826_secondLine_eq]
  have case_000826_fixedFirst :
      FixedRow (FirstLineAt case_000826_support case_000826_rank.val hlt case_000826_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000826_firstLine, FixedRow]
  have case_000826_rowSecond :
      EqEqPosRow (SecondLineAt case_000826_support case_000826_rank.val hlt case_000826_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000826_secondLine, EqEqPosRow]
  exact ⟨case_000826_fixedFirst, case_000826_rowSecond⟩

private theorem case_000826_existsRows :
    ExistsEqEqPosVarSecondRows case_000826_rank.val case_000826_mask :=
  ⟨case_000826_support, case_000826_sourceAgrees, case_000826_rows⟩

private theorem case_000826_covered :
    RowPropertyParametricCovered case_000826_rank.val case_000826_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000826_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000827_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000827_mask : SignMask := ⟨18, by decide⟩
private def case_000827_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000827_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000827_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000827_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000827_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000827_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000827_rankWord :
    rankPairWord? case_000827_word = some case_000827_rank := by
  decide

private theorem case_000827_unrank :
    unrankPairWord case_000827_rank = case_000827_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000827_word case_000827_rank).1
    case_000827_rankWord |>.symm

private theorem case_000827_seqChoice :
    translationChoiceSeq case_000827_word case_000827_mask = case_000827_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000827_seqAtRank :
    translationSeqAtRankMask case_000827_rank case_000827_mask = case_000827_seq := by
  rw [translationSeqAtRankMask, case_000827_unrank]
  exact case_000827_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000827_bAtRank :
    translationBAtRankMask case_000827_rank case_000827_mask = case_000827_b := by
  rw [translationBAtRankMask, case_000827_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000827_b, case_000827_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000827_firstLine_eq :
    case_000827_support.firstLine case_000827_seq case_000827_b = case_000827_firstLine := by
  norm_num [case_000827_firstLine, case_000827_support, case_000827_seq, case_000827_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000827_secondLine_eq :
    case_000827_support.secondLine case_000827_seq case_000827_b = case_000827_secondLine := by
  norm_num [case_000827_secondLine, case_000827_support, case_000827_seq, case_000827_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000827_sourceAgrees :
    SourceAgrees case_000827_support case_000827_rank.val case_000827_mask := by
  intro hlt
  have hrank : (⟨case_000827_rank.val, hlt⟩ : Fin numPairWords) = case_000827_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000827_rank.val, hlt⟩ case_000827_mask =
        case_000827_seq := by
    simpa [hrank] using case_000827_seqAtRank
  simp [SourceChecks, hseq, case_000827_support,
    checkTranslationConstraintSource, case_000827_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000827_rows :
    EqEqPosVarFirstRows case_000827_support case_000827_rank.val case_000827_mask := by
  intro hlt
  have hrank : (⟨case_000827_rank.val, hlt⟩ : Fin numPairWords) = case_000827_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000827_rank.val, hlt⟩ case_000827_mask =
        case_000827_seq := by
    simpa [hrank] using case_000827_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000827_rank.val, hlt⟩ case_000827_mask =
        case_000827_b := by
    simpa [hrank] using case_000827_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000827_support case_000827_rank.val hlt
          case_000827_mask = case_000827_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000827_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000827_support case_000827_rank.val hlt
          case_000827_mask = case_000827_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000827_secondLine_eq]
  have case_000827_rowFirst :
      EqEqPosRow (FirstLineAt case_000827_support case_000827_rank.val hlt case_000827_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000827_firstLine, EqEqPosRow]
  have case_000827_fixedSecond :
      FixedRow (SecondLineAt case_000827_support case_000827_rank.val hlt case_000827_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000827_secondLine, FixedRow]
  exact ⟨case_000827_rowFirst, case_000827_fixedSecond⟩

private theorem case_000827_existsRows :
    ExistsEqEqPosVarFirstRows case_000827_rank.val case_000827_mask :=
  ⟨case_000827_support, case_000827_sourceAgrees, case_000827_rows⟩

private theorem case_000827_covered :
    RowPropertyParametricCovered case_000827_rank.val case_000827_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000827_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000828_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000828_mask : SignMask := ⟨22, by decide⟩
private def case_000828_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000828_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000828_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000828_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000828_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000828_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000828_rankWord :
    rankPairWord? case_000828_word = some case_000828_rank := by
  decide

private theorem case_000828_unrank :
    unrankPairWord case_000828_rank = case_000828_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000828_word case_000828_rank).1
    case_000828_rankWord |>.symm

private theorem case_000828_seqChoice :
    translationChoiceSeq case_000828_word case_000828_mask = case_000828_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000828_seqAtRank :
    translationSeqAtRankMask case_000828_rank case_000828_mask = case_000828_seq := by
  rw [translationSeqAtRankMask, case_000828_unrank]
  exact case_000828_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000828_bAtRank :
    translationBAtRankMask case_000828_rank case_000828_mask = case_000828_b := by
  rw [translationBAtRankMask, case_000828_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000828_b, case_000828_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000828_firstLine_eq :
    case_000828_support.firstLine case_000828_seq case_000828_b = case_000828_firstLine := by
  norm_num [case_000828_firstLine, case_000828_support, case_000828_seq, case_000828_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000828_secondLine_eq :
    case_000828_support.secondLine case_000828_seq case_000828_b = case_000828_secondLine := by
  norm_num [case_000828_secondLine, case_000828_support, case_000828_seq, case_000828_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000828_sourceAgrees :
    SourceAgrees case_000828_support case_000828_rank.val case_000828_mask := by
  intro hlt
  have hrank : (⟨case_000828_rank.val, hlt⟩ : Fin numPairWords) = case_000828_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000828_rank.val, hlt⟩ case_000828_mask =
        case_000828_seq := by
    simpa [hrank] using case_000828_seqAtRank
  simp [SourceChecks, hseq, case_000828_support,
    checkTranslationConstraintSource, case_000828_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000828_rows :
    OppOneMinusVarFirstRows case_000828_support case_000828_rank.val case_000828_mask := by
  intro hlt
  have hrank : (⟨case_000828_rank.val, hlt⟩ : Fin numPairWords) = case_000828_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000828_rank.val, hlt⟩ case_000828_mask =
        case_000828_seq := by
    simpa [hrank] using case_000828_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000828_rank.val, hlt⟩ case_000828_mask =
        case_000828_b := by
    simpa [hrank] using case_000828_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000828_support case_000828_rank.val hlt
          case_000828_mask = case_000828_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000828_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000828_support case_000828_rank.val hlt
          case_000828_mask = case_000828_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000828_secondLine_eq]
  have case_000828_rowFirst :
      OppPosRow (FirstLineAt case_000828_support case_000828_rank.val hlt case_000828_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000828_firstLine, OppPosRow]
  have case_000828_fixedSecond :
      FixedRow (SecondLineAt case_000828_support case_000828_rank.val hlt case_000828_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000828_secondLine, FixedRow]
  exact ⟨case_000828_rowFirst, case_000828_fixedSecond⟩

private theorem case_000828_existsRows :
    ExistsOppOneMinusVarFirstRows case_000828_rank.val case_000828_mask :=
  ⟨case_000828_support, case_000828_sourceAgrees, case_000828_rows⟩

private theorem case_000828_covered :
    RowPropertyParametricCovered case_000828_rank.val case_000828_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000828_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000829_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000829_mask : SignMask := ⟨23, by decide⟩
private def case_000829_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000829_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000829_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000829_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (100/9) }
private def case_000829_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000829_secondLine : StrictLin2 := { a := (-25/374), b := (-25/374), c := (-35/187) }

private theorem case_000829_rankWord :
    rankPairWord? case_000829_word = some case_000829_rank := by
  decide

private theorem case_000829_unrank :
    unrankPairWord case_000829_rank = case_000829_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000829_word case_000829_rank).1
    case_000829_rankWord |>.symm

private theorem case_000829_seqChoice :
    translationChoiceSeq case_000829_word case_000829_mask = case_000829_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000829_seqAtRank :
    translationSeqAtRankMask case_000829_rank case_000829_mask = case_000829_seq := by
  rw [translationSeqAtRankMask, case_000829_unrank]
  exact case_000829_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000829_bAtRank :
    translationBAtRankMask case_000829_rank case_000829_mask = case_000829_b := by
  rw [translationBAtRankMask, case_000829_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000829_b, case_000829_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000829_firstLine_eq :
    case_000829_support.firstLine case_000829_seq case_000829_b = case_000829_firstLine := by
  norm_num [case_000829_firstLine, case_000829_support, case_000829_seq, case_000829_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000829_secondLine_eq :
    case_000829_support.secondLine case_000829_seq case_000829_b = case_000829_secondLine := by
  norm_num [case_000829_secondLine, case_000829_support, case_000829_seq, case_000829_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000829_sourceAgrees :
    SourceAgrees case_000829_support case_000829_rank.val case_000829_mask := by
  intro hlt
  have hrank : (⟨case_000829_rank.val, hlt⟩ : Fin numPairWords) = case_000829_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000829_rank.val, hlt⟩ case_000829_mask =
        case_000829_seq := by
    simpa [hrank] using case_000829_seqAtRank
  simp [SourceChecks, hseq, case_000829_support,
    checkTranslationConstraintSource, case_000829_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000829_rows :
    EqEqPosVarSecondRows case_000829_support case_000829_rank.val case_000829_mask := by
  intro hlt
  have hrank : (⟨case_000829_rank.val, hlt⟩ : Fin numPairWords) = case_000829_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000829_rank.val, hlt⟩ case_000829_mask =
        case_000829_seq := by
    simpa [hrank] using case_000829_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000829_rank.val, hlt⟩ case_000829_mask =
        case_000829_b := by
    simpa [hrank] using case_000829_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000829_support case_000829_rank.val hlt
          case_000829_mask = case_000829_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000829_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000829_support case_000829_rank.val hlt
          case_000829_mask = case_000829_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000829_secondLine_eq]
  have case_000829_fixedFirst :
      FixedRow (FirstLineAt case_000829_support case_000829_rank.val hlt case_000829_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000829_firstLine, FixedRow]
  have case_000829_rowSecond :
      EqEqPosRow (SecondLineAt case_000829_support case_000829_rank.val hlt case_000829_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000829_secondLine, EqEqPosRow]
  exact ⟨case_000829_fixedFirst, case_000829_rowSecond⟩

private theorem case_000829_existsRows :
    ExistsEqEqPosVarSecondRows case_000829_rank.val case_000829_mask :=
  ⟨case_000829_support, case_000829_sourceAgrees, case_000829_rows⟩

private theorem case_000829_covered :
    RowPropertyParametricCovered case_000829_rank.val case_000829_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000829_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000830_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000830_mask : SignMask := ⟨24, by decide⟩
private def case_000830_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000830_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000830_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000830_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000830_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000830_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000830_rankWord :
    rankPairWord? case_000830_word = some case_000830_rank := by
  decide

private theorem case_000830_unrank :
    unrankPairWord case_000830_rank = case_000830_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000830_word case_000830_rank).1
    case_000830_rankWord |>.symm

private theorem case_000830_seqChoice :
    translationChoiceSeq case_000830_word case_000830_mask = case_000830_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000830_seqAtRank :
    translationSeqAtRankMask case_000830_rank case_000830_mask = case_000830_seq := by
  rw [translationSeqAtRankMask, case_000830_unrank]
  exact case_000830_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000830_bAtRank :
    translationBAtRankMask case_000830_rank case_000830_mask = case_000830_b := by
  rw [translationBAtRankMask, case_000830_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000830_b, case_000830_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000830_firstLine_eq :
    case_000830_support.firstLine case_000830_seq case_000830_b = case_000830_firstLine := by
  norm_num [case_000830_firstLine, case_000830_support, case_000830_seq, case_000830_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000830_secondLine_eq :
    case_000830_support.secondLine case_000830_seq case_000830_b = case_000830_secondLine := by
  norm_num [case_000830_secondLine, case_000830_support, case_000830_seq, case_000830_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000830_sourceAgrees :
    SourceAgrees case_000830_support case_000830_rank.val case_000830_mask := by
  intro hlt
  have hrank : (⟨case_000830_rank.val, hlt⟩ : Fin numPairWords) = case_000830_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000830_rank.val, hlt⟩ case_000830_mask =
        case_000830_seq := by
    simpa [hrank] using case_000830_seqAtRank
  simp [SourceChecks, hseq, case_000830_support,
    checkTranslationConstraintSource, case_000830_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000830_rows :
    EqEqPosVarFirstRows case_000830_support case_000830_rank.val case_000830_mask := by
  intro hlt
  have hrank : (⟨case_000830_rank.val, hlt⟩ : Fin numPairWords) = case_000830_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000830_rank.val, hlt⟩ case_000830_mask =
        case_000830_seq := by
    simpa [hrank] using case_000830_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000830_rank.val, hlt⟩ case_000830_mask =
        case_000830_b := by
    simpa [hrank] using case_000830_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000830_support case_000830_rank.val hlt
          case_000830_mask = case_000830_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000830_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000830_support case_000830_rank.val hlt
          case_000830_mask = case_000830_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000830_secondLine_eq]
  have case_000830_rowFirst :
      EqEqPosRow (FirstLineAt case_000830_support case_000830_rank.val hlt case_000830_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000830_firstLine, EqEqPosRow]
  have case_000830_fixedSecond :
      FixedRow (SecondLineAt case_000830_support case_000830_rank.val hlt case_000830_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000830_secondLine, FixedRow]
  exact ⟨case_000830_rowFirst, case_000830_fixedSecond⟩

private theorem case_000830_existsRows :
    ExistsEqEqPosVarFirstRows case_000830_rank.val case_000830_mask :=
  ⟨case_000830_support, case_000830_sourceAgrees, case_000830_rows⟩

private theorem case_000830_covered :
    RowPropertyParametricCovered case_000830_rank.val case_000830_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000830_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000831_rank : Fin numPairWords := ⟨611, by decide⟩
private def case_000831_mask : SignMask := ⟨28, by decide⟩
private def case_000831_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000831_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000831_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000831_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000831_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000831_secondLine : StrictLin2 := { a := (-1/6), b := (1/6), c := (-5/9) }

private theorem case_000831_rankWord :
    rankPairWord? case_000831_word = some case_000831_rank := by
  decide

private theorem case_000831_unrank :
    unrankPairWord case_000831_rank = case_000831_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000831_word case_000831_rank).1
    case_000831_rankWord |>.symm

private theorem case_000831_seqChoice :
    translationChoiceSeq case_000831_word case_000831_mask = case_000831_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000831_seqAtRank :
    translationSeqAtRankMask case_000831_rank case_000831_mask = case_000831_seq := by
  rw [translationSeqAtRankMask, case_000831_unrank]
  exact case_000831_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000831_bAtRank :
    translationBAtRankMask case_000831_rank case_000831_mask = case_000831_b := by
  rw [translationBAtRankMask, case_000831_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000831_b, case_000831_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000831_firstLine_eq :
    case_000831_support.firstLine case_000831_seq case_000831_b = case_000831_firstLine := by
  norm_num [case_000831_firstLine, case_000831_support, case_000831_seq, case_000831_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000831_secondLine_eq :
    case_000831_support.secondLine case_000831_seq case_000831_b = case_000831_secondLine := by
  norm_num [case_000831_secondLine, case_000831_support, case_000831_seq, case_000831_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000831_sourceAgrees :
    SourceAgrees case_000831_support case_000831_rank.val case_000831_mask := by
  intro hlt
  have hrank : (⟨case_000831_rank.val, hlt⟩ : Fin numPairWords) = case_000831_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000831_rank.val, hlt⟩ case_000831_mask =
        case_000831_seq := by
    simpa [hrank] using case_000831_seqAtRank
  simp [SourceChecks, hseq, case_000831_support,
    checkTranslationConstraintSource, case_000831_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000831_rows :
    OppOneMinusVarSecondRows case_000831_support case_000831_rank.val case_000831_mask := by
  intro hlt
  have hrank : (⟨case_000831_rank.val, hlt⟩ : Fin numPairWords) = case_000831_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000831_rank.val, hlt⟩ case_000831_mask =
        case_000831_seq := by
    simpa [hrank] using case_000831_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000831_rank.val, hlt⟩ case_000831_mask =
        case_000831_b := by
    simpa [hrank] using case_000831_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000831_support case_000831_rank.val hlt
          case_000831_mask = case_000831_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000831_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000831_support case_000831_rank.val hlt
          case_000831_mask = case_000831_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000831_secondLine_eq]
  have case_000831_fixedFirst :
      FixedRow (FirstLineAt case_000831_support case_000831_rank.val hlt case_000831_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000831_firstLine, FixedRow]
  have case_000831_rowSecond :
      OppPosRow (SecondLineAt case_000831_support case_000831_rank.val hlt case_000831_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000831_secondLine, OppPosRow]
  exact ⟨case_000831_fixedFirst, case_000831_rowSecond⟩

private theorem case_000831_existsRows :
    ExistsOppOneMinusVarSecondRows case_000831_rank.val case_000831_mask :=
  ⟨case_000831_support, case_000831_sourceAgrees, case_000831_rows⟩

private theorem case_000831_covered :
    RowPropertyParametricCovered case_000831_rank.val case_000831_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000831_existsRows

inductive Group025Covered : Nat -> SignMask -> Prop
  | case_000800 : Group025Covered case_000800_rank.val case_000800_mask
  | case_000801 : Group025Covered case_000801_rank.val case_000801_mask
  | case_000802 : Group025Covered case_000802_rank.val case_000802_mask
  | case_000803 : Group025Covered case_000803_rank.val case_000803_mask
  | case_000804 : Group025Covered case_000804_rank.val case_000804_mask
  | case_000805 : Group025Covered case_000805_rank.val case_000805_mask
  | case_000806 : Group025Covered case_000806_rank.val case_000806_mask
  | case_000807 : Group025Covered case_000807_rank.val case_000807_mask
  | case_000808 : Group025Covered case_000808_rank.val case_000808_mask
  | case_000809 : Group025Covered case_000809_rank.val case_000809_mask
  | case_000810 : Group025Covered case_000810_rank.val case_000810_mask
  | case_000811 : Group025Covered case_000811_rank.val case_000811_mask
  | case_000812 : Group025Covered case_000812_rank.val case_000812_mask
  | case_000813 : Group025Covered case_000813_rank.val case_000813_mask
  | case_000814 : Group025Covered case_000814_rank.val case_000814_mask
  | case_000815 : Group025Covered case_000815_rank.val case_000815_mask
  | case_000816 : Group025Covered case_000816_rank.val case_000816_mask
  | case_000817 : Group025Covered case_000817_rank.val case_000817_mask
  | case_000818 : Group025Covered case_000818_rank.val case_000818_mask
  | case_000819 : Group025Covered case_000819_rank.val case_000819_mask
  | case_000820 : Group025Covered case_000820_rank.val case_000820_mask
  | case_000821 : Group025Covered case_000821_rank.val case_000821_mask
  | case_000822 : Group025Covered case_000822_rank.val case_000822_mask
  | case_000823 : Group025Covered case_000823_rank.val case_000823_mask
  | case_000824 : Group025Covered case_000824_rank.val case_000824_mask
  | case_000825 : Group025Covered case_000825_rank.val case_000825_mask
  | case_000826 : Group025Covered case_000826_rank.val case_000826_mask
  | case_000827 : Group025Covered case_000827_rank.val case_000827_mask
  | case_000828 : Group025Covered case_000828_rank.val case_000828_mask
  | case_000829 : Group025Covered case_000829_rank.val case_000829_mask
  | case_000830 : Group025Covered case_000830_rank.val case_000830_mask
  | case_000831 : Group025Covered case_000831_rank.val case_000831_mask

theorem Group025GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group025Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000800 =>
      exact RowPropertyParametricCovered.kills case_000800_covered
  | case_000801 =>
      exact RowPropertyParametricCovered.kills case_000801_covered
  | case_000802 =>
      exact RowPropertyParametricCovered.kills case_000802_covered
  | case_000803 =>
      exact RowPropertyParametricCovered.kills case_000803_covered
  | case_000804 =>
      exact RowPropertyParametricCovered.kills case_000804_covered
  | case_000805 =>
      exact RowPropertyParametricCovered.kills case_000805_covered
  | case_000806 =>
      exact RowPropertyParametricCovered.kills case_000806_covered
  | case_000807 =>
      exact RowPropertyParametricCovered.kills case_000807_covered
  | case_000808 =>
      exact RowPropertyParametricCovered.kills case_000808_covered
  | case_000809 =>
      exact RowPropertyParametricCovered.kills case_000809_covered
  | case_000810 =>
      exact RowPropertyParametricCovered.kills case_000810_covered
  | case_000811 =>
      exact RowPropertyParametricCovered.kills case_000811_covered
  | case_000812 =>
      exact RowPropertyParametricCovered.kills case_000812_covered
  | case_000813 =>
      exact RowPropertyParametricCovered.kills case_000813_covered
  | case_000814 =>
      exact RowPropertyParametricCovered.kills case_000814_covered
  | case_000815 =>
      exact RowPropertyParametricCovered.kills case_000815_covered
  | case_000816 =>
      exact RowPropertyParametricCovered.kills case_000816_covered
  | case_000817 =>
      exact RowPropertyParametricCovered.kills case_000817_covered
  | case_000818 =>
      exact RowPropertyParametricCovered.kills case_000818_covered
  | case_000819 =>
      exact RowPropertyParametricCovered.kills case_000819_covered
  | case_000820 =>
      exact RowPropertyParametricCovered.kills case_000820_covered
  | case_000821 =>
      exact RowPropertyParametricCovered.kills case_000821_covered
  | case_000822 =>
      exact RowPropertyParametricCovered.kills case_000822_covered
  | case_000823 =>
      exact RowPropertyParametricCovered.kills case_000823_covered
  | case_000824 =>
      exact RowPropertyParametricCovered.kills case_000824_covered
  | case_000825 =>
      exact RowPropertyParametricCovered.kills case_000825_covered
  | case_000826 =>
      exact RowPropertyParametricCovered.kills case_000826_covered
  | case_000827 =>
      exact RowPropertyParametricCovered.kills case_000827_covered
  | case_000828 =>
      exact RowPropertyParametricCovered.kills case_000828_covered
  | case_000829 =>
      exact RowPropertyParametricCovered.kills case_000829_covered
  | case_000830 =>
      exact RowPropertyParametricCovered.kills case_000830_covered
  | case_000831 =>
      exact RowPropertyParametricCovered.kills case_000831_covered

theorem Group025_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group025
