import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group005

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
private def case_000160_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000160_mask : SignMask := ⟨30, by decide⟩
private def case_000160_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000160_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000160_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000160_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000160_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000160_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000160_rankWord :
    rankPairWord? case_000160_word = some case_000160_rank := by
  decide

private theorem case_000160_unrank :
    unrankPairWord case_000160_rank = case_000160_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000160_word case_000160_rank).1
    case_000160_rankWord |>.symm

private theorem case_000160_seqChoice :
    translationChoiceSeq case_000160_word case_000160_mask = case_000160_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000160_seqAtRank :
    translationSeqAtRankMask case_000160_rank case_000160_mask = case_000160_seq := by
  rw [translationSeqAtRankMask, case_000160_unrank]
  exact case_000160_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000160_bAtRank :
    translationBAtRankMask case_000160_rank case_000160_mask = case_000160_b := by
  rw [translationBAtRankMask, case_000160_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000160_b, case_000160_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000160_firstLine_eq :
    case_000160_support.firstLine case_000160_seq case_000160_b = case_000160_firstLine := by
  norm_num [case_000160_firstLine, case_000160_support, case_000160_seq, case_000160_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000160_secondLine_eq :
    case_000160_support.secondLine case_000160_seq case_000160_b = case_000160_secondLine := by
  norm_num [case_000160_secondLine, case_000160_support, case_000160_seq, case_000160_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000160_sourceAgrees :
    SourceAgrees case_000160_support case_000160_rank.val case_000160_mask := by
  intro hlt
  have hrank : (⟨case_000160_rank.val, hlt⟩ : Fin numPairWords) = case_000160_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000160_rank.val, hlt⟩ case_000160_mask =
        case_000160_seq := by
    simpa [hrank] using case_000160_seqAtRank
  simp [SourceChecks, hseq, case_000160_support,
    checkTranslationConstraintSource, case_000160_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000160_rows :
    EqEqPosVarFirstRows case_000160_support case_000160_rank.val case_000160_mask := by
  intro hlt
  have hrank : (⟨case_000160_rank.val, hlt⟩ : Fin numPairWords) = case_000160_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000160_rank.val, hlt⟩ case_000160_mask =
        case_000160_seq := by
    simpa [hrank] using case_000160_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000160_rank.val, hlt⟩ case_000160_mask =
        case_000160_b := by
    simpa [hrank] using case_000160_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000160_support case_000160_rank.val hlt
          case_000160_mask = case_000160_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000160_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000160_support case_000160_rank.val hlt
          case_000160_mask = case_000160_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000160_secondLine_eq]
  have case_000160_rowFirst :
      EqEqPosRow (FirstLineAt case_000160_support case_000160_rank.val hlt case_000160_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000160_firstLine, EqEqPosRow]
  have case_000160_fixedSecond :
      FixedRow (SecondLineAt case_000160_support case_000160_rank.val hlt case_000160_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000160_secondLine, FixedRow]
  exact ⟨case_000160_rowFirst, case_000160_fixedSecond⟩

private theorem case_000160_existsRows :
    ExistsEqEqPosVarFirstRows case_000160_rank.val case_000160_mask :=
  ⟨case_000160_support, case_000160_sourceAgrees, case_000160_rows⟩

private theorem case_000160_covered :
    RowPropertyParametricCovered case_000160_rank.val case_000160_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000160_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000161_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000161_mask : SignMask := ⟨31, by decide⟩
private def case_000161_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000161_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000161_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000161_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000161_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-75/17) }
private def case_000161_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000161_rankWord :
    rankPairWord? case_000161_word = some case_000161_rank := by
  decide

private theorem case_000161_unrank :
    unrankPairWord case_000161_rank = case_000161_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000161_word case_000161_rank).1
    case_000161_rankWord |>.symm

private theorem case_000161_seqChoice :
    translationChoiceSeq case_000161_word case_000161_mask = case_000161_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000161_seqAtRank :
    translationSeqAtRankMask case_000161_rank case_000161_mask = case_000161_seq := by
  rw [translationSeqAtRankMask, case_000161_unrank]
  exact case_000161_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000161_bAtRank :
    translationBAtRankMask case_000161_rank case_000161_mask = case_000161_b := by
  rw [translationBAtRankMask, case_000161_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000161_b, case_000161_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000161_firstLine_eq :
    case_000161_support.firstLine case_000161_seq case_000161_b = case_000161_firstLine := by
  norm_num [case_000161_firstLine, case_000161_support, case_000161_seq, case_000161_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000161_secondLine_eq :
    case_000161_support.secondLine case_000161_seq case_000161_b = case_000161_secondLine := by
  norm_num [case_000161_secondLine, case_000161_support, case_000161_seq, case_000161_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000161_sourceAgrees :
    SourceAgrees case_000161_support case_000161_rank.val case_000161_mask := by
  intro hlt
  have hrank : (⟨case_000161_rank.val, hlt⟩ : Fin numPairWords) = case_000161_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000161_rank.val, hlt⟩ case_000161_mask =
        case_000161_seq := by
    simpa [hrank] using case_000161_seqAtRank
  simp [SourceChecks, hseq, case_000161_support,
    checkTranslationConstraintSource, case_000161_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000161_rows :
    EqEqPosVarFirstRows case_000161_support case_000161_rank.val case_000161_mask := by
  intro hlt
  have hrank : (⟨case_000161_rank.val, hlt⟩ : Fin numPairWords) = case_000161_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000161_rank.val, hlt⟩ case_000161_mask =
        case_000161_seq := by
    simpa [hrank] using case_000161_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000161_rank.val, hlt⟩ case_000161_mask =
        case_000161_b := by
    simpa [hrank] using case_000161_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000161_support case_000161_rank.val hlt
          case_000161_mask = case_000161_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000161_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000161_support case_000161_rank.val hlt
          case_000161_mask = case_000161_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000161_secondLine_eq]
  have case_000161_rowFirst :
      EqEqPosRow (FirstLineAt case_000161_support case_000161_rank.val hlt case_000161_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000161_firstLine, EqEqPosRow]
  have case_000161_fixedSecond :
      FixedRow (SecondLineAt case_000161_support case_000161_rank.val hlt case_000161_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000161_secondLine, FixedRow]
  exact ⟨case_000161_rowFirst, case_000161_fixedSecond⟩

private theorem case_000161_existsRows :
    ExistsEqEqPosVarFirstRows case_000161_rank.val case_000161_mask :=
  ⟨case_000161_support, case_000161_sourceAgrees, case_000161_rows⟩

private theorem case_000161_covered :
    RowPropertyParametricCovered case_000161_rank.val case_000161_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000161_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000162_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000162_mask : SignMask := ⟨45, by decide⟩
private def case_000162_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000162_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000162_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000162_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000162_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000162_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000162_rankWord :
    rankPairWord? case_000162_word = some case_000162_rank := by
  decide

private theorem case_000162_unrank :
    unrankPairWord case_000162_rank = case_000162_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000162_word case_000162_rank).1
    case_000162_rankWord |>.symm

private theorem case_000162_seqChoice :
    translationChoiceSeq case_000162_word case_000162_mask = case_000162_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000162_seqAtRank :
    translationSeqAtRankMask case_000162_rank case_000162_mask = case_000162_seq := by
  rw [translationSeqAtRankMask, case_000162_unrank]
  exact case_000162_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000162_bAtRank :
    translationBAtRankMask case_000162_rank case_000162_mask = case_000162_b := by
  rw [translationBAtRankMask, case_000162_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000162_b, case_000162_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000162_firstLine_eq :
    case_000162_support.firstLine case_000162_seq case_000162_b = case_000162_firstLine := by
  norm_num [case_000162_firstLine, case_000162_support, case_000162_seq, case_000162_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000162_secondLine_eq :
    case_000162_support.secondLine case_000162_seq case_000162_b = case_000162_secondLine := by
  norm_num [case_000162_secondLine, case_000162_support, case_000162_seq, case_000162_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000162_sourceAgrees :
    SourceAgrees case_000162_support case_000162_rank.val case_000162_mask := by
  intro hlt
  have hrank : (⟨case_000162_rank.val, hlt⟩ : Fin numPairWords) = case_000162_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000162_rank.val, hlt⟩ case_000162_mask =
        case_000162_seq := by
    simpa [hrank] using case_000162_seqAtRank
  simp [SourceChecks, hseq, case_000162_support,
    checkTranslationConstraintSource, case_000162_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000162_rows :
    OppMinusOneVarFirstRows case_000162_support case_000162_rank.val case_000162_mask := by
  intro hlt
  have hrank : (⟨case_000162_rank.val, hlt⟩ : Fin numPairWords) = case_000162_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000162_rank.val, hlt⟩ case_000162_mask =
        case_000162_seq := by
    simpa [hrank] using case_000162_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000162_rank.val, hlt⟩ case_000162_mask =
        case_000162_b := by
    simpa [hrank] using case_000162_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000162_support case_000162_rank.val hlt
          case_000162_mask = case_000162_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000162_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000162_support case_000162_rank.val hlt
          case_000162_mask = case_000162_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000162_secondLine_eq]
  have case_000162_rowFirst :
      OppNegRow (FirstLineAt case_000162_support case_000162_rank.val hlt case_000162_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000162_firstLine, OppNegRow]
  have case_000162_fixedSecond :
      FixedRow (SecondLineAt case_000162_support case_000162_rank.val hlt case_000162_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000162_secondLine, FixedRow]
  exact ⟨case_000162_rowFirst, case_000162_fixedSecond⟩

private theorem case_000162_existsRows :
    ExistsOppMinusOneVarFirstRows case_000162_rank.val case_000162_mask :=
  ⟨case_000162_support, case_000162_sourceAgrees, case_000162_rows⟩

private theorem case_000162_covered :
    RowPropertyParametricCovered case_000162_rank.val case_000162_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000162_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000163_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000163_mask : SignMask := ⟨47, by decide⟩
private def case_000163_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000163_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000163_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000163_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000163_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_000163_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000163_rankWord :
    rankPairWord? case_000163_word = some case_000163_rank := by
  decide

private theorem case_000163_unrank :
    unrankPairWord case_000163_rank = case_000163_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000163_word case_000163_rank).1
    case_000163_rankWord |>.symm

private theorem case_000163_seqChoice :
    translationChoiceSeq case_000163_word case_000163_mask = case_000163_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000163_seqAtRank :
    translationSeqAtRankMask case_000163_rank case_000163_mask = case_000163_seq := by
  rw [translationSeqAtRankMask, case_000163_unrank]
  exact case_000163_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000163_bAtRank :
    translationBAtRankMask case_000163_rank case_000163_mask = case_000163_b := by
  rw [translationBAtRankMask, case_000163_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000163_b, case_000163_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000163_firstLine_eq :
    case_000163_support.firstLine case_000163_seq case_000163_b = case_000163_firstLine := by
  norm_num [case_000163_firstLine, case_000163_support, case_000163_seq, case_000163_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000163_secondLine_eq :
    case_000163_support.secondLine case_000163_seq case_000163_b = case_000163_secondLine := by
  norm_num [case_000163_secondLine, case_000163_support, case_000163_seq, case_000163_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000163_sourceAgrees :
    SourceAgrees case_000163_support case_000163_rank.val case_000163_mask := by
  intro hlt
  have hrank : (⟨case_000163_rank.val, hlt⟩ : Fin numPairWords) = case_000163_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000163_rank.val, hlt⟩ case_000163_mask =
        case_000163_seq := by
    simpa [hrank] using case_000163_seqAtRank
  simp [SourceChecks, hseq, case_000163_support,
    checkTranslationConstraintSource, case_000163_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000163_rows :
    OppMinusOneVarFirstRows case_000163_support case_000163_rank.val case_000163_mask := by
  intro hlt
  have hrank : (⟨case_000163_rank.val, hlt⟩ : Fin numPairWords) = case_000163_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000163_rank.val, hlt⟩ case_000163_mask =
        case_000163_seq := by
    simpa [hrank] using case_000163_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000163_rank.val, hlt⟩ case_000163_mask =
        case_000163_b := by
    simpa [hrank] using case_000163_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000163_support case_000163_rank.val hlt
          case_000163_mask = case_000163_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000163_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000163_support case_000163_rank.val hlt
          case_000163_mask = case_000163_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000163_secondLine_eq]
  have case_000163_rowFirst :
      OppNegRow (FirstLineAt case_000163_support case_000163_rank.val hlt case_000163_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000163_firstLine, OppNegRow]
  have case_000163_fixedSecond :
      FixedRow (SecondLineAt case_000163_support case_000163_rank.val hlt case_000163_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000163_secondLine, FixedRow]
  exact ⟨case_000163_rowFirst, case_000163_fixedSecond⟩

private theorem case_000163_existsRows :
    ExistsOppMinusOneVarFirstRows case_000163_rank.val case_000163_mask :=
  ⟨case_000163_support, case_000163_sourceAgrees, case_000163_rows⟩

private theorem case_000163_covered :
    RowPropertyParametricCovered case_000163_rank.val case_000163_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000163_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000164_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000164_mask : SignMask := ⟨54, by decide⟩
private def case_000164_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000164_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000164_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000164_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000164_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000164_secondLine : StrictLin2 := { a := (-9/374), b := (9/374), c := (-73/187) }

private theorem case_000164_rankWord :
    rankPairWord? case_000164_word = some case_000164_rank := by
  decide

private theorem case_000164_unrank :
    unrankPairWord case_000164_rank = case_000164_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000164_word case_000164_rank).1
    case_000164_rankWord |>.symm

private theorem case_000164_seqChoice :
    translationChoiceSeq case_000164_word case_000164_mask = case_000164_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000164_seqAtRank :
    translationSeqAtRankMask case_000164_rank case_000164_mask = case_000164_seq := by
  rw [translationSeqAtRankMask, case_000164_unrank]
  exact case_000164_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000164_bAtRank :
    translationBAtRankMask case_000164_rank case_000164_mask = case_000164_b := by
  rw [translationBAtRankMask, case_000164_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000164_b, case_000164_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000164_firstLine_eq :
    case_000164_support.firstLine case_000164_seq case_000164_b = case_000164_firstLine := by
  norm_num [case_000164_firstLine, case_000164_support, case_000164_seq, case_000164_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000164_secondLine_eq :
    case_000164_support.secondLine case_000164_seq case_000164_b = case_000164_secondLine := by
  norm_num [case_000164_secondLine, case_000164_support, case_000164_seq, case_000164_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000164_sourceAgrees :
    SourceAgrees case_000164_support case_000164_rank.val case_000164_mask := by
  intro hlt
  have hrank : (⟨case_000164_rank.val, hlt⟩ : Fin numPairWords) = case_000164_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000164_rank.val, hlt⟩ case_000164_mask =
        case_000164_seq := by
    simpa [hrank] using case_000164_seqAtRank
  simp [SourceChecks, hseq, case_000164_support,
    checkTranslationConstraintSource, case_000164_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000164_rows :
    OppOneMinusVarSecondRows case_000164_support case_000164_rank.val case_000164_mask := by
  intro hlt
  have hrank : (⟨case_000164_rank.val, hlt⟩ : Fin numPairWords) = case_000164_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000164_rank.val, hlt⟩ case_000164_mask =
        case_000164_seq := by
    simpa [hrank] using case_000164_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000164_rank.val, hlt⟩ case_000164_mask =
        case_000164_b := by
    simpa [hrank] using case_000164_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000164_support case_000164_rank.val hlt
          case_000164_mask = case_000164_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000164_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000164_support case_000164_rank.val hlt
          case_000164_mask = case_000164_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000164_secondLine_eq]
  have case_000164_fixedFirst :
      FixedRow (FirstLineAt case_000164_support case_000164_rank.val hlt case_000164_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000164_firstLine, FixedRow]
  have case_000164_rowSecond :
      OppPosRow (SecondLineAt case_000164_support case_000164_rank.val hlt case_000164_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000164_secondLine, OppPosRow]
  exact ⟨case_000164_fixedFirst, case_000164_rowSecond⟩

private theorem case_000164_existsRows :
    ExistsOppOneMinusVarSecondRows case_000164_rank.val case_000164_mask :=
  ⟨case_000164_support, case_000164_sourceAgrees, case_000164_rows⟩

private theorem case_000164_covered :
    RowPropertyParametricCovered case_000164_rank.val case_000164_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000164_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000165_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000165_mask : SignMask := ⟨55, by decide⟩
private def case_000165_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000165_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000165_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000165_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000165_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000165_secondLine : StrictLin2 := { a := (-9/110), b := (9/110), c := (-52/55) }

private theorem case_000165_rankWord :
    rankPairWord? case_000165_word = some case_000165_rank := by
  decide

private theorem case_000165_unrank :
    unrankPairWord case_000165_rank = case_000165_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000165_word case_000165_rank).1
    case_000165_rankWord |>.symm

private theorem case_000165_seqChoice :
    translationChoiceSeq case_000165_word case_000165_mask = case_000165_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000165_seqAtRank :
    translationSeqAtRankMask case_000165_rank case_000165_mask = case_000165_seq := by
  rw [translationSeqAtRankMask, case_000165_unrank]
  exact case_000165_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000165_bAtRank :
    translationBAtRankMask case_000165_rank case_000165_mask = case_000165_b := by
  rw [translationBAtRankMask, case_000165_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000165_b, case_000165_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000165_firstLine_eq :
    case_000165_support.firstLine case_000165_seq case_000165_b = case_000165_firstLine := by
  norm_num [case_000165_firstLine, case_000165_support, case_000165_seq, case_000165_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000165_secondLine_eq :
    case_000165_support.secondLine case_000165_seq case_000165_b = case_000165_secondLine := by
  norm_num [case_000165_secondLine, case_000165_support, case_000165_seq, case_000165_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000165_sourceAgrees :
    SourceAgrees case_000165_support case_000165_rank.val case_000165_mask := by
  intro hlt
  have hrank : (⟨case_000165_rank.val, hlt⟩ : Fin numPairWords) = case_000165_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000165_rank.val, hlt⟩ case_000165_mask =
        case_000165_seq := by
    simpa [hrank] using case_000165_seqAtRank
  simp [SourceChecks, hseq, case_000165_support,
    checkTranslationConstraintSource, case_000165_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000165_rows :
    OppOneMinusVarSecondRows case_000165_support case_000165_rank.val case_000165_mask := by
  intro hlt
  have hrank : (⟨case_000165_rank.val, hlt⟩ : Fin numPairWords) = case_000165_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000165_rank.val, hlt⟩ case_000165_mask =
        case_000165_seq := by
    simpa [hrank] using case_000165_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000165_rank.val, hlt⟩ case_000165_mask =
        case_000165_b := by
    simpa [hrank] using case_000165_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000165_support case_000165_rank.val hlt
          case_000165_mask = case_000165_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000165_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000165_support case_000165_rank.val hlt
          case_000165_mask = case_000165_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000165_secondLine_eq]
  have case_000165_fixedFirst :
      FixedRow (FirstLineAt case_000165_support case_000165_rank.val hlt case_000165_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000165_firstLine, FixedRow]
  have case_000165_rowSecond :
      OppPosRow (SecondLineAt case_000165_support case_000165_rank.val hlt case_000165_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000165_secondLine, OppPosRow]
  exact ⟨case_000165_fixedFirst, case_000165_rowSecond⟩

private theorem case_000165_existsRows :
    ExistsOppOneMinusVarSecondRows case_000165_rank.val case_000165_mask :=
  ⟨case_000165_support, case_000165_sourceAgrees, case_000165_rows⟩

private theorem case_000165_covered :
    RowPropertyParametricCovered case_000165_rank.val case_000165_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000165_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000166_rank : Fin numPairWords := ⟨42, by decide⟩
private def case_000166_mask : SignMask := ⟨63, by decide⟩
private def case_000166_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000166_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000166_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000166_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000166_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000166_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000166_rankWord :
    rankPairWord? case_000166_word = some case_000166_rank := by
  decide

private theorem case_000166_unrank :
    unrankPairWord case_000166_rank = case_000166_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000166_word case_000166_rank).1
    case_000166_rankWord |>.symm

private theorem case_000166_seqChoice :
    translationChoiceSeq case_000166_word case_000166_mask = case_000166_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000166_seqAtRank :
    translationSeqAtRankMask case_000166_rank case_000166_mask = case_000166_seq := by
  rw [translationSeqAtRankMask, case_000166_unrank]
  exact case_000166_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000166_bAtRank :
    translationBAtRankMask case_000166_rank case_000166_mask = case_000166_b := by
  rw [translationBAtRankMask, case_000166_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000166_b, case_000166_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000166_firstLine_eq :
    case_000166_support.firstLine case_000166_seq case_000166_b = case_000166_firstLine := by
  norm_num [case_000166_firstLine, case_000166_support, case_000166_seq, case_000166_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000166_secondLine_eq :
    case_000166_support.secondLine case_000166_seq case_000166_b = case_000166_secondLine := by
  norm_num [case_000166_secondLine, case_000166_support, case_000166_seq, case_000166_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000166_sourceAgrees :
    SourceAgrees case_000166_support case_000166_rank.val case_000166_mask := by
  intro hlt
  have hrank : (⟨case_000166_rank.val, hlt⟩ : Fin numPairWords) = case_000166_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000166_rank.val, hlt⟩ case_000166_mask =
        case_000166_seq := by
    simpa [hrank] using case_000166_seqAtRank
  simp [SourceChecks, hseq, case_000166_support,
    checkTranslationConstraintSource, case_000166_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000166_rows :
    EqEqPosVarFirstRows case_000166_support case_000166_rank.val case_000166_mask := by
  intro hlt
  have hrank : (⟨case_000166_rank.val, hlt⟩ : Fin numPairWords) = case_000166_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000166_rank.val, hlt⟩ case_000166_mask =
        case_000166_seq := by
    simpa [hrank] using case_000166_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000166_rank.val, hlt⟩ case_000166_mask =
        case_000166_b := by
    simpa [hrank] using case_000166_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000166_support case_000166_rank.val hlt
          case_000166_mask = case_000166_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000166_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000166_support case_000166_rank.val hlt
          case_000166_mask = case_000166_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000166_secondLine_eq]
  have case_000166_rowFirst :
      EqEqPosRow (FirstLineAt case_000166_support case_000166_rank.val hlt case_000166_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000166_firstLine, EqEqPosRow]
  have case_000166_fixedSecond :
      FixedRow (SecondLineAt case_000166_support case_000166_rank.val hlt case_000166_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000166_secondLine, FixedRow]
  exact ⟨case_000166_rowFirst, case_000166_fixedSecond⟩

private theorem case_000166_existsRows :
    ExistsEqEqPosVarFirstRows case_000166_rank.val case_000166_mask :=
  ⟨case_000166_support, case_000166_sourceAgrees, case_000166_rows⟩

private theorem case_000166_covered :
    RowPropertyParametricCovered case_000166_rank.val case_000166_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000166_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000167_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000167_mask : SignMask := ⟨8, by decide⟩
private def case_000167_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000167_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000167_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000167_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-116/9) }
private def case_000167_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000167_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000167_rankWord :
    rankPairWord? case_000167_word = some case_000167_rank := by
  decide

private theorem case_000167_unrank :
    unrankPairWord case_000167_rank = case_000167_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000167_word case_000167_rank).1
    case_000167_rankWord |>.symm

private theorem case_000167_seqChoice :
    translationChoiceSeq case_000167_word case_000167_mask = case_000167_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000167_seqAtRank :
    translationSeqAtRankMask case_000167_rank case_000167_mask = case_000167_seq := by
  rw [translationSeqAtRankMask, case_000167_unrank]
  exact case_000167_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000167_bAtRank :
    translationBAtRankMask case_000167_rank case_000167_mask = case_000167_b := by
  rw [translationBAtRankMask, case_000167_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000167_b, case_000167_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000167_firstLine_eq :
    case_000167_support.firstLine case_000167_seq case_000167_b = case_000167_firstLine := by
  norm_num [case_000167_firstLine, case_000167_support, case_000167_seq, case_000167_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000167_secondLine_eq :
    case_000167_support.secondLine case_000167_seq case_000167_b = case_000167_secondLine := by
  norm_num [case_000167_secondLine, case_000167_support, case_000167_seq, case_000167_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000167_sourceAgrees :
    SourceAgrees case_000167_support case_000167_rank.val case_000167_mask := by
  intro hlt
  have hrank : (⟨case_000167_rank.val, hlt⟩ : Fin numPairWords) = case_000167_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000167_rank.val, hlt⟩ case_000167_mask =
        case_000167_seq := by
    simpa [hrank] using case_000167_seqAtRank
  simp [SourceChecks, hseq, case_000167_support,
    checkTranslationConstraintSource, case_000167_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000167_rows :
    EqEqPosVarFirstRows case_000167_support case_000167_rank.val case_000167_mask := by
  intro hlt
  have hrank : (⟨case_000167_rank.val, hlt⟩ : Fin numPairWords) = case_000167_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000167_rank.val, hlt⟩ case_000167_mask =
        case_000167_seq := by
    simpa [hrank] using case_000167_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000167_rank.val, hlt⟩ case_000167_mask =
        case_000167_b := by
    simpa [hrank] using case_000167_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000167_support case_000167_rank.val hlt
          case_000167_mask = case_000167_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000167_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000167_support case_000167_rank.val hlt
          case_000167_mask = case_000167_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000167_secondLine_eq]
  have case_000167_rowFirst :
      EqEqPosRow (FirstLineAt case_000167_support case_000167_rank.val hlt case_000167_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000167_firstLine, EqEqPosRow]
  have case_000167_fixedSecond :
      FixedRow (SecondLineAt case_000167_support case_000167_rank.val hlt case_000167_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000167_secondLine, FixedRow]
  exact ⟨case_000167_rowFirst, case_000167_fixedSecond⟩

private theorem case_000167_existsRows :
    ExistsEqEqPosVarFirstRows case_000167_rank.val case_000167_mask :=
  ⟨case_000167_support, case_000167_sourceAgrees, case_000167_rows⟩

private theorem case_000167_covered :
    RowPropertyParametricCovered case_000167_rank.val case_000167_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000167_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000168_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000168_mask : SignMask := ⟨9, by decide⟩
private def case_000168_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000168_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000168_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000168_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000168_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000168_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000168_rankWord :
    rankPairWord? case_000168_word = some case_000168_rank := by
  decide

private theorem case_000168_unrank :
    unrankPairWord case_000168_rank = case_000168_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000168_word case_000168_rank).1
    case_000168_rankWord |>.symm

private theorem case_000168_seqChoice :
    translationChoiceSeq case_000168_word case_000168_mask = case_000168_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000168_seqAtRank :
    translationSeqAtRankMask case_000168_rank case_000168_mask = case_000168_seq := by
  rw [translationSeqAtRankMask, case_000168_unrank]
  exact case_000168_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000168_bAtRank :
    translationBAtRankMask case_000168_rank case_000168_mask = case_000168_b := by
  rw [translationBAtRankMask, case_000168_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000168_b, case_000168_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000168_firstLine_eq :
    case_000168_support.firstLine case_000168_seq case_000168_b = case_000168_firstLine := by
  norm_num [case_000168_firstLine, case_000168_support, case_000168_seq, case_000168_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000168_secondLine_eq :
    case_000168_support.secondLine case_000168_seq case_000168_b = case_000168_secondLine := by
  norm_num [case_000168_secondLine, case_000168_support, case_000168_seq, case_000168_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000168_sourceAgrees :
    SourceAgrees case_000168_support case_000168_rank.val case_000168_mask := by
  intro hlt
  have hrank : (⟨case_000168_rank.val, hlt⟩ : Fin numPairWords) = case_000168_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000168_rank.val, hlt⟩ case_000168_mask =
        case_000168_seq := by
    simpa [hrank] using case_000168_seqAtRank
  simp [SourceChecks, hseq, case_000168_support,
    checkTranslationConstraintSource, case_000168_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000168_rows :
    EqEqPosVarFirstRows case_000168_support case_000168_rank.val case_000168_mask := by
  intro hlt
  have hrank : (⟨case_000168_rank.val, hlt⟩ : Fin numPairWords) = case_000168_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000168_rank.val, hlt⟩ case_000168_mask =
        case_000168_seq := by
    simpa [hrank] using case_000168_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000168_rank.val, hlt⟩ case_000168_mask =
        case_000168_b := by
    simpa [hrank] using case_000168_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000168_support case_000168_rank.val hlt
          case_000168_mask = case_000168_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000168_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000168_support case_000168_rank.val hlt
          case_000168_mask = case_000168_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000168_secondLine_eq]
  have case_000168_rowFirst :
      EqEqPosRow (FirstLineAt case_000168_support case_000168_rank.val hlt case_000168_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000168_firstLine, EqEqPosRow]
  have case_000168_fixedSecond :
      FixedRow (SecondLineAt case_000168_support case_000168_rank.val hlt case_000168_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000168_secondLine, FixedRow]
  exact ⟨case_000168_rowFirst, case_000168_fixedSecond⟩

private theorem case_000168_existsRows :
    ExistsEqEqPosVarFirstRows case_000168_rank.val case_000168_mask :=
  ⟨case_000168_support, case_000168_sourceAgrees, case_000168_rows⟩

private theorem case_000168_covered :
    RowPropertyParametricCovered case_000168_rank.val case_000168_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000168_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000169_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000169_mask : SignMask := ⟨16, by decide⟩
private def case_000169_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000169_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000169_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000169_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (-20/9) }
private def case_000169_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000169_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000169_rankWord :
    rankPairWord? case_000169_word = some case_000169_rank := by
  decide

private theorem case_000169_unrank :
    unrankPairWord case_000169_rank = case_000169_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000169_word case_000169_rank).1
    case_000169_rankWord |>.symm

private theorem case_000169_seqChoice :
    translationChoiceSeq case_000169_word case_000169_mask = case_000169_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000169_seqAtRank :
    translationSeqAtRankMask case_000169_rank case_000169_mask = case_000169_seq := by
  rw [translationSeqAtRankMask, case_000169_unrank]
  exact case_000169_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000169_bAtRank :
    translationBAtRankMask case_000169_rank case_000169_mask = case_000169_b := by
  rw [translationBAtRankMask, case_000169_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000169_b, case_000169_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000169_firstLine_eq :
    case_000169_support.firstLine case_000169_seq case_000169_b = case_000169_firstLine := by
  norm_num [case_000169_firstLine, case_000169_support, case_000169_seq, case_000169_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000169_secondLine_eq :
    case_000169_support.secondLine case_000169_seq case_000169_b = case_000169_secondLine := by
  norm_num [case_000169_secondLine, case_000169_support, case_000169_seq, case_000169_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000169_sourceAgrees :
    SourceAgrees case_000169_support case_000169_rank.val case_000169_mask := by
  intro hlt
  have hrank : (⟨case_000169_rank.val, hlt⟩ : Fin numPairWords) = case_000169_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000169_rank.val, hlt⟩ case_000169_mask =
        case_000169_seq := by
    simpa [hrank] using case_000169_seqAtRank
  simp [SourceChecks, hseq, case_000169_support,
    checkTranslationConstraintSource, case_000169_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000169_rows :
    EqEqPosVarFirstRows case_000169_support case_000169_rank.val case_000169_mask := by
  intro hlt
  have hrank : (⟨case_000169_rank.val, hlt⟩ : Fin numPairWords) = case_000169_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000169_rank.val, hlt⟩ case_000169_mask =
        case_000169_seq := by
    simpa [hrank] using case_000169_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000169_rank.val, hlt⟩ case_000169_mask =
        case_000169_b := by
    simpa [hrank] using case_000169_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000169_support case_000169_rank.val hlt
          case_000169_mask = case_000169_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000169_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000169_support case_000169_rank.val hlt
          case_000169_mask = case_000169_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000169_secondLine_eq]
  have case_000169_rowFirst :
      EqEqPosRow (FirstLineAt case_000169_support case_000169_rank.val hlt case_000169_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000169_firstLine, EqEqPosRow]
  have case_000169_fixedSecond :
      FixedRow (SecondLineAt case_000169_support case_000169_rank.val hlt case_000169_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000169_secondLine, FixedRow]
  exact ⟨case_000169_rowFirst, case_000169_fixedSecond⟩

private theorem case_000169_existsRows :
    ExistsEqEqPosVarFirstRows case_000169_rank.val case_000169_mask :=
  ⟨case_000169_support, case_000169_sourceAgrees, case_000169_rows⟩

private theorem case_000169_covered :
    RowPropertyParametricCovered case_000169_rank.val case_000169_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000169_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000170_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000170_mask : SignMask := ⟨18, by decide⟩
private def case_000170_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000170_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000170_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000170_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (52/9) }
private def case_000170_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000170_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000170_rankWord :
    rankPairWord? case_000170_word = some case_000170_rank := by
  decide

private theorem case_000170_unrank :
    unrankPairWord case_000170_rank = case_000170_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000170_word case_000170_rank).1
    case_000170_rankWord |>.symm

private theorem case_000170_seqChoice :
    translationChoiceSeq case_000170_word case_000170_mask = case_000170_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000170_seqAtRank :
    translationSeqAtRankMask case_000170_rank case_000170_mask = case_000170_seq := by
  rw [translationSeqAtRankMask, case_000170_unrank]
  exact case_000170_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000170_bAtRank :
    translationBAtRankMask case_000170_rank case_000170_mask = case_000170_b := by
  rw [translationBAtRankMask, case_000170_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000170_b, case_000170_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000170_firstLine_eq :
    case_000170_support.firstLine case_000170_seq case_000170_b = case_000170_firstLine := by
  norm_num [case_000170_firstLine, case_000170_support, case_000170_seq, case_000170_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000170_secondLine_eq :
    case_000170_support.secondLine case_000170_seq case_000170_b = case_000170_secondLine := by
  norm_num [case_000170_secondLine, case_000170_support, case_000170_seq, case_000170_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000170_sourceAgrees :
    SourceAgrees case_000170_support case_000170_rank.val case_000170_mask := by
  intro hlt
  have hrank : (⟨case_000170_rank.val, hlt⟩ : Fin numPairWords) = case_000170_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000170_rank.val, hlt⟩ case_000170_mask =
        case_000170_seq := by
    simpa [hrank] using case_000170_seqAtRank
  simp [SourceChecks, hseq, case_000170_support,
    checkTranslationConstraintSource, case_000170_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000170_rows :
    EqEqPosVarFirstRows case_000170_support case_000170_rank.val case_000170_mask := by
  intro hlt
  have hrank : (⟨case_000170_rank.val, hlt⟩ : Fin numPairWords) = case_000170_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000170_rank.val, hlt⟩ case_000170_mask =
        case_000170_seq := by
    simpa [hrank] using case_000170_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000170_rank.val, hlt⟩ case_000170_mask =
        case_000170_b := by
    simpa [hrank] using case_000170_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000170_support case_000170_rank.val hlt
          case_000170_mask = case_000170_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000170_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000170_support case_000170_rank.val hlt
          case_000170_mask = case_000170_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000170_secondLine_eq]
  have case_000170_rowFirst :
      EqEqPosRow (FirstLineAt case_000170_support case_000170_rank.val hlt case_000170_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000170_firstLine, EqEqPosRow]
  have case_000170_fixedSecond :
      FixedRow (SecondLineAt case_000170_support case_000170_rank.val hlt case_000170_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000170_secondLine, FixedRow]
  exact ⟨case_000170_rowFirst, case_000170_fixedSecond⟩

private theorem case_000170_existsRows :
    ExistsEqEqPosVarFirstRows case_000170_rank.val case_000170_mask :=
  ⟨case_000170_support, case_000170_sourceAgrees, case_000170_rows⟩

private theorem case_000170_covered :
    RowPropertyParametricCovered case_000170_rank.val case_000170_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000170_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000171_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000171_mask : SignMask := ⟨22, by decide⟩
private def case_000171_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000171_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000171_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000171_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_000171_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000171_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000171_rankWord :
    rankPairWord? case_000171_word = some case_000171_rank := by
  decide

private theorem case_000171_unrank :
    unrankPairWord case_000171_rank = case_000171_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000171_word case_000171_rank).1
    case_000171_rankWord |>.symm

private theorem case_000171_seqChoice :
    translationChoiceSeq case_000171_word case_000171_mask = case_000171_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000171_seqAtRank :
    translationSeqAtRankMask case_000171_rank case_000171_mask = case_000171_seq := by
  rw [translationSeqAtRankMask, case_000171_unrank]
  exact case_000171_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000171_bAtRank :
    translationBAtRankMask case_000171_rank case_000171_mask = case_000171_b := by
  rw [translationBAtRankMask, case_000171_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000171_b, case_000171_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000171_firstLine_eq :
    case_000171_support.firstLine case_000171_seq case_000171_b = case_000171_firstLine := by
  norm_num [case_000171_firstLine, case_000171_support, case_000171_seq, case_000171_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000171_secondLine_eq :
    case_000171_support.secondLine case_000171_seq case_000171_b = case_000171_secondLine := by
  norm_num [case_000171_secondLine, case_000171_support, case_000171_seq, case_000171_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000171_sourceAgrees :
    SourceAgrees case_000171_support case_000171_rank.val case_000171_mask := by
  intro hlt
  have hrank : (⟨case_000171_rank.val, hlt⟩ : Fin numPairWords) = case_000171_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000171_rank.val, hlt⟩ case_000171_mask =
        case_000171_seq := by
    simpa [hrank] using case_000171_seqAtRank
  simp [SourceChecks, hseq, case_000171_support,
    checkTranslationConstraintSource, case_000171_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000171_rows :
    EqEqPosVarFirstRows case_000171_support case_000171_rank.val case_000171_mask := by
  intro hlt
  have hrank : (⟨case_000171_rank.val, hlt⟩ : Fin numPairWords) = case_000171_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000171_rank.val, hlt⟩ case_000171_mask =
        case_000171_seq := by
    simpa [hrank] using case_000171_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000171_rank.val, hlt⟩ case_000171_mask =
        case_000171_b := by
    simpa [hrank] using case_000171_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000171_support case_000171_rank.val hlt
          case_000171_mask = case_000171_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000171_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000171_support case_000171_rank.val hlt
          case_000171_mask = case_000171_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000171_secondLine_eq]
  have case_000171_rowFirst :
      EqEqPosRow (FirstLineAt case_000171_support case_000171_rank.val hlt case_000171_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000171_firstLine, EqEqPosRow]
  have case_000171_fixedSecond :
      FixedRow (SecondLineAt case_000171_support case_000171_rank.val hlt case_000171_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000171_secondLine, FixedRow]
  exact ⟨case_000171_rowFirst, case_000171_fixedSecond⟩

private theorem case_000171_existsRows :
    ExistsEqEqPosVarFirstRows case_000171_rank.val case_000171_mask :=
  ⟨case_000171_support, case_000171_sourceAgrees, case_000171_rows⟩

private theorem case_000171_covered :
    RowPropertyParametricCovered case_000171_rank.val case_000171_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000171_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000172_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000172_mask : SignMask := ⟨24, by decide⟩
private def case_000172_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000172_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000172_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000172_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-68/9) }
private def case_000172_firstLine : StrictLin2 := { a := -1, b := -1, c := (-67/17) }
private def case_000172_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000172_rankWord :
    rankPairWord? case_000172_word = some case_000172_rank := by
  decide

private theorem case_000172_unrank :
    unrankPairWord case_000172_rank = case_000172_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000172_word case_000172_rank).1
    case_000172_rankWord |>.symm

private theorem case_000172_seqChoice :
    translationChoiceSeq case_000172_word case_000172_mask = case_000172_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000172_seqAtRank :
    translationSeqAtRankMask case_000172_rank case_000172_mask = case_000172_seq := by
  rw [translationSeqAtRankMask, case_000172_unrank]
  exact case_000172_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000172_bAtRank :
    translationBAtRankMask case_000172_rank case_000172_mask = case_000172_b := by
  rw [translationBAtRankMask, case_000172_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000172_b, case_000172_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000172_firstLine_eq :
    case_000172_support.firstLine case_000172_seq case_000172_b = case_000172_firstLine := by
  norm_num [case_000172_firstLine, case_000172_support, case_000172_seq, case_000172_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000172_secondLine_eq :
    case_000172_support.secondLine case_000172_seq case_000172_b = case_000172_secondLine := by
  norm_num [case_000172_secondLine, case_000172_support, case_000172_seq, case_000172_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000172_sourceAgrees :
    SourceAgrees case_000172_support case_000172_rank.val case_000172_mask := by
  intro hlt
  have hrank : (⟨case_000172_rank.val, hlt⟩ : Fin numPairWords) = case_000172_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000172_rank.val, hlt⟩ case_000172_mask =
        case_000172_seq := by
    simpa [hrank] using case_000172_seqAtRank
  simp [SourceChecks, hseq, case_000172_support,
    checkTranslationConstraintSource, case_000172_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000172_rows :
    EqEqPosVarFirstRows case_000172_support case_000172_rank.val case_000172_mask := by
  intro hlt
  have hrank : (⟨case_000172_rank.val, hlt⟩ : Fin numPairWords) = case_000172_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000172_rank.val, hlt⟩ case_000172_mask =
        case_000172_seq := by
    simpa [hrank] using case_000172_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000172_rank.val, hlt⟩ case_000172_mask =
        case_000172_b := by
    simpa [hrank] using case_000172_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000172_support case_000172_rank.val hlt
          case_000172_mask = case_000172_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000172_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000172_support case_000172_rank.val hlt
          case_000172_mask = case_000172_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000172_secondLine_eq]
  have case_000172_rowFirst :
      EqEqPosRow (FirstLineAt case_000172_support case_000172_rank.val hlt case_000172_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000172_firstLine, EqEqPosRow]
  have case_000172_fixedSecond :
      FixedRow (SecondLineAt case_000172_support case_000172_rank.val hlt case_000172_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000172_secondLine, FixedRow]
  exact ⟨case_000172_rowFirst, case_000172_fixedSecond⟩

private theorem case_000172_existsRows :
    ExistsEqEqPosVarFirstRows case_000172_rank.val case_000172_mask :=
  ⟨case_000172_support, case_000172_sourceAgrees, case_000172_rows⟩

private theorem case_000172_covered :
    RowPropertyParametricCovered case_000172_rank.val case_000172_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000172_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000173_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000173_mask : SignMask := ⟨28, by decide⟩
private def case_000173_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000173_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000173_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000173_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-20/9) }
private def case_000173_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000173_secondLine : StrictLin2 := { a := (87/518), b := (-87/518), c := (-45/259) }

private theorem case_000173_rankWord :
    rankPairWord? case_000173_word = some case_000173_rank := by
  decide

private theorem case_000173_unrank :
    unrankPairWord case_000173_rank = case_000173_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000173_word case_000173_rank).1
    case_000173_rankWord |>.symm

private theorem case_000173_seqChoice :
    translationChoiceSeq case_000173_word case_000173_mask = case_000173_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000173_seqAtRank :
    translationSeqAtRankMask case_000173_rank case_000173_mask = case_000173_seq := by
  rw [translationSeqAtRankMask, case_000173_unrank]
  exact case_000173_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000173_bAtRank :
    translationBAtRankMask case_000173_rank case_000173_mask = case_000173_b := by
  rw [translationBAtRankMask, case_000173_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000173_b, case_000173_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000173_firstLine_eq :
    case_000173_support.firstLine case_000173_seq case_000173_b = case_000173_firstLine := by
  norm_num [case_000173_firstLine, case_000173_support, case_000173_seq, case_000173_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000173_secondLine_eq :
    case_000173_support.secondLine case_000173_seq case_000173_b = case_000173_secondLine := by
  norm_num [case_000173_secondLine, case_000173_support, case_000173_seq, case_000173_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000173_sourceAgrees :
    SourceAgrees case_000173_support case_000173_rank.val case_000173_mask := by
  intro hlt
  have hrank : (⟨case_000173_rank.val, hlt⟩ : Fin numPairWords) = case_000173_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000173_rank.val, hlt⟩ case_000173_mask =
        case_000173_seq := by
    simpa [hrank] using case_000173_seqAtRank
  simp [SourceChecks, hseq, case_000173_support,
    checkTranslationConstraintSource, case_000173_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000173_rows :
    OppMinusOneVarSecondRows case_000173_support case_000173_rank.val case_000173_mask := by
  intro hlt
  have hrank : (⟨case_000173_rank.val, hlt⟩ : Fin numPairWords) = case_000173_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000173_rank.val, hlt⟩ case_000173_mask =
        case_000173_seq := by
    simpa [hrank] using case_000173_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000173_rank.val, hlt⟩ case_000173_mask =
        case_000173_b := by
    simpa [hrank] using case_000173_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000173_support case_000173_rank.val hlt
          case_000173_mask = case_000173_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000173_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000173_support case_000173_rank.val hlt
          case_000173_mask = case_000173_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000173_secondLine_eq]
  have case_000173_fixedFirst :
      FixedRow (FirstLineAt case_000173_support case_000173_rank.val hlt case_000173_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000173_firstLine, FixedRow]
  have case_000173_rowSecond :
      OppNegRow (SecondLineAt case_000173_support case_000173_rank.val hlt case_000173_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000173_secondLine, OppNegRow]
  exact ⟨case_000173_fixedFirst, case_000173_rowSecond⟩

private theorem case_000173_existsRows :
    ExistsOppMinusOneVarSecondRows case_000173_rank.val case_000173_mask :=
  ⟨case_000173_support, case_000173_sourceAgrees, case_000173_rows⟩

private theorem case_000173_covered :
    RowPropertyParametricCovered case_000173_rank.val case_000173_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000173_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000174_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000174_mask : SignMask := ⟨29, by decide⟩
private def case_000174_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000174_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000174_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000174_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_000174_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000174_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000174_rankWord :
    rankPairWord? case_000174_word = some case_000174_rank := by
  decide

private theorem case_000174_unrank :
    unrankPairWord case_000174_rank = case_000174_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000174_word case_000174_rank).1
    case_000174_rankWord |>.symm

private theorem case_000174_seqChoice :
    translationChoiceSeq case_000174_word case_000174_mask = case_000174_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000174_seqAtRank :
    translationSeqAtRankMask case_000174_rank case_000174_mask = case_000174_seq := by
  rw [translationSeqAtRankMask, case_000174_unrank]
  exact case_000174_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000174_bAtRank :
    translationBAtRankMask case_000174_rank case_000174_mask = case_000174_b := by
  rw [translationBAtRankMask, case_000174_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000174_b, case_000174_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000174_firstLine_eq :
    case_000174_support.firstLine case_000174_seq case_000174_b = case_000174_firstLine := by
  norm_num [case_000174_firstLine, case_000174_support, case_000174_seq, case_000174_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000174_secondLine_eq :
    case_000174_support.secondLine case_000174_seq case_000174_b = case_000174_secondLine := by
  norm_num [case_000174_secondLine, case_000174_support, case_000174_seq, case_000174_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000174_sourceAgrees :
    SourceAgrees case_000174_support case_000174_rank.val case_000174_mask := by
  intro hlt
  have hrank : (⟨case_000174_rank.val, hlt⟩ : Fin numPairWords) = case_000174_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000174_rank.val, hlt⟩ case_000174_mask =
        case_000174_seq := by
    simpa [hrank] using case_000174_seqAtRank
  simp [SourceChecks, hseq, case_000174_support,
    checkTranslationConstraintSource, case_000174_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000174_rows :
    EqEqPosVarSecondRows case_000174_support case_000174_rank.val case_000174_mask := by
  intro hlt
  have hrank : (⟨case_000174_rank.val, hlt⟩ : Fin numPairWords) = case_000174_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000174_rank.val, hlt⟩ case_000174_mask =
        case_000174_seq := by
    simpa [hrank] using case_000174_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000174_rank.val, hlt⟩ case_000174_mask =
        case_000174_b := by
    simpa [hrank] using case_000174_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000174_support case_000174_rank.val hlt
          case_000174_mask = case_000174_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000174_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000174_support case_000174_rank.val hlt
          case_000174_mask = case_000174_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000174_secondLine_eq]
  have case_000174_fixedFirst :
      FixedRow (FirstLineAt case_000174_support case_000174_rank.val hlt case_000174_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000174_firstLine, FixedRow]
  have case_000174_rowSecond :
      EqEqPosRow (SecondLineAt case_000174_support case_000174_rank.val hlt case_000174_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000174_secondLine, EqEqPosRow]
  exact ⟨case_000174_fixedFirst, case_000174_rowSecond⟩

private theorem case_000174_existsRows :
    ExistsEqEqPosVarSecondRows case_000174_rank.val case_000174_mask :=
  ⟨case_000174_support, case_000174_sourceAgrees, case_000174_rows⟩

private theorem case_000174_covered :
    RowPropertyParametricCovered case_000174_rank.val case_000174_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000174_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000175_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000175_mask : SignMask := ⟨30, by decide⟩
private def case_000175_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000175_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000175_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000175_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_000175_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000175_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000175_rankWord :
    rankPairWord? case_000175_word = some case_000175_rank := by
  decide

private theorem case_000175_unrank :
    unrankPairWord case_000175_rank = case_000175_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000175_word case_000175_rank).1
    case_000175_rankWord |>.symm

private theorem case_000175_seqChoice :
    translationChoiceSeq case_000175_word case_000175_mask = case_000175_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000175_seqAtRank :
    translationSeqAtRankMask case_000175_rank case_000175_mask = case_000175_seq := by
  rw [translationSeqAtRankMask, case_000175_unrank]
  exact case_000175_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000175_bAtRank :
    translationBAtRankMask case_000175_rank case_000175_mask = case_000175_b := by
  rw [translationBAtRankMask, case_000175_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000175_b, case_000175_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000175_firstLine_eq :
    case_000175_support.firstLine case_000175_seq case_000175_b = case_000175_firstLine := by
  norm_num [case_000175_firstLine, case_000175_support, case_000175_seq, case_000175_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000175_secondLine_eq :
    case_000175_support.secondLine case_000175_seq case_000175_b = case_000175_secondLine := by
  norm_num [case_000175_secondLine, case_000175_support, case_000175_seq, case_000175_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000175_sourceAgrees :
    SourceAgrees case_000175_support case_000175_rank.val case_000175_mask := by
  intro hlt
  have hrank : (⟨case_000175_rank.val, hlt⟩ : Fin numPairWords) = case_000175_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000175_rank.val, hlt⟩ case_000175_mask =
        case_000175_seq := by
    simpa [hrank] using case_000175_seqAtRank
  simp [SourceChecks, hseq, case_000175_support,
    checkTranslationConstraintSource, case_000175_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000175_rows :
    EqEqPosVarFirstRows case_000175_support case_000175_rank.val case_000175_mask := by
  intro hlt
  have hrank : (⟨case_000175_rank.val, hlt⟩ : Fin numPairWords) = case_000175_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000175_rank.val, hlt⟩ case_000175_mask =
        case_000175_seq := by
    simpa [hrank] using case_000175_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000175_rank.val, hlt⟩ case_000175_mask =
        case_000175_b := by
    simpa [hrank] using case_000175_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000175_support case_000175_rank.val hlt
          case_000175_mask = case_000175_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000175_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000175_support case_000175_rank.val hlt
          case_000175_mask = case_000175_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000175_secondLine_eq]
  have case_000175_rowFirst :
      EqEqPosRow (FirstLineAt case_000175_support case_000175_rank.val hlt case_000175_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000175_firstLine, EqEqPosRow]
  have case_000175_fixedSecond :
      FixedRow (SecondLineAt case_000175_support case_000175_rank.val hlt case_000175_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000175_secondLine, FixedRow]
  exact ⟨case_000175_rowFirst, case_000175_fixedSecond⟩

private theorem case_000175_existsRows :
    ExistsEqEqPosVarFirstRows case_000175_rank.val case_000175_mask :=
  ⟨case_000175_support, case_000175_sourceAgrees, case_000175_rows⟩

private theorem case_000175_covered :
    RowPropertyParametricCovered case_000175_rank.val case_000175_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000175_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000176_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000176_mask : SignMask := ⟨45, by decide⟩
private def case_000176_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000176_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000176_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000176_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (-52/9) }
private def case_000176_firstLine : StrictLin2 := { a := (-26/63), b := (26/63), c := (-16/21) }
private def case_000176_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000176_rankWord :
    rankPairWord? case_000176_word = some case_000176_rank := by
  decide

private theorem case_000176_unrank :
    unrankPairWord case_000176_rank = case_000176_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000176_word case_000176_rank).1
    case_000176_rankWord |>.symm

private theorem case_000176_seqChoice :
    translationChoiceSeq case_000176_word case_000176_mask = case_000176_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000176_seqAtRank :
    translationSeqAtRankMask case_000176_rank case_000176_mask = case_000176_seq := by
  rw [translationSeqAtRankMask, case_000176_unrank]
  exact case_000176_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000176_bAtRank :
    translationBAtRankMask case_000176_rank case_000176_mask = case_000176_b := by
  rw [translationBAtRankMask, case_000176_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000176_b, case_000176_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000176_firstLine_eq :
    case_000176_support.firstLine case_000176_seq case_000176_b = case_000176_firstLine := by
  norm_num [case_000176_firstLine, case_000176_support, case_000176_seq, case_000176_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000176_secondLine_eq :
    case_000176_support.secondLine case_000176_seq case_000176_b = case_000176_secondLine := by
  norm_num [case_000176_secondLine, case_000176_support, case_000176_seq, case_000176_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000176_sourceAgrees :
    SourceAgrees case_000176_support case_000176_rank.val case_000176_mask := by
  intro hlt
  have hrank : (⟨case_000176_rank.val, hlt⟩ : Fin numPairWords) = case_000176_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000176_rank.val, hlt⟩ case_000176_mask =
        case_000176_seq := by
    simpa [hrank] using case_000176_seqAtRank
  simp [SourceChecks, hseq, case_000176_support,
    checkTranslationConstraintSource, case_000176_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000176_rows :
    OppOneMinusVarFirstRows case_000176_support case_000176_rank.val case_000176_mask := by
  intro hlt
  have hrank : (⟨case_000176_rank.val, hlt⟩ : Fin numPairWords) = case_000176_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000176_rank.val, hlt⟩ case_000176_mask =
        case_000176_seq := by
    simpa [hrank] using case_000176_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000176_rank.val, hlt⟩ case_000176_mask =
        case_000176_b := by
    simpa [hrank] using case_000176_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000176_support case_000176_rank.val hlt
          case_000176_mask = case_000176_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000176_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000176_support case_000176_rank.val hlt
          case_000176_mask = case_000176_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000176_secondLine_eq]
  have case_000176_rowFirst :
      OppPosRow (FirstLineAt case_000176_support case_000176_rank.val hlt case_000176_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000176_firstLine, OppPosRow]
  have case_000176_fixedSecond :
      FixedRow (SecondLineAt case_000176_support case_000176_rank.val hlt case_000176_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000176_secondLine, FixedRow]
  exact ⟨case_000176_rowFirst, case_000176_fixedSecond⟩

private theorem case_000176_existsRows :
    ExistsOppOneMinusVarFirstRows case_000176_rank.val case_000176_mask :=
  ⟨case_000176_support, case_000176_sourceAgrees, case_000176_rows⟩

private theorem case_000176_covered :
    RowPropertyParametricCovered case_000176_rank.val case_000176_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000176_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000177_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000177_mask : SignMask := ⟨47, by decide⟩
private def case_000177_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000177_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000177_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000177_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (20/9) }
private def case_000177_firstLine : StrictLin2 := { a := 1, b := -1, c := (-51/13) }
private def case_000177_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000177_rankWord :
    rankPairWord? case_000177_word = some case_000177_rank := by
  decide

private theorem case_000177_unrank :
    unrankPairWord case_000177_rank = case_000177_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000177_word case_000177_rank).1
    case_000177_rankWord |>.symm

private theorem case_000177_seqChoice :
    translationChoiceSeq case_000177_word case_000177_mask = case_000177_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000177_seqAtRank :
    translationSeqAtRankMask case_000177_rank case_000177_mask = case_000177_seq := by
  rw [translationSeqAtRankMask, case_000177_unrank]
  exact case_000177_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000177_bAtRank :
    translationBAtRankMask case_000177_rank case_000177_mask = case_000177_b := by
  rw [translationBAtRankMask, case_000177_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000177_b, case_000177_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000177_firstLine_eq :
    case_000177_support.firstLine case_000177_seq case_000177_b = case_000177_firstLine := by
  norm_num [case_000177_firstLine, case_000177_support, case_000177_seq, case_000177_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000177_secondLine_eq :
    case_000177_support.secondLine case_000177_seq case_000177_b = case_000177_secondLine := by
  norm_num [case_000177_secondLine, case_000177_support, case_000177_seq, case_000177_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000177_sourceAgrees :
    SourceAgrees case_000177_support case_000177_rank.val case_000177_mask := by
  intro hlt
  have hrank : (⟨case_000177_rank.val, hlt⟩ : Fin numPairWords) = case_000177_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000177_rank.val, hlt⟩ case_000177_mask =
        case_000177_seq := by
    simpa [hrank] using case_000177_seqAtRank
  simp [SourceChecks, hseq, case_000177_support,
    checkTranslationConstraintSource, case_000177_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000177_rows :
    OppMinusOneVarFirstRows case_000177_support case_000177_rank.val case_000177_mask := by
  intro hlt
  have hrank : (⟨case_000177_rank.val, hlt⟩ : Fin numPairWords) = case_000177_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000177_rank.val, hlt⟩ case_000177_mask =
        case_000177_seq := by
    simpa [hrank] using case_000177_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000177_rank.val, hlt⟩ case_000177_mask =
        case_000177_b := by
    simpa [hrank] using case_000177_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000177_support case_000177_rank.val hlt
          case_000177_mask = case_000177_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000177_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000177_support case_000177_rank.val hlt
          case_000177_mask = case_000177_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000177_secondLine_eq]
  have case_000177_rowFirst :
      OppNegRow (FirstLineAt case_000177_support case_000177_rank.val hlt case_000177_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000177_firstLine, OppNegRow]
  have case_000177_fixedSecond :
      FixedRow (SecondLineAt case_000177_support case_000177_rank.val hlt case_000177_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000177_secondLine, FixedRow]
  exact ⟨case_000177_rowFirst, case_000177_fixedSecond⟩

private theorem case_000177_existsRows :
    ExistsOppMinusOneVarFirstRows case_000177_rank.val case_000177_mask :=
  ⟨case_000177_support, case_000177_sourceAgrees, case_000177_rows⟩

private theorem case_000177_covered :
    RowPropertyParametricCovered case_000177_rank.val case_000177_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000177_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000178_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000178_mask : SignMask := ⟨55, by decide⟩
private def case_000178_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000178_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000178_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_000178_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000178_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000178_secondLine : StrictLin2 := { a := (-39/58), b := (39/58), c := (-48/29) }

private theorem case_000178_rankWord :
    rankPairWord? case_000178_word = some case_000178_rank := by
  decide

private theorem case_000178_unrank :
    unrankPairWord case_000178_rank = case_000178_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000178_word case_000178_rank).1
    case_000178_rankWord |>.symm

private theorem case_000178_seqChoice :
    translationChoiceSeq case_000178_word case_000178_mask = case_000178_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000178_seqAtRank :
    translationSeqAtRankMask case_000178_rank case_000178_mask = case_000178_seq := by
  rw [translationSeqAtRankMask, case_000178_unrank]
  exact case_000178_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000178_bAtRank :
    translationBAtRankMask case_000178_rank case_000178_mask = case_000178_b := by
  rw [translationBAtRankMask, case_000178_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000178_b, case_000178_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000178_firstLine_eq :
    case_000178_support.firstLine case_000178_seq case_000178_b = case_000178_firstLine := by
  norm_num [case_000178_firstLine, case_000178_support, case_000178_seq, case_000178_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000178_secondLine_eq :
    case_000178_support.secondLine case_000178_seq case_000178_b = case_000178_secondLine := by
  norm_num [case_000178_secondLine, case_000178_support, case_000178_seq, case_000178_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000178_sourceAgrees :
    SourceAgrees case_000178_support case_000178_rank.val case_000178_mask := by
  intro hlt
  have hrank : (⟨case_000178_rank.val, hlt⟩ : Fin numPairWords) = case_000178_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000178_rank.val, hlt⟩ case_000178_mask =
        case_000178_seq := by
    simpa [hrank] using case_000178_seqAtRank
  simp [SourceChecks, hseq, case_000178_support,
    checkTranslationConstraintSource, case_000178_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000178_rows :
    OppOneMinusVarSecondRows case_000178_support case_000178_rank.val case_000178_mask := by
  intro hlt
  have hrank : (⟨case_000178_rank.val, hlt⟩ : Fin numPairWords) = case_000178_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000178_rank.val, hlt⟩ case_000178_mask =
        case_000178_seq := by
    simpa [hrank] using case_000178_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000178_rank.val, hlt⟩ case_000178_mask =
        case_000178_b := by
    simpa [hrank] using case_000178_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000178_support case_000178_rank.val hlt
          case_000178_mask = case_000178_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000178_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000178_support case_000178_rank.val hlt
          case_000178_mask = case_000178_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000178_secondLine_eq]
  have case_000178_fixedFirst :
      FixedRow (FirstLineAt case_000178_support case_000178_rank.val hlt case_000178_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000178_firstLine, FixedRow]
  have case_000178_rowSecond :
      OppPosRow (SecondLineAt case_000178_support case_000178_rank.val hlt case_000178_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000178_secondLine, OppPosRow]
  exact ⟨case_000178_fixedFirst, case_000178_rowSecond⟩

private theorem case_000178_existsRows :
    ExistsOppOneMinusVarSecondRows case_000178_rank.val case_000178_mask :=
  ⟨case_000178_support, case_000178_sourceAgrees, case_000178_rows⟩

private theorem case_000178_covered :
    RowPropertyParametricCovered case_000178_rank.val case_000178_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000178_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000179_rank : Fin numPairWords := ⟨44, by decide⟩
private def case_000179_mask : SignMask := ⟨63, by decide⟩
private def case_000179_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000179_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000179_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000179_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000179_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000179_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000179_rankWord :
    rankPairWord? case_000179_word = some case_000179_rank := by
  decide

private theorem case_000179_unrank :
    unrankPairWord case_000179_rank = case_000179_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000179_word case_000179_rank).1
    case_000179_rankWord |>.symm

private theorem case_000179_seqChoice :
    translationChoiceSeq case_000179_word case_000179_mask = case_000179_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000179_seqAtRank :
    translationSeqAtRankMask case_000179_rank case_000179_mask = case_000179_seq := by
  rw [translationSeqAtRankMask, case_000179_unrank]
  exact case_000179_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000179_bAtRank :
    translationBAtRankMask case_000179_rank case_000179_mask = case_000179_b := by
  rw [translationBAtRankMask, case_000179_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000179_b, case_000179_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000179_firstLine_eq :
    case_000179_support.firstLine case_000179_seq case_000179_b = case_000179_firstLine := by
  norm_num [case_000179_firstLine, case_000179_support, case_000179_seq, case_000179_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000179_secondLine_eq :
    case_000179_support.secondLine case_000179_seq case_000179_b = case_000179_secondLine := by
  norm_num [case_000179_secondLine, case_000179_support, case_000179_seq, case_000179_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000179_sourceAgrees :
    SourceAgrees case_000179_support case_000179_rank.val case_000179_mask := by
  intro hlt
  have hrank : (⟨case_000179_rank.val, hlt⟩ : Fin numPairWords) = case_000179_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000179_rank.val, hlt⟩ case_000179_mask =
        case_000179_seq := by
    simpa [hrank] using case_000179_seqAtRank
  simp [SourceChecks, hseq, case_000179_support,
    checkTranslationConstraintSource, case_000179_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000179_rows :
    EqEqPosVarFirstRows case_000179_support case_000179_rank.val case_000179_mask := by
  intro hlt
  have hrank : (⟨case_000179_rank.val, hlt⟩ : Fin numPairWords) = case_000179_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000179_rank.val, hlt⟩ case_000179_mask =
        case_000179_seq := by
    simpa [hrank] using case_000179_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000179_rank.val, hlt⟩ case_000179_mask =
        case_000179_b := by
    simpa [hrank] using case_000179_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000179_support case_000179_rank.val hlt
          case_000179_mask = case_000179_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000179_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000179_support case_000179_rank.val hlt
          case_000179_mask = case_000179_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000179_secondLine_eq]
  have case_000179_rowFirst :
      EqEqPosRow (FirstLineAt case_000179_support case_000179_rank.val hlt case_000179_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000179_firstLine, EqEqPosRow]
  have case_000179_fixedSecond :
      FixedRow (SecondLineAt case_000179_support case_000179_rank.val hlt case_000179_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000179_secondLine, FixedRow]
  exact ⟨case_000179_rowFirst, case_000179_fixedSecond⟩

private theorem case_000179_existsRows :
    ExistsEqEqPosVarFirstRows case_000179_rank.val case_000179_mask :=
  ⟨case_000179_support, case_000179_sourceAgrees, case_000179_rows⟩

private theorem case_000179_covered :
    RowPropertyParametricCovered case_000179_rank.val case_000179_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000179_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000180_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000180_mask : SignMask := ⟨8, by decide⟩
private def case_000180_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000180_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000180_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000180_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-116/9) }
private def case_000180_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_000180_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000180_rankWord :
    rankPairWord? case_000180_word = some case_000180_rank := by
  decide

private theorem case_000180_unrank :
    unrankPairWord case_000180_rank = case_000180_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000180_word case_000180_rank).1
    case_000180_rankWord |>.symm

private theorem case_000180_seqChoice :
    translationChoiceSeq case_000180_word case_000180_mask = case_000180_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000180_seqAtRank :
    translationSeqAtRankMask case_000180_rank case_000180_mask = case_000180_seq := by
  rw [translationSeqAtRankMask, case_000180_unrank]
  exact case_000180_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000180_bAtRank :
    translationBAtRankMask case_000180_rank case_000180_mask = case_000180_b := by
  rw [translationBAtRankMask, case_000180_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000180_b, case_000180_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000180_firstLine_eq :
    case_000180_support.firstLine case_000180_seq case_000180_b = case_000180_firstLine := by
  norm_num [case_000180_firstLine, case_000180_support, case_000180_seq, case_000180_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000180_secondLine_eq :
    case_000180_support.secondLine case_000180_seq case_000180_b = case_000180_secondLine := by
  norm_num [case_000180_secondLine, case_000180_support, case_000180_seq, case_000180_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000180_sourceAgrees :
    SourceAgrees case_000180_support case_000180_rank.val case_000180_mask := by
  intro hlt
  have hrank : (⟨case_000180_rank.val, hlt⟩ : Fin numPairWords) = case_000180_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000180_rank.val, hlt⟩ case_000180_mask =
        case_000180_seq := by
    simpa [hrank] using case_000180_seqAtRank
  simp [SourceChecks, hseq, case_000180_support,
    checkTranslationConstraintSource, case_000180_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000180_rows :
    EqEqPosVarFirstRows case_000180_support case_000180_rank.val case_000180_mask := by
  intro hlt
  have hrank : (⟨case_000180_rank.val, hlt⟩ : Fin numPairWords) = case_000180_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000180_rank.val, hlt⟩ case_000180_mask =
        case_000180_seq := by
    simpa [hrank] using case_000180_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000180_rank.val, hlt⟩ case_000180_mask =
        case_000180_b := by
    simpa [hrank] using case_000180_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000180_support case_000180_rank.val hlt
          case_000180_mask = case_000180_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000180_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000180_support case_000180_rank.val hlt
          case_000180_mask = case_000180_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000180_secondLine_eq]
  have case_000180_rowFirst :
      EqEqPosRow (FirstLineAt case_000180_support case_000180_rank.val hlt case_000180_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000180_firstLine, EqEqPosRow]
  have case_000180_fixedSecond :
      FixedRow (SecondLineAt case_000180_support case_000180_rank.val hlt case_000180_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000180_secondLine, FixedRow]
  exact ⟨case_000180_rowFirst, case_000180_fixedSecond⟩

private theorem case_000180_existsRows :
    ExistsEqEqPosVarFirstRows case_000180_rank.val case_000180_mask :=
  ⟨case_000180_support, case_000180_sourceAgrees, case_000180_rows⟩

private theorem case_000180_covered :
    RowPropertyParametricCovered case_000180_rank.val case_000180_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000180_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000181_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000181_mask : SignMask := ⟨9, by decide⟩
private def case_000181_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000181_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000181_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000181_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-116/9) }
private def case_000181_firstLine : StrictLin2 := { a := -1, b := -1, c := (-27/5) }
private def case_000181_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000181_rankWord :
    rankPairWord? case_000181_word = some case_000181_rank := by
  decide

private theorem case_000181_unrank :
    unrankPairWord case_000181_rank = case_000181_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000181_word case_000181_rank).1
    case_000181_rankWord |>.symm

private theorem case_000181_seqChoice :
    translationChoiceSeq case_000181_word case_000181_mask = case_000181_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000181_seqAtRank :
    translationSeqAtRankMask case_000181_rank case_000181_mask = case_000181_seq := by
  rw [translationSeqAtRankMask, case_000181_unrank]
  exact case_000181_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000181_bAtRank :
    translationBAtRankMask case_000181_rank case_000181_mask = case_000181_b := by
  rw [translationBAtRankMask, case_000181_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000181_b, case_000181_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000181_firstLine_eq :
    case_000181_support.firstLine case_000181_seq case_000181_b = case_000181_firstLine := by
  norm_num [case_000181_firstLine, case_000181_support, case_000181_seq, case_000181_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000181_secondLine_eq :
    case_000181_support.secondLine case_000181_seq case_000181_b = case_000181_secondLine := by
  norm_num [case_000181_secondLine, case_000181_support, case_000181_seq, case_000181_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000181_sourceAgrees :
    SourceAgrees case_000181_support case_000181_rank.val case_000181_mask := by
  intro hlt
  have hrank : (⟨case_000181_rank.val, hlt⟩ : Fin numPairWords) = case_000181_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000181_rank.val, hlt⟩ case_000181_mask =
        case_000181_seq := by
    simpa [hrank] using case_000181_seqAtRank
  simp [SourceChecks, hseq, case_000181_support,
    checkTranslationConstraintSource, case_000181_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000181_rows :
    EqEqPosVarFirstRows case_000181_support case_000181_rank.val case_000181_mask := by
  intro hlt
  have hrank : (⟨case_000181_rank.val, hlt⟩ : Fin numPairWords) = case_000181_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000181_rank.val, hlt⟩ case_000181_mask =
        case_000181_seq := by
    simpa [hrank] using case_000181_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000181_rank.val, hlt⟩ case_000181_mask =
        case_000181_b := by
    simpa [hrank] using case_000181_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000181_support case_000181_rank.val hlt
          case_000181_mask = case_000181_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000181_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000181_support case_000181_rank.val hlt
          case_000181_mask = case_000181_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000181_secondLine_eq]
  have case_000181_rowFirst :
      EqEqPosRow (FirstLineAt case_000181_support case_000181_rank.val hlt case_000181_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000181_firstLine, EqEqPosRow]
  have case_000181_fixedSecond :
      FixedRow (SecondLineAt case_000181_support case_000181_rank.val hlt case_000181_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000181_secondLine, FixedRow]
  exact ⟨case_000181_rowFirst, case_000181_fixedSecond⟩

private theorem case_000181_existsRows :
    ExistsEqEqPosVarFirstRows case_000181_rank.val case_000181_mask :=
  ⟨case_000181_support, case_000181_sourceAgrees, case_000181_rows⟩

private theorem case_000181_covered :
    RowPropertyParametricCovered case_000181_rank.val case_000181_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000181_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000182_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000182_mask : SignMask := ⟨13, by decide⟩
private def case_000182_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000182_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000182_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000182_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-68/9) }
private def case_000182_firstLine : StrictLin2 := { a := (-17/9), b := (-17/9), c := (-71/27) }
private def case_000182_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000182_rankWord :
    rankPairWord? case_000182_word = some case_000182_rank := by
  decide

private theorem case_000182_unrank :
    unrankPairWord case_000182_rank = case_000182_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000182_word case_000182_rank).1
    case_000182_rankWord |>.symm

private theorem case_000182_seqChoice :
    translationChoiceSeq case_000182_word case_000182_mask = case_000182_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000182_seqAtRank :
    translationSeqAtRankMask case_000182_rank case_000182_mask = case_000182_seq := by
  rw [translationSeqAtRankMask, case_000182_unrank]
  exact case_000182_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000182_bAtRank :
    translationBAtRankMask case_000182_rank case_000182_mask = case_000182_b := by
  rw [translationBAtRankMask, case_000182_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000182_b, case_000182_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000182_firstLine_eq :
    case_000182_support.firstLine case_000182_seq case_000182_b = case_000182_firstLine := by
  norm_num [case_000182_firstLine, case_000182_support, case_000182_seq, case_000182_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000182_secondLine_eq :
    case_000182_support.secondLine case_000182_seq case_000182_b = case_000182_secondLine := by
  norm_num [case_000182_secondLine, case_000182_support, case_000182_seq, case_000182_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000182_sourceAgrees :
    SourceAgrees case_000182_support case_000182_rank.val case_000182_mask := by
  intro hlt
  have hrank : (⟨case_000182_rank.val, hlt⟩ : Fin numPairWords) = case_000182_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000182_rank.val, hlt⟩ case_000182_mask =
        case_000182_seq := by
    simpa [hrank] using case_000182_seqAtRank
  simp [SourceChecks, hseq, case_000182_support,
    checkTranslationConstraintSource, case_000182_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000182_rows :
    EqEqPosVarFirstRows case_000182_support case_000182_rank.val case_000182_mask := by
  intro hlt
  have hrank : (⟨case_000182_rank.val, hlt⟩ : Fin numPairWords) = case_000182_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000182_rank.val, hlt⟩ case_000182_mask =
        case_000182_seq := by
    simpa [hrank] using case_000182_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000182_rank.val, hlt⟩ case_000182_mask =
        case_000182_b := by
    simpa [hrank] using case_000182_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000182_support case_000182_rank.val hlt
          case_000182_mask = case_000182_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000182_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000182_support case_000182_rank.val hlt
          case_000182_mask = case_000182_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000182_secondLine_eq]
  have case_000182_rowFirst :
      EqEqPosRow (FirstLineAt case_000182_support case_000182_rank.val hlt case_000182_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000182_firstLine, EqEqPosRow]
  have case_000182_fixedSecond :
      FixedRow (SecondLineAt case_000182_support case_000182_rank.val hlt case_000182_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000182_secondLine, FixedRow]
  exact ⟨case_000182_rowFirst, case_000182_fixedSecond⟩

private theorem case_000182_existsRows :
    ExistsEqEqPosVarFirstRows case_000182_rank.val case_000182_mask :=
  ⟨case_000182_support, case_000182_sourceAgrees, case_000182_rows⟩

private theorem case_000182_covered :
    RowPropertyParametricCovered case_000182_rank.val case_000182_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000182_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000183_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000183_mask : SignMask := ⟨16, by decide⟩
private def case_000183_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000183_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000183_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000183_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (-52/9) }
private def case_000183_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_000183_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000183_rankWord :
    rankPairWord? case_000183_word = some case_000183_rank := by
  decide

private theorem case_000183_unrank :
    unrankPairWord case_000183_rank = case_000183_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000183_word case_000183_rank).1
    case_000183_rankWord |>.symm

private theorem case_000183_seqChoice :
    translationChoiceSeq case_000183_word case_000183_mask = case_000183_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000183_seqAtRank :
    translationSeqAtRankMask case_000183_rank case_000183_mask = case_000183_seq := by
  rw [translationSeqAtRankMask, case_000183_unrank]
  exact case_000183_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000183_bAtRank :
    translationBAtRankMask case_000183_rank case_000183_mask = case_000183_b := by
  rw [translationBAtRankMask, case_000183_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000183_b, case_000183_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000183_firstLine_eq :
    case_000183_support.firstLine case_000183_seq case_000183_b = case_000183_firstLine := by
  norm_num [case_000183_firstLine, case_000183_support, case_000183_seq, case_000183_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000183_secondLine_eq :
    case_000183_support.secondLine case_000183_seq case_000183_b = case_000183_secondLine := by
  norm_num [case_000183_secondLine, case_000183_support, case_000183_seq, case_000183_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000183_sourceAgrees :
    SourceAgrees case_000183_support case_000183_rank.val case_000183_mask := by
  intro hlt
  have hrank : (⟨case_000183_rank.val, hlt⟩ : Fin numPairWords) = case_000183_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000183_rank.val, hlt⟩ case_000183_mask =
        case_000183_seq := by
    simpa [hrank] using case_000183_seqAtRank
  simp [SourceChecks, hseq, case_000183_support,
    checkTranslationConstraintSource, case_000183_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000183_rows :
    EqEqPosVarFirstRows case_000183_support case_000183_rank.val case_000183_mask := by
  intro hlt
  have hrank : (⟨case_000183_rank.val, hlt⟩ : Fin numPairWords) = case_000183_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000183_rank.val, hlt⟩ case_000183_mask =
        case_000183_seq := by
    simpa [hrank] using case_000183_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000183_rank.val, hlt⟩ case_000183_mask =
        case_000183_b := by
    simpa [hrank] using case_000183_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000183_support case_000183_rank.val hlt
          case_000183_mask = case_000183_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000183_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000183_support case_000183_rank.val hlt
          case_000183_mask = case_000183_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000183_secondLine_eq]
  have case_000183_rowFirst :
      EqEqPosRow (FirstLineAt case_000183_support case_000183_rank.val hlt case_000183_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000183_firstLine, EqEqPosRow]
  have case_000183_fixedSecond :
      FixedRow (SecondLineAt case_000183_support case_000183_rank.val hlt case_000183_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000183_secondLine, FixedRow]
  exact ⟨case_000183_rowFirst, case_000183_fixedSecond⟩

private theorem case_000183_existsRows :
    ExistsEqEqPosVarFirstRows case_000183_rank.val case_000183_mask :=
  ⟨case_000183_support, case_000183_sourceAgrees, case_000183_rows⟩

private theorem case_000183_covered :
    RowPropertyParametricCovered case_000183_rank.val case_000183_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000183_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000184_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000184_mask : SignMask := ⟨18, by decide⟩
private def case_000184_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000184_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000184_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000184_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (20/9) }
private def case_000184_firstLine : StrictLin2 := { a := -1, b := -1, c := (-51/13) }
private def case_000184_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000184_rankWord :
    rankPairWord? case_000184_word = some case_000184_rank := by
  decide

private theorem case_000184_unrank :
    unrankPairWord case_000184_rank = case_000184_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000184_word case_000184_rank).1
    case_000184_rankWord |>.symm

private theorem case_000184_seqChoice :
    translationChoiceSeq case_000184_word case_000184_mask = case_000184_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000184_seqAtRank :
    translationSeqAtRankMask case_000184_rank case_000184_mask = case_000184_seq := by
  rw [translationSeqAtRankMask, case_000184_unrank]
  exact case_000184_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000184_bAtRank :
    translationBAtRankMask case_000184_rank case_000184_mask = case_000184_b := by
  rw [translationBAtRankMask, case_000184_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000184_b, case_000184_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000184_firstLine_eq :
    case_000184_support.firstLine case_000184_seq case_000184_b = case_000184_firstLine := by
  norm_num [case_000184_firstLine, case_000184_support, case_000184_seq, case_000184_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000184_secondLine_eq :
    case_000184_support.secondLine case_000184_seq case_000184_b = case_000184_secondLine := by
  norm_num [case_000184_secondLine, case_000184_support, case_000184_seq, case_000184_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000184_sourceAgrees :
    SourceAgrees case_000184_support case_000184_rank.val case_000184_mask := by
  intro hlt
  have hrank : (⟨case_000184_rank.val, hlt⟩ : Fin numPairWords) = case_000184_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000184_rank.val, hlt⟩ case_000184_mask =
        case_000184_seq := by
    simpa [hrank] using case_000184_seqAtRank
  simp [SourceChecks, hseq, case_000184_support,
    checkTranslationConstraintSource, case_000184_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000184_rows :
    EqEqPosVarFirstRows case_000184_support case_000184_rank.val case_000184_mask := by
  intro hlt
  have hrank : (⟨case_000184_rank.val, hlt⟩ : Fin numPairWords) = case_000184_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000184_rank.val, hlt⟩ case_000184_mask =
        case_000184_seq := by
    simpa [hrank] using case_000184_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000184_rank.val, hlt⟩ case_000184_mask =
        case_000184_b := by
    simpa [hrank] using case_000184_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000184_support case_000184_rank.val hlt
          case_000184_mask = case_000184_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000184_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000184_support case_000184_rank.val hlt
          case_000184_mask = case_000184_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000184_secondLine_eq]
  have case_000184_rowFirst :
      EqEqPosRow (FirstLineAt case_000184_support case_000184_rank.val hlt case_000184_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000184_firstLine, EqEqPosRow]
  have case_000184_fixedSecond :
      FixedRow (SecondLineAt case_000184_support case_000184_rank.val hlt case_000184_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000184_secondLine, FixedRow]
  exact ⟨case_000184_rowFirst, case_000184_fixedSecond⟩

private theorem case_000184_existsRows :
    ExistsEqEqPosVarFirstRows case_000184_rank.val case_000184_mask :=
  ⟨case_000184_support, case_000184_sourceAgrees, case_000184_rows⟩

private theorem case_000184_covered :
    RowPropertyParametricCovered case_000184_rank.val case_000184_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000184_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000185_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000185_mask : SignMask := ⟨22, by decide⟩
private def case_000185_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000185_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000185_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000185_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (68/9) }
private def case_000185_firstLine : StrictLin2 := { a := (-25/17), b := (-25/17), c := (-57/17) }
private def case_000185_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000185_rankWord :
    rankPairWord? case_000185_word = some case_000185_rank := by
  decide

private theorem case_000185_unrank :
    unrankPairWord case_000185_rank = case_000185_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000185_word case_000185_rank).1
    case_000185_rankWord |>.symm

private theorem case_000185_seqChoice :
    translationChoiceSeq case_000185_word case_000185_mask = case_000185_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000185_seqAtRank :
    translationSeqAtRankMask case_000185_rank case_000185_mask = case_000185_seq := by
  rw [translationSeqAtRankMask, case_000185_unrank]
  exact case_000185_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000185_bAtRank :
    translationBAtRankMask case_000185_rank case_000185_mask = case_000185_b := by
  rw [translationBAtRankMask, case_000185_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000185_b, case_000185_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000185_firstLine_eq :
    case_000185_support.firstLine case_000185_seq case_000185_b = case_000185_firstLine := by
  norm_num [case_000185_firstLine, case_000185_support, case_000185_seq, case_000185_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000185_secondLine_eq :
    case_000185_support.secondLine case_000185_seq case_000185_b = case_000185_secondLine := by
  norm_num [case_000185_secondLine, case_000185_support, case_000185_seq, case_000185_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000185_sourceAgrees :
    SourceAgrees case_000185_support case_000185_rank.val case_000185_mask := by
  intro hlt
  have hrank : (⟨case_000185_rank.val, hlt⟩ : Fin numPairWords) = case_000185_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000185_rank.val, hlt⟩ case_000185_mask =
        case_000185_seq := by
    simpa [hrank] using case_000185_seqAtRank
  simp [SourceChecks, hseq, case_000185_support,
    checkTranslationConstraintSource, case_000185_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000185_rows :
    EqEqPosVarFirstRows case_000185_support case_000185_rank.val case_000185_mask := by
  intro hlt
  have hrank : (⟨case_000185_rank.val, hlt⟩ : Fin numPairWords) = case_000185_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000185_rank.val, hlt⟩ case_000185_mask =
        case_000185_seq := by
    simpa [hrank] using case_000185_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000185_rank.val, hlt⟩ case_000185_mask =
        case_000185_b := by
    simpa [hrank] using case_000185_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000185_support case_000185_rank.val hlt
          case_000185_mask = case_000185_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000185_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000185_support case_000185_rank.val hlt
          case_000185_mask = case_000185_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000185_secondLine_eq]
  have case_000185_rowFirst :
      EqEqPosRow (FirstLineAt case_000185_support case_000185_rank.val hlt case_000185_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000185_firstLine, EqEqPosRow]
  have case_000185_fixedSecond :
      FixedRow (SecondLineAt case_000185_support case_000185_rank.val hlt case_000185_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000185_secondLine, FixedRow]
  exact ⟨case_000185_rowFirst, case_000185_fixedSecond⟩

private theorem case_000185_existsRows :
    ExistsEqEqPosVarFirstRows case_000185_rank.val case_000185_mask :=
  ⟨case_000185_support, case_000185_sourceAgrees, case_000185_rows⟩

private theorem case_000185_covered :
    RowPropertyParametricCovered case_000185_rank.val case_000185_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000185_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000186_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000186_mask : SignMask := ⟨28, by decide⟩
private def case_000186_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000186_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000186_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000186_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_000186_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000186_secondLine : StrictLin2 := { a := (9/20), b := (-9/20), c := (-9/10) }

private theorem case_000186_rankWord :
    rankPairWord? case_000186_word = some case_000186_rank := by
  decide

private theorem case_000186_unrank :
    unrankPairWord case_000186_rank = case_000186_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000186_word case_000186_rank).1
    case_000186_rankWord |>.symm

private theorem case_000186_seqChoice :
    translationChoiceSeq case_000186_word case_000186_mask = case_000186_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000186_seqAtRank :
    translationSeqAtRankMask case_000186_rank case_000186_mask = case_000186_seq := by
  rw [translationSeqAtRankMask, case_000186_unrank]
  exact case_000186_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000186_bAtRank :
    translationBAtRankMask case_000186_rank case_000186_mask = case_000186_b := by
  rw [translationBAtRankMask, case_000186_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000186_b, case_000186_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000186_firstLine_eq :
    case_000186_support.firstLine case_000186_seq case_000186_b = case_000186_firstLine := by
  norm_num [case_000186_firstLine, case_000186_support, case_000186_seq, case_000186_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000186_secondLine_eq :
    case_000186_support.secondLine case_000186_seq case_000186_b = case_000186_secondLine := by
  norm_num [case_000186_secondLine, case_000186_support, case_000186_seq, case_000186_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000186_sourceAgrees :
    SourceAgrees case_000186_support case_000186_rank.val case_000186_mask := by
  intro hlt
  have hrank : (⟨case_000186_rank.val, hlt⟩ : Fin numPairWords) = case_000186_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000186_rank.val, hlt⟩ case_000186_mask =
        case_000186_seq := by
    simpa [hrank] using case_000186_seqAtRank
  simp [SourceChecks, hseq, case_000186_support,
    checkTranslationConstraintSource, case_000186_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000186_rows :
    OppMinusOneVarSecondRows case_000186_support case_000186_rank.val case_000186_mask := by
  intro hlt
  have hrank : (⟨case_000186_rank.val, hlt⟩ : Fin numPairWords) = case_000186_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000186_rank.val, hlt⟩ case_000186_mask =
        case_000186_seq := by
    simpa [hrank] using case_000186_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000186_rank.val, hlt⟩ case_000186_mask =
        case_000186_b := by
    simpa [hrank] using case_000186_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000186_support case_000186_rank.val hlt
          case_000186_mask = case_000186_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000186_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000186_support case_000186_rank.val hlt
          case_000186_mask = case_000186_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000186_secondLine_eq]
  have case_000186_fixedFirst :
      FixedRow (FirstLineAt case_000186_support case_000186_rank.val hlt case_000186_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000186_firstLine, FixedRow]
  have case_000186_rowSecond :
      OppNegRow (SecondLineAt case_000186_support case_000186_rank.val hlt case_000186_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000186_secondLine, OppNegRow]
  exact ⟨case_000186_fixedFirst, case_000186_rowSecond⟩

private theorem case_000186_existsRows :
    ExistsOppMinusOneVarSecondRows case_000186_rank.val case_000186_mask :=
  ⟨case_000186_support, case_000186_sourceAgrees, case_000186_rows⟩

private theorem case_000186_covered :
    RowPropertyParametricCovered case_000186_rank.val case_000186_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000186_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000187_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000187_mask : SignMask := ⟨29, by decide⟩
private def case_000187_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000187_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000187_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000187_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-20/9) }
private def case_000187_firstLine : StrictLin2 := { a := (-58/37), b := (-58/37), c := (-308/111) }
private def case_000187_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000187_rankWord :
    rankPairWord? case_000187_word = some case_000187_rank := by
  decide

private theorem case_000187_unrank :
    unrankPairWord case_000187_rank = case_000187_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000187_word case_000187_rank).1
    case_000187_rankWord |>.symm

private theorem case_000187_seqChoice :
    translationChoiceSeq case_000187_word case_000187_mask = case_000187_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000187_seqAtRank :
    translationSeqAtRankMask case_000187_rank case_000187_mask = case_000187_seq := by
  rw [translationSeqAtRankMask, case_000187_unrank]
  exact case_000187_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000187_bAtRank :
    translationBAtRankMask case_000187_rank case_000187_mask = case_000187_b := by
  rw [translationBAtRankMask, case_000187_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000187_b, case_000187_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000187_firstLine_eq :
    case_000187_support.firstLine case_000187_seq case_000187_b = case_000187_firstLine := by
  norm_num [case_000187_firstLine, case_000187_support, case_000187_seq, case_000187_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000187_secondLine_eq :
    case_000187_support.secondLine case_000187_seq case_000187_b = case_000187_secondLine := by
  norm_num [case_000187_secondLine, case_000187_support, case_000187_seq, case_000187_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000187_sourceAgrees :
    SourceAgrees case_000187_support case_000187_rank.val case_000187_mask := by
  intro hlt
  have hrank : (⟨case_000187_rank.val, hlt⟩ : Fin numPairWords) = case_000187_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000187_rank.val, hlt⟩ case_000187_mask =
        case_000187_seq := by
    simpa [hrank] using case_000187_seqAtRank
  simp [SourceChecks, hseq, case_000187_support,
    checkTranslationConstraintSource, case_000187_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000187_rows :
    EqEqPosVarFirstRows case_000187_support case_000187_rank.val case_000187_mask := by
  intro hlt
  have hrank : (⟨case_000187_rank.val, hlt⟩ : Fin numPairWords) = case_000187_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000187_rank.val, hlt⟩ case_000187_mask =
        case_000187_seq := by
    simpa [hrank] using case_000187_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000187_rank.val, hlt⟩ case_000187_mask =
        case_000187_b := by
    simpa [hrank] using case_000187_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000187_support case_000187_rank.val hlt
          case_000187_mask = case_000187_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000187_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000187_support case_000187_rank.val hlt
          case_000187_mask = case_000187_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000187_secondLine_eq]
  have case_000187_rowFirst :
      EqEqPosRow (FirstLineAt case_000187_support case_000187_rank.val hlt case_000187_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000187_firstLine, EqEqPosRow]
  have case_000187_fixedSecond :
      FixedRow (SecondLineAt case_000187_support case_000187_rank.val hlt case_000187_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000187_secondLine, FixedRow]
  exact ⟨case_000187_rowFirst, case_000187_fixedSecond⟩

private theorem case_000187_existsRows :
    ExistsEqEqPosVarFirstRows case_000187_rank.val case_000187_mask :=
  ⟨case_000187_support, case_000187_sourceAgrees, case_000187_rows⟩

private theorem case_000187_covered :
    RowPropertyParametricCovered case_000187_rank.val case_000187_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000187_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000188_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000188_mask : SignMask := ⟨31, by decide⟩
private def case_000188_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000188_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000188_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000188_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_000188_firstLine : StrictLin2 := { a := (-29/55), b := (-29/55), c := (-157/55) }
private def case_000188_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000188_rankWord :
    rankPairWord? case_000188_word = some case_000188_rank := by
  decide

private theorem case_000188_unrank :
    unrankPairWord case_000188_rank = case_000188_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000188_word case_000188_rank).1
    case_000188_rankWord |>.symm

private theorem case_000188_seqChoice :
    translationChoiceSeq case_000188_word case_000188_mask = case_000188_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000188_seqAtRank :
    translationSeqAtRankMask case_000188_rank case_000188_mask = case_000188_seq := by
  rw [translationSeqAtRankMask, case_000188_unrank]
  exact case_000188_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000188_bAtRank :
    translationBAtRankMask case_000188_rank case_000188_mask = case_000188_b := by
  rw [translationBAtRankMask, case_000188_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000188_b, case_000188_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000188_firstLine_eq :
    case_000188_support.firstLine case_000188_seq case_000188_b = case_000188_firstLine := by
  norm_num [case_000188_firstLine, case_000188_support, case_000188_seq, case_000188_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000188_secondLine_eq :
    case_000188_support.secondLine case_000188_seq case_000188_b = case_000188_secondLine := by
  norm_num [case_000188_secondLine, case_000188_support, case_000188_seq, case_000188_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000188_sourceAgrees :
    SourceAgrees case_000188_support case_000188_rank.val case_000188_mask := by
  intro hlt
  have hrank : (⟨case_000188_rank.val, hlt⟩ : Fin numPairWords) = case_000188_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000188_rank.val, hlt⟩ case_000188_mask =
        case_000188_seq := by
    simpa [hrank] using case_000188_seqAtRank
  simp [SourceChecks, hseq, case_000188_support,
    checkTranslationConstraintSource, case_000188_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000188_rows :
    EqEqPosVarFirstRows case_000188_support case_000188_rank.val case_000188_mask := by
  intro hlt
  have hrank : (⟨case_000188_rank.val, hlt⟩ : Fin numPairWords) = case_000188_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000188_rank.val, hlt⟩ case_000188_mask =
        case_000188_seq := by
    simpa [hrank] using case_000188_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000188_rank.val, hlt⟩ case_000188_mask =
        case_000188_b := by
    simpa [hrank] using case_000188_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000188_support case_000188_rank.val hlt
          case_000188_mask = case_000188_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000188_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000188_support case_000188_rank.val hlt
          case_000188_mask = case_000188_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000188_secondLine_eq]
  have case_000188_rowFirst :
      EqEqPosRow (FirstLineAt case_000188_support case_000188_rank.val hlt case_000188_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000188_firstLine, EqEqPosRow]
  have case_000188_fixedSecond :
      FixedRow (SecondLineAt case_000188_support case_000188_rank.val hlt case_000188_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000188_secondLine, FixedRow]
  exact ⟨case_000188_rowFirst, case_000188_fixedSecond⟩

private theorem case_000188_existsRows :
    ExistsEqEqPosVarFirstRows case_000188_rank.val case_000188_mask :=
  ⟨case_000188_support, case_000188_sourceAgrees, case_000188_rows⟩

private theorem case_000188_covered :
    RowPropertyParametricCovered case_000188_rank.val case_000188_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000188_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000189_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000189_mask : SignMask := ⟨45, by decide⟩
private def case_000189_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000189_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000189_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000189_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (-20/9) }
private def case_000189_firstLine : StrictLin2 := { a := 1, b := -1, c := (-79/5) }
private def case_000189_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000189_rankWord :
    rankPairWord? case_000189_word = some case_000189_rank := by
  decide

private theorem case_000189_unrank :
    unrankPairWord case_000189_rank = case_000189_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000189_word case_000189_rank).1
    case_000189_rankWord |>.symm

private theorem case_000189_seqChoice :
    translationChoiceSeq case_000189_word case_000189_mask = case_000189_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000189_seqAtRank :
    translationSeqAtRankMask case_000189_rank case_000189_mask = case_000189_seq := by
  rw [translationSeqAtRankMask, case_000189_unrank]
  exact case_000189_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000189_bAtRank :
    translationBAtRankMask case_000189_rank case_000189_mask = case_000189_b := by
  rw [translationBAtRankMask, case_000189_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000189_b, case_000189_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000189_firstLine_eq :
    case_000189_support.firstLine case_000189_seq case_000189_b = case_000189_firstLine := by
  norm_num [case_000189_firstLine, case_000189_support, case_000189_seq, case_000189_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000189_secondLine_eq :
    case_000189_support.secondLine case_000189_seq case_000189_b = case_000189_secondLine := by
  norm_num [case_000189_secondLine, case_000189_support, case_000189_seq, case_000189_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000189_sourceAgrees :
    SourceAgrees case_000189_support case_000189_rank.val case_000189_mask := by
  intro hlt
  have hrank : (⟨case_000189_rank.val, hlt⟩ : Fin numPairWords) = case_000189_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000189_rank.val, hlt⟩ case_000189_mask =
        case_000189_seq := by
    simpa [hrank] using case_000189_seqAtRank
  simp [SourceChecks, hseq, case_000189_support,
    checkTranslationConstraintSource, case_000189_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000189_rows :
    OppMinusOneVarFirstRows case_000189_support case_000189_rank.val case_000189_mask := by
  intro hlt
  have hrank : (⟨case_000189_rank.val, hlt⟩ : Fin numPairWords) = case_000189_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000189_rank.val, hlt⟩ case_000189_mask =
        case_000189_seq := by
    simpa [hrank] using case_000189_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000189_rank.val, hlt⟩ case_000189_mask =
        case_000189_b := by
    simpa [hrank] using case_000189_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000189_support case_000189_rank.val hlt
          case_000189_mask = case_000189_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000189_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000189_support case_000189_rank.val hlt
          case_000189_mask = case_000189_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000189_secondLine_eq]
  have case_000189_rowFirst :
      OppNegRow (FirstLineAt case_000189_support case_000189_rank.val hlt case_000189_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000189_firstLine, OppNegRow]
  have case_000189_fixedSecond :
      FixedRow (SecondLineAt case_000189_support case_000189_rank.val hlt case_000189_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000189_secondLine, FixedRow]
  exact ⟨case_000189_rowFirst, case_000189_fixedSecond⟩

private theorem case_000189_existsRows :
    ExistsOppMinusOneVarFirstRows case_000189_rank.val case_000189_mask :=
  ⟨case_000189_support, case_000189_sourceAgrees, case_000189_rows⟩

private theorem case_000189_covered :
    RowPropertyParametricCovered case_000189_rank.val case_000189_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000189_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000190_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000190_mask : SignMask := ⟨47, by decide⟩
private def case_000190_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000190_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000190_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000190_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (52/9) }
private def case_000190_firstLine : StrictLin2 := { a := 1, b := -1, c := (-43/5) }
private def case_000190_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000190_rankWord :
    rankPairWord? case_000190_word = some case_000190_rank := by
  decide

private theorem case_000190_unrank :
    unrankPairWord case_000190_rank = case_000190_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000190_word case_000190_rank).1
    case_000190_rankWord |>.symm

private theorem case_000190_seqChoice :
    translationChoiceSeq case_000190_word case_000190_mask = case_000190_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000190_seqAtRank :
    translationSeqAtRankMask case_000190_rank case_000190_mask = case_000190_seq := by
  rw [translationSeqAtRankMask, case_000190_unrank]
  exact case_000190_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000190_bAtRank :
    translationBAtRankMask case_000190_rank case_000190_mask = case_000190_b := by
  rw [translationBAtRankMask, case_000190_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000190_b, case_000190_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000190_firstLine_eq :
    case_000190_support.firstLine case_000190_seq case_000190_b = case_000190_firstLine := by
  norm_num [case_000190_firstLine, case_000190_support, case_000190_seq, case_000190_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000190_secondLine_eq :
    case_000190_support.secondLine case_000190_seq case_000190_b = case_000190_secondLine := by
  norm_num [case_000190_secondLine, case_000190_support, case_000190_seq, case_000190_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000190_sourceAgrees :
    SourceAgrees case_000190_support case_000190_rank.val case_000190_mask := by
  intro hlt
  have hrank : (⟨case_000190_rank.val, hlt⟩ : Fin numPairWords) = case_000190_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000190_rank.val, hlt⟩ case_000190_mask =
        case_000190_seq := by
    simpa [hrank] using case_000190_seqAtRank
  simp [SourceChecks, hseq, case_000190_support,
    checkTranslationConstraintSource, case_000190_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000190_rows :
    OppMinusOneVarFirstRows case_000190_support case_000190_rank.val case_000190_mask := by
  intro hlt
  have hrank : (⟨case_000190_rank.val, hlt⟩ : Fin numPairWords) = case_000190_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000190_rank.val, hlt⟩ case_000190_mask =
        case_000190_seq := by
    simpa [hrank] using case_000190_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000190_rank.val, hlt⟩ case_000190_mask =
        case_000190_b := by
    simpa [hrank] using case_000190_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000190_support case_000190_rank.val hlt
          case_000190_mask = case_000190_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000190_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000190_support case_000190_rank.val hlt
          case_000190_mask = case_000190_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000190_secondLine_eq]
  have case_000190_rowFirst :
      OppNegRow (FirstLineAt case_000190_support case_000190_rank.val hlt case_000190_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000190_firstLine, OppNegRow]
  have case_000190_fixedSecond :
      FixedRow (SecondLineAt case_000190_support case_000190_rank.val hlt case_000190_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000190_secondLine, FixedRow]
  exact ⟨case_000190_rowFirst, case_000190_fixedSecond⟩

private theorem case_000190_existsRows :
    ExistsOppMinusOneVarFirstRows case_000190_rank.val case_000190_mask :=
  ⟨case_000190_support, case_000190_sourceAgrees, case_000190_rows⟩

private theorem case_000190_covered :
    RowPropertyParametricCovered case_000190_rank.val case_000190_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000190_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000191_rank : Fin numPairWords := ⟨45, by decide⟩
private def case_000191_mask : SignMask := ⟨54, by decide⟩
private def case_000191_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000191_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000191_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def case_000191_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (116/9) }
private def case_000191_firstLine : StrictLin2 := { a := -1, b := 1, c := (-71/13) }
private def case_000191_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000191_rankWord :
    rankPairWord? case_000191_word = some case_000191_rank := by
  decide

private theorem case_000191_unrank :
    unrankPairWord case_000191_rank = case_000191_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000191_word case_000191_rank).1
    case_000191_rankWord |>.symm

private theorem case_000191_seqChoice :
    translationChoiceSeq case_000191_word case_000191_mask = case_000191_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000191_seqAtRank :
    translationSeqAtRankMask case_000191_rank case_000191_mask = case_000191_seq := by
  rw [translationSeqAtRankMask, case_000191_unrank]
  exact case_000191_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000191_bAtRank :
    translationBAtRankMask case_000191_rank case_000191_mask = case_000191_b := by
  rw [translationBAtRankMask, case_000191_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000191_b, case_000191_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000191_firstLine_eq :
    case_000191_support.firstLine case_000191_seq case_000191_b = case_000191_firstLine := by
  norm_num [case_000191_firstLine, case_000191_support, case_000191_seq, case_000191_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000191_secondLine_eq :
    case_000191_support.secondLine case_000191_seq case_000191_b = case_000191_secondLine := by
  norm_num [case_000191_secondLine, case_000191_support, case_000191_seq, case_000191_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000191_sourceAgrees :
    SourceAgrees case_000191_support case_000191_rank.val case_000191_mask := by
  intro hlt
  have hrank : (⟨case_000191_rank.val, hlt⟩ : Fin numPairWords) = case_000191_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000191_rank.val, hlt⟩ case_000191_mask =
        case_000191_seq := by
    simpa [hrank] using case_000191_seqAtRank
  simp [SourceChecks, hseq, case_000191_support,
    checkTranslationConstraintSource, case_000191_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000191_rows :
    OppOneMinusVarFirstRows case_000191_support case_000191_rank.val case_000191_mask := by
  intro hlt
  have hrank : (⟨case_000191_rank.val, hlt⟩ : Fin numPairWords) = case_000191_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000191_rank.val, hlt⟩ case_000191_mask =
        case_000191_seq := by
    simpa [hrank] using case_000191_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000191_rank.val, hlt⟩ case_000191_mask =
        case_000191_b := by
    simpa [hrank] using case_000191_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000191_support case_000191_rank.val hlt
          case_000191_mask = case_000191_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000191_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000191_support case_000191_rank.val hlt
          case_000191_mask = case_000191_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000191_secondLine_eq]
  have case_000191_rowFirst :
      OppPosRow (FirstLineAt case_000191_support case_000191_rank.val hlt case_000191_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000191_firstLine, OppPosRow]
  have case_000191_fixedSecond :
      FixedRow (SecondLineAt case_000191_support case_000191_rank.val hlt case_000191_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000191_secondLine, FixedRow]
  exact ⟨case_000191_rowFirst, case_000191_fixedSecond⟩

private theorem case_000191_existsRows :
    ExistsOppOneMinusVarFirstRows case_000191_rank.val case_000191_mask :=
  ⟨case_000191_support, case_000191_sourceAgrees, case_000191_rows⟩

private theorem case_000191_covered :
    RowPropertyParametricCovered case_000191_rank.val case_000191_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000191_existsRows

inductive Group005Covered : Nat -> SignMask -> Prop
  | case_000160 : Group005Covered case_000160_rank.val case_000160_mask
  | case_000161 : Group005Covered case_000161_rank.val case_000161_mask
  | case_000162 : Group005Covered case_000162_rank.val case_000162_mask
  | case_000163 : Group005Covered case_000163_rank.val case_000163_mask
  | case_000164 : Group005Covered case_000164_rank.val case_000164_mask
  | case_000165 : Group005Covered case_000165_rank.val case_000165_mask
  | case_000166 : Group005Covered case_000166_rank.val case_000166_mask
  | case_000167 : Group005Covered case_000167_rank.val case_000167_mask
  | case_000168 : Group005Covered case_000168_rank.val case_000168_mask
  | case_000169 : Group005Covered case_000169_rank.val case_000169_mask
  | case_000170 : Group005Covered case_000170_rank.val case_000170_mask
  | case_000171 : Group005Covered case_000171_rank.val case_000171_mask
  | case_000172 : Group005Covered case_000172_rank.val case_000172_mask
  | case_000173 : Group005Covered case_000173_rank.val case_000173_mask
  | case_000174 : Group005Covered case_000174_rank.val case_000174_mask
  | case_000175 : Group005Covered case_000175_rank.val case_000175_mask
  | case_000176 : Group005Covered case_000176_rank.val case_000176_mask
  | case_000177 : Group005Covered case_000177_rank.val case_000177_mask
  | case_000178 : Group005Covered case_000178_rank.val case_000178_mask
  | case_000179 : Group005Covered case_000179_rank.val case_000179_mask
  | case_000180 : Group005Covered case_000180_rank.val case_000180_mask
  | case_000181 : Group005Covered case_000181_rank.val case_000181_mask
  | case_000182 : Group005Covered case_000182_rank.val case_000182_mask
  | case_000183 : Group005Covered case_000183_rank.val case_000183_mask
  | case_000184 : Group005Covered case_000184_rank.val case_000184_mask
  | case_000185 : Group005Covered case_000185_rank.val case_000185_mask
  | case_000186 : Group005Covered case_000186_rank.val case_000186_mask
  | case_000187 : Group005Covered case_000187_rank.val case_000187_mask
  | case_000188 : Group005Covered case_000188_rank.val case_000188_mask
  | case_000189 : Group005Covered case_000189_rank.val case_000189_mask
  | case_000190 : Group005Covered case_000190_rank.val case_000190_mask
  | case_000191 : Group005Covered case_000191_rank.val case_000191_mask

theorem Group005GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group005Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000160 =>
      exact RowPropertyParametricCovered.kills case_000160_covered
  | case_000161 =>
      exact RowPropertyParametricCovered.kills case_000161_covered
  | case_000162 =>
      exact RowPropertyParametricCovered.kills case_000162_covered
  | case_000163 =>
      exact RowPropertyParametricCovered.kills case_000163_covered
  | case_000164 =>
      exact RowPropertyParametricCovered.kills case_000164_covered
  | case_000165 =>
      exact RowPropertyParametricCovered.kills case_000165_covered
  | case_000166 =>
      exact RowPropertyParametricCovered.kills case_000166_covered
  | case_000167 =>
      exact RowPropertyParametricCovered.kills case_000167_covered
  | case_000168 =>
      exact RowPropertyParametricCovered.kills case_000168_covered
  | case_000169 =>
      exact RowPropertyParametricCovered.kills case_000169_covered
  | case_000170 =>
      exact RowPropertyParametricCovered.kills case_000170_covered
  | case_000171 =>
      exact RowPropertyParametricCovered.kills case_000171_covered
  | case_000172 =>
      exact RowPropertyParametricCovered.kills case_000172_covered
  | case_000173 =>
      exact RowPropertyParametricCovered.kills case_000173_covered
  | case_000174 =>
      exact RowPropertyParametricCovered.kills case_000174_covered
  | case_000175 =>
      exact RowPropertyParametricCovered.kills case_000175_covered
  | case_000176 =>
      exact RowPropertyParametricCovered.kills case_000176_covered
  | case_000177 =>
      exact RowPropertyParametricCovered.kills case_000177_covered
  | case_000178 =>
      exact RowPropertyParametricCovered.kills case_000178_covered
  | case_000179 =>
      exact RowPropertyParametricCovered.kills case_000179_covered
  | case_000180 =>
      exact RowPropertyParametricCovered.kills case_000180_covered
  | case_000181 =>
      exact RowPropertyParametricCovered.kills case_000181_covered
  | case_000182 =>
      exact RowPropertyParametricCovered.kills case_000182_covered
  | case_000183 =>
      exact RowPropertyParametricCovered.kills case_000183_covered
  | case_000184 =>
      exact RowPropertyParametricCovered.kills case_000184_covered
  | case_000185 =>
      exact RowPropertyParametricCovered.kills case_000185_covered
  | case_000186 =>
      exact RowPropertyParametricCovered.kills case_000186_covered
  | case_000187 =>
      exact RowPropertyParametricCovered.kills case_000187_covered
  | case_000188 =>
      exact RowPropertyParametricCovered.kills case_000188_covered
  | case_000189 =>
      exact RowPropertyParametricCovered.kills case_000189_covered
  | case_000190 =>
      exact RowPropertyParametricCovered.kills case_000190_covered
  | case_000191 =>
      exact RowPropertyParametricCovered.kills case_000191_covered

theorem Group005_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group005
