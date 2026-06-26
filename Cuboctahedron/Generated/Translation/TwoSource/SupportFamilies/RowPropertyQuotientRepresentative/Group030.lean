import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group030

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
private def case_000960_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000960_mask : SignMask := ⟨22, by decide⟩
private def case_000960_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000960_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000960_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000960_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (116/9) }
private def case_000960_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000960_secondLine : StrictLin2 := { a := (-9/86), b := (-9/86), c := (-15/43) }

private theorem case_000960_rankWord :
    rankPairWord? case_000960_word = some case_000960_rank := by
  decide

private theorem case_000960_unrank :
    unrankPairWord case_000960_rank = case_000960_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000960_word case_000960_rank).1
    case_000960_rankWord |>.symm

private theorem case_000960_seqChoice :
    translationChoiceSeq case_000960_word case_000960_mask = case_000960_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000960_seqAtRank :
    translationSeqAtRankMask case_000960_rank case_000960_mask = case_000960_seq := by
  rw [translationSeqAtRankMask, case_000960_unrank]
  exact case_000960_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000960_bAtRank :
    translationBAtRankMask case_000960_rank case_000960_mask = case_000960_b := by
  rw [translationBAtRankMask, case_000960_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000960_b, case_000960_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000960_firstLine_eq :
    case_000960_support.firstLine case_000960_seq case_000960_b = case_000960_firstLine := by
  norm_num [case_000960_firstLine, case_000960_support, case_000960_seq, case_000960_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000960_secondLine_eq :
    case_000960_support.secondLine case_000960_seq case_000960_b = case_000960_secondLine := by
  norm_num [case_000960_secondLine, case_000960_support, case_000960_seq, case_000960_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000960_sourceAgrees :
    SourceAgrees case_000960_support case_000960_rank.val case_000960_mask := by
  intro hlt
  have hrank : (⟨case_000960_rank.val, hlt⟩ : Fin numPairWords) = case_000960_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000960_rank.val, hlt⟩ case_000960_mask =
        case_000960_seq := by
    simpa [hrank] using case_000960_seqAtRank
  simp [SourceChecks, hseq, case_000960_support,
    checkTranslationConstraintSource, case_000960_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000960_rows :
    EqEqPosVarSecondRows case_000960_support case_000960_rank.val case_000960_mask := by
  intro hlt
  have hrank : (⟨case_000960_rank.val, hlt⟩ : Fin numPairWords) = case_000960_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000960_rank.val, hlt⟩ case_000960_mask =
        case_000960_seq := by
    simpa [hrank] using case_000960_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000960_rank.val, hlt⟩ case_000960_mask =
        case_000960_b := by
    simpa [hrank] using case_000960_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000960_support case_000960_rank.val hlt
          case_000960_mask = case_000960_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000960_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000960_support case_000960_rank.val hlt
          case_000960_mask = case_000960_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000960_secondLine_eq]
  have case_000960_fixedFirst :
      FixedRow (FirstLineAt case_000960_support case_000960_rank.val hlt case_000960_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000960_firstLine, FixedRow]
  have case_000960_rowSecond :
      EqEqPosRow (SecondLineAt case_000960_support case_000960_rank.val hlt case_000960_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000960_secondLine, EqEqPosRow]
  exact ⟨case_000960_fixedFirst, case_000960_rowSecond⟩

private theorem case_000960_existsRows :
    ExistsEqEqPosVarSecondRows case_000960_rank.val case_000960_mask :=
  ⟨case_000960_support, case_000960_sourceAgrees, case_000960_rows⟩

private theorem case_000960_covered :
    RowPropertyParametricCovered case_000960_rank.val case_000960_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000960_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000961_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000961_mask : SignMask := ⟨24, by decide⟩
private def case_000961_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000961_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000961_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000961_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000961_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000961_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000961_rankWord :
    rankPairWord? case_000961_word = some case_000961_rank := by
  decide

private theorem case_000961_unrank :
    unrankPairWord case_000961_rank = case_000961_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000961_word case_000961_rank).1
    case_000961_rankWord |>.symm

private theorem case_000961_seqChoice :
    translationChoiceSeq case_000961_word case_000961_mask = case_000961_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000961_seqAtRank :
    translationSeqAtRankMask case_000961_rank case_000961_mask = case_000961_seq := by
  rw [translationSeqAtRankMask, case_000961_unrank]
  exact case_000961_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000961_bAtRank :
    translationBAtRankMask case_000961_rank case_000961_mask = case_000961_b := by
  rw [translationBAtRankMask, case_000961_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000961_b, case_000961_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000961_firstLine_eq :
    case_000961_support.firstLine case_000961_seq case_000961_b = case_000961_firstLine := by
  norm_num [case_000961_firstLine, case_000961_support, case_000961_seq, case_000961_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000961_secondLine_eq :
    case_000961_support.secondLine case_000961_seq case_000961_b = case_000961_secondLine := by
  norm_num [case_000961_secondLine, case_000961_support, case_000961_seq, case_000961_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000961_sourceAgrees :
    SourceAgrees case_000961_support case_000961_rank.val case_000961_mask := by
  intro hlt
  have hrank : (⟨case_000961_rank.val, hlt⟩ : Fin numPairWords) = case_000961_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000961_rank.val, hlt⟩ case_000961_mask =
        case_000961_seq := by
    simpa [hrank] using case_000961_seqAtRank
  simp [SourceChecks, hseq, case_000961_support,
    checkTranslationConstraintSource, case_000961_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000961_rows :
    EqEqPosVarFirstRows case_000961_support case_000961_rank.val case_000961_mask := by
  intro hlt
  have hrank : (⟨case_000961_rank.val, hlt⟩ : Fin numPairWords) = case_000961_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000961_rank.val, hlt⟩ case_000961_mask =
        case_000961_seq := by
    simpa [hrank] using case_000961_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000961_rank.val, hlt⟩ case_000961_mask =
        case_000961_b := by
    simpa [hrank] using case_000961_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000961_support case_000961_rank.val hlt
          case_000961_mask = case_000961_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000961_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000961_support case_000961_rank.val hlt
          case_000961_mask = case_000961_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000961_secondLine_eq]
  have case_000961_rowFirst :
      EqEqPosRow (FirstLineAt case_000961_support case_000961_rank.val hlt case_000961_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000961_firstLine, EqEqPosRow]
  have case_000961_fixedSecond :
      FixedRow (SecondLineAt case_000961_support case_000961_rank.val hlt case_000961_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000961_secondLine, FixedRow]
  exact ⟨case_000961_rowFirst, case_000961_fixedSecond⟩

private theorem case_000961_existsRows :
    ExistsEqEqPosVarFirstRows case_000961_rank.val case_000961_mask :=
  ⟨case_000961_support, case_000961_sourceAgrees, case_000961_rows⟩

private theorem case_000961_covered :
    RowPropertyParametricCovered case_000961_rank.val case_000961_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000961_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000962_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000962_mask : SignMask := ⟨28, by decide⟩
private def case_000962_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000962_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000962_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000962_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-4/9) }
private def case_000962_firstLine : StrictLin2 := { a := (-25/9), b := (25/9), c := (-89/9) }
private def case_000962_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000962_rankWord :
    rankPairWord? case_000962_word = some case_000962_rank := by
  decide

private theorem case_000962_unrank :
    unrankPairWord case_000962_rank = case_000962_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000962_word case_000962_rank).1
    case_000962_rankWord |>.symm

private theorem case_000962_seqChoice :
    translationChoiceSeq case_000962_word case_000962_mask = case_000962_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000962_seqAtRank :
    translationSeqAtRankMask case_000962_rank case_000962_mask = case_000962_seq := by
  rw [translationSeqAtRankMask, case_000962_unrank]
  exact case_000962_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000962_bAtRank :
    translationBAtRankMask case_000962_rank case_000962_mask = case_000962_b := by
  rw [translationBAtRankMask, case_000962_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000962_b, case_000962_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000962_firstLine_eq :
    case_000962_support.firstLine case_000962_seq case_000962_b = case_000962_firstLine := by
  norm_num [case_000962_firstLine, case_000962_support, case_000962_seq, case_000962_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000962_secondLine_eq :
    case_000962_support.secondLine case_000962_seq case_000962_b = case_000962_secondLine := by
  norm_num [case_000962_secondLine, case_000962_support, case_000962_seq, case_000962_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000962_sourceAgrees :
    SourceAgrees case_000962_support case_000962_rank.val case_000962_mask := by
  intro hlt
  have hrank : (⟨case_000962_rank.val, hlt⟩ : Fin numPairWords) = case_000962_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000962_rank.val, hlt⟩ case_000962_mask =
        case_000962_seq := by
    simpa [hrank] using case_000962_seqAtRank
  simp [SourceChecks, hseq, case_000962_support,
    checkTranslationConstraintSource, case_000962_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000962_rows :
    OppOneMinusVarFirstRows case_000962_support case_000962_rank.val case_000962_mask := by
  intro hlt
  have hrank : (⟨case_000962_rank.val, hlt⟩ : Fin numPairWords) = case_000962_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000962_rank.val, hlt⟩ case_000962_mask =
        case_000962_seq := by
    simpa [hrank] using case_000962_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000962_rank.val, hlt⟩ case_000962_mask =
        case_000962_b := by
    simpa [hrank] using case_000962_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000962_support case_000962_rank.val hlt
          case_000962_mask = case_000962_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000962_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000962_support case_000962_rank.val hlt
          case_000962_mask = case_000962_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000962_secondLine_eq]
  have case_000962_rowFirst :
      OppPosRow (FirstLineAt case_000962_support case_000962_rank.val hlt case_000962_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000962_firstLine, OppPosRow]
  have case_000962_fixedSecond :
      FixedRow (SecondLineAt case_000962_support case_000962_rank.val hlt case_000962_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000962_secondLine, FixedRow]
  exact ⟨case_000962_rowFirst, case_000962_fixedSecond⟩

private theorem case_000962_existsRows :
    ExistsOppOneMinusVarFirstRows case_000962_rank.val case_000962_mask :=
  ⟨case_000962_support, case_000962_sourceAgrees, case_000962_rows⟩

private theorem case_000962_covered :
    RowPropertyParametricCovered case_000962_rank.val case_000962_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000962_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000963_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000963_mask : SignMask := ⟨29, by decide⟩
private def case_000963_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000963_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000963_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000963_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-4/9) }
private def case_000963_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000963_secondLine : StrictLin2 := { a := (-9/4), b := (-9/4), c := (-9/2) }

private theorem case_000963_rankWord :
    rankPairWord? case_000963_word = some case_000963_rank := by
  decide

private theorem case_000963_unrank :
    unrankPairWord case_000963_rank = case_000963_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000963_word case_000963_rank).1
    case_000963_rankWord |>.symm

private theorem case_000963_seqChoice :
    translationChoiceSeq case_000963_word case_000963_mask = case_000963_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000963_seqAtRank :
    translationSeqAtRankMask case_000963_rank case_000963_mask = case_000963_seq := by
  rw [translationSeqAtRankMask, case_000963_unrank]
  exact case_000963_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000963_bAtRank :
    translationBAtRankMask case_000963_rank case_000963_mask = case_000963_b := by
  rw [translationBAtRankMask, case_000963_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000963_b, case_000963_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000963_firstLine_eq :
    case_000963_support.firstLine case_000963_seq case_000963_b = case_000963_firstLine := by
  norm_num [case_000963_firstLine, case_000963_support, case_000963_seq, case_000963_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000963_secondLine_eq :
    case_000963_support.secondLine case_000963_seq case_000963_b = case_000963_secondLine := by
  norm_num [case_000963_secondLine, case_000963_support, case_000963_seq, case_000963_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000963_sourceAgrees :
    SourceAgrees case_000963_support case_000963_rank.val case_000963_mask := by
  intro hlt
  have hrank : (⟨case_000963_rank.val, hlt⟩ : Fin numPairWords) = case_000963_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000963_rank.val, hlt⟩ case_000963_mask =
        case_000963_seq := by
    simpa [hrank] using case_000963_seqAtRank
  simp [SourceChecks, hseq, case_000963_support,
    checkTranslationConstraintSource, case_000963_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000963_rows :
    EqEqPosVarSecondRows case_000963_support case_000963_rank.val case_000963_mask := by
  intro hlt
  have hrank : (⟨case_000963_rank.val, hlt⟩ : Fin numPairWords) = case_000963_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000963_rank.val, hlt⟩ case_000963_mask =
        case_000963_seq := by
    simpa [hrank] using case_000963_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000963_rank.val, hlt⟩ case_000963_mask =
        case_000963_b := by
    simpa [hrank] using case_000963_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000963_support case_000963_rank.val hlt
          case_000963_mask = case_000963_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000963_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000963_support case_000963_rank.val hlt
          case_000963_mask = case_000963_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000963_secondLine_eq]
  have case_000963_fixedFirst :
      FixedRow (FirstLineAt case_000963_support case_000963_rank.val hlt case_000963_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000963_firstLine, FixedRow]
  have case_000963_rowSecond :
      EqEqPosRow (SecondLineAt case_000963_support case_000963_rank.val hlt case_000963_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000963_secondLine, EqEqPosRow]
  exact ⟨case_000963_fixedFirst, case_000963_rowSecond⟩

private theorem case_000963_existsRows :
    ExistsEqEqPosVarSecondRows case_000963_rank.val case_000963_mask :=
  ⟨case_000963_support, case_000963_sourceAgrees, case_000963_rows⟩

private theorem case_000963_covered :
    RowPropertyParametricCovered case_000963_rank.val case_000963_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000963_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000964_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000964_mask : SignMask := ⟨31, by decide⟩
private def case_000964_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000964_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000964_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000964_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (68/9) }
private def case_000964_firstLine : StrictLin2 := { a := (-25/9), b := (25/9), c := (-89/9) }
private def case_000964_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000964_rankWord :
    rankPairWord? case_000964_word = some case_000964_rank := by
  decide

private theorem case_000964_unrank :
    unrankPairWord case_000964_rank = case_000964_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000964_word case_000964_rank).1
    case_000964_rankWord |>.symm

private theorem case_000964_seqChoice :
    translationChoiceSeq case_000964_word case_000964_mask = case_000964_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000964_seqAtRank :
    translationSeqAtRankMask case_000964_rank case_000964_mask = case_000964_seq := by
  rw [translationSeqAtRankMask, case_000964_unrank]
  exact case_000964_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000964_bAtRank :
    translationBAtRankMask case_000964_rank case_000964_mask = case_000964_b := by
  rw [translationBAtRankMask, case_000964_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000964_b, case_000964_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000964_firstLine_eq :
    case_000964_support.firstLine case_000964_seq case_000964_b = case_000964_firstLine := by
  norm_num [case_000964_firstLine, case_000964_support, case_000964_seq, case_000964_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000964_secondLine_eq :
    case_000964_support.secondLine case_000964_seq case_000964_b = case_000964_secondLine := by
  norm_num [case_000964_secondLine, case_000964_support, case_000964_seq, case_000964_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000964_sourceAgrees :
    SourceAgrees case_000964_support case_000964_rank.val case_000964_mask := by
  intro hlt
  have hrank : (⟨case_000964_rank.val, hlt⟩ : Fin numPairWords) = case_000964_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000964_rank.val, hlt⟩ case_000964_mask =
        case_000964_seq := by
    simpa [hrank] using case_000964_seqAtRank
  simp [SourceChecks, hseq, case_000964_support,
    checkTranslationConstraintSource, case_000964_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000964_rows :
    OppOneMinusVarFirstRows case_000964_support case_000964_rank.val case_000964_mask := by
  intro hlt
  have hrank : (⟨case_000964_rank.val, hlt⟩ : Fin numPairWords) = case_000964_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000964_rank.val, hlt⟩ case_000964_mask =
        case_000964_seq := by
    simpa [hrank] using case_000964_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000964_rank.val, hlt⟩ case_000964_mask =
        case_000964_b := by
    simpa [hrank] using case_000964_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000964_support case_000964_rank.val hlt
          case_000964_mask = case_000964_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000964_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000964_support case_000964_rank.val hlt
          case_000964_mask = case_000964_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000964_secondLine_eq]
  have case_000964_rowFirst :
      OppPosRow (FirstLineAt case_000964_support case_000964_rank.val hlt case_000964_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000964_firstLine, OppPosRow]
  have case_000964_fixedSecond :
      FixedRow (SecondLineAt case_000964_support case_000964_rank.val hlt case_000964_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000964_secondLine, FixedRow]
  exact ⟨case_000964_rowFirst, case_000964_fixedSecond⟩

private theorem case_000964_existsRows :
    ExistsOppOneMinusVarFirstRows case_000964_rank.val case_000964_mask :=
  ⟨case_000964_support, case_000964_sourceAgrees, case_000964_rows⟩

private theorem case_000964_covered :
    RowPropertyParametricCovered case_000964_rank.val case_000964_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000964_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000965_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000965_mask : SignMask := ⟨41, by decide⟩
private def case_000965_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000965_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000965_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000965_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-116/9) }
private def case_000965_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000965_secondLine : StrictLin2 := { a := (-9/116), b := (-9/116), c := (-9/58) }

private theorem case_000965_rankWord :
    rankPairWord? case_000965_word = some case_000965_rank := by
  decide

private theorem case_000965_unrank :
    unrankPairWord case_000965_rank = case_000965_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000965_word case_000965_rank).1
    case_000965_rankWord |>.symm

private theorem case_000965_seqChoice :
    translationChoiceSeq case_000965_word case_000965_mask = case_000965_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000965_seqAtRank :
    translationSeqAtRankMask case_000965_rank case_000965_mask = case_000965_seq := by
  rw [translationSeqAtRankMask, case_000965_unrank]
  exact case_000965_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000965_bAtRank :
    translationBAtRankMask case_000965_rank case_000965_mask = case_000965_b := by
  rw [translationBAtRankMask, case_000965_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000965_b, case_000965_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000965_firstLine_eq :
    case_000965_support.firstLine case_000965_seq case_000965_b = case_000965_firstLine := by
  norm_num [case_000965_firstLine, case_000965_support, case_000965_seq, case_000965_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000965_secondLine_eq :
    case_000965_support.secondLine case_000965_seq case_000965_b = case_000965_secondLine := by
  norm_num [case_000965_secondLine, case_000965_support, case_000965_seq, case_000965_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000965_sourceAgrees :
    SourceAgrees case_000965_support case_000965_rank.val case_000965_mask := by
  intro hlt
  have hrank : (⟨case_000965_rank.val, hlt⟩ : Fin numPairWords) = case_000965_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000965_rank.val, hlt⟩ case_000965_mask =
        case_000965_seq := by
    simpa [hrank] using case_000965_seqAtRank
  simp [SourceChecks, hseq, case_000965_support,
    checkTranslationConstraintSource, case_000965_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000965_rows :
    EqEqPosVarSecondRows case_000965_support case_000965_rank.val case_000965_mask := by
  intro hlt
  have hrank : (⟨case_000965_rank.val, hlt⟩ : Fin numPairWords) = case_000965_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000965_rank.val, hlt⟩ case_000965_mask =
        case_000965_seq := by
    simpa [hrank] using case_000965_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000965_rank.val, hlt⟩ case_000965_mask =
        case_000965_b := by
    simpa [hrank] using case_000965_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000965_support case_000965_rank.val hlt
          case_000965_mask = case_000965_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000965_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000965_support case_000965_rank.val hlt
          case_000965_mask = case_000965_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000965_secondLine_eq]
  have case_000965_fixedFirst :
      FixedRow (FirstLineAt case_000965_support case_000965_rank.val hlt case_000965_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000965_firstLine, FixedRow]
  have case_000965_rowSecond :
      EqEqPosRow (SecondLineAt case_000965_support case_000965_rank.val hlt case_000965_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000965_secondLine, EqEqPosRow]
  exact ⟨case_000965_fixedFirst, case_000965_rowSecond⟩

private theorem case_000965_existsRows :
    ExistsEqEqPosVarSecondRows case_000965_rank.val case_000965_mask :=
  ⟨case_000965_support, case_000965_sourceAgrees, case_000965_rows⟩

private theorem case_000965_covered :
    RowPropertyParametricCovered case_000965_rank.val case_000965_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000965_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000966_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000966_mask : SignMask := ⟨47, by decide⟩
private def case_000966_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000966_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000966_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000966_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000966_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000966_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-4/11) }

private theorem case_000966_rankWord :
    rankPairWord? case_000966_word = some case_000966_rank := by
  decide

private theorem case_000966_unrank :
    unrankPairWord case_000966_rank = case_000966_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000966_word case_000966_rank).1
    case_000966_rankWord |>.symm

private theorem case_000966_seqChoice :
    translationChoiceSeq case_000966_word case_000966_mask = case_000966_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000966_seqAtRank :
    translationSeqAtRankMask case_000966_rank case_000966_mask = case_000966_seq := by
  rw [translationSeqAtRankMask, case_000966_unrank]
  exact case_000966_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000966_bAtRank :
    translationBAtRankMask case_000966_rank case_000966_mask = case_000966_b := by
  rw [translationBAtRankMask, case_000966_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000966_b, case_000966_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000966_firstLine_eq :
    case_000966_support.firstLine case_000966_seq case_000966_b = case_000966_firstLine := by
  norm_num [case_000966_firstLine, case_000966_support, case_000966_seq, case_000966_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000966_secondLine_eq :
    case_000966_support.secondLine case_000966_seq case_000966_b = case_000966_secondLine := by
  norm_num [case_000966_secondLine, case_000966_support, case_000966_seq, case_000966_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000966_sourceAgrees :
    SourceAgrees case_000966_support case_000966_rank.val case_000966_mask := by
  intro hlt
  have hrank : (⟨case_000966_rank.val, hlt⟩ : Fin numPairWords) = case_000966_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000966_rank.val, hlt⟩ case_000966_mask =
        case_000966_seq := by
    simpa [hrank] using case_000966_seqAtRank
  simp [SourceChecks, hseq, case_000966_support,
    checkTranslationConstraintSource, case_000966_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000966_rows :
    OppMinusOneVarSecondRows case_000966_support case_000966_rank.val case_000966_mask := by
  intro hlt
  have hrank : (⟨case_000966_rank.val, hlt⟩ : Fin numPairWords) = case_000966_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000966_rank.val, hlt⟩ case_000966_mask =
        case_000966_seq := by
    simpa [hrank] using case_000966_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000966_rank.val, hlt⟩ case_000966_mask =
        case_000966_b := by
    simpa [hrank] using case_000966_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000966_support case_000966_rank.val hlt
          case_000966_mask = case_000966_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000966_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000966_support case_000966_rank.val hlt
          case_000966_mask = case_000966_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000966_secondLine_eq]
  have case_000966_fixedFirst :
      FixedRow (FirstLineAt case_000966_support case_000966_rank.val hlt case_000966_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000966_firstLine, FixedRow]
  have case_000966_rowSecond :
      OppNegRow (SecondLineAt case_000966_support case_000966_rank.val hlt case_000966_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000966_secondLine, OppNegRow]
  exact ⟨case_000966_fixedFirst, case_000966_rowSecond⟩

private theorem case_000966_existsRows :
    ExistsOppMinusOneVarSecondRows case_000966_rank.val case_000966_mask :=
  ⟨case_000966_support, case_000966_sourceAgrees, case_000966_rows⟩

private theorem case_000966_covered :
    RowPropertyParametricCovered case_000966_rank.val case_000966_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000966_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000967_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000967_mask : SignMask := ⟨55, by decide⟩
private def case_000967_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000967_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000967_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000967_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000967_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000967_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000967_rankWord :
    rankPairWord? case_000967_word = some case_000967_rank := by
  decide

private theorem case_000967_unrank :
    unrankPairWord case_000967_rank = case_000967_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000967_word case_000967_rank).1
    case_000967_rankWord |>.symm

private theorem case_000967_seqChoice :
    translationChoiceSeq case_000967_word case_000967_mask = case_000967_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000967_seqAtRank :
    translationSeqAtRankMask case_000967_rank case_000967_mask = case_000967_seq := by
  rw [translationSeqAtRankMask, case_000967_unrank]
  exact case_000967_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000967_bAtRank :
    translationBAtRankMask case_000967_rank case_000967_mask = case_000967_b := by
  rw [translationBAtRankMask, case_000967_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000967_b, case_000967_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000967_firstLine_eq :
    case_000967_support.firstLine case_000967_seq case_000967_b = case_000967_firstLine := by
  norm_num [case_000967_firstLine, case_000967_support, case_000967_seq, case_000967_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000967_secondLine_eq :
    case_000967_support.secondLine case_000967_seq case_000967_b = case_000967_secondLine := by
  norm_num [case_000967_secondLine, case_000967_support, case_000967_seq, case_000967_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000967_sourceAgrees :
    SourceAgrees case_000967_support case_000967_rank.val case_000967_mask := by
  intro hlt
  have hrank : (⟨case_000967_rank.val, hlt⟩ : Fin numPairWords) = case_000967_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000967_rank.val, hlt⟩ case_000967_mask =
        case_000967_seq := by
    simpa [hrank] using case_000967_seqAtRank
  simp [SourceChecks, hseq, case_000967_support,
    checkTranslationConstraintSource, case_000967_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000967_rows :
    OppOneMinusVarFirstRows case_000967_support case_000967_rank.val case_000967_mask := by
  intro hlt
  have hrank : (⟨case_000967_rank.val, hlt⟩ : Fin numPairWords) = case_000967_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000967_rank.val, hlt⟩ case_000967_mask =
        case_000967_seq := by
    simpa [hrank] using case_000967_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000967_rank.val, hlt⟩ case_000967_mask =
        case_000967_b := by
    simpa [hrank] using case_000967_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000967_support case_000967_rank.val hlt
          case_000967_mask = case_000967_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000967_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000967_support case_000967_rank.val hlt
          case_000967_mask = case_000967_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000967_secondLine_eq]
  have case_000967_rowFirst :
      OppPosRow (FirstLineAt case_000967_support case_000967_rank.val hlt case_000967_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000967_firstLine, OppPosRow]
  have case_000967_fixedSecond :
      FixedRow (SecondLineAt case_000967_support case_000967_rank.val hlt case_000967_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000967_secondLine, FixedRow]
  exact ⟨case_000967_rowFirst, case_000967_fixedSecond⟩

private theorem case_000967_existsRows :
    ExistsOppOneMinusVarFirstRows case_000967_rank.val case_000967_mask :=
  ⟨case_000967_support, case_000967_sourceAgrees, case_000967_rows⟩

private theorem case_000967_covered :
    RowPropertyParametricCovered case_000967_rank.val case_000967_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000967_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000968_rank : Fin numPairWords := ⟨657, by decide⟩
private def case_000968_mask : SignMask := ⟨63, by decide⟩
private def case_000968_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000968_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000968_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000968_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000968_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000968_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_000968_rankWord :
    rankPairWord? case_000968_word = some case_000968_rank := by
  decide

private theorem case_000968_unrank :
    unrankPairWord case_000968_rank = case_000968_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000968_word case_000968_rank).1
    case_000968_rankWord |>.symm

private theorem case_000968_seqChoice :
    translationChoiceSeq case_000968_word case_000968_mask = case_000968_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000968_seqAtRank :
    translationSeqAtRankMask case_000968_rank case_000968_mask = case_000968_seq := by
  rw [translationSeqAtRankMask, case_000968_unrank]
  exact case_000968_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000968_bAtRank :
    translationBAtRankMask case_000968_rank case_000968_mask = case_000968_b := by
  rw [translationBAtRankMask, case_000968_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000968_b, case_000968_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000968_firstLine_eq :
    case_000968_support.firstLine case_000968_seq case_000968_b = case_000968_firstLine := by
  norm_num [case_000968_firstLine, case_000968_support, case_000968_seq, case_000968_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000968_secondLine_eq :
    case_000968_support.secondLine case_000968_seq case_000968_b = case_000968_secondLine := by
  norm_num [case_000968_secondLine, case_000968_support, case_000968_seq, case_000968_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000968_sourceAgrees :
    SourceAgrees case_000968_support case_000968_rank.val case_000968_mask := by
  intro hlt
  have hrank : (⟨case_000968_rank.val, hlt⟩ : Fin numPairWords) = case_000968_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000968_rank.val, hlt⟩ case_000968_mask =
        case_000968_seq := by
    simpa [hrank] using case_000968_seqAtRank
  simp [SourceChecks, hseq, case_000968_support,
    checkTranslationConstraintSource, case_000968_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000968_rows :
    OppOneMinusVarSecondRows case_000968_support case_000968_rank.val case_000968_mask := by
  intro hlt
  have hrank : (⟨case_000968_rank.val, hlt⟩ : Fin numPairWords) = case_000968_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000968_rank.val, hlt⟩ case_000968_mask =
        case_000968_seq := by
    simpa [hrank] using case_000968_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000968_rank.val, hlt⟩ case_000968_mask =
        case_000968_b := by
    simpa [hrank] using case_000968_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000968_support case_000968_rank.val hlt
          case_000968_mask = case_000968_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000968_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000968_support case_000968_rank.val hlt
          case_000968_mask = case_000968_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000968_secondLine_eq]
  have case_000968_fixedFirst :
      FixedRow (FirstLineAt case_000968_support case_000968_rank.val hlt case_000968_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000968_firstLine, FixedRow]
  have case_000968_rowSecond :
      OppPosRow (SecondLineAt case_000968_support case_000968_rank.val hlt case_000968_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000968_secondLine, OppPosRow]
  exact ⟨case_000968_fixedFirst, case_000968_rowSecond⟩

private theorem case_000968_existsRows :
    ExistsOppOneMinusVarSecondRows case_000968_rank.val case_000968_mask :=
  ⟨case_000968_support, case_000968_sourceAgrees, case_000968_rows⟩

private theorem case_000968_covered :
    RowPropertyParametricCovered case_000968_rank.val case_000968_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000968_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000969_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000969_mask : SignMask := ⟨9, by decide⟩
private def case_000969_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000969_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000969_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000969_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000969_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000969_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000969_rankWord :
    rankPairWord? case_000969_word = some case_000969_rank := by
  decide

private theorem case_000969_unrank :
    unrankPairWord case_000969_rank = case_000969_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000969_word case_000969_rank).1
    case_000969_rankWord |>.symm

private theorem case_000969_seqChoice :
    translationChoiceSeq case_000969_word case_000969_mask = case_000969_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000969_seqAtRank :
    translationSeqAtRankMask case_000969_rank case_000969_mask = case_000969_seq := by
  rw [translationSeqAtRankMask, case_000969_unrank]
  exact case_000969_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000969_bAtRank :
    translationBAtRankMask case_000969_rank case_000969_mask = case_000969_b := by
  rw [translationBAtRankMask, case_000969_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000969_b, case_000969_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000969_firstLine_eq :
    case_000969_support.firstLine case_000969_seq case_000969_b = case_000969_firstLine := by
  norm_num [case_000969_firstLine, case_000969_support, case_000969_seq, case_000969_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000969_secondLine_eq :
    case_000969_support.secondLine case_000969_seq case_000969_b = case_000969_secondLine := by
  norm_num [case_000969_secondLine, case_000969_support, case_000969_seq, case_000969_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000969_sourceAgrees :
    SourceAgrees case_000969_support case_000969_rank.val case_000969_mask := by
  intro hlt
  have hrank : (⟨case_000969_rank.val, hlt⟩ : Fin numPairWords) = case_000969_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000969_rank.val, hlt⟩ case_000969_mask =
        case_000969_seq := by
    simpa [hrank] using case_000969_seqAtRank
  simp [SourceChecks, hseq, case_000969_support,
    checkTranslationConstraintSource, case_000969_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000969_rows :
    EqEqPosVarFirstRows case_000969_support case_000969_rank.val case_000969_mask := by
  intro hlt
  have hrank : (⟨case_000969_rank.val, hlt⟩ : Fin numPairWords) = case_000969_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000969_rank.val, hlt⟩ case_000969_mask =
        case_000969_seq := by
    simpa [hrank] using case_000969_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000969_rank.val, hlt⟩ case_000969_mask =
        case_000969_b := by
    simpa [hrank] using case_000969_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000969_support case_000969_rank.val hlt
          case_000969_mask = case_000969_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000969_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000969_support case_000969_rank.val hlt
          case_000969_mask = case_000969_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000969_secondLine_eq]
  have case_000969_rowFirst :
      EqEqPosRow (FirstLineAt case_000969_support case_000969_rank.val hlt case_000969_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000969_firstLine, EqEqPosRow]
  have case_000969_fixedSecond :
      FixedRow (SecondLineAt case_000969_support case_000969_rank.val hlt case_000969_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000969_secondLine, FixedRow]
  exact ⟨case_000969_rowFirst, case_000969_fixedSecond⟩

private theorem case_000969_existsRows :
    ExistsEqEqPosVarFirstRows case_000969_rank.val case_000969_mask :=
  ⟨case_000969_support, case_000969_sourceAgrees, case_000969_rows⟩

private theorem case_000969_covered :
    RowPropertyParametricCovered case_000969_rank.val case_000969_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000969_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000970_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000970_mask : SignMask := ⟨16, by decide⟩
private def case_000970_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000970_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000970_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000970_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000970_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000970_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000970_rankWord :
    rankPairWord? case_000970_word = some case_000970_rank := by
  decide

private theorem case_000970_unrank :
    unrankPairWord case_000970_rank = case_000970_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000970_word case_000970_rank).1
    case_000970_rankWord |>.symm

private theorem case_000970_seqChoice :
    translationChoiceSeq case_000970_word case_000970_mask = case_000970_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000970_seqAtRank :
    translationSeqAtRankMask case_000970_rank case_000970_mask = case_000970_seq := by
  rw [translationSeqAtRankMask, case_000970_unrank]
  exact case_000970_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000970_bAtRank :
    translationBAtRankMask case_000970_rank case_000970_mask = case_000970_b := by
  rw [translationBAtRankMask, case_000970_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000970_b, case_000970_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000970_firstLine_eq :
    case_000970_support.firstLine case_000970_seq case_000970_b = case_000970_firstLine := by
  norm_num [case_000970_firstLine, case_000970_support, case_000970_seq, case_000970_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000970_secondLine_eq :
    case_000970_support.secondLine case_000970_seq case_000970_b = case_000970_secondLine := by
  norm_num [case_000970_secondLine, case_000970_support, case_000970_seq, case_000970_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000970_sourceAgrees :
    SourceAgrees case_000970_support case_000970_rank.val case_000970_mask := by
  intro hlt
  have hrank : (⟨case_000970_rank.val, hlt⟩ : Fin numPairWords) = case_000970_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000970_rank.val, hlt⟩ case_000970_mask =
        case_000970_seq := by
    simpa [hrank] using case_000970_seqAtRank
  simp [SourceChecks, hseq, case_000970_support,
    checkTranslationConstraintSource, case_000970_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000970_rows :
    EqEqPosVarFirstRows case_000970_support case_000970_rank.val case_000970_mask := by
  intro hlt
  have hrank : (⟨case_000970_rank.val, hlt⟩ : Fin numPairWords) = case_000970_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000970_rank.val, hlt⟩ case_000970_mask =
        case_000970_seq := by
    simpa [hrank] using case_000970_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000970_rank.val, hlt⟩ case_000970_mask =
        case_000970_b := by
    simpa [hrank] using case_000970_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000970_support case_000970_rank.val hlt
          case_000970_mask = case_000970_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000970_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000970_support case_000970_rank.val hlt
          case_000970_mask = case_000970_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000970_secondLine_eq]
  have case_000970_rowFirst :
      EqEqPosRow (FirstLineAt case_000970_support case_000970_rank.val hlt case_000970_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000970_firstLine, EqEqPosRow]
  have case_000970_fixedSecond :
      FixedRow (SecondLineAt case_000970_support case_000970_rank.val hlt case_000970_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000970_secondLine, FixedRow]
  exact ⟨case_000970_rowFirst, case_000970_fixedSecond⟩

private theorem case_000970_existsRows :
    ExistsEqEqPosVarFirstRows case_000970_rank.val case_000970_mask :=
  ⟨case_000970_support, case_000970_sourceAgrees, case_000970_rows⟩

private theorem case_000970_covered :
    RowPropertyParametricCovered case_000970_rank.val case_000970_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000970_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000971_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000971_mask : SignMask := ⟨22, by decide⟩
private def case_000971_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000971_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000971_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000971_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_000971_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000971_secondLine : StrictLin2 := { a := (-3/26), b := (-3/26), c := (-5/13) }

private theorem case_000971_rankWord :
    rankPairWord? case_000971_word = some case_000971_rank := by
  decide

private theorem case_000971_unrank :
    unrankPairWord case_000971_rank = case_000971_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000971_word case_000971_rank).1
    case_000971_rankWord |>.symm

private theorem case_000971_seqChoice :
    translationChoiceSeq case_000971_word case_000971_mask = case_000971_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000971_seqAtRank :
    translationSeqAtRankMask case_000971_rank case_000971_mask = case_000971_seq := by
  rw [translationSeqAtRankMask, case_000971_unrank]
  exact case_000971_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000971_bAtRank :
    translationBAtRankMask case_000971_rank case_000971_mask = case_000971_b := by
  rw [translationBAtRankMask, case_000971_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000971_b, case_000971_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000971_firstLine_eq :
    case_000971_support.firstLine case_000971_seq case_000971_b = case_000971_firstLine := by
  norm_num [case_000971_firstLine, case_000971_support, case_000971_seq, case_000971_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000971_secondLine_eq :
    case_000971_support.secondLine case_000971_seq case_000971_b = case_000971_secondLine := by
  norm_num [case_000971_secondLine, case_000971_support, case_000971_seq, case_000971_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000971_sourceAgrees :
    SourceAgrees case_000971_support case_000971_rank.val case_000971_mask := by
  intro hlt
  have hrank : (⟨case_000971_rank.val, hlt⟩ : Fin numPairWords) = case_000971_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000971_rank.val, hlt⟩ case_000971_mask =
        case_000971_seq := by
    simpa [hrank] using case_000971_seqAtRank
  simp [SourceChecks, hseq, case_000971_support,
    checkTranslationConstraintSource, case_000971_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000971_rows :
    EqEqPosVarSecondRows case_000971_support case_000971_rank.val case_000971_mask := by
  intro hlt
  have hrank : (⟨case_000971_rank.val, hlt⟩ : Fin numPairWords) = case_000971_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000971_rank.val, hlt⟩ case_000971_mask =
        case_000971_seq := by
    simpa [hrank] using case_000971_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000971_rank.val, hlt⟩ case_000971_mask =
        case_000971_b := by
    simpa [hrank] using case_000971_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000971_support case_000971_rank.val hlt
          case_000971_mask = case_000971_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000971_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000971_support case_000971_rank.val hlt
          case_000971_mask = case_000971_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000971_secondLine_eq]
  have case_000971_fixedFirst :
      FixedRow (FirstLineAt case_000971_support case_000971_rank.val hlt case_000971_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000971_firstLine, FixedRow]
  have case_000971_rowSecond :
      EqEqPosRow (SecondLineAt case_000971_support case_000971_rank.val hlt case_000971_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000971_secondLine, EqEqPosRow]
  exact ⟨case_000971_fixedFirst, case_000971_rowSecond⟩

private theorem case_000971_existsRows :
    ExistsEqEqPosVarSecondRows case_000971_rank.val case_000971_mask :=
  ⟨case_000971_support, case_000971_sourceAgrees, case_000971_rows⟩

private theorem case_000971_covered :
    RowPropertyParametricCovered case_000971_rank.val case_000971_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000971_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000972_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000972_mask : SignMask := ⟨24, by decide⟩
private def case_000972_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000972_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000972_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000972_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000972_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000972_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000972_rankWord :
    rankPairWord? case_000972_word = some case_000972_rank := by
  decide

private theorem case_000972_unrank :
    unrankPairWord case_000972_rank = case_000972_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000972_word case_000972_rank).1
    case_000972_rankWord |>.symm

private theorem case_000972_seqChoice :
    translationChoiceSeq case_000972_word case_000972_mask = case_000972_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000972_seqAtRank :
    translationSeqAtRankMask case_000972_rank case_000972_mask = case_000972_seq := by
  rw [translationSeqAtRankMask, case_000972_unrank]
  exact case_000972_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000972_bAtRank :
    translationBAtRankMask case_000972_rank case_000972_mask = case_000972_b := by
  rw [translationBAtRankMask, case_000972_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000972_b, case_000972_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000972_firstLine_eq :
    case_000972_support.firstLine case_000972_seq case_000972_b = case_000972_firstLine := by
  norm_num [case_000972_firstLine, case_000972_support, case_000972_seq, case_000972_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000972_secondLine_eq :
    case_000972_support.secondLine case_000972_seq case_000972_b = case_000972_secondLine := by
  norm_num [case_000972_secondLine, case_000972_support, case_000972_seq, case_000972_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000972_sourceAgrees :
    SourceAgrees case_000972_support case_000972_rank.val case_000972_mask := by
  intro hlt
  have hrank : (⟨case_000972_rank.val, hlt⟩ : Fin numPairWords) = case_000972_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000972_rank.val, hlt⟩ case_000972_mask =
        case_000972_seq := by
    simpa [hrank] using case_000972_seqAtRank
  simp [SourceChecks, hseq, case_000972_support,
    checkTranslationConstraintSource, case_000972_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000972_rows :
    EqEqPosVarFirstRows case_000972_support case_000972_rank.val case_000972_mask := by
  intro hlt
  have hrank : (⟨case_000972_rank.val, hlt⟩ : Fin numPairWords) = case_000972_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000972_rank.val, hlt⟩ case_000972_mask =
        case_000972_seq := by
    simpa [hrank] using case_000972_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000972_rank.val, hlt⟩ case_000972_mask =
        case_000972_b := by
    simpa [hrank] using case_000972_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000972_support case_000972_rank.val hlt
          case_000972_mask = case_000972_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000972_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000972_support case_000972_rank.val hlt
          case_000972_mask = case_000972_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000972_secondLine_eq]
  have case_000972_rowFirst :
      EqEqPosRow (FirstLineAt case_000972_support case_000972_rank.val hlt case_000972_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000972_firstLine, EqEqPosRow]
  have case_000972_fixedSecond :
      FixedRow (SecondLineAt case_000972_support case_000972_rank.val hlt case_000972_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000972_secondLine, FixedRow]
  exact ⟨case_000972_rowFirst, case_000972_fixedSecond⟩

private theorem case_000972_existsRows :
    ExistsEqEqPosVarFirstRows case_000972_rank.val case_000972_mask :=
  ⟨case_000972_support, case_000972_sourceAgrees, case_000972_rows⟩

private theorem case_000972_covered :
    RowPropertyParametricCovered case_000972_rank.val case_000972_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000972_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000973_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000973_mask : SignMask := ⟨25, by decide⟩
private def case_000973_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000973_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000973_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000973_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-100/9) }
private def case_000973_firstLine : StrictLin2 := { a := (-25/51), b := (25/51), c := (-121/51) }
private def case_000973_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000973_rankWord :
    rankPairWord? case_000973_word = some case_000973_rank := by
  decide

private theorem case_000973_unrank :
    unrankPairWord case_000973_rank = case_000973_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000973_word case_000973_rank).1
    case_000973_rankWord |>.symm

private theorem case_000973_seqChoice :
    translationChoiceSeq case_000973_word case_000973_mask = case_000973_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000973_seqAtRank :
    translationSeqAtRankMask case_000973_rank case_000973_mask = case_000973_seq := by
  rw [translationSeqAtRankMask, case_000973_unrank]
  exact case_000973_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000973_bAtRank :
    translationBAtRankMask case_000973_rank case_000973_mask = case_000973_b := by
  rw [translationBAtRankMask, case_000973_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000973_b, case_000973_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000973_firstLine_eq :
    case_000973_support.firstLine case_000973_seq case_000973_b = case_000973_firstLine := by
  norm_num [case_000973_firstLine, case_000973_support, case_000973_seq, case_000973_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000973_secondLine_eq :
    case_000973_support.secondLine case_000973_seq case_000973_b = case_000973_secondLine := by
  norm_num [case_000973_secondLine, case_000973_support, case_000973_seq, case_000973_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000973_sourceAgrees :
    SourceAgrees case_000973_support case_000973_rank.val case_000973_mask := by
  intro hlt
  have hrank : (⟨case_000973_rank.val, hlt⟩ : Fin numPairWords) = case_000973_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000973_rank.val, hlt⟩ case_000973_mask =
        case_000973_seq := by
    simpa [hrank] using case_000973_seqAtRank
  simp [SourceChecks, hseq, case_000973_support,
    checkTranslationConstraintSource, case_000973_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000973_rows :
    OppOneMinusVarFirstRows case_000973_support case_000973_rank.val case_000973_mask := by
  intro hlt
  have hrank : (⟨case_000973_rank.val, hlt⟩ : Fin numPairWords) = case_000973_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000973_rank.val, hlt⟩ case_000973_mask =
        case_000973_seq := by
    simpa [hrank] using case_000973_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000973_rank.val, hlt⟩ case_000973_mask =
        case_000973_b := by
    simpa [hrank] using case_000973_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000973_support case_000973_rank.val hlt
          case_000973_mask = case_000973_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000973_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000973_support case_000973_rank.val hlt
          case_000973_mask = case_000973_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000973_secondLine_eq]
  have case_000973_rowFirst :
      OppPosRow (FirstLineAt case_000973_support case_000973_rank.val hlt case_000973_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000973_firstLine, OppPosRow]
  have case_000973_fixedSecond :
      FixedRow (SecondLineAt case_000973_support case_000973_rank.val hlt case_000973_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000973_secondLine, FixedRow]
  exact ⟨case_000973_rowFirst, case_000973_fixedSecond⟩

private theorem case_000973_existsRows :
    ExistsOppOneMinusVarFirstRows case_000973_rank.val case_000973_mask :=
  ⟨case_000973_support, case_000973_sourceAgrees, case_000973_rows⟩

private theorem case_000973_covered :
    RowPropertyParametricCovered case_000973_rank.val case_000973_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000973_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000974_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000974_mask : SignMask := ⟨29, by decide⟩
private def case_000974_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000974_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000974_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000974_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_000974_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000974_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000974_rankWord :
    rankPairWord? case_000974_word = some case_000974_rank := by
  decide

private theorem case_000974_unrank :
    unrankPairWord case_000974_rank = case_000974_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000974_word case_000974_rank).1
    case_000974_rankWord |>.symm

private theorem case_000974_seqChoice :
    translationChoiceSeq case_000974_word case_000974_mask = case_000974_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000974_seqAtRank :
    translationSeqAtRankMask case_000974_rank case_000974_mask = case_000974_seq := by
  rw [translationSeqAtRankMask, case_000974_unrank]
  exact case_000974_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000974_bAtRank :
    translationBAtRankMask case_000974_rank case_000974_mask = case_000974_b := by
  rw [translationBAtRankMask, case_000974_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000974_b, case_000974_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000974_firstLine_eq :
    case_000974_support.firstLine case_000974_seq case_000974_b = case_000974_firstLine := by
  norm_num [case_000974_firstLine, case_000974_support, case_000974_seq, case_000974_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000974_secondLine_eq :
    case_000974_support.secondLine case_000974_seq case_000974_b = case_000974_secondLine := by
  norm_num [case_000974_secondLine, case_000974_support, case_000974_seq, case_000974_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000974_sourceAgrees :
    SourceAgrees case_000974_support case_000974_rank.val case_000974_mask := by
  intro hlt
  have hrank : (⟨case_000974_rank.val, hlt⟩ : Fin numPairWords) = case_000974_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000974_rank.val, hlt⟩ case_000974_mask =
        case_000974_seq := by
    simpa [hrank] using case_000974_seqAtRank
  simp [SourceChecks, hseq, case_000974_support,
    checkTranslationConstraintSource, case_000974_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000974_rows :
    EqEqPosVarSecondRows case_000974_support case_000974_rank.val case_000974_mask := by
  intro hlt
  have hrank : (⟨case_000974_rank.val, hlt⟩ : Fin numPairWords) = case_000974_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000974_rank.val, hlt⟩ case_000974_mask =
        case_000974_seq := by
    simpa [hrank] using case_000974_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000974_rank.val, hlt⟩ case_000974_mask =
        case_000974_b := by
    simpa [hrank] using case_000974_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000974_support case_000974_rank.val hlt
          case_000974_mask = case_000974_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000974_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000974_support case_000974_rank.val hlt
          case_000974_mask = case_000974_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000974_secondLine_eq]
  have case_000974_fixedFirst :
      FixedRow (FirstLineAt case_000974_support case_000974_rank.val hlt case_000974_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000974_firstLine, FixedRow]
  have case_000974_rowSecond :
      EqEqPosRow (SecondLineAt case_000974_support case_000974_rank.val hlt case_000974_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000974_secondLine, EqEqPosRow]
  exact ⟨case_000974_fixedFirst, case_000974_rowSecond⟩

private theorem case_000974_existsRows :
    ExistsEqEqPosVarSecondRows case_000974_rank.val case_000974_mask :=
  ⟨case_000974_support, case_000974_sourceAgrees, case_000974_rows⟩

private theorem case_000974_covered :
    RowPropertyParametricCovered case_000974_rank.val case_000974_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000974_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000975_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000975_mask : SignMask := ⟨30, by decide⟩
private def case_000975_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000975_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000975_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000975_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_000975_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000975_secondLine : StrictLin2 := { a := (-1/6), b := (-1/6), c := (-5/9) }

private theorem case_000975_rankWord :
    rankPairWord? case_000975_word = some case_000975_rank := by
  decide

private theorem case_000975_unrank :
    unrankPairWord case_000975_rank = case_000975_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000975_word case_000975_rank).1
    case_000975_rankWord |>.symm

private theorem case_000975_seqChoice :
    translationChoiceSeq case_000975_word case_000975_mask = case_000975_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000975_seqAtRank :
    translationSeqAtRankMask case_000975_rank case_000975_mask = case_000975_seq := by
  rw [translationSeqAtRankMask, case_000975_unrank]
  exact case_000975_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000975_bAtRank :
    translationBAtRankMask case_000975_rank case_000975_mask = case_000975_b := by
  rw [translationBAtRankMask, case_000975_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000975_b, case_000975_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000975_firstLine_eq :
    case_000975_support.firstLine case_000975_seq case_000975_b = case_000975_firstLine := by
  norm_num [case_000975_firstLine, case_000975_support, case_000975_seq, case_000975_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000975_secondLine_eq :
    case_000975_support.secondLine case_000975_seq case_000975_b = case_000975_secondLine := by
  norm_num [case_000975_secondLine, case_000975_support, case_000975_seq, case_000975_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000975_sourceAgrees :
    SourceAgrees case_000975_support case_000975_rank.val case_000975_mask := by
  intro hlt
  have hrank : (⟨case_000975_rank.val, hlt⟩ : Fin numPairWords) = case_000975_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000975_rank.val, hlt⟩ case_000975_mask =
        case_000975_seq := by
    simpa [hrank] using case_000975_seqAtRank
  simp [SourceChecks, hseq, case_000975_support,
    checkTranslationConstraintSource, case_000975_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000975_rows :
    EqEqPosVarSecondRows case_000975_support case_000975_rank.val case_000975_mask := by
  intro hlt
  have hrank : (⟨case_000975_rank.val, hlt⟩ : Fin numPairWords) = case_000975_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000975_rank.val, hlt⟩ case_000975_mask =
        case_000975_seq := by
    simpa [hrank] using case_000975_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000975_rank.val, hlt⟩ case_000975_mask =
        case_000975_b := by
    simpa [hrank] using case_000975_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000975_support case_000975_rank.val hlt
          case_000975_mask = case_000975_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000975_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000975_support case_000975_rank.val hlt
          case_000975_mask = case_000975_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000975_secondLine_eq]
  have case_000975_fixedFirst :
      FixedRow (FirstLineAt case_000975_support case_000975_rank.val hlt case_000975_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000975_firstLine, FixedRow]
  have case_000975_rowSecond :
      EqEqPosRow (SecondLineAt case_000975_support case_000975_rank.val hlt case_000975_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000975_secondLine, EqEqPosRow]
  exact ⟨case_000975_fixedFirst, case_000975_rowSecond⟩

private theorem case_000975_existsRows :
    ExistsEqEqPosVarSecondRows case_000975_rank.val case_000975_mask :=
  ⟨case_000975_support, case_000975_sourceAgrees, case_000975_rows⟩

private theorem case_000975_covered :
    RowPropertyParametricCovered case_000975_rank.val case_000975_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000975_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000976_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000976_mask : SignMask := ⟨41, by decide⟩
private def case_000976_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000976_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000976_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000976_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-100/9) }
private def case_000976_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000976_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_000976_rankWord :
    rankPairWord? case_000976_word = some case_000976_rank := by
  decide

private theorem case_000976_unrank :
    unrankPairWord case_000976_rank = case_000976_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000976_word case_000976_rank).1
    case_000976_rankWord |>.symm

private theorem case_000976_seqChoice :
    translationChoiceSeq case_000976_word case_000976_mask = case_000976_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000976_seqAtRank :
    translationSeqAtRankMask case_000976_rank case_000976_mask = case_000976_seq := by
  rw [translationSeqAtRankMask, case_000976_unrank]
  exact case_000976_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000976_bAtRank :
    translationBAtRankMask case_000976_rank case_000976_mask = case_000976_b := by
  rw [translationBAtRankMask, case_000976_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000976_b, case_000976_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000976_firstLine_eq :
    case_000976_support.firstLine case_000976_seq case_000976_b = case_000976_firstLine := by
  norm_num [case_000976_firstLine, case_000976_support, case_000976_seq, case_000976_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000976_secondLine_eq :
    case_000976_support.secondLine case_000976_seq case_000976_b = case_000976_secondLine := by
  norm_num [case_000976_secondLine, case_000976_support, case_000976_seq, case_000976_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000976_sourceAgrees :
    SourceAgrees case_000976_support case_000976_rank.val case_000976_mask := by
  intro hlt
  have hrank : (⟨case_000976_rank.val, hlt⟩ : Fin numPairWords) = case_000976_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000976_rank.val, hlt⟩ case_000976_mask =
        case_000976_seq := by
    simpa [hrank] using case_000976_seqAtRank
  simp [SourceChecks, hseq, case_000976_support,
    checkTranslationConstraintSource, case_000976_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000976_rows :
    EqEqPosVarSecondRows case_000976_support case_000976_rank.val case_000976_mask := by
  intro hlt
  have hrank : (⟨case_000976_rank.val, hlt⟩ : Fin numPairWords) = case_000976_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000976_rank.val, hlt⟩ case_000976_mask =
        case_000976_seq := by
    simpa [hrank] using case_000976_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000976_rank.val, hlt⟩ case_000976_mask =
        case_000976_b := by
    simpa [hrank] using case_000976_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000976_support case_000976_rank.val hlt
          case_000976_mask = case_000976_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000976_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000976_support case_000976_rank.val hlt
          case_000976_mask = case_000976_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000976_secondLine_eq]
  have case_000976_fixedFirst :
      FixedRow (FirstLineAt case_000976_support case_000976_rank.val hlt case_000976_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000976_firstLine, FixedRow]
  have case_000976_rowSecond :
      EqEqPosRow (SecondLineAt case_000976_support case_000976_rank.val hlt case_000976_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000976_secondLine, EqEqPosRow]
  exact ⟨case_000976_fixedFirst, case_000976_rowSecond⟩

private theorem case_000976_existsRows :
    ExistsEqEqPosVarSecondRows case_000976_rank.val case_000976_mask :=
  ⟨case_000976_support, case_000976_sourceAgrees, case_000976_rows⟩

private theorem case_000976_covered :
    RowPropertyParametricCovered case_000976_rank.val case_000976_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000976_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000977_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000977_mask : SignMask := ⟨45, by decide⟩
private def case_000977_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000977_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000977_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000977_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000977_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000977_secondLine : StrictLin2 := { a := (-5/26), b := (5/26), c := (-12/13) }

private theorem case_000977_rankWord :
    rankPairWord? case_000977_word = some case_000977_rank := by
  decide

private theorem case_000977_unrank :
    unrankPairWord case_000977_rank = case_000977_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000977_word case_000977_rank).1
    case_000977_rankWord |>.symm

private theorem case_000977_seqChoice :
    translationChoiceSeq case_000977_word case_000977_mask = case_000977_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000977_seqAtRank :
    translationSeqAtRankMask case_000977_rank case_000977_mask = case_000977_seq := by
  rw [translationSeqAtRankMask, case_000977_unrank]
  exact case_000977_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000977_bAtRank :
    translationBAtRankMask case_000977_rank case_000977_mask = case_000977_b := by
  rw [translationBAtRankMask, case_000977_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000977_b, case_000977_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000977_firstLine_eq :
    case_000977_support.firstLine case_000977_seq case_000977_b = case_000977_firstLine := by
  norm_num [case_000977_firstLine, case_000977_support, case_000977_seq, case_000977_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000977_secondLine_eq :
    case_000977_support.secondLine case_000977_seq case_000977_b = case_000977_secondLine := by
  norm_num [case_000977_secondLine, case_000977_support, case_000977_seq, case_000977_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000977_sourceAgrees :
    SourceAgrees case_000977_support case_000977_rank.val case_000977_mask := by
  intro hlt
  have hrank : (⟨case_000977_rank.val, hlt⟩ : Fin numPairWords) = case_000977_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000977_rank.val, hlt⟩ case_000977_mask =
        case_000977_seq := by
    simpa [hrank] using case_000977_seqAtRank
  simp [SourceChecks, hseq, case_000977_support,
    checkTranslationConstraintSource, case_000977_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000977_rows :
    OppOneMinusVarSecondRows case_000977_support case_000977_rank.val case_000977_mask := by
  intro hlt
  have hrank : (⟨case_000977_rank.val, hlt⟩ : Fin numPairWords) = case_000977_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000977_rank.val, hlt⟩ case_000977_mask =
        case_000977_seq := by
    simpa [hrank] using case_000977_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000977_rank.val, hlt⟩ case_000977_mask =
        case_000977_b := by
    simpa [hrank] using case_000977_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000977_support case_000977_rank.val hlt
          case_000977_mask = case_000977_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000977_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000977_support case_000977_rank.val hlt
          case_000977_mask = case_000977_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000977_secondLine_eq]
  have case_000977_fixedFirst :
      FixedRow (FirstLineAt case_000977_support case_000977_rank.val hlt case_000977_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000977_firstLine, FixedRow]
  have case_000977_rowSecond :
      OppPosRow (SecondLineAt case_000977_support case_000977_rank.val hlt case_000977_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000977_secondLine, OppPosRow]
  exact ⟨case_000977_fixedFirst, case_000977_rowSecond⟩

private theorem case_000977_existsRows :
    ExistsOppOneMinusVarSecondRows case_000977_rank.val case_000977_mask :=
  ⟨case_000977_support, case_000977_sourceAgrees, case_000977_rows⟩

private theorem case_000977_covered :
    RowPropertyParametricCovered case_000977_rank.val case_000977_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000977_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000978_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000978_mask : SignMask := ⟨55, by decide⟩
private def case_000978_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000978_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000978_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000978_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000978_firstLine : StrictLin2 := { a := -1, b := 1, c := (-19/13) }
private def case_000978_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000978_rankWord :
    rankPairWord? case_000978_word = some case_000978_rank := by
  decide

private theorem case_000978_unrank :
    unrankPairWord case_000978_rank = case_000978_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000978_word case_000978_rank).1
    case_000978_rankWord |>.symm

private theorem case_000978_seqChoice :
    translationChoiceSeq case_000978_word case_000978_mask = case_000978_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000978_seqAtRank :
    translationSeqAtRankMask case_000978_rank case_000978_mask = case_000978_seq := by
  rw [translationSeqAtRankMask, case_000978_unrank]
  exact case_000978_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000978_bAtRank :
    translationBAtRankMask case_000978_rank case_000978_mask = case_000978_b := by
  rw [translationBAtRankMask, case_000978_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000978_b, case_000978_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000978_firstLine_eq :
    case_000978_support.firstLine case_000978_seq case_000978_b = case_000978_firstLine := by
  norm_num [case_000978_firstLine, case_000978_support, case_000978_seq, case_000978_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000978_secondLine_eq :
    case_000978_support.secondLine case_000978_seq case_000978_b = case_000978_secondLine := by
  norm_num [case_000978_secondLine, case_000978_support, case_000978_seq, case_000978_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000978_sourceAgrees :
    SourceAgrees case_000978_support case_000978_rank.val case_000978_mask := by
  intro hlt
  have hrank : (⟨case_000978_rank.val, hlt⟩ : Fin numPairWords) = case_000978_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000978_rank.val, hlt⟩ case_000978_mask =
        case_000978_seq := by
    simpa [hrank] using case_000978_seqAtRank
  simp [SourceChecks, hseq, case_000978_support,
    checkTranslationConstraintSource, case_000978_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000978_rows :
    OppOneMinusVarFirstRows case_000978_support case_000978_rank.val case_000978_mask := by
  intro hlt
  have hrank : (⟨case_000978_rank.val, hlt⟩ : Fin numPairWords) = case_000978_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000978_rank.val, hlt⟩ case_000978_mask =
        case_000978_seq := by
    simpa [hrank] using case_000978_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000978_rank.val, hlt⟩ case_000978_mask =
        case_000978_b := by
    simpa [hrank] using case_000978_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000978_support case_000978_rank.val hlt
          case_000978_mask = case_000978_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000978_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000978_support case_000978_rank.val hlt
          case_000978_mask = case_000978_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000978_secondLine_eq]
  have case_000978_rowFirst :
      OppPosRow (FirstLineAt case_000978_support case_000978_rank.val hlt case_000978_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000978_firstLine, OppPosRow]
  have case_000978_fixedSecond :
      FixedRow (SecondLineAt case_000978_support case_000978_rank.val hlt case_000978_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000978_secondLine, FixedRow]
  exact ⟨case_000978_rowFirst, case_000978_fixedSecond⟩

private theorem case_000978_existsRows :
    ExistsOppOneMinusVarFirstRows case_000978_rank.val case_000978_mask :=
  ⟨case_000978_support, case_000978_sourceAgrees, case_000978_rows⟩

private theorem case_000978_covered :
    RowPropertyParametricCovered case_000978_rank.val case_000978_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000978_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000979_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000979_mask : SignMask := ⟨57, by decide⟩
private def case_000979_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000979_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000979_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000979_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000979_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000979_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000979_rankWord :
    rankPairWord? case_000979_word = some case_000979_rank := by
  decide

private theorem case_000979_unrank :
    unrankPairWord case_000979_rank = case_000979_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000979_word case_000979_rank).1
    case_000979_rankWord |>.symm

private theorem case_000979_seqChoice :
    translationChoiceSeq case_000979_word case_000979_mask = case_000979_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000979_seqAtRank :
    translationSeqAtRankMask case_000979_rank case_000979_mask = case_000979_seq := by
  rw [translationSeqAtRankMask, case_000979_unrank]
  exact case_000979_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000979_bAtRank :
    translationBAtRankMask case_000979_rank case_000979_mask = case_000979_b := by
  rw [translationBAtRankMask, case_000979_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000979_b, case_000979_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000979_firstLine_eq :
    case_000979_support.firstLine case_000979_seq case_000979_b = case_000979_firstLine := by
  norm_num [case_000979_firstLine, case_000979_support, case_000979_seq, case_000979_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000979_secondLine_eq :
    case_000979_support.secondLine case_000979_seq case_000979_b = case_000979_secondLine := by
  norm_num [case_000979_secondLine, case_000979_support, case_000979_seq, case_000979_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000979_sourceAgrees :
    SourceAgrees case_000979_support case_000979_rank.val case_000979_mask := by
  intro hlt
  have hrank : (⟨case_000979_rank.val, hlt⟩ : Fin numPairWords) = case_000979_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000979_rank.val, hlt⟩ case_000979_mask =
        case_000979_seq := by
    simpa [hrank] using case_000979_seqAtRank
  simp [SourceChecks, hseq, case_000979_support,
    checkTranslationConstraintSource, case_000979_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000979_rows :
    EqEqPosVarSecondRows case_000979_support case_000979_rank.val case_000979_mask := by
  intro hlt
  have hrank : (⟨case_000979_rank.val, hlt⟩ : Fin numPairWords) = case_000979_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000979_rank.val, hlt⟩ case_000979_mask =
        case_000979_seq := by
    simpa [hrank] using case_000979_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000979_rank.val, hlt⟩ case_000979_mask =
        case_000979_b := by
    simpa [hrank] using case_000979_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000979_support case_000979_rank.val hlt
          case_000979_mask = case_000979_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000979_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000979_support case_000979_rank.val hlt
          case_000979_mask = case_000979_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000979_secondLine_eq]
  have case_000979_fixedFirst :
      FixedRow (FirstLineAt case_000979_support case_000979_rank.val hlt case_000979_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000979_firstLine, FixedRow]
  have case_000979_rowSecond :
      EqEqPosRow (SecondLineAt case_000979_support case_000979_rank.val hlt case_000979_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000979_secondLine, EqEqPosRow]
  exact ⟨case_000979_fixedFirst, case_000979_rowSecond⟩

private theorem case_000979_existsRows :
    ExistsEqEqPosVarSecondRows case_000979_rank.val case_000979_mask :=
  ⟨case_000979_support, case_000979_sourceAgrees, case_000979_rows⟩

private theorem case_000979_covered :
    RowPropertyParametricCovered case_000979_rank.val case_000979_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000979_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000980_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000980_mask : SignMask := ⟨61, by decide⟩
private def case_000980_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000980_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000980_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000980_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-4/9) }
private def case_000980_firstLine : StrictLin2 := { a := (-25/51), b := (25/51), c := (-121/51) }
private def case_000980_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000980_rankWord :
    rankPairWord? case_000980_word = some case_000980_rank := by
  decide

private theorem case_000980_unrank :
    unrankPairWord case_000980_rank = case_000980_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000980_word case_000980_rank).1
    case_000980_rankWord |>.symm

private theorem case_000980_seqChoice :
    translationChoiceSeq case_000980_word case_000980_mask = case_000980_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000980_seqAtRank :
    translationSeqAtRankMask case_000980_rank case_000980_mask = case_000980_seq := by
  rw [translationSeqAtRankMask, case_000980_unrank]
  exact case_000980_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000980_bAtRank :
    translationBAtRankMask case_000980_rank case_000980_mask = case_000980_b := by
  rw [translationBAtRankMask, case_000980_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000980_b, case_000980_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000980_firstLine_eq :
    case_000980_support.firstLine case_000980_seq case_000980_b = case_000980_firstLine := by
  norm_num [case_000980_firstLine, case_000980_support, case_000980_seq, case_000980_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000980_secondLine_eq :
    case_000980_support.secondLine case_000980_seq case_000980_b = case_000980_secondLine := by
  norm_num [case_000980_secondLine, case_000980_support, case_000980_seq, case_000980_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000980_sourceAgrees :
    SourceAgrees case_000980_support case_000980_rank.val case_000980_mask := by
  intro hlt
  have hrank : (⟨case_000980_rank.val, hlt⟩ : Fin numPairWords) = case_000980_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000980_rank.val, hlt⟩ case_000980_mask =
        case_000980_seq := by
    simpa [hrank] using case_000980_seqAtRank
  simp [SourceChecks, hseq, case_000980_support,
    checkTranslationConstraintSource, case_000980_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000980_rows :
    OppOneMinusVarFirstRows case_000980_support case_000980_rank.val case_000980_mask := by
  intro hlt
  have hrank : (⟨case_000980_rank.val, hlt⟩ : Fin numPairWords) = case_000980_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000980_rank.val, hlt⟩ case_000980_mask =
        case_000980_seq := by
    simpa [hrank] using case_000980_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000980_rank.val, hlt⟩ case_000980_mask =
        case_000980_b := by
    simpa [hrank] using case_000980_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000980_support case_000980_rank.val hlt
          case_000980_mask = case_000980_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000980_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000980_support case_000980_rank.val hlt
          case_000980_mask = case_000980_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000980_secondLine_eq]
  have case_000980_rowFirst :
      OppPosRow (FirstLineAt case_000980_support case_000980_rank.val hlt case_000980_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000980_firstLine, OppPosRow]
  have case_000980_fixedSecond :
      FixedRow (SecondLineAt case_000980_support case_000980_rank.val hlt case_000980_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000980_secondLine, FixedRow]
  exact ⟨case_000980_rowFirst, case_000980_fixedSecond⟩

private theorem case_000980_existsRows :
    ExistsOppOneMinusVarFirstRows case_000980_rank.val case_000980_mask :=
  ⟨case_000980_support, case_000980_sourceAgrees, case_000980_rows⟩

private theorem case_000980_covered :
    RowPropertyParametricCovered case_000980_rank.val case_000980_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000980_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000981_rank : Fin numPairWords := ⟨659, by decide⟩
private def case_000981_mask : SignMask := ⟨63, by decide⟩
private def case_000981_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000981_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000981_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000981_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000981_firstLine : StrictLin2 := { a := 1, b := 1, c := (-59/25) }
private def case_000981_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000981_rankWord :
    rankPairWord? case_000981_word = some case_000981_rank := by
  decide

private theorem case_000981_unrank :
    unrankPairWord case_000981_rank = case_000981_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000981_word case_000981_rank).1
    case_000981_rankWord |>.symm

private theorem case_000981_seqChoice :
    translationChoiceSeq case_000981_word case_000981_mask = case_000981_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000981_seqAtRank :
    translationSeqAtRankMask case_000981_rank case_000981_mask = case_000981_seq := by
  rw [translationSeqAtRankMask, case_000981_unrank]
  exact case_000981_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000981_bAtRank :
    translationBAtRankMask case_000981_rank case_000981_mask = case_000981_b := by
  rw [translationBAtRankMask, case_000981_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000981_b, case_000981_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000981_firstLine_eq :
    case_000981_support.firstLine case_000981_seq case_000981_b = case_000981_firstLine := by
  norm_num [case_000981_firstLine, case_000981_support, case_000981_seq, case_000981_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000981_secondLine_eq :
    case_000981_support.secondLine case_000981_seq case_000981_b = case_000981_secondLine := by
  norm_num [case_000981_secondLine, case_000981_support, case_000981_seq, case_000981_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000981_sourceAgrees :
    SourceAgrees case_000981_support case_000981_rank.val case_000981_mask := by
  intro hlt
  have hrank : (⟨case_000981_rank.val, hlt⟩ : Fin numPairWords) = case_000981_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000981_rank.val, hlt⟩ case_000981_mask =
        case_000981_seq := by
    simpa [hrank] using case_000981_seqAtRank
  simp [SourceChecks, hseq, case_000981_support,
    checkTranslationConstraintSource, case_000981_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000981_rows :
    EqEqNegVarFirstRows case_000981_support case_000981_rank.val case_000981_mask := by
  intro hlt
  have hrank : (⟨case_000981_rank.val, hlt⟩ : Fin numPairWords) = case_000981_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000981_rank.val, hlt⟩ case_000981_mask =
        case_000981_seq := by
    simpa [hrank] using case_000981_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000981_rank.val, hlt⟩ case_000981_mask =
        case_000981_b := by
    simpa [hrank] using case_000981_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000981_support case_000981_rank.val hlt
          case_000981_mask = case_000981_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000981_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000981_support case_000981_rank.val hlt
          case_000981_mask = case_000981_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000981_secondLine_eq]
  have case_000981_rowFirst :
      EqEqNegRow (FirstLineAt case_000981_support case_000981_rank.val hlt case_000981_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000981_firstLine, EqEqNegRow]
  have case_000981_fixedSecond :
      FixedRow (SecondLineAt case_000981_support case_000981_rank.val hlt case_000981_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000981_secondLine, FixedRow]
  exact ⟨case_000981_rowFirst, case_000981_fixedSecond⟩

private theorem case_000981_existsRows :
    ExistsEqEqNegVarFirstRows case_000981_rank.val case_000981_mask :=
  ⟨case_000981_support, case_000981_sourceAgrees, case_000981_rows⟩

private theorem case_000981_covered :
    RowPropertyParametricCovered case_000981_rank.val case_000981_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000981_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000982_rank : Fin numPairWords := ⟨714, by decide⟩
private def case_000982_mask : SignMask := ⟨22, by decide⟩
private def case_000982_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000982_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000982_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000982_b : Vec3 Rat := { x := (-236/27), y := (-268/27), z := (172/27) }
private def case_000982_firstLine : StrictLin2 := { a := (-118/83), b := (-118/83), c := (-652/249) }
private def case_000982_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000982_rankWord :
    rankPairWord? case_000982_word = some case_000982_rank := by
  decide

private theorem case_000982_unrank :
    unrankPairWord case_000982_rank = case_000982_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000982_word case_000982_rank).1
    case_000982_rankWord |>.symm

private theorem case_000982_seqChoice :
    translationChoiceSeq case_000982_word case_000982_mask = case_000982_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000982_seqAtRank :
    translationSeqAtRankMask case_000982_rank case_000982_mask = case_000982_seq := by
  rw [translationSeqAtRankMask, case_000982_unrank]
  exact case_000982_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000982_bAtRank :
    translationBAtRankMask case_000982_rank case_000982_mask = case_000982_b := by
  rw [translationBAtRankMask, case_000982_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000982_b, case_000982_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000982_firstLine_eq :
    case_000982_support.firstLine case_000982_seq case_000982_b = case_000982_firstLine := by
  norm_num [case_000982_firstLine, case_000982_support, case_000982_seq, case_000982_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000982_secondLine_eq :
    case_000982_support.secondLine case_000982_seq case_000982_b = case_000982_secondLine := by
  norm_num [case_000982_secondLine, case_000982_support, case_000982_seq, case_000982_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000982_sourceAgrees :
    SourceAgrees case_000982_support case_000982_rank.val case_000982_mask := by
  intro hlt
  have hrank : (⟨case_000982_rank.val, hlt⟩ : Fin numPairWords) = case_000982_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000982_rank.val, hlt⟩ case_000982_mask =
        case_000982_seq := by
    simpa [hrank] using case_000982_seqAtRank
  simp [SourceChecks, hseq, case_000982_support,
    checkTranslationConstraintSource, case_000982_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000982_rows :
    EqEqPosVarFirstRows case_000982_support case_000982_rank.val case_000982_mask := by
  intro hlt
  have hrank : (⟨case_000982_rank.val, hlt⟩ : Fin numPairWords) = case_000982_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000982_rank.val, hlt⟩ case_000982_mask =
        case_000982_seq := by
    simpa [hrank] using case_000982_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000982_rank.val, hlt⟩ case_000982_mask =
        case_000982_b := by
    simpa [hrank] using case_000982_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000982_support case_000982_rank.val hlt
          case_000982_mask = case_000982_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000982_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000982_support case_000982_rank.val hlt
          case_000982_mask = case_000982_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000982_secondLine_eq]
  have case_000982_rowFirst :
      EqEqPosRow (FirstLineAt case_000982_support case_000982_rank.val hlt case_000982_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000982_firstLine, EqEqPosRow]
  have case_000982_fixedSecond :
      FixedRow (SecondLineAt case_000982_support case_000982_rank.val hlt case_000982_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000982_secondLine, FixedRow]
  exact ⟨case_000982_rowFirst, case_000982_fixedSecond⟩

private theorem case_000982_existsRows :
    ExistsEqEqPosVarFirstRows case_000982_rank.val case_000982_mask :=
  ⟨case_000982_support, case_000982_sourceAgrees, case_000982_rows⟩

private theorem case_000982_covered :
    RowPropertyParametricCovered case_000982_rank.val case_000982_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000982_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000983_rank : Fin numPairWords := ⟨714, by decide⟩
private def case_000983_mask : SignMask := ⟨24, by decide⟩
private def case_000983_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000983_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000983_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000983_b : Vec3 Rat := { x := (-332/27), y := (-172/27), z := (-428/27) }
private def case_000983_firstLine : StrictLin2 := { a := -1, b := -1, c := (-217/83) }
private def case_000983_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000983_rankWord :
    rankPairWord? case_000983_word = some case_000983_rank := by
  decide

private theorem case_000983_unrank :
    unrankPairWord case_000983_rank = case_000983_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000983_word case_000983_rank).1
    case_000983_rankWord |>.symm

private theorem case_000983_seqChoice :
    translationChoiceSeq case_000983_word case_000983_mask = case_000983_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000983_seqAtRank :
    translationSeqAtRankMask case_000983_rank case_000983_mask = case_000983_seq := by
  rw [translationSeqAtRankMask, case_000983_unrank]
  exact case_000983_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000983_bAtRank :
    translationBAtRankMask case_000983_rank case_000983_mask = case_000983_b := by
  rw [translationBAtRankMask, case_000983_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000983_b, case_000983_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000983_firstLine_eq :
    case_000983_support.firstLine case_000983_seq case_000983_b = case_000983_firstLine := by
  norm_num [case_000983_firstLine, case_000983_support, case_000983_seq, case_000983_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000983_secondLine_eq :
    case_000983_support.secondLine case_000983_seq case_000983_b = case_000983_secondLine := by
  norm_num [case_000983_secondLine, case_000983_support, case_000983_seq, case_000983_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000983_sourceAgrees :
    SourceAgrees case_000983_support case_000983_rank.val case_000983_mask := by
  intro hlt
  have hrank : (⟨case_000983_rank.val, hlt⟩ : Fin numPairWords) = case_000983_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000983_rank.val, hlt⟩ case_000983_mask =
        case_000983_seq := by
    simpa [hrank] using case_000983_seqAtRank
  simp [SourceChecks, hseq, case_000983_support,
    checkTranslationConstraintSource, case_000983_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000983_rows :
    EqEqPosVarFirstRows case_000983_support case_000983_rank.val case_000983_mask := by
  intro hlt
  have hrank : (⟨case_000983_rank.val, hlt⟩ : Fin numPairWords) = case_000983_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000983_rank.val, hlt⟩ case_000983_mask =
        case_000983_seq := by
    simpa [hrank] using case_000983_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000983_rank.val, hlt⟩ case_000983_mask =
        case_000983_b := by
    simpa [hrank] using case_000983_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000983_support case_000983_rank.val hlt
          case_000983_mask = case_000983_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000983_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000983_support case_000983_rank.val hlt
          case_000983_mask = case_000983_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000983_secondLine_eq]
  have case_000983_rowFirst :
      EqEqPosRow (FirstLineAt case_000983_support case_000983_rank.val hlt case_000983_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000983_firstLine, EqEqPosRow]
  have case_000983_fixedSecond :
      FixedRow (SecondLineAt case_000983_support case_000983_rank.val hlt case_000983_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000983_secondLine, FixedRow]
  exact ⟨case_000983_rowFirst, case_000983_fixedSecond⟩

private theorem case_000983_existsRows :
    ExistsEqEqPosVarFirstRows case_000983_rank.val case_000983_mask :=
  ⟨case_000983_support, case_000983_sourceAgrees, case_000983_rows⟩

private theorem case_000983_covered :
    RowPropertyParametricCovered case_000983_rank.val case_000983_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000983_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000984_rank : Fin numPairWords := ⟨714, by decide⟩
private def case_000984_mask : SignMask := ⟨25, by decide⟩
private def case_000984_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000984_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000984_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000984_b : Vec3 Rat := { x := (-332/27), y := (44/27), z := (-428/27) }
private def case_000984_firstLine : StrictLin2 := { a := -1, b := -1, c := (-109/83) }
private def case_000984_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000984_rankWord :
    rankPairWord? case_000984_word = some case_000984_rank := by
  decide

private theorem case_000984_unrank :
    unrankPairWord case_000984_rank = case_000984_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000984_word case_000984_rank).1
    case_000984_rankWord |>.symm

private theorem case_000984_seqChoice :
    translationChoiceSeq case_000984_word case_000984_mask = case_000984_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000984_seqAtRank :
    translationSeqAtRankMask case_000984_rank case_000984_mask = case_000984_seq := by
  rw [translationSeqAtRankMask, case_000984_unrank]
  exact case_000984_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000984_bAtRank :
    translationBAtRankMask case_000984_rank case_000984_mask = case_000984_b := by
  rw [translationBAtRankMask, case_000984_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000984_b, case_000984_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000984_firstLine_eq :
    case_000984_support.firstLine case_000984_seq case_000984_b = case_000984_firstLine := by
  norm_num [case_000984_firstLine, case_000984_support, case_000984_seq, case_000984_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000984_secondLine_eq :
    case_000984_support.secondLine case_000984_seq case_000984_b = case_000984_secondLine := by
  norm_num [case_000984_secondLine, case_000984_support, case_000984_seq, case_000984_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000984_sourceAgrees :
    SourceAgrees case_000984_support case_000984_rank.val case_000984_mask := by
  intro hlt
  have hrank : (⟨case_000984_rank.val, hlt⟩ : Fin numPairWords) = case_000984_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000984_rank.val, hlt⟩ case_000984_mask =
        case_000984_seq := by
    simpa [hrank] using case_000984_seqAtRank
  simp [SourceChecks, hseq, case_000984_support,
    checkTranslationConstraintSource, case_000984_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000984_rows :
    EqEqPosVarFirstRows case_000984_support case_000984_rank.val case_000984_mask := by
  intro hlt
  have hrank : (⟨case_000984_rank.val, hlt⟩ : Fin numPairWords) = case_000984_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000984_rank.val, hlt⟩ case_000984_mask =
        case_000984_seq := by
    simpa [hrank] using case_000984_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000984_rank.val, hlt⟩ case_000984_mask =
        case_000984_b := by
    simpa [hrank] using case_000984_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000984_support case_000984_rank.val hlt
          case_000984_mask = case_000984_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000984_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000984_support case_000984_rank.val hlt
          case_000984_mask = case_000984_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000984_secondLine_eq]
  have case_000984_rowFirst :
      EqEqPosRow (FirstLineAt case_000984_support case_000984_rank.val hlt case_000984_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000984_firstLine, EqEqPosRow]
  have case_000984_fixedSecond :
      FixedRow (SecondLineAt case_000984_support case_000984_rank.val hlt case_000984_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000984_secondLine, FixedRow]
  exact ⟨case_000984_rowFirst, case_000984_fixedSecond⟩

private theorem case_000984_existsRows :
    ExistsEqEqPosVarFirstRows case_000984_rank.val case_000984_mask :=
  ⟨case_000984_support, case_000984_sourceAgrees, case_000984_rows⟩

private theorem case_000984_covered :
    RowPropertyParametricCovered case_000984_rank.val case_000984_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000984_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000985_rank : Fin numPairWords := ⟨714, by decide⟩
private def case_000985_mask : SignMask := ⟨30, by decide⟩
private def case_000985_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000985_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000985_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000985_b : Vec3 Rat := { x := (-380/27), y := (-124/27), z := (28/27) }
private def case_000985_firstLine : StrictLin2 := { a := (-95/119), b := (-95/119), c := (-47/51) }
private def case_000985_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000985_rankWord :
    rankPairWord? case_000985_word = some case_000985_rank := by
  decide

private theorem case_000985_unrank :
    unrankPairWord case_000985_rank = case_000985_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000985_word case_000985_rank).1
    case_000985_rankWord |>.symm

private theorem case_000985_seqChoice :
    translationChoiceSeq case_000985_word case_000985_mask = case_000985_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000985_seqAtRank :
    translationSeqAtRankMask case_000985_rank case_000985_mask = case_000985_seq := by
  rw [translationSeqAtRankMask, case_000985_unrank]
  exact case_000985_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000985_bAtRank :
    translationBAtRankMask case_000985_rank case_000985_mask = case_000985_b := by
  rw [translationBAtRankMask, case_000985_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000985_b, case_000985_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000985_firstLine_eq :
    case_000985_support.firstLine case_000985_seq case_000985_b = case_000985_firstLine := by
  norm_num [case_000985_firstLine, case_000985_support, case_000985_seq, case_000985_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000985_secondLine_eq :
    case_000985_support.secondLine case_000985_seq case_000985_b = case_000985_secondLine := by
  norm_num [case_000985_secondLine, case_000985_support, case_000985_seq, case_000985_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000985_sourceAgrees :
    SourceAgrees case_000985_support case_000985_rank.val case_000985_mask := by
  intro hlt
  have hrank : (⟨case_000985_rank.val, hlt⟩ : Fin numPairWords) = case_000985_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000985_rank.val, hlt⟩ case_000985_mask =
        case_000985_seq := by
    simpa [hrank] using case_000985_seqAtRank
  simp [SourceChecks, hseq, case_000985_support,
    checkTranslationConstraintSource, case_000985_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000985_rows :
    EqEqPosVarFirstRows case_000985_support case_000985_rank.val case_000985_mask := by
  intro hlt
  have hrank : (⟨case_000985_rank.val, hlt⟩ : Fin numPairWords) = case_000985_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000985_rank.val, hlt⟩ case_000985_mask =
        case_000985_seq := by
    simpa [hrank] using case_000985_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000985_rank.val, hlt⟩ case_000985_mask =
        case_000985_b := by
    simpa [hrank] using case_000985_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000985_support case_000985_rank.val hlt
          case_000985_mask = case_000985_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000985_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000985_support case_000985_rank.val hlt
          case_000985_mask = case_000985_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000985_secondLine_eq]
  have case_000985_rowFirst :
      EqEqPosRow (FirstLineAt case_000985_support case_000985_rank.val hlt case_000985_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000985_firstLine, EqEqPosRow]
  have case_000985_fixedSecond :
      FixedRow (SecondLineAt case_000985_support case_000985_rank.val hlt case_000985_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000985_secondLine, FixedRow]
  exact ⟨case_000985_rowFirst, case_000985_fixedSecond⟩

private theorem case_000985_existsRows :
    ExistsEqEqPosVarFirstRows case_000985_rank.val case_000985_mask :=
  ⟨case_000985_support, case_000985_sourceAgrees, case_000985_rows⟩

private theorem case_000985_covered :
    RowPropertyParametricCovered case_000985_rank.val case_000985_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000985_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000986_rank : Fin numPairWords := ⟨714, by decide⟩
private def case_000986_mask : SignMask := ⟨31, by decide⟩
private def case_000986_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000986_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000986_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000986_b : Vec3 Rat := { x := (-380/27), y := (92/27), z := (28/27) }
private def case_000986_firstLine : StrictLin2 := { a := (-19/13), b := (-19/13), c := (-217/39) }
private def case_000986_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000986_rankWord :
    rankPairWord? case_000986_word = some case_000986_rank := by
  decide

private theorem case_000986_unrank :
    unrankPairWord case_000986_rank = case_000986_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000986_word case_000986_rank).1
    case_000986_rankWord |>.symm

private theorem case_000986_seqChoice :
    translationChoiceSeq case_000986_word case_000986_mask = case_000986_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000986_seqAtRank :
    translationSeqAtRankMask case_000986_rank case_000986_mask = case_000986_seq := by
  rw [translationSeqAtRankMask, case_000986_unrank]
  exact case_000986_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000986_bAtRank :
    translationBAtRankMask case_000986_rank case_000986_mask = case_000986_b := by
  rw [translationBAtRankMask, case_000986_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000986_b, case_000986_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000986_firstLine_eq :
    case_000986_support.firstLine case_000986_seq case_000986_b = case_000986_firstLine := by
  norm_num [case_000986_firstLine, case_000986_support, case_000986_seq, case_000986_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000986_secondLine_eq :
    case_000986_support.secondLine case_000986_seq case_000986_b = case_000986_secondLine := by
  norm_num [case_000986_secondLine, case_000986_support, case_000986_seq, case_000986_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000986_sourceAgrees :
    SourceAgrees case_000986_support case_000986_rank.val case_000986_mask := by
  intro hlt
  have hrank : (⟨case_000986_rank.val, hlt⟩ : Fin numPairWords) = case_000986_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000986_rank.val, hlt⟩ case_000986_mask =
        case_000986_seq := by
    simpa [hrank] using case_000986_seqAtRank
  simp [SourceChecks, hseq, case_000986_support,
    checkTranslationConstraintSource, case_000986_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000986_rows :
    EqEqPosVarFirstRows case_000986_support case_000986_rank.val case_000986_mask := by
  intro hlt
  have hrank : (⟨case_000986_rank.val, hlt⟩ : Fin numPairWords) = case_000986_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000986_rank.val, hlt⟩ case_000986_mask =
        case_000986_seq := by
    simpa [hrank] using case_000986_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000986_rank.val, hlt⟩ case_000986_mask =
        case_000986_b := by
    simpa [hrank] using case_000986_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000986_support case_000986_rank.val hlt
          case_000986_mask = case_000986_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000986_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000986_support case_000986_rank.val hlt
          case_000986_mask = case_000986_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000986_secondLine_eq]
  have case_000986_rowFirst :
      EqEqPosRow (FirstLineAt case_000986_support case_000986_rank.val hlt case_000986_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000986_firstLine, EqEqPosRow]
  have case_000986_fixedSecond :
      FixedRow (SecondLineAt case_000986_support case_000986_rank.val hlt case_000986_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000986_secondLine, FixedRow]
  exact ⟨case_000986_rowFirst, case_000986_fixedSecond⟩

private theorem case_000986_existsRows :
    ExistsEqEqPosVarFirstRows case_000986_rank.val case_000986_mask :=
  ⟨case_000986_support, case_000986_sourceAgrees, case_000986_rows⟩

private theorem case_000986_covered :
    RowPropertyParametricCovered case_000986_rank.val case_000986_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000986_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000987_rank : Fin numPairWords := ⟨714, by decide⟩
private def case_000987_mask : SignMask := ⟨47, by decide⟩
private def case_000987_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000987_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000987_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000987_b : Vec3 Rat := { x := (-28/27), y := (316/27), z := (284/27) }
private def case_000987_firstLine : StrictLin2 := { a := 1, b := -1, c := (-9/7) }
private def case_000987_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000987_rankWord :
    rankPairWord? case_000987_word = some case_000987_rank := by
  decide

private theorem case_000987_unrank :
    unrankPairWord case_000987_rank = case_000987_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000987_word case_000987_rank).1
    case_000987_rankWord |>.symm

private theorem case_000987_seqChoice :
    translationChoiceSeq case_000987_word case_000987_mask = case_000987_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000987_seqAtRank :
    translationSeqAtRankMask case_000987_rank case_000987_mask = case_000987_seq := by
  rw [translationSeqAtRankMask, case_000987_unrank]
  exact case_000987_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000987_bAtRank :
    translationBAtRankMask case_000987_rank case_000987_mask = case_000987_b := by
  rw [translationBAtRankMask, case_000987_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000987_b, case_000987_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000987_firstLine_eq :
    case_000987_support.firstLine case_000987_seq case_000987_b = case_000987_firstLine := by
  norm_num [case_000987_firstLine, case_000987_support, case_000987_seq, case_000987_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000987_secondLine_eq :
    case_000987_support.secondLine case_000987_seq case_000987_b = case_000987_secondLine := by
  norm_num [case_000987_secondLine, case_000987_support, case_000987_seq, case_000987_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000987_sourceAgrees :
    SourceAgrees case_000987_support case_000987_rank.val case_000987_mask := by
  intro hlt
  have hrank : (⟨case_000987_rank.val, hlt⟩ : Fin numPairWords) = case_000987_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000987_rank.val, hlt⟩ case_000987_mask =
        case_000987_seq := by
    simpa [hrank] using case_000987_seqAtRank
  simp [SourceChecks, hseq, case_000987_support,
    checkTranslationConstraintSource, case_000987_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000987_rows :
    OppMinusOneVarFirstRows case_000987_support case_000987_rank.val case_000987_mask := by
  intro hlt
  have hrank : (⟨case_000987_rank.val, hlt⟩ : Fin numPairWords) = case_000987_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000987_rank.val, hlt⟩ case_000987_mask =
        case_000987_seq := by
    simpa [hrank] using case_000987_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000987_rank.val, hlt⟩ case_000987_mask =
        case_000987_b := by
    simpa [hrank] using case_000987_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000987_support case_000987_rank.val hlt
          case_000987_mask = case_000987_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000987_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000987_support case_000987_rank.val hlt
          case_000987_mask = case_000987_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000987_secondLine_eq]
  have case_000987_rowFirst :
      OppNegRow (FirstLineAt case_000987_support case_000987_rank.val hlt case_000987_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000987_firstLine, OppNegRow]
  have case_000987_fixedSecond :
      FixedRow (SecondLineAt case_000987_support case_000987_rank.val hlt case_000987_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000987_secondLine, FixedRow]
  exact ⟨case_000987_rowFirst, case_000987_fixedSecond⟩

private theorem case_000987_existsRows :
    ExistsOppMinusOneVarFirstRows case_000987_rank.val case_000987_mask :=
  ⟨case_000987_support, case_000987_sourceAgrees, case_000987_rows⟩

private theorem case_000987_covered :
    RowPropertyParametricCovered case_000987_rank.val case_000987_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000987_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000988_rank : Fin numPairWords := ⟨714, by decide⟩
private def case_000988_mask : SignMask := ⟨63, by decide⟩
private def case_000988_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000988_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000988_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000988_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (172/27) }
private def case_000988_firstLine : StrictLin2 := { a := (59/75), b := (-59/75), c := (-209/225) }
private def case_000988_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000988_rankWord :
    rankPairWord? case_000988_word = some case_000988_rank := by
  decide

private theorem case_000988_unrank :
    unrankPairWord case_000988_rank = case_000988_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000988_word case_000988_rank).1
    case_000988_rankWord |>.symm

private theorem case_000988_seqChoice :
    translationChoiceSeq case_000988_word case_000988_mask = case_000988_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000988_seqAtRank :
    translationSeqAtRankMask case_000988_rank case_000988_mask = case_000988_seq := by
  rw [translationSeqAtRankMask, case_000988_unrank]
  exact case_000988_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000988_bAtRank :
    translationBAtRankMask case_000988_rank case_000988_mask = case_000988_b := by
  rw [translationBAtRankMask, case_000988_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000988_b, case_000988_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000988_firstLine_eq :
    case_000988_support.firstLine case_000988_seq case_000988_b = case_000988_firstLine := by
  norm_num [case_000988_firstLine, case_000988_support, case_000988_seq, case_000988_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000988_secondLine_eq :
    case_000988_support.secondLine case_000988_seq case_000988_b = case_000988_secondLine := by
  norm_num [case_000988_secondLine, case_000988_support, case_000988_seq, case_000988_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000988_sourceAgrees :
    SourceAgrees case_000988_support case_000988_rank.val case_000988_mask := by
  intro hlt
  have hrank : (⟨case_000988_rank.val, hlt⟩ : Fin numPairWords) = case_000988_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000988_rank.val, hlt⟩ case_000988_mask =
        case_000988_seq := by
    simpa [hrank] using case_000988_seqAtRank
  simp [SourceChecks, hseq, case_000988_support,
    checkTranslationConstraintSource, case_000988_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000988_rows :
    OppMinusOneVarFirstRows case_000988_support case_000988_rank.val case_000988_mask := by
  intro hlt
  have hrank : (⟨case_000988_rank.val, hlt⟩ : Fin numPairWords) = case_000988_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000988_rank.val, hlt⟩ case_000988_mask =
        case_000988_seq := by
    simpa [hrank] using case_000988_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000988_rank.val, hlt⟩ case_000988_mask =
        case_000988_b := by
    simpa [hrank] using case_000988_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000988_support case_000988_rank.val hlt
          case_000988_mask = case_000988_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000988_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000988_support case_000988_rank.val hlt
          case_000988_mask = case_000988_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000988_secondLine_eq]
  have case_000988_rowFirst :
      OppNegRow (FirstLineAt case_000988_support case_000988_rank.val hlt case_000988_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000988_firstLine, OppNegRow]
  have case_000988_fixedSecond :
      FixedRow (SecondLineAt case_000988_support case_000988_rank.val hlt case_000988_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000988_secondLine, FixedRow]
  exact ⟨case_000988_rowFirst, case_000988_fixedSecond⟩

private theorem case_000988_existsRows :
    ExistsOppMinusOneVarFirstRows case_000988_rank.val case_000988_mask :=
  ⟨case_000988_support, case_000988_sourceAgrees, case_000988_rows⟩

private theorem case_000988_covered :
    RowPropertyParametricCovered case_000988_rank.val case_000988_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000988_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000989_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000989_mask : SignMask := ⟨22, by decide⟩
private def case_000989_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000989_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000989_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000989_b : Vec3 Rat := { x := (-188/27), y := (-316/27), z := (220/27) }
private def case_000989_firstLine : StrictLin2 := { a := -1, b := 1, c := (-221/47) }
private def case_000989_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000989_rankWord :
    rankPairWord? case_000989_word = some case_000989_rank := by
  decide

private theorem case_000989_unrank :
    unrankPairWord case_000989_rank = case_000989_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000989_word case_000989_rank).1
    case_000989_rankWord |>.symm

private theorem case_000989_seqChoice :
    translationChoiceSeq case_000989_word case_000989_mask = case_000989_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000989_seqAtRank :
    translationSeqAtRankMask case_000989_rank case_000989_mask = case_000989_seq := by
  rw [translationSeqAtRankMask, case_000989_unrank]
  exact case_000989_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000989_bAtRank :
    translationBAtRankMask case_000989_rank case_000989_mask = case_000989_b := by
  rw [translationBAtRankMask, case_000989_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000989_b, case_000989_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000989_firstLine_eq :
    case_000989_support.firstLine case_000989_seq case_000989_b = case_000989_firstLine := by
  norm_num [case_000989_firstLine, case_000989_support, case_000989_seq, case_000989_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000989_secondLine_eq :
    case_000989_support.secondLine case_000989_seq case_000989_b = case_000989_secondLine := by
  norm_num [case_000989_secondLine, case_000989_support, case_000989_seq, case_000989_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000989_sourceAgrees :
    SourceAgrees case_000989_support case_000989_rank.val case_000989_mask := by
  intro hlt
  have hrank : (⟨case_000989_rank.val, hlt⟩ : Fin numPairWords) = case_000989_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000989_rank.val, hlt⟩ case_000989_mask =
        case_000989_seq := by
    simpa [hrank] using case_000989_seqAtRank
  simp [SourceChecks, hseq, case_000989_support,
    checkTranslationConstraintSource, case_000989_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000989_rows :
    OppOneMinusVarFirstRows case_000989_support case_000989_rank.val case_000989_mask := by
  intro hlt
  have hrank : (⟨case_000989_rank.val, hlt⟩ : Fin numPairWords) = case_000989_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000989_rank.val, hlt⟩ case_000989_mask =
        case_000989_seq := by
    simpa [hrank] using case_000989_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000989_rank.val, hlt⟩ case_000989_mask =
        case_000989_b := by
    simpa [hrank] using case_000989_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000989_support case_000989_rank.val hlt
          case_000989_mask = case_000989_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000989_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000989_support case_000989_rank.val hlt
          case_000989_mask = case_000989_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000989_secondLine_eq]
  have case_000989_rowFirst :
      OppPosRow (FirstLineAt case_000989_support case_000989_rank.val hlt case_000989_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000989_firstLine, OppPosRow]
  have case_000989_fixedSecond :
      FixedRow (SecondLineAt case_000989_support case_000989_rank.val hlt case_000989_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000989_secondLine, FixedRow]
  exact ⟨case_000989_rowFirst, case_000989_fixedSecond⟩

private theorem case_000989_existsRows :
    ExistsOppOneMinusVarFirstRows case_000989_rank.val case_000989_mask :=
  ⟨case_000989_support, case_000989_sourceAgrees, case_000989_rows⟩

private theorem case_000989_covered :
    RowPropertyParametricCovered case_000989_rank.val case_000989_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000989_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000990_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000990_mask : SignMask := ⟨24, by decide⟩
private def case_000990_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000990_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000990_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000990_b : Vec3 Rat := { x := (-284/27), y := (-220/27), z := (-380/27) }
private def case_000990_firstLine : StrictLin2 := { a := -1, b := -1, c := (-229/71) }
private def case_000990_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000990_rankWord :
    rankPairWord? case_000990_word = some case_000990_rank := by
  decide

private theorem case_000990_unrank :
    unrankPairWord case_000990_rank = case_000990_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000990_word case_000990_rank).1
    case_000990_rankWord |>.symm

private theorem case_000990_seqChoice :
    translationChoiceSeq case_000990_word case_000990_mask = case_000990_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000990_seqAtRank :
    translationSeqAtRankMask case_000990_rank case_000990_mask = case_000990_seq := by
  rw [translationSeqAtRankMask, case_000990_unrank]
  exact case_000990_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000990_bAtRank :
    translationBAtRankMask case_000990_rank case_000990_mask = case_000990_b := by
  rw [translationBAtRankMask, case_000990_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000990_b, case_000990_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000990_firstLine_eq :
    case_000990_support.firstLine case_000990_seq case_000990_b = case_000990_firstLine := by
  norm_num [case_000990_firstLine, case_000990_support, case_000990_seq, case_000990_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000990_secondLine_eq :
    case_000990_support.secondLine case_000990_seq case_000990_b = case_000990_secondLine := by
  norm_num [case_000990_secondLine, case_000990_support, case_000990_seq, case_000990_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000990_sourceAgrees :
    SourceAgrees case_000990_support case_000990_rank.val case_000990_mask := by
  intro hlt
  have hrank : (⟨case_000990_rank.val, hlt⟩ : Fin numPairWords) = case_000990_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000990_rank.val, hlt⟩ case_000990_mask =
        case_000990_seq := by
    simpa [hrank] using case_000990_seqAtRank
  simp [SourceChecks, hseq, case_000990_support,
    checkTranslationConstraintSource, case_000990_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000990_rows :
    EqEqPosVarFirstRows case_000990_support case_000990_rank.val case_000990_mask := by
  intro hlt
  have hrank : (⟨case_000990_rank.val, hlt⟩ : Fin numPairWords) = case_000990_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000990_rank.val, hlt⟩ case_000990_mask =
        case_000990_seq := by
    simpa [hrank] using case_000990_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000990_rank.val, hlt⟩ case_000990_mask =
        case_000990_b := by
    simpa [hrank] using case_000990_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000990_support case_000990_rank.val hlt
          case_000990_mask = case_000990_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000990_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000990_support case_000990_rank.val hlt
          case_000990_mask = case_000990_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000990_secondLine_eq]
  have case_000990_rowFirst :
      EqEqPosRow (FirstLineAt case_000990_support case_000990_rank.val hlt case_000990_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000990_firstLine, EqEqPosRow]
  have case_000990_fixedSecond :
      FixedRow (SecondLineAt case_000990_support case_000990_rank.val hlt case_000990_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000990_secondLine, FixedRow]
  exact ⟨case_000990_rowFirst, case_000990_fixedSecond⟩

private theorem case_000990_existsRows :
    ExistsEqEqPosVarFirstRows case_000990_rank.val case_000990_mask :=
  ⟨case_000990_support, case_000990_sourceAgrees, case_000990_rows⟩

private theorem case_000990_covered :
    RowPropertyParametricCovered case_000990_rank.val case_000990_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000990_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000991_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000991_mask : SignMask := ⟨30, by decide⟩
private def case_000991_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000991_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000991_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000991_b : Vec3 Rat := { x := (-332/27), y := (-172/27), z := (76/27) }
private def case_000991_firstLine : StrictLin2 := { a := (83/21), b := (-83/21), c := (-97/7) }
private def case_000991_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000991_rankWord :
    rankPairWord? case_000991_word = some case_000991_rank := by
  decide

private theorem case_000991_unrank :
    unrankPairWord case_000991_rank = case_000991_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000991_word case_000991_rank).1
    case_000991_rankWord |>.symm

private theorem case_000991_seqChoice :
    translationChoiceSeq case_000991_word case_000991_mask = case_000991_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000991_seqAtRank :
    translationSeqAtRankMask case_000991_rank case_000991_mask = case_000991_seq := by
  rw [translationSeqAtRankMask, case_000991_unrank]
  exact case_000991_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000991_bAtRank :
    translationBAtRankMask case_000991_rank case_000991_mask = case_000991_b := by
  rw [translationBAtRankMask, case_000991_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000991_b, case_000991_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000991_firstLine_eq :
    case_000991_support.firstLine case_000991_seq case_000991_b = case_000991_firstLine := by
  norm_num [case_000991_firstLine, case_000991_support, case_000991_seq, case_000991_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000991_secondLine_eq :
    case_000991_support.secondLine case_000991_seq case_000991_b = case_000991_secondLine := by
  norm_num [case_000991_secondLine, case_000991_support, case_000991_seq, case_000991_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000991_sourceAgrees :
    SourceAgrees case_000991_support case_000991_rank.val case_000991_mask := by
  intro hlt
  have hrank : (⟨case_000991_rank.val, hlt⟩ : Fin numPairWords) = case_000991_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000991_rank.val, hlt⟩ case_000991_mask =
        case_000991_seq := by
    simpa [hrank] using case_000991_seqAtRank
  simp [SourceChecks, hseq, case_000991_support,
    checkTranslationConstraintSource, case_000991_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000991_rows :
    OppMinusOneVarFirstRows case_000991_support case_000991_rank.val case_000991_mask := by
  intro hlt
  have hrank : (⟨case_000991_rank.val, hlt⟩ : Fin numPairWords) = case_000991_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000991_rank.val, hlt⟩ case_000991_mask =
        case_000991_seq := by
    simpa [hrank] using case_000991_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000991_rank.val, hlt⟩ case_000991_mask =
        case_000991_b := by
    simpa [hrank] using case_000991_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000991_support case_000991_rank.val hlt
          case_000991_mask = case_000991_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000991_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000991_support case_000991_rank.val hlt
          case_000991_mask = case_000991_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000991_secondLine_eq]
  have case_000991_rowFirst :
      OppNegRow (FirstLineAt case_000991_support case_000991_rank.val hlt case_000991_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000991_firstLine, OppNegRow]
  have case_000991_fixedSecond :
      FixedRow (SecondLineAt case_000991_support case_000991_rank.val hlt case_000991_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000991_secondLine, FixedRow]
  exact ⟨case_000991_rowFirst, case_000991_fixedSecond⟩

private theorem case_000991_existsRows :
    ExistsOppMinusOneVarFirstRows case_000991_rank.val case_000991_mask :=
  ⟨case_000991_support, case_000991_sourceAgrees, case_000991_rows⟩

private theorem case_000991_covered :
    RowPropertyParametricCovered case_000991_rank.val case_000991_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000991_existsRows

inductive Group030Covered : Nat -> SignMask -> Prop
  | case_000960 : Group030Covered case_000960_rank.val case_000960_mask
  | case_000961 : Group030Covered case_000961_rank.val case_000961_mask
  | case_000962 : Group030Covered case_000962_rank.val case_000962_mask
  | case_000963 : Group030Covered case_000963_rank.val case_000963_mask
  | case_000964 : Group030Covered case_000964_rank.val case_000964_mask
  | case_000965 : Group030Covered case_000965_rank.val case_000965_mask
  | case_000966 : Group030Covered case_000966_rank.val case_000966_mask
  | case_000967 : Group030Covered case_000967_rank.val case_000967_mask
  | case_000968 : Group030Covered case_000968_rank.val case_000968_mask
  | case_000969 : Group030Covered case_000969_rank.val case_000969_mask
  | case_000970 : Group030Covered case_000970_rank.val case_000970_mask
  | case_000971 : Group030Covered case_000971_rank.val case_000971_mask
  | case_000972 : Group030Covered case_000972_rank.val case_000972_mask
  | case_000973 : Group030Covered case_000973_rank.val case_000973_mask
  | case_000974 : Group030Covered case_000974_rank.val case_000974_mask
  | case_000975 : Group030Covered case_000975_rank.val case_000975_mask
  | case_000976 : Group030Covered case_000976_rank.val case_000976_mask
  | case_000977 : Group030Covered case_000977_rank.val case_000977_mask
  | case_000978 : Group030Covered case_000978_rank.val case_000978_mask
  | case_000979 : Group030Covered case_000979_rank.val case_000979_mask
  | case_000980 : Group030Covered case_000980_rank.val case_000980_mask
  | case_000981 : Group030Covered case_000981_rank.val case_000981_mask
  | case_000982 : Group030Covered case_000982_rank.val case_000982_mask
  | case_000983 : Group030Covered case_000983_rank.val case_000983_mask
  | case_000984 : Group030Covered case_000984_rank.val case_000984_mask
  | case_000985 : Group030Covered case_000985_rank.val case_000985_mask
  | case_000986 : Group030Covered case_000986_rank.val case_000986_mask
  | case_000987 : Group030Covered case_000987_rank.val case_000987_mask
  | case_000988 : Group030Covered case_000988_rank.val case_000988_mask
  | case_000989 : Group030Covered case_000989_rank.val case_000989_mask
  | case_000990 : Group030Covered case_000990_rank.val case_000990_mask
  | case_000991 : Group030Covered case_000991_rank.val case_000991_mask

theorem Group030GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group030Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000960 =>
      exact RowPropertyParametricCovered.kills case_000960_covered
  | case_000961 =>
      exact RowPropertyParametricCovered.kills case_000961_covered
  | case_000962 =>
      exact RowPropertyParametricCovered.kills case_000962_covered
  | case_000963 =>
      exact RowPropertyParametricCovered.kills case_000963_covered
  | case_000964 =>
      exact RowPropertyParametricCovered.kills case_000964_covered
  | case_000965 =>
      exact RowPropertyParametricCovered.kills case_000965_covered
  | case_000966 =>
      exact RowPropertyParametricCovered.kills case_000966_covered
  | case_000967 =>
      exact RowPropertyParametricCovered.kills case_000967_covered
  | case_000968 =>
      exact RowPropertyParametricCovered.kills case_000968_covered
  | case_000969 =>
      exact RowPropertyParametricCovered.kills case_000969_covered
  | case_000970 =>
      exact RowPropertyParametricCovered.kills case_000970_covered
  | case_000971 =>
      exact RowPropertyParametricCovered.kills case_000971_covered
  | case_000972 =>
      exact RowPropertyParametricCovered.kills case_000972_covered
  | case_000973 =>
      exact RowPropertyParametricCovered.kills case_000973_covered
  | case_000974 =>
      exact RowPropertyParametricCovered.kills case_000974_covered
  | case_000975 =>
      exact RowPropertyParametricCovered.kills case_000975_covered
  | case_000976 =>
      exact RowPropertyParametricCovered.kills case_000976_covered
  | case_000977 =>
      exact RowPropertyParametricCovered.kills case_000977_covered
  | case_000978 =>
      exact RowPropertyParametricCovered.kills case_000978_covered
  | case_000979 =>
      exact RowPropertyParametricCovered.kills case_000979_covered
  | case_000980 =>
      exact RowPropertyParametricCovered.kills case_000980_covered
  | case_000981 =>
      exact RowPropertyParametricCovered.kills case_000981_covered
  | case_000982 =>
      exact RowPropertyParametricCovered.kills case_000982_covered
  | case_000983 =>
      exact RowPropertyParametricCovered.kills case_000983_covered
  | case_000984 =>
      exact RowPropertyParametricCovered.kills case_000984_covered
  | case_000985 =>
      exact RowPropertyParametricCovered.kills case_000985_covered
  | case_000986 =>
      exact RowPropertyParametricCovered.kills case_000986_covered
  | case_000987 =>
      exact RowPropertyParametricCovered.kills case_000987_covered
  | case_000988 =>
      exact RowPropertyParametricCovered.kills case_000988_covered
  | case_000989 =>
      exact RowPropertyParametricCovered.kills case_000989_covered
  | case_000990 =>
      exact RowPropertyParametricCovered.kills case_000990_covered
  | case_000991 =>
      exact RowPropertyParametricCovered.kills case_000991_covered

theorem Group030_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group030
