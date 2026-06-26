import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group012

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
private def case_000384_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000384_mask : SignMask := ⟨16, by decide⟩
private def case_000384_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000384_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000384_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000384_b : Vec3 Rat := { x := -4, y := (-100/9), z := (-4/9) }
private def case_000384_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/9) }
private def case_000384_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000384_rankWord :
    rankPairWord? case_000384_word = some case_000384_rank := by
  decide

private theorem case_000384_unrank :
    unrankPairWord case_000384_rank = case_000384_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000384_word case_000384_rank).1
    case_000384_rankWord |>.symm

private theorem case_000384_seqChoice :
    translationChoiceSeq case_000384_word case_000384_mask = case_000384_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000384_seqAtRank :
    translationSeqAtRankMask case_000384_rank case_000384_mask = case_000384_seq := by
  rw [translationSeqAtRankMask, case_000384_unrank]
  exact case_000384_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000384_bAtRank :
    translationBAtRankMask case_000384_rank case_000384_mask = case_000384_b := by
  rw [translationBAtRankMask, case_000384_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000384_b, case_000384_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000384_firstLine_eq :
    case_000384_support.firstLine case_000384_seq case_000384_b = case_000384_firstLine := by
  norm_num [case_000384_firstLine, case_000384_support, case_000384_seq, case_000384_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000384_secondLine_eq :
    case_000384_support.secondLine case_000384_seq case_000384_b = case_000384_secondLine := by
  norm_num [case_000384_secondLine, case_000384_support, case_000384_seq, case_000384_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000384_sourceAgrees :
    SourceAgrees case_000384_support case_000384_rank.val case_000384_mask := by
  intro hlt
  have hrank : (⟨case_000384_rank.val, hlt⟩ : Fin numPairWords) = case_000384_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000384_rank.val, hlt⟩ case_000384_mask =
        case_000384_seq := by
    simpa [hrank] using case_000384_seqAtRank
  simp [SourceChecks, hseq, case_000384_support,
    checkTranslationConstraintSource, case_000384_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000384_rows :
    EqEqPosVarFirstRows case_000384_support case_000384_rank.val case_000384_mask := by
  intro hlt
  have hrank : (⟨case_000384_rank.val, hlt⟩ : Fin numPairWords) = case_000384_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000384_rank.val, hlt⟩ case_000384_mask =
        case_000384_seq := by
    simpa [hrank] using case_000384_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000384_rank.val, hlt⟩ case_000384_mask =
        case_000384_b := by
    simpa [hrank] using case_000384_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000384_support case_000384_rank.val hlt
          case_000384_mask = case_000384_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000384_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000384_support case_000384_rank.val hlt
          case_000384_mask = case_000384_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000384_secondLine_eq]
  have case_000384_rowFirst :
      EqEqPosRow (FirstLineAt case_000384_support case_000384_rank.val hlt case_000384_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000384_firstLine, EqEqPosRow]
  have case_000384_fixedSecond :
      FixedRow (SecondLineAt case_000384_support case_000384_rank.val hlt case_000384_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000384_secondLine, FixedRow]
  exact ⟨case_000384_rowFirst, case_000384_fixedSecond⟩

private theorem case_000384_existsRows :
    ExistsEqEqPosVarFirstRows case_000384_rank.val case_000384_mask :=
  ⟨case_000384_support, case_000384_sourceAgrees, case_000384_rows⟩

private theorem case_000384_covered :
    RowPropertyParametricCovered case_000384_rank.val case_000384_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000384_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000385_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000385_mask : SignMask := ⟨22, by decide⟩
private def case_000385_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000385_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000385_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000385_b : Vec3 Rat := { x := (-28/3), y := (-52/9), z := (116/9) }
private def case_000385_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000385_secondLine : StrictLin2 := { a := (-189/370), b := (-189/370), c := (-307/185) }

private theorem case_000385_rankWord :
    rankPairWord? case_000385_word = some case_000385_rank := by
  decide

private theorem case_000385_unrank :
    unrankPairWord case_000385_rank = case_000385_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000385_word case_000385_rank).1
    case_000385_rankWord |>.symm

private theorem case_000385_seqChoice :
    translationChoiceSeq case_000385_word case_000385_mask = case_000385_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000385_seqAtRank :
    translationSeqAtRankMask case_000385_rank case_000385_mask = case_000385_seq := by
  rw [translationSeqAtRankMask, case_000385_unrank]
  exact case_000385_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000385_bAtRank :
    translationBAtRankMask case_000385_rank case_000385_mask = case_000385_b := by
  rw [translationBAtRankMask, case_000385_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000385_b, case_000385_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000385_firstLine_eq :
    case_000385_support.firstLine case_000385_seq case_000385_b = case_000385_firstLine := by
  norm_num [case_000385_firstLine, case_000385_support, case_000385_seq, case_000385_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000385_secondLine_eq :
    case_000385_support.secondLine case_000385_seq case_000385_b = case_000385_secondLine := by
  norm_num [case_000385_secondLine, case_000385_support, case_000385_seq, case_000385_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000385_sourceAgrees :
    SourceAgrees case_000385_support case_000385_rank.val case_000385_mask := by
  intro hlt
  have hrank : (⟨case_000385_rank.val, hlt⟩ : Fin numPairWords) = case_000385_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000385_rank.val, hlt⟩ case_000385_mask =
        case_000385_seq := by
    simpa [hrank] using case_000385_seqAtRank
  simp [SourceChecks, hseq, case_000385_support,
    checkTranslationConstraintSource, case_000385_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000385_rows :
    EqEqPosVarSecondRows case_000385_support case_000385_rank.val case_000385_mask := by
  intro hlt
  have hrank : (⟨case_000385_rank.val, hlt⟩ : Fin numPairWords) = case_000385_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000385_rank.val, hlt⟩ case_000385_mask =
        case_000385_seq := by
    simpa [hrank] using case_000385_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000385_rank.val, hlt⟩ case_000385_mask =
        case_000385_b := by
    simpa [hrank] using case_000385_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000385_support case_000385_rank.val hlt
          case_000385_mask = case_000385_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000385_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000385_support case_000385_rank.val hlt
          case_000385_mask = case_000385_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000385_secondLine_eq]
  have case_000385_fixedFirst :
      FixedRow (FirstLineAt case_000385_support case_000385_rank.val hlt case_000385_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000385_firstLine, FixedRow]
  have case_000385_rowSecond :
      EqEqPosRow (SecondLineAt case_000385_support case_000385_rank.val hlt case_000385_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000385_secondLine, EqEqPosRow]
  exact ⟨case_000385_fixedFirst, case_000385_rowSecond⟩

private theorem case_000385_existsRows :
    ExistsEqEqPosVarSecondRows case_000385_rank.val case_000385_mask :=
  ⟨case_000385_support, case_000385_sourceAgrees, case_000385_rows⟩

private theorem case_000385_covered :
    RowPropertyParametricCovered case_000385_rank.val case_000385_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000385_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000386_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000386_mask : SignMask := ⟨47, by decide⟩
private def case_000386_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000386_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000386_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000386_b : Vec3 Rat := { x := -4, y := (100/9), z := (4/9) }
private def case_000386_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_000386_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000386_rankWord :
    rankPairWord? case_000386_word = some case_000386_rank := by
  decide

private theorem case_000386_unrank :
    unrankPairWord case_000386_rank = case_000386_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000386_word case_000386_rank).1
    case_000386_rankWord |>.symm

private theorem case_000386_seqChoice :
    translationChoiceSeq case_000386_word case_000386_mask = case_000386_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000386_seqAtRank :
    translationSeqAtRankMask case_000386_rank case_000386_mask = case_000386_seq := by
  rw [translationSeqAtRankMask, case_000386_unrank]
  exact case_000386_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000386_bAtRank :
    translationBAtRankMask case_000386_rank case_000386_mask = case_000386_b := by
  rw [translationBAtRankMask, case_000386_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000386_b, case_000386_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000386_firstLine_eq :
    case_000386_support.firstLine case_000386_seq case_000386_b = case_000386_firstLine := by
  norm_num [case_000386_firstLine, case_000386_support, case_000386_seq, case_000386_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000386_secondLine_eq :
    case_000386_support.secondLine case_000386_seq case_000386_b = case_000386_secondLine := by
  norm_num [case_000386_secondLine, case_000386_support, case_000386_seq, case_000386_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000386_sourceAgrees :
    SourceAgrees case_000386_support case_000386_rank.val case_000386_mask := by
  intro hlt
  have hrank : (⟨case_000386_rank.val, hlt⟩ : Fin numPairWords) = case_000386_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000386_rank.val, hlt⟩ case_000386_mask =
        case_000386_seq := by
    simpa [hrank] using case_000386_seqAtRank
  simp [SourceChecks, hseq, case_000386_support,
    checkTranslationConstraintSource, case_000386_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000386_rows :
    OppMinusOneVarFirstRows case_000386_support case_000386_rank.val case_000386_mask := by
  intro hlt
  have hrank : (⟨case_000386_rank.val, hlt⟩ : Fin numPairWords) = case_000386_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000386_rank.val, hlt⟩ case_000386_mask =
        case_000386_seq := by
    simpa [hrank] using case_000386_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000386_rank.val, hlt⟩ case_000386_mask =
        case_000386_b := by
    simpa [hrank] using case_000386_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000386_support case_000386_rank.val hlt
          case_000386_mask = case_000386_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000386_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000386_support case_000386_rank.val hlt
          case_000386_mask = case_000386_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000386_secondLine_eq]
  have case_000386_rowFirst :
      OppNegRow (FirstLineAt case_000386_support case_000386_rank.val hlt case_000386_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000386_firstLine, OppNegRow]
  have case_000386_fixedSecond :
      FixedRow (SecondLineAt case_000386_support case_000386_rank.val hlt case_000386_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000386_secondLine, FixedRow]
  exact ⟨case_000386_rowFirst, case_000386_fixedSecond⟩

private theorem case_000386_existsRows :
    ExistsOppMinusOneVarFirstRows case_000386_rank.val case_000386_mask :=
  ⟨case_000386_support, case_000386_sourceAgrees, case_000386_rows⟩

private theorem case_000386_covered :
    RowPropertyParametricCovered case_000386_rank.val case_000386_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000386_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000387_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000387_mask : SignMask := ⟨54, by decide⟩
private def case_000387_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000387_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000387_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000387_b : Vec3 Rat := { x := -4, y := (-4/9), z := (164/9) }
private def case_000387_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000387_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000387_rankWord :
    rankPairWord? case_000387_word = some case_000387_rank := by
  decide

private theorem case_000387_unrank :
    unrankPairWord case_000387_rank = case_000387_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000387_word case_000387_rank).1
    case_000387_rankWord |>.symm

private theorem case_000387_seqChoice :
    translationChoiceSeq case_000387_word case_000387_mask = case_000387_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000387_seqAtRank :
    translationSeqAtRankMask case_000387_rank case_000387_mask = case_000387_seq := by
  rw [translationSeqAtRankMask, case_000387_unrank]
  exact case_000387_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000387_bAtRank :
    translationBAtRankMask case_000387_rank case_000387_mask = case_000387_b := by
  rw [translationBAtRankMask, case_000387_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000387_b, case_000387_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000387_firstLine_eq :
    case_000387_support.firstLine case_000387_seq case_000387_b = case_000387_firstLine := by
  norm_num [case_000387_firstLine, case_000387_support, case_000387_seq, case_000387_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000387_secondLine_eq :
    case_000387_support.secondLine case_000387_seq case_000387_b = case_000387_secondLine := by
  norm_num [case_000387_secondLine, case_000387_support, case_000387_seq, case_000387_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000387_sourceAgrees :
    SourceAgrees case_000387_support case_000387_rank.val case_000387_mask := by
  intro hlt
  have hrank : (⟨case_000387_rank.val, hlt⟩ : Fin numPairWords) = case_000387_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000387_rank.val, hlt⟩ case_000387_mask =
        case_000387_seq := by
    simpa [hrank] using case_000387_seqAtRank
  simp [SourceChecks, hseq, case_000387_support,
    checkTranslationConstraintSource, case_000387_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000387_rows :
    OppOneMinusVarFirstRows case_000387_support case_000387_rank.val case_000387_mask := by
  intro hlt
  have hrank : (⟨case_000387_rank.val, hlt⟩ : Fin numPairWords) = case_000387_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000387_rank.val, hlt⟩ case_000387_mask =
        case_000387_seq := by
    simpa [hrank] using case_000387_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000387_rank.val, hlt⟩ case_000387_mask =
        case_000387_b := by
    simpa [hrank] using case_000387_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000387_support case_000387_rank.val hlt
          case_000387_mask = case_000387_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000387_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000387_support case_000387_rank.val hlt
          case_000387_mask = case_000387_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000387_secondLine_eq]
  have case_000387_rowFirst :
      OppPosRow (FirstLineAt case_000387_support case_000387_rank.val hlt case_000387_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000387_firstLine, OppPosRow]
  have case_000387_fixedSecond :
      FixedRow (SecondLineAt case_000387_support case_000387_rank.val hlt case_000387_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000387_secondLine, FixedRow]
  exact ⟨case_000387_rowFirst, case_000387_fixedSecond⟩

private theorem case_000387_existsRows :
    ExistsOppOneMinusVarFirstRows case_000387_rank.val case_000387_mask :=
  ⟨case_000387_support, case_000387_sourceAgrees, case_000387_rows⟩

private theorem case_000387_covered :
    RowPropertyParametricCovered case_000387_rank.val case_000387_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000387_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000388_rank : Fin numPairWords := ⟨123, by decide⟩
private def case_000388_mask : SignMask := ⟨55, by decide⟩
private def case_000388_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000388_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000388_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000388_b : Vec3 Rat := { x := -4, y := (68/9), z := (164/9) }
private def case_000388_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000388_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000388_rankWord :
    rankPairWord? case_000388_word = some case_000388_rank := by
  decide

private theorem case_000388_unrank :
    unrankPairWord case_000388_rank = case_000388_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000388_word case_000388_rank).1
    case_000388_rankWord |>.symm

private theorem case_000388_seqChoice :
    translationChoiceSeq case_000388_word case_000388_mask = case_000388_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000388_seqAtRank :
    translationSeqAtRankMask case_000388_rank case_000388_mask = case_000388_seq := by
  rw [translationSeqAtRankMask, case_000388_unrank]
  exact case_000388_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000388_bAtRank :
    translationBAtRankMask case_000388_rank case_000388_mask = case_000388_b := by
  rw [translationBAtRankMask, case_000388_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000388_b, case_000388_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000388_firstLine_eq :
    case_000388_support.firstLine case_000388_seq case_000388_b = case_000388_firstLine := by
  norm_num [case_000388_firstLine, case_000388_support, case_000388_seq, case_000388_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000388_secondLine_eq :
    case_000388_support.secondLine case_000388_seq case_000388_b = case_000388_secondLine := by
  norm_num [case_000388_secondLine, case_000388_support, case_000388_seq, case_000388_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000388_sourceAgrees :
    SourceAgrees case_000388_support case_000388_rank.val case_000388_mask := by
  intro hlt
  have hrank : (⟨case_000388_rank.val, hlt⟩ : Fin numPairWords) = case_000388_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000388_rank.val, hlt⟩ case_000388_mask =
        case_000388_seq := by
    simpa [hrank] using case_000388_seqAtRank
  simp [SourceChecks, hseq, case_000388_support,
    checkTranslationConstraintSource, case_000388_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000388_rows :
    OppOneMinusVarFirstRows case_000388_support case_000388_rank.val case_000388_mask := by
  intro hlt
  have hrank : (⟨case_000388_rank.val, hlt⟩ : Fin numPairWords) = case_000388_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000388_rank.val, hlt⟩ case_000388_mask =
        case_000388_seq := by
    simpa [hrank] using case_000388_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000388_rank.val, hlt⟩ case_000388_mask =
        case_000388_b := by
    simpa [hrank] using case_000388_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000388_support case_000388_rank.val hlt
          case_000388_mask = case_000388_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000388_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000388_support case_000388_rank.val hlt
          case_000388_mask = case_000388_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000388_secondLine_eq]
  have case_000388_rowFirst :
      OppPosRow (FirstLineAt case_000388_support case_000388_rank.val hlt case_000388_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000388_firstLine, OppPosRow]
  have case_000388_fixedSecond :
      FixedRow (SecondLineAt case_000388_support case_000388_rank.val hlt case_000388_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000388_secondLine, FixedRow]
  exact ⟨case_000388_rowFirst, case_000388_fixedSecond⟩

private theorem case_000388_existsRows :
    ExistsOppOneMinusVarFirstRows case_000388_rank.val case_000388_mask :=
  ⟨case_000388_support, case_000388_sourceAgrees, case_000388_rows⟩

private theorem case_000388_covered :
    RowPropertyParametricCovered case_000388_rank.val case_000388_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000388_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000389_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000389_mask : SignMask := ⟨8, by decide⟩
private def case_000389_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000389_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000389_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000389_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-148/9) }
private def case_000389_firstLine : StrictLin2 := { a := -1, b := -1, c := -19 }
private def case_000389_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000389_rankWord :
    rankPairWord? case_000389_word = some case_000389_rank := by
  decide

private theorem case_000389_unrank :
    unrankPairWord case_000389_rank = case_000389_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000389_word case_000389_rank).1
    case_000389_rankWord |>.symm

private theorem case_000389_seqChoice :
    translationChoiceSeq case_000389_word case_000389_mask = case_000389_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000389_seqAtRank :
    translationSeqAtRankMask case_000389_rank case_000389_mask = case_000389_seq := by
  rw [translationSeqAtRankMask, case_000389_unrank]
  exact case_000389_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000389_bAtRank :
    translationBAtRankMask case_000389_rank case_000389_mask = case_000389_b := by
  rw [translationBAtRankMask, case_000389_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000389_b, case_000389_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000389_firstLine_eq :
    case_000389_support.firstLine case_000389_seq case_000389_b = case_000389_firstLine := by
  norm_num [case_000389_firstLine, case_000389_support, case_000389_seq, case_000389_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000389_secondLine_eq :
    case_000389_support.secondLine case_000389_seq case_000389_b = case_000389_secondLine := by
  norm_num [case_000389_secondLine, case_000389_support, case_000389_seq, case_000389_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000389_sourceAgrees :
    SourceAgrees case_000389_support case_000389_rank.val case_000389_mask := by
  intro hlt
  have hrank : (⟨case_000389_rank.val, hlt⟩ : Fin numPairWords) = case_000389_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000389_rank.val, hlt⟩ case_000389_mask =
        case_000389_seq := by
    simpa [hrank] using case_000389_seqAtRank
  simp [SourceChecks, hseq, case_000389_support,
    checkTranslationConstraintSource, case_000389_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000389_rows :
    EqEqPosVarFirstRows case_000389_support case_000389_rank.val case_000389_mask := by
  intro hlt
  have hrank : (⟨case_000389_rank.val, hlt⟩ : Fin numPairWords) = case_000389_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000389_rank.val, hlt⟩ case_000389_mask =
        case_000389_seq := by
    simpa [hrank] using case_000389_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000389_rank.val, hlt⟩ case_000389_mask =
        case_000389_b := by
    simpa [hrank] using case_000389_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000389_support case_000389_rank.val hlt
          case_000389_mask = case_000389_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000389_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000389_support case_000389_rank.val hlt
          case_000389_mask = case_000389_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000389_secondLine_eq]
  have case_000389_rowFirst :
      EqEqPosRow (FirstLineAt case_000389_support case_000389_rank.val hlt case_000389_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000389_firstLine, EqEqPosRow]
  have case_000389_fixedSecond :
      FixedRow (SecondLineAt case_000389_support case_000389_rank.val hlt case_000389_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000389_secondLine, FixedRow]
  exact ⟨case_000389_rowFirst, case_000389_fixedSecond⟩

private theorem case_000389_existsRows :
    ExistsEqEqPosVarFirstRows case_000389_rank.val case_000389_mask :=
  ⟨case_000389_support, case_000389_sourceAgrees, case_000389_rows⟩

private theorem case_000389_covered :
    RowPropertyParametricCovered case_000389_rank.val case_000389_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000389_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000390_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000390_mask : SignMask := ⟨9, by decide⟩
private def case_000390_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000390_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000390_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000390_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-148/9) }
private def case_000390_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/5) }
private def case_000390_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000390_rankWord :
    rankPairWord? case_000390_word = some case_000390_rank := by
  decide

private theorem case_000390_unrank :
    unrankPairWord case_000390_rank = case_000390_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000390_word case_000390_rank).1
    case_000390_rankWord |>.symm

private theorem case_000390_seqChoice :
    translationChoiceSeq case_000390_word case_000390_mask = case_000390_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000390_seqAtRank :
    translationSeqAtRankMask case_000390_rank case_000390_mask = case_000390_seq := by
  rw [translationSeqAtRankMask, case_000390_unrank]
  exact case_000390_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000390_bAtRank :
    translationBAtRankMask case_000390_rank case_000390_mask = case_000390_b := by
  rw [translationBAtRankMask, case_000390_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000390_b, case_000390_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000390_firstLine_eq :
    case_000390_support.firstLine case_000390_seq case_000390_b = case_000390_firstLine := by
  norm_num [case_000390_firstLine, case_000390_support, case_000390_seq, case_000390_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000390_secondLine_eq :
    case_000390_support.secondLine case_000390_seq case_000390_b = case_000390_secondLine := by
  norm_num [case_000390_secondLine, case_000390_support, case_000390_seq, case_000390_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000390_sourceAgrees :
    SourceAgrees case_000390_support case_000390_rank.val case_000390_mask := by
  intro hlt
  have hrank : (⟨case_000390_rank.val, hlt⟩ : Fin numPairWords) = case_000390_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000390_rank.val, hlt⟩ case_000390_mask =
        case_000390_seq := by
    simpa [hrank] using case_000390_seqAtRank
  simp [SourceChecks, hseq, case_000390_support,
    checkTranslationConstraintSource, case_000390_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000390_rows :
    EqEqPosVarFirstRows case_000390_support case_000390_rank.val case_000390_mask := by
  intro hlt
  have hrank : (⟨case_000390_rank.val, hlt⟩ : Fin numPairWords) = case_000390_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000390_rank.val, hlt⟩ case_000390_mask =
        case_000390_seq := by
    simpa [hrank] using case_000390_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000390_rank.val, hlt⟩ case_000390_mask =
        case_000390_b := by
    simpa [hrank] using case_000390_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000390_support case_000390_rank.val hlt
          case_000390_mask = case_000390_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000390_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000390_support case_000390_rank.val hlt
          case_000390_mask = case_000390_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000390_secondLine_eq]
  have case_000390_rowFirst :
      EqEqPosRow (FirstLineAt case_000390_support case_000390_rank.val hlt case_000390_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000390_firstLine, EqEqPosRow]
  have case_000390_fixedSecond :
      FixedRow (SecondLineAt case_000390_support case_000390_rank.val hlt case_000390_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000390_secondLine, FixedRow]
  exact ⟨case_000390_rowFirst, case_000390_fixedSecond⟩

private theorem case_000390_existsRows :
    ExistsEqEqPosVarFirstRows case_000390_rank.val case_000390_mask :=
  ⟨case_000390_support, case_000390_sourceAgrees, case_000390_rows⟩

private theorem case_000390_covered :
    RowPropertyParametricCovered case_000390_rank.val case_000390_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000390_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000391_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000391_mask : SignMask := ⟨13, by decide⟩
private def case_000391_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000391_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000391_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000391_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (-100/9) }
private def case_000391_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000391_secondLine : StrictLin2 := { a := (-17/50), b := (-17/50), c := (-73/75) }

private theorem case_000391_rankWord :
    rankPairWord? case_000391_word = some case_000391_rank := by
  decide

private theorem case_000391_unrank :
    unrankPairWord case_000391_rank = case_000391_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000391_word case_000391_rank).1
    case_000391_rankWord |>.symm

private theorem case_000391_seqChoice :
    translationChoiceSeq case_000391_word case_000391_mask = case_000391_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000391_seqAtRank :
    translationSeqAtRankMask case_000391_rank case_000391_mask = case_000391_seq := by
  rw [translationSeqAtRankMask, case_000391_unrank]
  exact case_000391_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000391_bAtRank :
    translationBAtRankMask case_000391_rank case_000391_mask = case_000391_b := by
  rw [translationBAtRankMask, case_000391_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000391_b, case_000391_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000391_firstLine_eq :
    case_000391_support.firstLine case_000391_seq case_000391_b = case_000391_firstLine := by
  norm_num [case_000391_firstLine, case_000391_support, case_000391_seq, case_000391_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000391_secondLine_eq :
    case_000391_support.secondLine case_000391_seq case_000391_b = case_000391_secondLine := by
  norm_num [case_000391_secondLine, case_000391_support, case_000391_seq, case_000391_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000391_sourceAgrees :
    SourceAgrees case_000391_support case_000391_rank.val case_000391_mask := by
  intro hlt
  have hrank : (⟨case_000391_rank.val, hlt⟩ : Fin numPairWords) = case_000391_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000391_rank.val, hlt⟩ case_000391_mask =
        case_000391_seq := by
    simpa [hrank] using case_000391_seqAtRank
  simp [SourceChecks, hseq, case_000391_support,
    checkTranslationConstraintSource, case_000391_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000391_rows :
    EqEqPosVarSecondRows case_000391_support case_000391_rank.val case_000391_mask := by
  intro hlt
  have hrank : (⟨case_000391_rank.val, hlt⟩ : Fin numPairWords) = case_000391_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000391_rank.val, hlt⟩ case_000391_mask =
        case_000391_seq := by
    simpa [hrank] using case_000391_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000391_rank.val, hlt⟩ case_000391_mask =
        case_000391_b := by
    simpa [hrank] using case_000391_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000391_support case_000391_rank.val hlt
          case_000391_mask = case_000391_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000391_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000391_support case_000391_rank.val hlt
          case_000391_mask = case_000391_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000391_secondLine_eq]
  have case_000391_fixedFirst :
      FixedRow (FirstLineAt case_000391_support case_000391_rank.val hlt case_000391_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000391_firstLine, FixedRow]
  have case_000391_rowSecond :
      EqEqPosRow (SecondLineAt case_000391_support case_000391_rank.val hlt case_000391_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000391_secondLine, EqEqPosRow]
  exact ⟨case_000391_fixedFirst, case_000391_rowSecond⟩

private theorem case_000391_existsRows :
    ExistsEqEqPosVarSecondRows case_000391_rank.val case_000391_mask :=
  ⟨case_000391_support, case_000391_sourceAgrees, case_000391_rows⟩

private theorem case_000391_covered :
    RowPropertyParametricCovered case_000391_rank.val case_000391_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000391_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000392_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000392_mask : SignMask := ⟨18, by decide⟩
private def case_000392_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000392_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000392_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000392_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000392_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000392_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000392_rankWord :
    rankPairWord? case_000392_word = some case_000392_rank := by
  decide

private theorem case_000392_unrank :
    unrankPairWord case_000392_rank = case_000392_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000392_word case_000392_rank).1
    case_000392_rankWord |>.symm

private theorem case_000392_seqChoice :
    translationChoiceSeq case_000392_word case_000392_mask = case_000392_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000392_seqAtRank :
    translationSeqAtRankMask case_000392_rank case_000392_mask = case_000392_seq := by
  rw [translationSeqAtRankMask, case_000392_unrank]
  exact case_000392_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000392_bAtRank :
    translationBAtRankMask case_000392_rank case_000392_mask = case_000392_b := by
  rw [translationBAtRankMask, case_000392_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000392_b, case_000392_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000392_firstLine_eq :
    case_000392_support.firstLine case_000392_seq case_000392_b = case_000392_firstLine := by
  norm_num [case_000392_firstLine, case_000392_support, case_000392_seq, case_000392_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000392_secondLine_eq :
    case_000392_support.secondLine case_000392_seq case_000392_b = case_000392_secondLine := by
  norm_num [case_000392_secondLine, case_000392_support, case_000392_seq, case_000392_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000392_sourceAgrees :
    SourceAgrees case_000392_support case_000392_rank.val case_000392_mask := by
  intro hlt
  have hrank : (⟨case_000392_rank.val, hlt⟩ : Fin numPairWords) = case_000392_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000392_rank.val, hlt⟩ case_000392_mask =
        case_000392_seq := by
    simpa [hrank] using case_000392_seqAtRank
  simp [SourceChecks, hseq, case_000392_support,
    checkTranslationConstraintSource, case_000392_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000392_rows :
    EqEqPosVarFirstRows case_000392_support case_000392_rank.val case_000392_mask := by
  intro hlt
  have hrank : (⟨case_000392_rank.val, hlt⟩ : Fin numPairWords) = case_000392_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000392_rank.val, hlt⟩ case_000392_mask =
        case_000392_seq := by
    simpa [hrank] using case_000392_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000392_rank.val, hlt⟩ case_000392_mask =
        case_000392_b := by
    simpa [hrank] using case_000392_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000392_support case_000392_rank.val hlt
          case_000392_mask = case_000392_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000392_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000392_support case_000392_rank.val hlt
          case_000392_mask = case_000392_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000392_secondLine_eq]
  have case_000392_rowFirst :
      EqEqPosRow (FirstLineAt case_000392_support case_000392_rank.val hlt case_000392_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000392_firstLine, EqEqPosRow]
  have case_000392_fixedSecond :
      FixedRow (SecondLineAt case_000392_support case_000392_rank.val hlt case_000392_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000392_secondLine, FixedRow]
  exact ⟨case_000392_rowFirst, case_000392_fixedSecond⟩

private theorem case_000392_existsRows :
    ExistsEqEqPosVarFirstRows case_000392_rank.val case_000392_mask :=
  ⟨case_000392_support, case_000392_sourceAgrees, case_000392_rows⟩

private theorem case_000392_covered :
    RowPropertyParametricCovered case_000392_rank.val case_000392_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000392_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000393_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000393_mask : SignMask := ⟨22, by decide⟩
private def case_000393_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000393_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000393_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000393_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000393_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000393_secondLine : StrictLin2 := { a := (-75/374), b := (-75/374), c := (-201/187) }

private theorem case_000393_rankWord :
    rankPairWord? case_000393_word = some case_000393_rank := by
  decide

private theorem case_000393_unrank :
    unrankPairWord case_000393_rank = case_000393_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000393_word case_000393_rank).1
    case_000393_rankWord |>.symm

private theorem case_000393_seqChoice :
    translationChoiceSeq case_000393_word case_000393_mask = case_000393_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000393_seqAtRank :
    translationSeqAtRankMask case_000393_rank case_000393_mask = case_000393_seq := by
  rw [translationSeqAtRankMask, case_000393_unrank]
  exact case_000393_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000393_bAtRank :
    translationBAtRankMask case_000393_rank case_000393_mask = case_000393_b := by
  rw [translationBAtRankMask, case_000393_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000393_b, case_000393_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000393_firstLine_eq :
    case_000393_support.firstLine case_000393_seq case_000393_b = case_000393_firstLine := by
  norm_num [case_000393_firstLine, case_000393_support, case_000393_seq, case_000393_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000393_secondLine_eq :
    case_000393_support.secondLine case_000393_seq case_000393_b = case_000393_secondLine := by
  norm_num [case_000393_secondLine, case_000393_support, case_000393_seq, case_000393_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000393_sourceAgrees :
    SourceAgrees case_000393_support case_000393_rank.val case_000393_mask := by
  intro hlt
  have hrank : (⟨case_000393_rank.val, hlt⟩ : Fin numPairWords) = case_000393_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000393_rank.val, hlt⟩ case_000393_mask =
        case_000393_seq := by
    simpa [hrank] using case_000393_seqAtRank
  simp [SourceChecks, hseq, case_000393_support,
    checkTranslationConstraintSource, case_000393_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000393_rows :
    EqEqPosVarSecondRows case_000393_support case_000393_rank.val case_000393_mask := by
  intro hlt
  have hrank : (⟨case_000393_rank.val, hlt⟩ : Fin numPairWords) = case_000393_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000393_rank.val, hlt⟩ case_000393_mask =
        case_000393_seq := by
    simpa [hrank] using case_000393_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000393_rank.val, hlt⟩ case_000393_mask =
        case_000393_b := by
    simpa [hrank] using case_000393_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000393_support case_000393_rank.val hlt
          case_000393_mask = case_000393_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000393_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000393_support case_000393_rank.val hlt
          case_000393_mask = case_000393_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000393_secondLine_eq]
  have case_000393_fixedFirst :
      FixedRow (FirstLineAt case_000393_support case_000393_rank.val hlt case_000393_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000393_firstLine, FixedRow]
  have case_000393_rowSecond :
      EqEqPosRow (SecondLineAt case_000393_support case_000393_rank.val hlt case_000393_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000393_secondLine, EqEqPosRow]
  exact ⟨case_000393_fixedFirst, case_000393_rowSecond⟩

private theorem case_000393_existsRows :
    ExistsEqEqPosVarSecondRows case_000393_rank.val case_000393_mask :=
  ⟨case_000393_support, case_000393_sourceAgrees, case_000393_rows⟩

private theorem case_000393_covered :
    RowPropertyParametricCovered case_000393_rank.val case_000393_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000393_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000394_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000394_mask : SignMask := ⟨24, by decide⟩
private def case_000394_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000394_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000394_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000394_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000394_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000394_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000394_rankWord :
    rankPairWord? case_000394_word = some case_000394_rank := by
  decide

private theorem case_000394_unrank :
    unrankPairWord case_000394_rank = case_000394_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000394_word case_000394_rank).1
    case_000394_rankWord |>.symm

private theorem case_000394_seqChoice :
    translationChoiceSeq case_000394_word case_000394_mask = case_000394_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000394_seqAtRank :
    translationSeqAtRankMask case_000394_rank case_000394_mask = case_000394_seq := by
  rw [translationSeqAtRankMask, case_000394_unrank]
  exact case_000394_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000394_bAtRank :
    translationBAtRankMask case_000394_rank case_000394_mask = case_000394_b := by
  rw [translationBAtRankMask, case_000394_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000394_b, case_000394_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000394_firstLine_eq :
    case_000394_support.firstLine case_000394_seq case_000394_b = case_000394_firstLine := by
  norm_num [case_000394_firstLine, case_000394_support, case_000394_seq, case_000394_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000394_secondLine_eq :
    case_000394_support.secondLine case_000394_seq case_000394_b = case_000394_secondLine := by
  norm_num [case_000394_secondLine, case_000394_support, case_000394_seq, case_000394_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000394_sourceAgrees :
    SourceAgrees case_000394_support case_000394_rank.val case_000394_mask := by
  intro hlt
  have hrank : (⟨case_000394_rank.val, hlt⟩ : Fin numPairWords) = case_000394_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000394_rank.val, hlt⟩ case_000394_mask =
        case_000394_seq := by
    simpa [hrank] using case_000394_seqAtRank
  simp [SourceChecks, hseq, case_000394_support,
    checkTranslationConstraintSource, case_000394_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000394_rows :
    EqEqPosVarFirstRows case_000394_support case_000394_rank.val case_000394_mask := by
  intro hlt
  have hrank : (⟨case_000394_rank.val, hlt⟩ : Fin numPairWords) = case_000394_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000394_rank.val, hlt⟩ case_000394_mask =
        case_000394_seq := by
    simpa [hrank] using case_000394_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000394_rank.val, hlt⟩ case_000394_mask =
        case_000394_b := by
    simpa [hrank] using case_000394_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000394_support case_000394_rank.val hlt
          case_000394_mask = case_000394_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000394_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000394_support case_000394_rank.val hlt
          case_000394_mask = case_000394_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000394_secondLine_eq]
  have case_000394_rowFirst :
      EqEqPosRow (FirstLineAt case_000394_support case_000394_rank.val hlt case_000394_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000394_firstLine, EqEqPosRow]
  have case_000394_fixedSecond :
      FixedRow (SecondLineAt case_000394_support case_000394_rank.val hlt case_000394_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000394_secondLine, FixedRow]
  exact ⟨case_000394_rowFirst, case_000394_fixedSecond⟩

private theorem case_000394_existsRows :
    ExistsEqEqPosVarFirstRows case_000394_rank.val case_000394_mask :=
  ⟨case_000394_support, case_000394_sourceAgrees, case_000394_rows⟩

private theorem case_000394_covered :
    RowPropertyParametricCovered case_000394_rank.val case_000394_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000394_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000395_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000395_mask : SignMask := ⟨28, by decide⟩
private def case_000395_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000395_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000395_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000395_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000395_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000395_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000395_rankWord :
    rankPairWord? case_000395_word = some case_000395_rank := by
  decide

private theorem case_000395_unrank :
    unrankPairWord case_000395_rank = case_000395_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000395_word case_000395_rank).1
    case_000395_rankWord |>.symm

private theorem case_000395_seqChoice :
    translationChoiceSeq case_000395_word case_000395_mask = case_000395_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000395_seqAtRank :
    translationSeqAtRankMask case_000395_rank case_000395_mask = case_000395_seq := by
  rw [translationSeqAtRankMask, case_000395_unrank]
  exact case_000395_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000395_bAtRank :
    translationBAtRankMask case_000395_rank case_000395_mask = case_000395_b := by
  rw [translationBAtRankMask, case_000395_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000395_b, case_000395_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000395_firstLine_eq :
    case_000395_support.firstLine case_000395_seq case_000395_b = case_000395_firstLine := by
  norm_num [case_000395_firstLine, case_000395_support, case_000395_seq, case_000395_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000395_secondLine_eq :
    case_000395_support.secondLine case_000395_seq case_000395_b = case_000395_secondLine := by
  norm_num [case_000395_secondLine, case_000395_support, case_000395_seq, case_000395_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000395_sourceAgrees :
    SourceAgrees case_000395_support case_000395_rank.val case_000395_mask := by
  intro hlt
  have hrank : (⟨case_000395_rank.val, hlt⟩ : Fin numPairWords) = case_000395_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000395_rank.val, hlt⟩ case_000395_mask =
        case_000395_seq := by
    simpa [hrank] using case_000395_seqAtRank
  simp [SourceChecks, hseq, case_000395_support,
    checkTranslationConstraintSource, case_000395_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000395_rows :
    OppOneMinusVarFirstRows case_000395_support case_000395_rank.val case_000395_mask := by
  intro hlt
  have hrank : (⟨case_000395_rank.val, hlt⟩ : Fin numPairWords) = case_000395_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000395_rank.val, hlt⟩ case_000395_mask =
        case_000395_seq := by
    simpa [hrank] using case_000395_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000395_rank.val, hlt⟩ case_000395_mask =
        case_000395_b := by
    simpa [hrank] using case_000395_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000395_support case_000395_rank.val hlt
          case_000395_mask = case_000395_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000395_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000395_support case_000395_rank.val hlt
          case_000395_mask = case_000395_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000395_secondLine_eq]
  have case_000395_rowFirst :
      OppPosRow (FirstLineAt case_000395_support case_000395_rank.val hlt case_000395_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000395_firstLine, OppPosRow]
  have case_000395_fixedSecond :
      FixedRow (SecondLineAt case_000395_support case_000395_rank.val hlt case_000395_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000395_secondLine, FixedRow]
  exact ⟨case_000395_rowFirst, case_000395_fixedSecond⟩

private theorem case_000395_existsRows :
    ExistsOppOneMinusVarFirstRows case_000395_rank.val case_000395_mask :=
  ⟨case_000395_support, case_000395_sourceAgrees, case_000395_rows⟩

private theorem case_000395_covered :
    RowPropertyParametricCovered case_000395_rank.val case_000395_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000395_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000396_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000396_mask : SignMask := ⟨29, by decide⟩
private def case_000396_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000396_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000396_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000396_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-52/9) }
private def case_000396_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000396_secondLine : StrictLin2 := { a := (-87/518), b := (-87/518), c := (-69/259) }

private theorem case_000396_rankWord :
    rankPairWord? case_000396_word = some case_000396_rank := by
  decide

private theorem case_000396_unrank :
    unrankPairWord case_000396_rank = case_000396_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000396_word case_000396_rank).1
    case_000396_rankWord |>.symm

private theorem case_000396_seqChoice :
    translationChoiceSeq case_000396_word case_000396_mask = case_000396_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000396_seqAtRank :
    translationSeqAtRankMask case_000396_rank case_000396_mask = case_000396_seq := by
  rw [translationSeqAtRankMask, case_000396_unrank]
  exact case_000396_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000396_bAtRank :
    translationBAtRankMask case_000396_rank case_000396_mask = case_000396_b := by
  rw [translationBAtRankMask, case_000396_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000396_b, case_000396_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000396_firstLine_eq :
    case_000396_support.firstLine case_000396_seq case_000396_b = case_000396_firstLine := by
  norm_num [case_000396_firstLine, case_000396_support, case_000396_seq, case_000396_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000396_secondLine_eq :
    case_000396_support.secondLine case_000396_seq case_000396_b = case_000396_secondLine := by
  norm_num [case_000396_secondLine, case_000396_support, case_000396_seq, case_000396_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000396_sourceAgrees :
    SourceAgrees case_000396_support case_000396_rank.val case_000396_mask := by
  intro hlt
  have hrank : (⟨case_000396_rank.val, hlt⟩ : Fin numPairWords) = case_000396_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000396_rank.val, hlt⟩ case_000396_mask =
        case_000396_seq := by
    simpa [hrank] using case_000396_seqAtRank
  simp [SourceChecks, hseq, case_000396_support,
    checkTranslationConstraintSource, case_000396_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000396_rows :
    EqEqPosVarSecondRows case_000396_support case_000396_rank.val case_000396_mask := by
  intro hlt
  have hrank : (⟨case_000396_rank.val, hlt⟩ : Fin numPairWords) = case_000396_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000396_rank.val, hlt⟩ case_000396_mask =
        case_000396_seq := by
    simpa [hrank] using case_000396_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000396_rank.val, hlt⟩ case_000396_mask =
        case_000396_b := by
    simpa [hrank] using case_000396_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000396_support case_000396_rank.val hlt
          case_000396_mask = case_000396_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000396_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000396_support case_000396_rank.val hlt
          case_000396_mask = case_000396_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000396_secondLine_eq]
  have case_000396_fixedFirst :
      FixedRow (FirstLineAt case_000396_support case_000396_rank.val hlt case_000396_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000396_firstLine, FixedRow]
  have case_000396_rowSecond :
      EqEqPosRow (SecondLineAt case_000396_support case_000396_rank.val hlt case_000396_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000396_secondLine, EqEqPosRow]
  exact ⟨case_000396_fixedFirst, case_000396_rowSecond⟩

private theorem case_000396_existsRows :
    ExistsEqEqPosVarSecondRows case_000396_rank.val case_000396_mask :=
  ⟨case_000396_support, case_000396_sourceAgrees, case_000396_rows⟩

private theorem case_000396_covered :
    RowPropertyParametricCovered case_000396_rank.val case_000396_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000396_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000397_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000397_mask : SignMask := ⟨31, by decide⟩
private def case_000397_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000397_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000397_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000397_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000397_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000397_secondLine : StrictLin2 := { a := (-87/494), b := (-87/494), c := (-240/247) }

private theorem case_000397_rankWord :
    rankPairWord? case_000397_word = some case_000397_rank := by
  decide

private theorem case_000397_unrank :
    unrankPairWord case_000397_rank = case_000397_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000397_word case_000397_rank).1
    case_000397_rankWord |>.symm

private theorem case_000397_seqChoice :
    translationChoiceSeq case_000397_word case_000397_mask = case_000397_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000397_seqAtRank :
    translationSeqAtRankMask case_000397_rank case_000397_mask = case_000397_seq := by
  rw [translationSeqAtRankMask, case_000397_unrank]
  exact case_000397_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000397_bAtRank :
    translationBAtRankMask case_000397_rank case_000397_mask = case_000397_b := by
  rw [translationBAtRankMask, case_000397_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000397_b, case_000397_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000397_firstLine_eq :
    case_000397_support.firstLine case_000397_seq case_000397_b = case_000397_firstLine := by
  norm_num [case_000397_firstLine, case_000397_support, case_000397_seq, case_000397_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000397_secondLine_eq :
    case_000397_support.secondLine case_000397_seq case_000397_b = case_000397_secondLine := by
  norm_num [case_000397_secondLine, case_000397_support, case_000397_seq, case_000397_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000397_sourceAgrees :
    SourceAgrees case_000397_support case_000397_rank.val case_000397_mask := by
  intro hlt
  have hrank : (⟨case_000397_rank.val, hlt⟩ : Fin numPairWords) = case_000397_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000397_rank.val, hlt⟩ case_000397_mask =
        case_000397_seq := by
    simpa [hrank] using case_000397_seqAtRank
  simp [SourceChecks, hseq, case_000397_support,
    checkTranslationConstraintSource, case_000397_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000397_rows :
    EqEqPosVarSecondRows case_000397_support case_000397_rank.val case_000397_mask := by
  intro hlt
  have hrank : (⟨case_000397_rank.val, hlt⟩ : Fin numPairWords) = case_000397_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000397_rank.val, hlt⟩ case_000397_mask =
        case_000397_seq := by
    simpa [hrank] using case_000397_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000397_rank.val, hlt⟩ case_000397_mask =
        case_000397_b := by
    simpa [hrank] using case_000397_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000397_support case_000397_rank.val hlt
          case_000397_mask = case_000397_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000397_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000397_support case_000397_rank.val hlt
          case_000397_mask = case_000397_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000397_secondLine_eq]
  have case_000397_fixedFirst :
      FixedRow (FirstLineAt case_000397_support case_000397_rank.val hlt case_000397_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000397_firstLine, FixedRow]
  have case_000397_rowSecond :
      EqEqPosRow (SecondLineAt case_000397_support case_000397_rank.val hlt case_000397_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000397_secondLine, EqEqPosRow]
  exact ⟨case_000397_fixedFirst, case_000397_rowSecond⟩

private theorem case_000397_existsRows :
    ExistsEqEqPosVarSecondRows case_000397_rank.val case_000397_mask :=
  ⟨case_000397_support, case_000397_sourceAgrees, case_000397_rows⟩

private theorem case_000397_covered :
    RowPropertyParametricCovered case_000397_rank.val case_000397_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000397_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000398_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000398_mask : SignMask := ⟨45, by decide⟩
private def case_000398_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000398_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000398_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000398_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-52/9) }
private def case_000398_firstLine : StrictLin2 := { a := 1, b := -1, c := (-79/5) }
private def case_000398_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000398_rankWord :
    rankPairWord? case_000398_word = some case_000398_rank := by
  decide

private theorem case_000398_unrank :
    unrankPairWord case_000398_rank = case_000398_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000398_word case_000398_rank).1
    case_000398_rankWord |>.symm

private theorem case_000398_seqChoice :
    translationChoiceSeq case_000398_word case_000398_mask = case_000398_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000398_seqAtRank :
    translationSeqAtRankMask case_000398_rank case_000398_mask = case_000398_seq := by
  rw [translationSeqAtRankMask, case_000398_unrank]
  exact case_000398_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000398_bAtRank :
    translationBAtRankMask case_000398_rank case_000398_mask = case_000398_b := by
  rw [translationBAtRankMask, case_000398_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000398_b, case_000398_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000398_firstLine_eq :
    case_000398_support.firstLine case_000398_seq case_000398_b = case_000398_firstLine := by
  norm_num [case_000398_firstLine, case_000398_support, case_000398_seq, case_000398_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000398_secondLine_eq :
    case_000398_support.secondLine case_000398_seq case_000398_b = case_000398_secondLine := by
  norm_num [case_000398_secondLine, case_000398_support, case_000398_seq, case_000398_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000398_sourceAgrees :
    SourceAgrees case_000398_support case_000398_rank.val case_000398_mask := by
  intro hlt
  have hrank : (⟨case_000398_rank.val, hlt⟩ : Fin numPairWords) = case_000398_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000398_rank.val, hlt⟩ case_000398_mask =
        case_000398_seq := by
    simpa [hrank] using case_000398_seqAtRank
  simp [SourceChecks, hseq, case_000398_support,
    checkTranslationConstraintSource, case_000398_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000398_rows :
    OppMinusOneVarFirstRows case_000398_support case_000398_rank.val case_000398_mask := by
  intro hlt
  have hrank : (⟨case_000398_rank.val, hlt⟩ : Fin numPairWords) = case_000398_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000398_rank.val, hlt⟩ case_000398_mask =
        case_000398_seq := by
    simpa [hrank] using case_000398_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000398_rank.val, hlt⟩ case_000398_mask =
        case_000398_b := by
    simpa [hrank] using case_000398_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000398_support case_000398_rank.val hlt
          case_000398_mask = case_000398_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000398_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000398_support case_000398_rank.val hlt
          case_000398_mask = case_000398_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000398_secondLine_eq]
  have case_000398_rowFirst :
      OppNegRow (FirstLineAt case_000398_support case_000398_rank.val hlt case_000398_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000398_firstLine, OppNegRow]
  have case_000398_fixedSecond :
      FixedRow (SecondLineAt case_000398_support case_000398_rank.val hlt case_000398_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000398_secondLine, FixedRow]
  exact ⟨case_000398_rowFirst, case_000398_fixedSecond⟩

private theorem case_000398_existsRows :
    ExistsOppMinusOneVarFirstRows case_000398_rank.val case_000398_mask :=
  ⟨case_000398_support, case_000398_sourceAgrees, case_000398_rows⟩

private theorem case_000398_covered :
    RowPropertyParametricCovered case_000398_rank.val case_000398_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000398_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000399_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000399_mask : SignMask := ⟨47, by decide⟩
private def case_000399_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000399_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000399_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000399_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000399_firstLine : StrictLin2 := { a := 1, b := -1, c := (-43/5) }
private def case_000399_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000399_rankWord :
    rankPairWord? case_000399_word = some case_000399_rank := by
  decide

private theorem case_000399_unrank :
    unrankPairWord case_000399_rank = case_000399_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000399_word case_000399_rank).1
    case_000399_rankWord |>.symm

private theorem case_000399_seqChoice :
    translationChoiceSeq case_000399_word case_000399_mask = case_000399_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000399_seqAtRank :
    translationSeqAtRankMask case_000399_rank case_000399_mask = case_000399_seq := by
  rw [translationSeqAtRankMask, case_000399_unrank]
  exact case_000399_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000399_bAtRank :
    translationBAtRankMask case_000399_rank case_000399_mask = case_000399_b := by
  rw [translationBAtRankMask, case_000399_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000399_b, case_000399_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000399_firstLine_eq :
    case_000399_support.firstLine case_000399_seq case_000399_b = case_000399_firstLine := by
  norm_num [case_000399_firstLine, case_000399_support, case_000399_seq, case_000399_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000399_secondLine_eq :
    case_000399_support.secondLine case_000399_seq case_000399_b = case_000399_secondLine := by
  norm_num [case_000399_secondLine, case_000399_support, case_000399_seq, case_000399_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000399_sourceAgrees :
    SourceAgrees case_000399_support case_000399_rank.val case_000399_mask := by
  intro hlt
  have hrank : (⟨case_000399_rank.val, hlt⟩ : Fin numPairWords) = case_000399_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000399_rank.val, hlt⟩ case_000399_mask =
        case_000399_seq := by
    simpa [hrank] using case_000399_seqAtRank
  simp [SourceChecks, hseq, case_000399_support,
    checkTranslationConstraintSource, case_000399_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000399_rows :
    OppMinusOneVarFirstRows case_000399_support case_000399_rank.val case_000399_mask := by
  intro hlt
  have hrank : (⟨case_000399_rank.val, hlt⟩ : Fin numPairWords) = case_000399_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000399_rank.val, hlt⟩ case_000399_mask =
        case_000399_seq := by
    simpa [hrank] using case_000399_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000399_rank.val, hlt⟩ case_000399_mask =
        case_000399_b := by
    simpa [hrank] using case_000399_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000399_support case_000399_rank.val hlt
          case_000399_mask = case_000399_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000399_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000399_support case_000399_rank.val hlt
          case_000399_mask = case_000399_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000399_secondLine_eq]
  have case_000399_rowFirst :
      OppNegRow (FirstLineAt case_000399_support case_000399_rank.val hlt case_000399_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000399_firstLine, OppNegRow]
  have case_000399_fixedSecond :
      FixedRow (SecondLineAt case_000399_support case_000399_rank.val hlt case_000399_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000399_secondLine, FixedRow]
  exact ⟨case_000399_rowFirst, case_000399_fixedSecond⟩

private theorem case_000399_existsRows :
    ExistsOppMinusOneVarFirstRows case_000399_rank.val case_000399_mask :=
  ⟨case_000399_support, case_000399_sourceAgrees, case_000399_rows⟩

private theorem case_000399_covered :
    RowPropertyParametricCovered case_000399_rank.val case_000399_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000399_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000400_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000400_mask : SignMask := ⟨54, by decide⟩
private def case_000400_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000400_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000400_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000400_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (148/9) }
private def case_000400_firstLine : StrictLin2 := { a := (-13/19), b := (-13/19), c := (-217/57) }
private def case_000400_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000400_rankWord :
    rankPairWord? case_000400_word = some case_000400_rank := by
  decide

private theorem case_000400_unrank :
    unrankPairWord case_000400_rank = case_000400_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000400_word case_000400_rank).1
    case_000400_rankWord |>.symm

private theorem case_000400_seqChoice :
    translationChoiceSeq case_000400_word case_000400_mask = case_000400_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000400_seqAtRank :
    translationSeqAtRankMask case_000400_rank case_000400_mask = case_000400_seq := by
  rw [translationSeqAtRankMask, case_000400_unrank]
  exact case_000400_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000400_bAtRank :
    translationBAtRankMask case_000400_rank case_000400_mask = case_000400_b := by
  rw [translationBAtRankMask, case_000400_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000400_b, case_000400_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000400_firstLine_eq :
    case_000400_support.firstLine case_000400_seq case_000400_b = case_000400_firstLine := by
  norm_num [case_000400_firstLine, case_000400_support, case_000400_seq, case_000400_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000400_secondLine_eq :
    case_000400_support.secondLine case_000400_seq case_000400_b = case_000400_secondLine := by
  norm_num [case_000400_secondLine, case_000400_support, case_000400_seq, case_000400_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000400_sourceAgrees :
    SourceAgrees case_000400_support case_000400_rank.val case_000400_mask := by
  intro hlt
  have hrank : (⟨case_000400_rank.val, hlt⟩ : Fin numPairWords) = case_000400_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000400_rank.val, hlt⟩ case_000400_mask =
        case_000400_seq := by
    simpa [hrank] using case_000400_seqAtRank
  simp [SourceChecks, hseq, case_000400_support,
    checkTranslationConstraintSource, case_000400_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000400_rows :
    EqEqPosVarFirstRows case_000400_support case_000400_rank.val case_000400_mask := by
  intro hlt
  have hrank : (⟨case_000400_rank.val, hlt⟩ : Fin numPairWords) = case_000400_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000400_rank.val, hlt⟩ case_000400_mask =
        case_000400_seq := by
    simpa [hrank] using case_000400_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000400_rank.val, hlt⟩ case_000400_mask =
        case_000400_b := by
    simpa [hrank] using case_000400_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000400_support case_000400_rank.val hlt
          case_000400_mask = case_000400_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000400_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000400_support case_000400_rank.val hlt
          case_000400_mask = case_000400_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000400_secondLine_eq]
  have case_000400_rowFirst :
      EqEqPosRow (FirstLineAt case_000400_support case_000400_rank.val hlt case_000400_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000400_firstLine, EqEqPosRow]
  have case_000400_fixedSecond :
      FixedRow (SecondLineAt case_000400_support case_000400_rank.val hlt case_000400_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000400_secondLine, FixedRow]
  exact ⟨case_000400_rowFirst, case_000400_fixedSecond⟩

private theorem case_000400_existsRows :
    ExistsEqEqPosVarFirstRows case_000400_rank.val case_000400_mask :=
  ⟨case_000400_support, case_000400_sourceAgrees, case_000400_rows⟩

private theorem case_000400_covered :
    RowPropertyParametricCovered case_000400_rank.val case_000400_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000400_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000401_rank : Fin numPairWords := ⟨125, by decide⟩
private def case_000401_mask : SignMask := ⟨55, by decide⟩
private def case_000401_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000401_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000401_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000401_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (148/9) }
private def case_000401_firstLine : StrictLin2 := { a := (-13/37), b := (-13/37), c := (-361/111) }
private def case_000401_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000401_rankWord :
    rankPairWord? case_000401_word = some case_000401_rank := by
  decide

private theorem case_000401_unrank :
    unrankPairWord case_000401_rank = case_000401_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000401_word case_000401_rank).1
    case_000401_rankWord |>.symm

private theorem case_000401_seqChoice :
    translationChoiceSeq case_000401_word case_000401_mask = case_000401_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000401_seqAtRank :
    translationSeqAtRankMask case_000401_rank case_000401_mask = case_000401_seq := by
  rw [translationSeqAtRankMask, case_000401_unrank]
  exact case_000401_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000401_bAtRank :
    translationBAtRankMask case_000401_rank case_000401_mask = case_000401_b := by
  rw [translationBAtRankMask, case_000401_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000401_b, case_000401_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000401_firstLine_eq :
    case_000401_support.firstLine case_000401_seq case_000401_b = case_000401_firstLine := by
  norm_num [case_000401_firstLine, case_000401_support, case_000401_seq, case_000401_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000401_secondLine_eq :
    case_000401_support.secondLine case_000401_seq case_000401_b = case_000401_secondLine := by
  norm_num [case_000401_secondLine, case_000401_support, case_000401_seq, case_000401_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000401_sourceAgrees :
    SourceAgrees case_000401_support case_000401_rank.val case_000401_mask := by
  intro hlt
  have hrank : (⟨case_000401_rank.val, hlt⟩ : Fin numPairWords) = case_000401_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000401_rank.val, hlt⟩ case_000401_mask =
        case_000401_seq := by
    simpa [hrank] using case_000401_seqAtRank
  simp [SourceChecks, hseq, case_000401_support,
    checkTranslationConstraintSource, case_000401_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000401_rows :
    EqEqPosVarFirstRows case_000401_support case_000401_rank.val case_000401_mask := by
  intro hlt
  have hrank : (⟨case_000401_rank.val, hlt⟩ : Fin numPairWords) = case_000401_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000401_rank.val, hlt⟩ case_000401_mask =
        case_000401_seq := by
    simpa [hrank] using case_000401_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000401_rank.val, hlt⟩ case_000401_mask =
        case_000401_b := by
    simpa [hrank] using case_000401_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000401_support case_000401_rank.val hlt
          case_000401_mask = case_000401_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000401_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000401_support case_000401_rank.val hlt
          case_000401_mask = case_000401_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000401_secondLine_eq]
  have case_000401_rowFirst :
      EqEqPosRow (FirstLineAt case_000401_support case_000401_rank.val hlt case_000401_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000401_firstLine, EqEqPosRow]
  have case_000401_fixedSecond :
      FixedRow (SecondLineAt case_000401_support case_000401_rank.val hlt case_000401_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000401_secondLine, FixedRow]
  exact ⟨case_000401_rowFirst, case_000401_fixedSecond⟩

private theorem case_000401_existsRows :
    ExistsEqEqPosVarFirstRows case_000401_rank.val case_000401_mask :=
  ⟨case_000401_support, case_000401_sourceAgrees, case_000401_rows⟩

private theorem case_000401_covered :
    RowPropertyParametricCovered case_000401_rank.val case_000401_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000401_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000402_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000402_mask : SignMask := ⟨9, by decide⟩
private def case_000402_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000402_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000402_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000402_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000402_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000402_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000402_rankWord :
    rankPairWord? case_000402_word = some case_000402_rank := by
  decide

private theorem case_000402_unrank :
    unrankPairWord case_000402_rank = case_000402_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000402_word case_000402_rank).1
    case_000402_rankWord |>.symm

private theorem case_000402_seqChoice :
    translationChoiceSeq case_000402_word case_000402_mask = case_000402_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000402_seqAtRank :
    translationSeqAtRankMask case_000402_rank case_000402_mask = case_000402_seq := by
  rw [translationSeqAtRankMask, case_000402_unrank]
  exact case_000402_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000402_bAtRank :
    translationBAtRankMask case_000402_rank case_000402_mask = case_000402_b := by
  rw [translationBAtRankMask, case_000402_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000402_b, case_000402_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000402_firstLine_eq :
    case_000402_support.firstLine case_000402_seq case_000402_b = case_000402_firstLine := by
  norm_num [case_000402_firstLine, case_000402_support, case_000402_seq, case_000402_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000402_secondLine_eq :
    case_000402_support.secondLine case_000402_seq case_000402_b = case_000402_secondLine := by
  norm_num [case_000402_secondLine, case_000402_support, case_000402_seq, case_000402_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000402_sourceAgrees :
    SourceAgrees case_000402_support case_000402_rank.val case_000402_mask := by
  intro hlt
  have hrank : (⟨case_000402_rank.val, hlt⟩ : Fin numPairWords) = case_000402_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000402_rank.val, hlt⟩ case_000402_mask =
        case_000402_seq := by
    simpa [hrank] using case_000402_seqAtRank
  simp [SourceChecks, hseq, case_000402_support,
    checkTranslationConstraintSource, case_000402_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000402_rows :
    EqEqPosVarFirstRows case_000402_support case_000402_rank.val case_000402_mask := by
  intro hlt
  have hrank : (⟨case_000402_rank.val, hlt⟩ : Fin numPairWords) = case_000402_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000402_rank.val, hlt⟩ case_000402_mask =
        case_000402_seq := by
    simpa [hrank] using case_000402_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000402_rank.val, hlt⟩ case_000402_mask =
        case_000402_b := by
    simpa [hrank] using case_000402_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000402_support case_000402_rank.val hlt
          case_000402_mask = case_000402_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000402_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000402_support case_000402_rank.val hlt
          case_000402_mask = case_000402_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000402_secondLine_eq]
  have case_000402_rowFirst :
      EqEqPosRow (FirstLineAt case_000402_support case_000402_rank.val hlt case_000402_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000402_firstLine, EqEqPosRow]
  have case_000402_fixedSecond :
      FixedRow (SecondLineAt case_000402_support case_000402_rank.val hlt case_000402_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000402_secondLine, FixedRow]
  exact ⟨case_000402_rowFirst, case_000402_fixedSecond⟩

private theorem case_000402_existsRows :
    ExistsEqEqPosVarFirstRows case_000402_rank.val case_000402_mask :=
  ⟨case_000402_support, case_000402_sourceAgrees, case_000402_rows⟩

private theorem case_000402_covered :
    RowPropertyParametricCovered case_000402_rank.val case_000402_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000402_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000403_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000403_mask : SignMask := ⟨13, by decide⟩
private def case_000403_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000403_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000403_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000403_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000403_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000403_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000403_rankWord :
    rankPairWord? case_000403_word = some case_000403_rank := by
  decide

private theorem case_000403_unrank :
    unrankPairWord case_000403_rank = case_000403_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000403_word case_000403_rank).1
    case_000403_rankWord |>.symm

private theorem case_000403_seqChoice :
    translationChoiceSeq case_000403_word case_000403_mask = case_000403_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000403_seqAtRank :
    translationSeqAtRankMask case_000403_rank case_000403_mask = case_000403_seq := by
  rw [translationSeqAtRankMask, case_000403_unrank]
  exact case_000403_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000403_bAtRank :
    translationBAtRankMask case_000403_rank case_000403_mask = case_000403_b := by
  rw [translationBAtRankMask, case_000403_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000403_b, case_000403_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000403_firstLine_eq :
    case_000403_support.firstLine case_000403_seq case_000403_b = case_000403_firstLine := by
  norm_num [case_000403_firstLine, case_000403_support, case_000403_seq, case_000403_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000403_secondLine_eq :
    case_000403_support.secondLine case_000403_seq case_000403_b = case_000403_secondLine := by
  norm_num [case_000403_secondLine, case_000403_support, case_000403_seq, case_000403_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000403_sourceAgrees :
    SourceAgrees case_000403_support case_000403_rank.val case_000403_mask := by
  intro hlt
  have hrank : (⟨case_000403_rank.val, hlt⟩ : Fin numPairWords) = case_000403_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000403_rank.val, hlt⟩ case_000403_mask =
        case_000403_seq := by
    simpa [hrank] using case_000403_seqAtRank
  simp [SourceChecks, hseq, case_000403_support,
    checkTranslationConstraintSource, case_000403_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000403_rows :
    EqEqPosVarSecondRows case_000403_support case_000403_rank.val case_000403_mask := by
  intro hlt
  have hrank : (⟨case_000403_rank.val, hlt⟩ : Fin numPairWords) = case_000403_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000403_rank.val, hlt⟩ case_000403_mask =
        case_000403_seq := by
    simpa [hrank] using case_000403_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000403_rank.val, hlt⟩ case_000403_mask =
        case_000403_b := by
    simpa [hrank] using case_000403_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000403_support case_000403_rank.val hlt
          case_000403_mask = case_000403_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000403_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000403_support case_000403_rank.val hlt
          case_000403_mask = case_000403_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000403_secondLine_eq]
  have case_000403_fixedFirst :
      FixedRow (FirstLineAt case_000403_support case_000403_rank.val hlt case_000403_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000403_firstLine, FixedRow]
  have case_000403_rowSecond :
      EqEqPosRow (SecondLineAt case_000403_support case_000403_rank.val hlt case_000403_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000403_secondLine, EqEqPosRow]
  exact ⟨case_000403_fixedFirst, case_000403_rowSecond⟩

private theorem case_000403_existsRows :
    ExistsEqEqPosVarSecondRows case_000403_rank.val case_000403_mask :=
  ⟨case_000403_support, case_000403_sourceAgrees, case_000403_rows⟩

private theorem case_000403_covered :
    RowPropertyParametricCovered case_000403_rank.val case_000403_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000403_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000404_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000404_mask : SignMask := ⟨18, by decide⟩
private def case_000404_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000404_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000404_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000404_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000404_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000404_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000404_rankWord :
    rankPairWord? case_000404_word = some case_000404_rank := by
  decide

private theorem case_000404_unrank :
    unrankPairWord case_000404_rank = case_000404_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000404_word case_000404_rank).1
    case_000404_rankWord |>.symm

private theorem case_000404_seqChoice :
    translationChoiceSeq case_000404_word case_000404_mask = case_000404_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000404_seqAtRank :
    translationSeqAtRankMask case_000404_rank case_000404_mask = case_000404_seq := by
  rw [translationSeqAtRankMask, case_000404_unrank]
  exact case_000404_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000404_bAtRank :
    translationBAtRankMask case_000404_rank case_000404_mask = case_000404_b := by
  rw [translationBAtRankMask, case_000404_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000404_b, case_000404_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000404_firstLine_eq :
    case_000404_support.firstLine case_000404_seq case_000404_b = case_000404_firstLine := by
  norm_num [case_000404_firstLine, case_000404_support, case_000404_seq, case_000404_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000404_secondLine_eq :
    case_000404_support.secondLine case_000404_seq case_000404_b = case_000404_secondLine := by
  norm_num [case_000404_secondLine, case_000404_support, case_000404_seq, case_000404_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000404_sourceAgrees :
    SourceAgrees case_000404_support case_000404_rank.val case_000404_mask := by
  intro hlt
  have hrank : (⟨case_000404_rank.val, hlt⟩ : Fin numPairWords) = case_000404_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000404_rank.val, hlt⟩ case_000404_mask =
        case_000404_seq := by
    simpa [hrank] using case_000404_seqAtRank
  simp [SourceChecks, hseq, case_000404_support,
    checkTranslationConstraintSource, case_000404_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000404_rows :
    EqEqPosVarFirstRows case_000404_support case_000404_rank.val case_000404_mask := by
  intro hlt
  have hrank : (⟨case_000404_rank.val, hlt⟩ : Fin numPairWords) = case_000404_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000404_rank.val, hlt⟩ case_000404_mask =
        case_000404_seq := by
    simpa [hrank] using case_000404_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000404_rank.val, hlt⟩ case_000404_mask =
        case_000404_b := by
    simpa [hrank] using case_000404_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000404_support case_000404_rank.val hlt
          case_000404_mask = case_000404_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000404_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000404_support case_000404_rank.val hlt
          case_000404_mask = case_000404_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000404_secondLine_eq]
  have case_000404_rowFirst :
      EqEqPosRow (FirstLineAt case_000404_support case_000404_rank.val hlt case_000404_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000404_firstLine, EqEqPosRow]
  have case_000404_fixedSecond :
      FixedRow (SecondLineAt case_000404_support case_000404_rank.val hlt case_000404_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000404_secondLine, FixedRow]
  exact ⟨case_000404_rowFirst, case_000404_fixedSecond⟩

private theorem case_000404_existsRows :
    ExistsEqEqPosVarFirstRows case_000404_rank.val case_000404_mask :=
  ⟨case_000404_support, case_000404_sourceAgrees, case_000404_rows⟩

private theorem case_000404_covered :
    RowPropertyParametricCovered case_000404_rank.val case_000404_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000404_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000405_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000405_mask : SignMask := ⟨22, by decide⟩
private def case_000405_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000405_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000405_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000405_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000405_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000405_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_000405_rankWord :
    rankPairWord? case_000405_word = some case_000405_rank := by
  decide

private theorem case_000405_unrank :
    unrankPairWord case_000405_rank = case_000405_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000405_word case_000405_rank).1
    case_000405_rankWord |>.symm

private theorem case_000405_seqChoice :
    translationChoiceSeq case_000405_word case_000405_mask = case_000405_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000405_seqAtRank :
    translationSeqAtRankMask case_000405_rank case_000405_mask = case_000405_seq := by
  rw [translationSeqAtRankMask, case_000405_unrank]
  exact case_000405_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000405_bAtRank :
    translationBAtRankMask case_000405_rank case_000405_mask = case_000405_b := by
  rw [translationBAtRankMask, case_000405_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000405_b, case_000405_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000405_firstLine_eq :
    case_000405_support.firstLine case_000405_seq case_000405_b = case_000405_firstLine := by
  norm_num [case_000405_firstLine, case_000405_support, case_000405_seq, case_000405_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000405_secondLine_eq :
    case_000405_support.secondLine case_000405_seq case_000405_b = case_000405_secondLine := by
  norm_num [case_000405_secondLine, case_000405_support, case_000405_seq, case_000405_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000405_sourceAgrees :
    SourceAgrees case_000405_support case_000405_rank.val case_000405_mask := by
  intro hlt
  have hrank : (⟨case_000405_rank.val, hlt⟩ : Fin numPairWords) = case_000405_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000405_rank.val, hlt⟩ case_000405_mask =
        case_000405_seq := by
    simpa [hrank] using case_000405_seqAtRank
  simp [SourceChecks, hseq, case_000405_support,
    checkTranslationConstraintSource, case_000405_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000405_rows :
    EqEqPosVarSecondRows case_000405_support case_000405_rank.val case_000405_mask := by
  intro hlt
  have hrank : (⟨case_000405_rank.val, hlt⟩ : Fin numPairWords) = case_000405_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000405_rank.val, hlt⟩ case_000405_mask =
        case_000405_seq := by
    simpa [hrank] using case_000405_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000405_rank.val, hlt⟩ case_000405_mask =
        case_000405_b := by
    simpa [hrank] using case_000405_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000405_support case_000405_rank.val hlt
          case_000405_mask = case_000405_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000405_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000405_support case_000405_rank.val hlt
          case_000405_mask = case_000405_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000405_secondLine_eq]
  have case_000405_fixedFirst :
      FixedRow (FirstLineAt case_000405_support case_000405_rank.val hlt case_000405_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000405_firstLine, FixedRow]
  have case_000405_rowSecond :
      EqEqPosRow (SecondLineAt case_000405_support case_000405_rank.val hlt case_000405_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000405_secondLine, EqEqPosRow]
  exact ⟨case_000405_fixedFirst, case_000405_rowSecond⟩

private theorem case_000405_existsRows :
    ExistsEqEqPosVarSecondRows case_000405_rank.val case_000405_mask :=
  ⟨case_000405_support, case_000405_sourceAgrees, case_000405_rows⟩

private theorem case_000405_covered :
    RowPropertyParametricCovered case_000405_rank.val case_000405_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000405_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000406_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000406_mask : SignMask := ⟨24, by decide⟩
private def case_000406_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000406_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000406_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000406_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-116/9) }
private def case_000406_firstLine : StrictLin2 := { a := -1, b := -1, c := (-103/13) }
private def case_000406_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000406_rankWord :
    rankPairWord? case_000406_word = some case_000406_rank := by
  decide

private theorem case_000406_unrank :
    unrankPairWord case_000406_rank = case_000406_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000406_word case_000406_rank).1
    case_000406_rankWord |>.symm

private theorem case_000406_seqChoice :
    translationChoiceSeq case_000406_word case_000406_mask = case_000406_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000406_seqAtRank :
    translationSeqAtRankMask case_000406_rank case_000406_mask = case_000406_seq := by
  rw [translationSeqAtRankMask, case_000406_unrank]
  exact case_000406_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000406_bAtRank :
    translationBAtRankMask case_000406_rank case_000406_mask = case_000406_b := by
  rw [translationBAtRankMask, case_000406_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000406_b, case_000406_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000406_firstLine_eq :
    case_000406_support.firstLine case_000406_seq case_000406_b = case_000406_firstLine := by
  norm_num [case_000406_firstLine, case_000406_support, case_000406_seq, case_000406_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000406_secondLine_eq :
    case_000406_support.secondLine case_000406_seq case_000406_b = case_000406_secondLine := by
  norm_num [case_000406_secondLine, case_000406_support, case_000406_seq, case_000406_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000406_sourceAgrees :
    SourceAgrees case_000406_support case_000406_rank.val case_000406_mask := by
  intro hlt
  have hrank : (⟨case_000406_rank.val, hlt⟩ : Fin numPairWords) = case_000406_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000406_rank.val, hlt⟩ case_000406_mask =
        case_000406_seq := by
    simpa [hrank] using case_000406_seqAtRank
  simp [SourceChecks, hseq, case_000406_support,
    checkTranslationConstraintSource, case_000406_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000406_rows :
    EqEqPosVarFirstRows case_000406_support case_000406_rank.val case_000406_mask := by
  intro hlt
  have hrank : (⟨case_000406_rank.val, hlt⟩ : Fin numPairWords) = case_000406_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000406_rank.val, hlt⟩ case_000406_mask =
        case_000406_seq := by
    simpa [hrank] using case_000406_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000406_rank.val, hlt⟩ case_000406_mask =
        case_000406_b := by
    simpa [hrank] using case_000406_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000406_support case_000406_rank.val hlt
          case_000406_mask = case_000406_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000406_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000406_support case_000406_rank.val hlt
          case_000406_mask = case_000406_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000406_secondLine_eq]
  have case_000406_rowFirst :
      EqEqPosRow (FirstLineAt case_000406_support case_000406_rank.val hlt case_000406_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000406_firstLine, EqEqPosRow]
  have case_000406_fixedSecond :
      FixedRow (SecondLineAt case_000406_support case_000406_rank.val hlt case_000406_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000406_secondLine, FixedRow]
  exact ⟨case_000406_rowFirst, case_000406_fixedSecond⟩

private theorem case_000406_existsRows :
    ExistsEqEqPosVarFirstRows case_000406_rank.val case_000406_mask :=
  ⟨case_000406_support, case_000406_sourceAgrees, case_000406_rows⟩

private theorem case_000406_covered :
    RowPropertyParametricCovered case_000406_rank.val case_000406_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000406_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000407_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000407_mask : SignMask := ⟨29, by decide⟩
private def case_000407_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000407_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000407_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000407_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-68/9) }
private def case_000407_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-89/9) }
private def case_000407_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000407_rankWord :
    rankPairWord? case_000407_word = some case_000407_rank := by
  decide

private theorem case_000407_unrank :
    unrankPairWord case_000407_rank = case_000407_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000407_word case_000407_rank).1
    case_000407_rankWord |>.symm

private theorem case_000407_seqChoice :
    translationChoiceSeq case_000407_word case_000407_mask = case_000407_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000407_seqAtRank :
    translationSeqAtRankMask case_000407_rank case_000407_mask = case_000407_seq := by
  rw [translationSeqAtRankMask, case_000407_unrank]
  exact case_000407_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000407_bAtRank :
    translationBAtRankMask case_000407_rank case_000407_mask = case_000407_b := by
  rw [translationBAtRankMask, case_000407_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000407_b, case_000407_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000407_firstLine_eq :
    case_000407_support.firstLine case_000407_seq case_000407_b = case_000407_firstLine := by
  norm_num [case_000407_firstLine, case_000407_support, case_000407_seq, case_000407_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000407_secondLine_eq :
    case_000407_support.secondLine case_000407_seq case_000407_b = case_000407_secondLine := by
  norm_num [case_000407_secondLine, case_000407_support, case_000407_seq, case_000407_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000407_sourceAgrees :
    SourceAgrees case_000407_support case_000407_rank.val case_000407_mask := by
  intro hlt
  have hrank : (⟨case_000407_rank.val, hlt⟩ : Fin numPairWords) = case_000407_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000407_rank.val, hlt⟩ case_000407_mask =
        case_000407_seq := by
    simpa [hrank] using case_000407_seqAtRank
  simp [SourceChecks, hseq, case_000407_support,
    checkTranslationConstraintSource, case_000407_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000407_rows :
    EqEqPosVarFirstRows case_000407_support case_000407_rank.val case_000407_mask := by
  intro hlt
  have hrank : (⟨case_000407_rank.val, hlt⟩ : Fin numPairWords) = case_000407_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000407_rank.val, hlt⟩ case_000407_mask =
        case_000407_seq := by
    simpa [hrank] using case_000407_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000407_rank.val, hlt⟩ case_000407_mask =
        case_000407_b := by
    simpa [hrank] using case_000407_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000407_support case_000407_rank.val hlt
          case_000407_mask = case_000407_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000407_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000407_support case_000407_rank.val hlt
          case_000407_mask = case_000407_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000407_secondLine_eq]
  have case_000407_rowFirst :
      EqEqPosRow (FirstLineAt case_000407_support case_000407_rank.val hlt case_000407_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000407_firstLine, EqEqPosRow]
  have case_000407_fixedSecond :
      FixedRow (SecondLineAt case_000407_support case_000407_rank.val hlt case_000407_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000407_secondLine, FixedRow]
  exact ⟨case_000407_rowFirst, case_000407_fixedSecond⟩

private theorem case_000407_existsRows :
    ExistsEqEqPosVarFirstRows case_000407_rank.val case_000407_mask :=
  ⟨case_000407_support, case_000407_sourceAgrees, case_000407_rows⟩

private theorem case_000407_covered :
    RowPropertyParametricCovered case_000407_rank.val case_000407_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000407_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000408_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000408_mask : SignMask := ⟨30, by decide⟩
private def case_000408_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000408_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000408_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000408_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (4/9) }
private def case_000408_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-89/9) }
private def case_000408_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000408_rankWord :
    rankPairWord? case_000408_word = some case_000408_rank := by
  decide

private theorem case_000408_unrank :
    unrankPairWord case_000408_rank = case_000408_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000408_word case_000408_rank).1
    case_000408_rankWord |>.symm

private theorem case_000408_seqChoice :
    translationChoiceSeq case_000408_word case_000408_mask = case_000408_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000408_seqAtRank :
    translationSeqAtRankMask case_000408_rank case_000408_mask = case_000408_seq := by
  rw [translationSeqAtRankMask, case_000408_unrank]
  exact case_000408_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000408_bAtRank :
    translationBAtRankMask case_000408_rank case_000408_mask = case_000408_b := by
  rw [translationBAtRankMask, case_000408_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000408_b, case_000408_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000408_firstLine_eq :
    case_000408_support.firstLine case_000408_seq case_000408_b = case_000408_firstLine := by
  norm_num [case_000408_firstLine, case_000408_support, case_000408_seq, case_000408_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000408_secondLine_eq :
    case_000408_support.secondLine case_000408_seq case_000408_b = case_000408_secondLine := by
  norm_num [case_000408_secondLine, case_000408_support, case_000408_seq, case_000408_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000408_sourceAgrees :
    SourceAgrees case_000408_support case_000408_rank.val case_000408_mask := by
  intro hlt
  have hrank : (⟨case_000408_rank.val, hlt⟩ : Fin numPairWords) = case_000408_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000408_rank.val, hlt⟩ case_000408_mask =
        case_000408_seq := by
    simpa [hrank] using case_000408_seqAtRank
  simp [SourceChecks, hseq, case_000408_support,
    checkTranslationConstraintSource, case_000408_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000408_rows :
    EqEqPosVarFirstRows case_000408_support case_000408_rank.val case_000408_mask := by
  intro hlt
  have hrank : (⟨case_000408_rank.val, hlt⟩ : Fin numPairWords) = case_000408_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000408_rank.val, hlt⟩ case_000408_mask =
        case_000408_seq := by
    simpa [hrank] using case_000408_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000408_rank.val, hlt⟩ case_000408_mask =
        case_000408_b := by
    simpa [hrank] using case_000408_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000408_support case_000408_rank.val hlt
          case_000408_mask = case_000408_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000408_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000408_support case_000408_rank.val hlt
          case_000408_mask = case_000408_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000408_secondLine_eq]
  have case_000408_rowFirst :
      EqEqPosRow (FirstLineAt case_000408_support case_000408_rank.val hlt case_000408_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000408_firstLine, EqEqPosRow]
  have case_000408_fixedSecond :
      FixedRow (SecondLineAt case_000408_support case_000408_rank.val hlt case_000408_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000408_secondLine, FixedRow]
  exact ⟨case_000408_rowFirst, case_000408_fixedSecond⟩

private theorem case_000408_existsRows :
    ExistsEqEqPosVarFirstRows case_000408_rank.val case_000408_mask :=
  ⟨case_000408_support, case_000408_sourceAgrees, case_000408_rows⟩

private theorem case_000408_covered :
    RowPropertyParametricCovered case_000408_rank.val case_000408_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000408_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000409_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000409_mask : SignMask := ⟨31, by decide⟩
private def case_000409_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000409_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000409_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000409_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (4/9) }
private def case_000409_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000409_secondLine : StrictLin2 := { a := (-25/138), b := (-25/138), c := (-136/207) }

private theorem case_000409_rankWord :
    rankPairWord? case_000409_word = some case_000409_rank := by
  decide

private theorem case_000409_unrank :
    unrankPairWord case_000409_rank = case_000409_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000409_word case_000409_rank).1
    case_000409_rankWord |>.symm

private theorem case_000409_seqChoice :
    translationChoiceSeq case_000409_word case_000409_mask = case_000409_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000409_seqAtRank :
    translationSeqAtRankMask case_000409_rank case_000409_mask = case_000409_seq := by
  rw [translationSeqAtRankMask, case_000409_unrank]
  exact case_000409_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000409_bAtRank :
    translationBAtRankMask case_000409_rank case_000409_mask = case_000409_b := by
  rw [translationBAtRankMask, case_000409_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000409_b, case_000409_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000409_firstLine_eq :
    case_000409_support.firstLine case_000409_seq case_000409_b = case_000409_firstLine := by
  norm_num [case_000409_firstLine, case_000409_support, case_000409_seq, case_000409_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000409_secondLine_eq :
    case_000409_support.secondLine case_000409_seq case_000409_b = case_000409_secondLine := by
  norm_num [case_000409_secondLine, case_000409_support, case_000409_seq, case_000409_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000409_sourceAgrees :
    SourceAgrees case_000409_support case_000409_rank.val case_000409_mask := by
  intro hlt
  have hrank : (⟨case_000409_rank.val, hlt⟩ : Fin numPairWords) = case_000409_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000409_rank.val, hlt⟩ case_000409_mask =
        case_000409_seq := by
    simpa [hrank] using case_000409_seqAtRank
  simp [SourceChecks, hseq, case_000409_support,
    checkTranslationConstraintSource, case_000409_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000409_rows :
    EqEqPosVarSecondRows case_000409_support case_000409_rank.val case_000409_mask := by
  intro hlt
  have hrank : (⟨case_000409_rank.val, hlt⟩ : Fin numPairWords) = case_000409_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000409_rank.val, hlt⟩ case_000409_mask =
        case_000409_seq := by
    simpa [hrank] using case_000409_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000409_rank.val, hlt⟩ case_000409_mask =
        case_000409_b := by
    simpa [hrank] using case_000409_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000409_support case_000409_rank.val hlt
          case_000409_mask = case_000409_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000409_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000409_support case_000409_rank.val hlt
          case_000409_mask = case_000409_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000409_secondLine_eq]
  have case_000409_fixedFirst :
      FixedRow (FirstLineAt case_000409_support case_000409_rank.val hlt case_000409_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000409_firstLine, FixedRow]
  have case_000409_rowSecond :
      EqEqPosRow (SecondLineAt case_000409_support case_000409_rank.val hlt case_000409_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000409_secondLine, EqEqPosRow]
  exact ⟨case_000409_fixedFirst, case_000409_rowSecond⟩

private theorem case_000409_existsRows :
    ExistsEqEqPosVarSecondRows case_000409_rank.val case_000409_mask :=
  ⟨case_000409_support, case_000409_sourceAgrees, case_000409_rows⟩

private theorem case_000409_covered :
    RowPropertyParametricCovered case_000409_rank.val case_000409_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000409_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000410_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000410_mask : SignMask := ⟨39, by decide⟩
private def case_000410_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000410_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000410_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000410_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (116/9) }
private def case_000410_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000410_secondLine : StrictLin2 := { a := (-9/116), b := (9/116), c := (-9/58) }

private theorem case_000410_rankWord :
    rankPairWord? case_000410_word = some case_000410_rank := by
  decide

private theorem case_000410_unrank :
    unrankPairWord case_000410_rank = case_000410_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000410_word case_000410_rank).1
    case_000410_rankWord |>.symm

private theorem case_000410_seqChoice :
    translationChoiceSeq case_000410_word case_000410_mask = case_000410_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000410_seqAtRank :
    translationSeqAtRankMask case_000410_rank case_000410_mask = case_000410_seq := by
  rw [translationSeqAtRankMask, case_000410_unrank]
  exact case_000410_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000410_bAtRank :
    translationBAtRankMask case_000410_rank case_000410_mask = case_000410_b := by
  rw [translationBAtRankMask, case_000410_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000410_b, case_000410_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000410_firstLine_eq :
    case_000410_support.firstLine case_000410_seq case_000410_b = case_000410_firstLine := by
  norm_num [case_000410_firstLine, case_000410_support, case_000410_seq, case_000410_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000410_secondLine_eq :
    case_000410_support.secondLine case_000410_seq case_000410_b = case_000410_secondLine := by
  norm_num [case_000410_secondLine, case_000410_support, case_000410_seq, case_000410_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000410_sourceAgrees :
    SourceAgrees case_000410_support case_000410_rank.val case_000410_mask := by
  intro hlt
  have hrank : (⟨case_000410_rank.val, hlt⟩ : Fin numPairWords) = case_000410_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000410_rank.val, hlt⟩ case_000410_mask =
        case_000410_seq := by
    simpa [hrank] using case_000410_seqAtRank
  simp [SourceChecks, hseq, case_000410_support,
    checkTranslationConstraintSource, case_000410_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000410_rows :
    OppOneMinusVarSecondRows case_000410_support case_000410_rank.val case_000410_mask := by
  intro hlt
  have hrank : (⟨case_000410_rank.val, hlt⟩ : Fin numPairWords) = case_000410_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000410_rank.val, hlt⟩ case_000410_mask =
        case_000410_seq := by
    simpa [hrank] using case_000410_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000410_rank.val, hlt⟩ case_000410_mask =
        case_000410_b := by
    simpa [hrank] using case_000410_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000410_support case_000410_rank.val hlt
          case_000410_mask = case_000410_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000410_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000410_support case_000410_rank.val hlt
          case_000410_mask = case_000410_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000410_secondLine_eq]
  have case_000410_fixedFirst :
      FixedRow (FirstLineAt case_000410_support case_000410_rank.val hlt case_000410_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000410_firstLine, FixedRow]
  have case_000410_rowSecond :
      OppPosRow (SecondLineAt case_000410_support case_000410_rank.val hlt case_000410_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000410_secondLine, OppPosRow]
  exact ⟨case_000410_fixedFirst, case_000410_rowSecond⟩

private theorem case_000410_existsRows :
    ExistsOppOneMinusVarSecondRows case_000410_rank.val case_000410_mask :=
  ⟨case_000410_support, case_000410_sourceAgrees, case_000410_rows⟩

private theorem case_000410_covered :
    RowPropertyParametricCovered case_000410_rank.val case_000410_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000410_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000411_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000411_mask : SignMask := ⟨45, by decide⟩
private def case_000411_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000411_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000411_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000411_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000411_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000411_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000411_rankWord :
    rankPairWord? case_000411_word = some case_000411_rank := by
  decide

private theorem case_000411_unrank :
    unrankPairWord case_000411_rank = case_000411_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000411_word case_000411_rank).1
    case_000411_rankWord |>.symm

private theorem case_000411_seqChoice :
    translationChoiceSeq case_000411_word case_000411_mask = case_000411_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000411_seqAtRank :
    translationSeqAtRankMask case_000411_rank case_000411_mask = case_000411_seq := by
  rw [translationSeqAtRankMask, case_000411_unrank]
  exact case_000411_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000411_bAtRank :
    translationBAtRankMask case_000411_rank case_000411_mask = case_000411_b := by
  rw [translationBAtRankMask, case_000411_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000411_b, case_000411_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000411_firstLine_eq :
    case_000411_support.firstLine case_000411_seq case_000411_b = case_000411_firstLine := by
  norm_num [case_000411_firstLine, case_000411_support, case_000411_seq, case_000411_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000411_secondLine_eq :
    case_000411_support.secondLine case_000411_seq case_000411_b = case_000411_secondLine := by
  norm_num [case_000411_secondLine, case_000411_support, case_000411_seq, case_000411_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000411_sourceAgrees :
    SourceAgrees case_000411_support case_000411_rank.val case_000411_mask := by
  intro hlt
  have hrank : (⟨case_000411_rank.val, hlt⟩ : Fin numPairWords) = case_000411_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000411_rank.val, hlt⟩ case_000411_mask =
        case_000411_seq := by
    simpa [hrank] using case_000411_seqAtRank
  simp [SourceChecks, hseq, case_000411_support,
    checkTranslationConstraintSource, case_000411_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000411_rows :
    OppMinusOneVarFirstRows case_000411_support case_000411_rank.val case_000411_mask := by
  intro hlt
  have hrank : (⟨case_000411_rank.val, hlt⟩ : Fin numPairWords) = case_000411_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000411_rank.val, hlt⟩ case_000411_mask =
        case_000411_seq := by
    simpa [hrank] using case_000411_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000411_rank.val, hlt⟩ case_000411_mask =
        case_000411_b := by
    simpa [hrank] using case_000411_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000411_support case_000411_rank.val hlt
          case_000411_mask = case_000411_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000411_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000411_support case_000411_rank.val hlt
          case_000411_mask = case_000411_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000411_secondLine_eq]
  have case_000411_rowFirst :
      OppNegRow (FirstLineAt case_000411_support case_000411_rank.val hlt case_000411_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000411_firstLine, OppNegRow]
  have case_000411_fixedSecond :
      FixedRow (SecondLineAt case_000411_support case_000411_rank.val hlt case_000411_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000411_secondLine, FixedRow]
  exact ⟨case_000411_rowFirst, case_000411_fixedSecond⟩

private theorem case_000411_existsRows :
    ExistsOppMinusOneVarFirstRows case_000411_rank.val case_000411_mask :=
  ⟨case_000411_support, case_000411_sourceAgrees, case_000411_rows⟩

private theorem case_000411_covered :
    RowPropertyParametricCovered case_000411_rank.val case_000411_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000411_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000412_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000412_mask : SignMask := ⟨54, by decide⟩
private def case_000412_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000412_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000412_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000412_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000412_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000412_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000412_rankWord :
    rankPairWord? case_000412_word = some case_000412_rank := by
  decide

private theorem case_000412_unrank :
    unrankPairWord case_000412_rank = case_000412_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000412_word case_000412_rank).1
    case_000412_rankWord |>.symm

private theorem case_000412_seqChoice :
    translationChoiceSeq case_000412_word case_000412_mask = case_000412_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000412_seqAtRank :
    translationSeqAtRankMask case_000412_rank case_000412_mask = case_000412_seq := by
  rw [translationSeqAtRankMask, case_000412_unrank]
  exact case_000412_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000412_bAtRank :
    translationBAtRankMask case_000412_rank case_000412_mask = case_000412_b := by
  rw [translationBAtRankMask, case_000412_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000412_b, case_000412_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000412_firstLine_eq :
    case_000412_support.firstLine case_000412_seq case_000412_b = case_000412_firstLine := by
  norm_num [case_000412_firstLine, case_000412_support, case_000412_seq, case_000412_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000412_secondLine_eq :
    case_000412_support.secondLine case_000412_seq case_000412_b = case_000412_secondLine := by
  norm_num [case_000412_secondLine, case_000412_support, case_000412_seq, case_000412_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000412_sourceAgrees :
    SourceAgrees case_000412_support case_000412_rank.val case_000412_mask := by
  intro hlt
  have hrank : (⟨case_000412_rank.val, hlt⟩ : Fin numPairWords) = case_000412_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000412_rank.val, hlt⟩ case_000412_mask =
        case_000412_seq := by
    simpa [hrank] using case_000412_seqAtRank
  simp [SourceChecks, hseq, case_000412_support,
    checkTranslationConstraintSource, case_000412_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000412_rows :
    OppOneMinusVarFirstRows case_000412_support case_000412_rank.val case_000412_mask := by
  intro hlt
  have hrank : (⟨case_000412_rank.val, hlt⟩ : Fin numPairWords) = case_000412_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000412_rank.val, hlt⟩ case_000412_mask =
        case_000412_seq := by
    simpa [hrank] using case_000412_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000412_rank.val, hlt⟩ case_000412_mask =
        case_000412_b := by
    simpa [hrank] using case_000412_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000412_support case_000412_rank.val hlt
          case_000412_mask = case_000412_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000412_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000412_support case_000412_rank.val hlt
          case_000412_mask = case_000412_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000412_secondLine_eq]
  have case_000412_rowFirst :
      OppPosRow (FirstLineAt case_000412_support case_000412_rank.val hlt case_000412_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000412_firstLine, OppPosRow]
  have case_000412_fixedSecond :
      FixedRow (SecondLineAt case_000412_support case_000412_rank.val hlt case_000412_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000412_secondLine, FixedRow]
  exact ⟨case_000412_rowFirst, case_000412_fixedSecond⟩

private theorem case_000412_existsRows :
    ExistsOppOneMinusVarFirstRows case_000412_rank.val case_000412_mask :=
  ⟨case_000412_support, case_000412_sourceAgrees, case_000412_rows⟩

private theorem case_000412_covered :
    RowPropertyParametricCovered case_000412_rank.val case_000412_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000412_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000413_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000413_mask : SignMask := ⟨7, by decide⟩
private def case_000413_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000413_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000413_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000413_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000413_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000413_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000413_rankWord :
    rankPairWord? case_000413_word = some case_000413_rank := by
  decide

private theorem case_000413_unrank :
    unrankPairWord case_000413_rank = case_000413_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000413_word case_000413_rank).1
    case_000413_rankWord |>.symm

private theorem case_000413_seqChoice :
    translationChoiceSeq case_000413_word case_000413_mask = case_000413_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000413_seqAtRank :
    translationSeqAtRankMask case_000413_rank case_000413_mask = case_000413_seq := by
  rw [translationSeqAtRankMask, case_000413_unrank]
  exact case_000413_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000413_bAtRank :
    translationBAtRankMask case_000413_rank case_000413_mask = case_000413_b := by
  rw [translationBAtRankMask, case_000413_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000413_b, case_000413_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000413_firstLine_eq :
    case_000413_support.firstLine case_000413_seq case_000413_b = case_000413_firstLine := by
  norm_num [case_000413_firstLine, case_000413_support, case_000413_seq, case_000413_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000413_secondLine_eq :
    case_000413_support.secondLine case_000413_seq case_000413_b = case_000413_secondLine := by
  norm_num [case_000413_secondLine, case_000413_support, case_000413_seq, case_000413_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000413_sourceAgrees :
    SourceAgrees case_000413_support case_000413_rank.val case_000413_mask := by
  intro hlt
  have hrank : (⟨case_000413_rank.val, hlt⟩ : Fin numPairWords) = case_000413_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000413_rank.val, hlt⟩ case_000413_mask =
        case_000413_seq := by
    simpa [hrank] using case_000413_seqAtRank
  simp [SourceChecks, hseq, case_000413_support,
    checkTranslationConstraintSource, case_000413_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000413_rows :
    EqEqPosVarFirstRows case_000413_support case_000413_rank.val case_000413_mask := by
  intro hlt
  have hrank : (⟨case_000413_rank.val, hlt⟩ : Fin numPairWords) = case_000413_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000413_rank.val, hlt⟩ case_000413_mask =
        case_000413_seq := by
    simpa [hrank] using case_000413_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000413_rank.val, hlt⟩ case_000413_mask =
        case_000413_b := by
    simpa [hrank] using case_000413_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000413_support case_000413_rank.val hlt
          case_000413_mask = case_000413_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000413_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000413_support case_000413_rank.val hlt
          case_000413_mask = case_000413_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000413_secondLine_eq]
  have case_000413_rowFirst :
      EqEqPosRow (FirstLineAt case_000413_support case_000413_rank.val hlt case_000413_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000413_firstLine, EqEqPosRow]
  have case_000413_fixedSecond :
      FixedRow (SecondLineAt case_000413_support case_000413_rank.val hlt case_000413_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000413_secondLine, FixedRow]
  exact ⟨case_000413_rowFirst, case_000413_fixedSecond⟩

private theorem case_000413_existsRows :
    ExistsEqEqPosVarFirstRows case_000413_rank.val case_000413_mask :=
  ⟨case_000413_support, case_000413_sourceAgrees, case_000413_rows⟩

private theorem case_000413_covered :
    RowPropertyParametricCovered case_000413_rank.val case_000413_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000413_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000414_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000414_mask : SignMask := ⟨9, by decide⟩
private def case_000414_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000414_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000414_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000414_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000414_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000414_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000414_rankWord :
    rankPairWord? case_000414_word = some case_000414_rank := by
  decide

private theorem case_000414_unrank :
    unrankPairWord case_000414_rank = case_000414_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000414_word case_000414_rank).1
    case_000414_rankWord |>.symm

private theorem case_000414_seqChoice :
    translationChoiceSeq case_000414_word case_000414_mask = case_000414_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000414_seqAtRank :
    translationSeqAtRankMask case_000414_rank case_000414_mask = case_000414_seq := by
  rw [translationSeqAtRankMask, case_000414_unrank]
  exact case_000414_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000414_bAtRank :
    translationBAtRankMask case_000414_rank case_000414_mask = case_000414_b := by
  rw [translationBAtRankMask, case_000414_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000414_b, case_000414_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000414_firstLine_eq :
    case_000414_support.firstLine case_000414_seq case_000414_b = case_000414_firstLine := by
  norm_num [case_000414_firstLine, case_000414_support, case_000414_seq, case_000414_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000414_secondLine_eq :
    case_000414_support.secondLine case_000414_seq case_000414_b = case_000414_secondLine := by
  norm_num [case_000414_secondLine, case_000414_support, case_000414_seq, case_000414_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000414_sourceAgrees :
    SourceAgrees case_000414_support case_000414_rank.val case_000414_mask := by
  intro hlt
  have hrank : (⟨case_000414_rank.val, hlt⟩ : Fin numPairWords) = case_000414_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000414_rank.val, hlt⟩ case_000414_mask =
        case_000414_seq := by
    simpa [hrank] using case_000414_seqAtRank
  simp [SourceChecks, hseq, case_000414_support,
    checkTranslationConstraintSource, case_000414_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000414_rows :
    EqEqPosVarFirstRows case_000414_support case_000414_rank.val case_000414_mask := by
  intro hlt
  have hrank : (⟨case_000414_rank.val, hlt⟩ : Fin numPairWords) = case_000414_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000414_rank.val, hlt⟩ case_000414_mask =
        case_000414_seq := by
    simpa [hrank] using case_000414_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000414_rank.val, hlt⟩ case_000414_mask =
        case_000414_b := by
    simpa [hrank] using case_000414_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000414_support case_000414_rank.val hlt
          case_000414_mask = case_000414_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000414_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000414_support case_000414_rank.val hlt
          case_000414_mask = case_000414_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000414_secondLine_eq]
  have case_000414_rowFirst :
      EqEqPosRow (FirstLineAt case_000414_support case_000414_rank.val hlt case_000414_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000414_firstLine, EqEqPosRow]
  have case_000414_fixedSecond :
      FixedRow (SecondLineAt case_000414_support case_000414_rank.val hlt case_000414_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000414_secondLine, FixedRow]
  exact ⟨case_000414_rowFirst, case_000414_fixedSecond⟩

private theorem case_000414_existsRows :
    ExistsEqEqPosVarFirstRows case_000414_rank.val case_000414_mask :=
  ⟨case_000414_support, case_000414_sourceAgrees, case_000414_rows⟩

private theorem case_000414_covered :
    RowPropertyParametricCovered case_000414_rank.val case_000414_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000414_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000415_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000415_mask : SignMask := ⟨13, by decide⟩
private def case_000415_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000415_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000415_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000415_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000415_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000415_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000415_rankWord :
    rankPairWord? case_000415_word = some case_000415_rank := by
  decide

private theorem case_000415_unrank :
    unrankPairWord case_000415_rank = case_000415_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000415_word case_000415_rank).1
    case_000415_rankWord |>.symm

private theorem case_000415_seqChoice :
    translationChoiceSeq case_000415_word case_000415_mask = case_000415_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000415_seqAtRank :
    translationSeqAtRankMask case_000415_rank case_000415_mask = case_000415_seq := by
  rw [translationSeqAtRankMask, case_000415_unrank]
  exact case_000415_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000415_bAtRank :
    translationBAtRankMask case_000415_rank case_000415_mask = case_000415_b := by
  rw [translationBAtRankMask, case_000415_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000415_b, case_000415_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000415_firstLine_eq :
    case_000415_support.firstLine case_000415_seq case_000415_b = case_000415_firstLine := by
  norm_num [case_000415_firstLine, case_000415_support, case_000415_seq, case_000415_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000415_secondLine_eq :
    case_000415_support.secondLine case_000415_seq case_000415_b = case_000415_secondLine := by
  norm_num [case_000415_secondLine, case_000415_support, case_000415_seq, case_000415_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000415_sourceAgrees :
    SourceAgrees case_000415_support case_000415_rank.val case_000415_mask := by
  intro hlt
  have hrank : (⟨case_000415_rank.val, hlt⟩ : Fin numPairWords) = case_000415_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000415_rank.val, hlt⟩ case_000415_mask =
        case_000415_seq := by
    simpa [hrank] using case_000415_seqAtRank
  simp [SourceChecks, hseq, case_000415_support,
    checkTranslationConstraintSource, case_000415_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000415_rows :
    OppMinusOneVarFirstRows case_000415_support case_000415_rank.val case_000415_mask := by
  intro hlt
  have hrank : (⟨case_000415_rank.val, hlt⟩ : Fin numPairWords) = case_000415_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000415_rank.val, hlt⟩ case_000415_mask =
        case_000415_seq := by
    simpa [hrank] using case_000415_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000415_rank.val, hlt⟩ case_000415_mask =
        case_000415_b := by
    simpa [hrank] using case_000415_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000415_support case_000415_rank.val hlt
          case_000415_mask = case_000415_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000415_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000415_support case_000415_rank.val hlt
          case_000415_mask = case_000415_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000415_secondLine_eq]
  have case_000415_rowFirst :
      OppNegRow (FirstLineAt case_000415_support case_000415_rank.val hlt case_000415_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000415_firstLine, OppNegRow]
  have case_000415_fixedSecond :
      FixedRow (SecondLineAt case_000415_support case_000415_rank.val hlt case_000415_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000415_secondLine, FixedRow]
  exact ⟨case_000415_rowFirst, case_000415_fixedSecond⟩

private theorem case_000415_existsRows :
    ExistsOppMinusOneVarFirstRows case_000415_rank.val case_000415_mask :=
  ⟨case_000415_support, case_000415_sourceAgrees, case_000415_rows⟩

private theorem case_000415_covered :
    RowPropertyParametricCovered case_000415_rank.val case_000415_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000415_existsRows

inductive Group012Covered : Nat -> SignMask -> Prop
  | case_000384 : Group012Covered case_000384_rank.val case_000384_mask
  | case_000385 : Group012Covered case_000385_rank.val case_000385_mask
  | case_000386 : Group012Covered case_000386_rank.val case_000386_mask
  | case_000387 : Group012Covered case_000387_rank.val case_000387_mask
  | case_000388 : Group012Covered case_000388_rank.val case_000388_mask
  | case_000389 : Group012Covered case_000389_rank.val case_000389_mask
  | case_000390 : Group012Covered case_000390_rank.val case_000390_mask
  | case_000391 : Group012Covered case_000391_rank.val case_000391_mask
  | case_000392 : Group012Covered case_000392_rank.val case_000392_mask
  | case_000393 : Group012Covered case_000393_rank.val case_000393_mask
  | case_000394 : Group012Covered case_000394_rank.val case_000394_mask
  | case_000395 : Group012Covered case_000395_rank.val case_000395_mask
  | case_000396 : Group012Covered case_000396_rank.val case_000396_mask
  | case_000397 : Group012Covered case_000397_rank.val case_000397_mask
  | case_000398 : Group012Covered case_000398_rank.val case_000398_mask
  | case_000399 : Group012Covered case_000399_rank.val case_000399_mask
  | case_000400 : Group012Covered case_000400_rank.val case_000400_mask
  | case_000401 : Group012Covered case_000401_rank.val case_000401_mask
  | case_000402 : Group012Covered case_000402_rank.val case_000402_mask
  | case_000403 : Group012Covered case_000403_rank.val case_000403_mask
  | case_000404 : Group012Covered case_000404_rank.val case_000404_mask
  | case_000405 : Group012Covered case_000405_rank.val case_000405_mask
  | case_000406 : Group012Covered case_000406_rank.val case_000406_mask
  | case_000407 : Group012Covered case_000407_rank.val case_000407_mask
  | case_000408 : Group012Covered case_000408_rank.val case_000408_mask
  | case_000409 : Group012Covered case_000409_rank.val case_000409_mask
  | case_000410 : Group012Covered case_000410_rank.val case_000410_mask
  | case_000411 : Group012Covered case_000411_rank.val case_000411_mask
  | case_000412 : Group012Covered case_000412_rank.val case_000412_mask
  | case_000413 : Group012Covered case_000413_rank.val case_000413_mask
  | case_000414 : Group012Covered case_000414_rank.val case_000414_mask
  | case_000415 : Group012Covered case_000415_rank.val case_000415_mask

theorem Group012GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group012Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000384 =>
      exact RowPropertyParametricCovered.kills case_000384_covered
  | case_000385 =>
      exact RowPropertyParametricCovered.kills case_000385_covered
  | case_000386 =>
      exact RowPropertyParametricCovered.kills case_000386_covered
  | case_000387 =>
      exact RowPropertyParametricCovered.kills case_000387_covered
  | case_000388 =>
      exact RowPropertyParametricCovered.kills case_000388_covered
  | case_000389 =>
      exact RowPropertyParametricCovered.kills case_000389_covered
  | case_000390 =>
      exact RowPropertyParametricCovered.kills case_000390_covered
  | case_000391 =>
      exact RowPropertyParametricCovered.kills case_000391_covered
  | case_000392 =>
      exact RowPropertyParametricCovered.kills case_000392_covered
  | case_000393 =>
      exact RowPropertyParametricCovered.kills case_000393_covered
  | case_000394 =>
      exact RowPropertyParametricCovered.kills case_000394_covered
  | case_000395 =>
      exact RowPropertyParametricCovered.kills case_000395_covered
  | case_000396 =>
      exact RowPropertyParametricCovered.kills case_000396_covered
  | case_000397 =>
      exact RowPropertyParametricCovered.kills case_000397_covered
  | case_000398 =>
      exact RowPropertyParametricCovered.kills case_000398_covered
  | case_000399 =>
      exact RowPropertyParametricCovered.kills case_000399_covered
  | case_000400 =>
      exact RowPropertyParametricCovered.kills case_000400_covered
  | case_000401 =>
      exact RowPropertyParametricCovered.kills case_000401_covered
  | case_000402 =>
      exact RowPropertyParametricCovered.kills case_000402_covered
  | case_000403 =>
      exact RowPropertyParametricCovered.kills case_000403_covered
  | case_000404 =>
      exact RowPropertyParametricCovered.kills case_000404_covered
  | case_000405 =>
      exact RowPropertyParametricCovered.kills case_000405_covered
  | case_000406 =>
      exact RowPropertyParametricCovered.kills case_000406_covered
  | case_000407 =>
      exact RowPropertyParametricCovered.kills case_000407_covered
  | case_000408 =>
      exact RowPropertyParametricCovered.kills case_000408_covered
  | case_000409 =>
      exact RowPropertyParametricCovered.kills case_000409_covered
  | case_000410 =>
      exact RowPropertyParametricCovered.kills case_000410_covered
  | case_000411 =>
      exact RowPropertyParametricCovered.kills case_000411_covered
  | case_000412 =>
      exact RowPropertyParametricCovered.kills case_000412_covered
  | case_000413 =>
      exact RowPropertyParametricCovered.kills case_000413_covered
  | case_000414 =>
      exact RowPropertyParametricCovered.kills case_000414_covered
  | case_000415 =>
      exact RowPropertyParametricCovered.kills case_000415_covered

theorem Group012_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group012
