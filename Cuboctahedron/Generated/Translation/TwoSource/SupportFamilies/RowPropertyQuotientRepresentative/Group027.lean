import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group027

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
private def case_000864_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000864_mask : SignMask := ⟨9, by decide⟩
private def case_000864_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000864_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000864_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000864_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000864_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000864_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000864_rankWord :
    rankPairWord? case_000864_word = some case_000864_rank := by
  decide

private theorem case_000864_unrank :
    unrankPairWord case_000864_rank = case_000864_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000864_word case_000864_rank).1
    case_000864_rankWord |>.symm

private theorem case_000864_seqChoice :
    translationChoiceSeq case_000864_word case_000864_mask = case_000864_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000864_seqAtRank :
    translationSeqAtRankMask case_000864_rank case_000864_mask = case_000864_seq := by
  rw [translationSeqAtRankMask, case_000864_unrank]
  exact case_000864_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000864_bAtRank :
    translationBAtRankMask case_000864_rank case_000864_mask = case_000864_b := by
  rw [translationBAtRankMask, case_000864_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000864_b, case_000864_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000864_firstLine_eq :
    case_000864_support.firstLine case_000864_seq case_000864_b = case_000864_firstLine := by
  norm_num [case_000864_firstLine, case_000864_support, case_000864_seq, case_000864_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000864_secondLine_eq :
    case_000864_support.secondLine case_000864_seq case_000864_b = case_000864_secondLine := by
  norm_num [case_000864_secondLine, case_000864_support, case_000864_seq, case_000864_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000864_sourceAgrees :
    SourceAgrees case_000864_support case_000864_rank.val case_000864_mask := by
  intro hlt
  have hrank : (⟨case_000864_rank.val, hlt⟩ : Fin numPairWords) = case_000864_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000864_rank.val, hlt⟩ case_000864_mask =
        case_000864_seq := by
    simpa [hrank] using case_000864_seqAtRank
  simp [SourceChecks, hseq, case_000864_support,
    checkTranslationConstraintSource, case_000864_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000864_rows :
    EqEqPosVarFirstRows case_000864_support case_000864_rank.val case_000864_mask := by
  intro hlt
  have hrank : (⟨case_000864_rank.val, hlt⟩ : Fin numPairWords) = case_000864_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000864_rank.val, hlt⟩ case_000864_mask =
        case_000864_seq := by
    simpa [hrank] using case_000864_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000864_rank.val, hlt⟩ case_000864_mask =
        case_000864_b := by
    simpa [hrank] using case_000864_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000864_support case_000864_rank.val hlt
          case_000864_mask = case_000864_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000864_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000864_support case_000864_rank.val hlt
          case_000864_mask = case_000864_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000864_secondLine_eq]
  have case_000864_rowFirst :
      EqEqPosRow (FirstLineAt case_000864_support case_000864_rank.val hlt case_000864_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000864_firstLine, EqEqPosRow]
  have case_000864_fixedSecond :
      FixedRow (SecondLineAt case_000864_support case_000864_rank.val hlt case_000864_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000864_secondLine, FixedRow]
  exact ⟨case_000864_rowFirst, case_000864_fixedSecond⟩

private theorem case_000864_existsRows :
    ExistsEqEqPosVarFirstRows case_000864_rank.val case_000864_mask :=
  ⟨case_000864_support, case_000864_sourceAgrees, case_000864_rows⟩

private theorem case_000864_covered :
    RowPropertyParametricCovered case_000864_rank.val case_000864_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000864_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000865_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000865_mask : SignMask := ⟨13, by decide⟩
private def case_000865_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000865_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000865_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000865_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000865_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000865_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000865_rankWord :
    rankPairWord? case_000865_word = some case_000865_rank := by
  decide

private theorem case_000865_unrank :
    unrankPairWord case_000865_rank = case_000865_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000865_word case_000865_rank).1
    case_000865_rankWord |>.symm

private theorem case_000865_seqChoice :
    translationChoiceSeq case_000865_word case_000865_mask = case_000865_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000865_seqAtRank :
    translationSeqAtRankMask case_000865_rank case_000865_mask = case_000865_seq := by
  rw [translationSeqAtRankMask, case_000865_unrank]
  exact case_000865_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000865_bAtRank :
    translationBAtRankMask case_000865_rank case_000865_mask = case_000865_b := by
  rw [translationBAtRankMask, case_000865_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000865_b, case_000865_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000865_firstLine_eq :
    case_000865_support.firstLine case_000865_seq case_000865_b = case_000865_firstLine := by
  norm_num [case_000865_firstLine, case_000865_support, case_000865_seq, case_000865_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000865_secondLine_eq :
    case_000865_support.secondLine case_000865_seq case_000865_b = case_000865_secondLine := by
  norm_num [case_000865_secondLine, case_000865_support, case_000865_seq, case_000865_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000865_sourceAgrees :
    SourceAgrees case_000865_support case_000865_rank.val case_000865_mask := by
  intro hlt
  have hrank : (⟨case_000865_rank.val, hlt⟩ : Fin numPairWords) = case_000865_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000865_rank.val, hlt⟩ case_000865_mask =
        case_000865_seq := by
    simpa [hrank] using case_000865_seqAtRank
  simp [SourceChecks, hseq, case_000865_support,
    checkTranslationConstraintSource, case_000865_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000865_rows :
    OppMinusOneVarFirstRows case_000865_support case_000865_rank.val case_000865_mask := by
  intro hlt
  have hrank : (⟨case_000865_rank.val, hlt⟩ : Fin numPairWords) = case_000865_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000865_rank.val, hlt⟩ case_000865_mask =
        case_000865_seq := by
    simpa [hrank] using case_000865_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000865_rank.val, hlt⟩ case_000865_mask =
        case_000865_b := by
    simpa [hrank] using case_000865_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000865_support case_000865_rank.val hlt
          case_000865_mask = case_000865_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000865_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000865_support case_000865_rank.val hlt
          case_000865_mask = case_000865_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000865_secondLine_eq]
  have case_000865_rowFirst :
      OppNegRow (FirstLineAt case_000865_support case_000865_rank.val hlt case_000865_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000865_firstLine, OppNegRow]
  have case_000865_fixedSecond :
      FixedRow (SecondLineAt case_000865_support case_000865_rank.val hlt case_000865_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000865_secondLine, FixedRow]
  exact ⟨case_000865_rowFirst, case_000865_fixedSecond⟩

private theorem case_000865_existsRows :
    ExistsOppMinusOneVarFirstRows case_000865_rank.val case_000865_mask :=
  ⟨case_000865_support, case_000865_sourceAgrees, case_000865_rows⟩

private theorem case_000865_covered :
    RowPropertyParametricCovered case_000865_rank.val case_000865_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000865_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000866_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000866_mask : SignMask := ⟨15, by decide⟩
private def case_000866_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000866_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000866_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000866_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (4/9) }
private def case_000866_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000866_secondLine : StrictLin2 := { a := (-25/374), b := (-25/374), c := (-35/187) }

private theorem case_000866_rankWord :
    rankPairWord? case_000866_word = some case_000866_rank := by
  decide

private theorem case_000866_unrank :
    unrankPairWord case_000866_rank = case_000866_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000866_word case_000866_rank).1
    case_000866_rankWord |>.symm

private theorem case_000866_seqChoice :
    translationChoiceSeq case_000866_word case_000866_mask = case_000866_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000866_seqAtRank :
    translationSeqAtRankMask case_000866_rank case_000866_mask = case_000866_seq := by
  rw [translationSeqAtRankMask, case_000866_unrank]
  exact case_000866_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000866_bAtRank :
    translationBAtRankMask case_000866_rank case_000866_mask = case_000866_b := by
  rw [translationBAtRankMask, case_000866_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000866_b, case_000866_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000866_firstLine_eq :
    case_000866_support.firstLine case_000866_seq case_000866_b = case_000866_firstLine := by
  norm_num [case_000866_firstLine, case_000866_support, case_000866_seq, case_000866_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000866_secondLine_eq :
    case_000866_support.secondLine case_000866_seq case_000866_b = case_000866_secondLine := by
  norm_num [case_000866_secondLine, case_000866_support, case_000866_seq, case_000866_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000866_sourceAgrees :
    SourceAgrees case_000866_support case_000866_rank.val case_000866_mask := by
  intro hlt
  have hrank : (⟨case_000866_rank.val, hlt⟩ : Fin numPairWords) = case_000866_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000866_rank.val, hlt⟩ case_000866_mask =
        case_000866_seq := by
    simpa [hrank] using case_000866_seqAtRank
  simp [SourceChecks, hseq, case_000866_support,
    checkTranslationConstraintSource, case_000866_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000866_rows :
    EqEqPosVarSecondRows case_000866_support case_000866_rank.val case_000866_mask := by
  intro hlt
  have hrank : (⟨case_000866_rank.val, hlt⟩ : Fin numPairWords) = case_000866_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000866_rank.val, hlt⟩ case_000866_mask =
        case_000866_seq := by
    simpa [hrank] using case_000866_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000866_rank.val, hlt⟩ case_000866_mask =
        case_000866_b := by
    simpa [hrank] using case_000866_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000866_support case_000866_rank.val hlt
          case_000866_mask = case_000866_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000866_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000866_support case_000866_rank.val hlt
          case_000866_mask = case_000866_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000866_secondLine_eq]
  have case_000866_fixedFirst :
      FixedRow (FirstLineAt case_000866_support case_000866_rank.val hlt case_000866_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000866_firstLine, FixedRow]
  have case_000866_rowSecond :
      EqEqPosRow (SecondLineAt case_000866_support case_000866_rank.val hlt case_000866_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000866_secondLine, EqEqPosRow]
  exact ⟨case_000866_fixedFirst, case_000866_rowSecond⟩

private theorem case_000866_existsRows :
    ExistsEqEqPosVarSecondRows case_000866_rank.val case_000866_mask :=
  ⟨case_000866_support, case_000866_sourceAgrees, case_000866_rows⟩

private theorem case_000866_covered :
    RowPropertyParametricCovered case_000866_rank.val case_000866_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000866_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000867_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000867_mask : SignMask := ⟨18, by decide⟩
private def case_000867_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000867_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000867_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000867_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000867_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000867_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000867_rankWord :
    rankPairWord? case_000867_word = some case_000867_rank := by
  decide

private theorem case_000867_unrank :
    unrankPairWord case_000867_rank = case_000867_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000867_word case_000867_rank).1
    case_000867_rankWord |>.symm

private theorem case_000867_seqChoice :
    translationChoiceSeq case_000867_word case_000867_mask = case_000867_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000867_seqAtRank :
    translationSeqAtRankMask case_000867_rank case_000867_mask = case_000867_seq := by
  rw [translationSeqAtRankMask, case_000867_unrank]
  exact case_000867_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000867_bAtRank :
    translationBAtRankMask case_000867_rank case_000867_mask = case_000867_b := by
  rw [translationBAtRankMask, case_000867_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000867_b, case_000867_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000867_firstLine_eq :
    case_000867_support.firstLine case_000867_seq case_000867_b = case_000867_firstLine := by
  norm_num [case_000867_firstLine, case_000867_support, case_000867_seq, case_000867_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000867_secondLine_eq :
    case_000867_support.secondLine case_000867_seq case_000867_b = case_000867_secondLine := by
  norm_num [case_000867_secondLine, case_000867_support, case_000867_seq, case_000867_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000867_sourceAgrees :
    SourceAgrees case_000867_support case_000867_rank.val case_000867_mask := by
  intro hlt
  have hrank : (⟨case_000867_rank.val, hlt⟩ : Fin numPairWords) = case_000867_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000867_rank.val, hlt⟩ case_000867_mask =
        case_000867_seq := by
    simpa [hrank] using case_000867_seqAtRank
  simp [SourceChecks, hseq, case_000867_support,
    checkTranslationConstraintSource, case_000867_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000867_rows :
    EqEqPosVarFirstRows case_000867_support case_000867_rank.val case_000867_mask := by
  intro hlt
  have hrank : (⟨case_000867_rank.val, hlt⟩ : Fin numPairWords) = case_000867_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000867_rank.val, hlt⟩ case_000867_mask =
        case_000867_seq := by
    simpa [hrank] using case_000867_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000867_rank.val, hlt⟩ case_000867_mask =
        case_000867_b := by
    simpa [hrank] using case_000867_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000867_support case_000867_rank.val hlt
          case_000867_mask = case_000867_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000867_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000867_support case_000867_rank.val hlt
          case_000867_mask = case_000867_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000867_secondLine_eq]
  have case_000867_rowFirst :
      EqEqPosRow (FirstLineAt case_000867_support case_000867_rank.val hlt case_000867_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000867_firstLine, EqEqPosRow]
  have case_000867_fixedSecond :
      FixedRow (SecondLineAt case_000867_support case_000867_rank.val hlt case_000867_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000867_secondLine, FixedRow]
  exact ⟨case_000867_rowFirst, case_000867_fixedSecond⟩

private theorem case_000867_existsRows :
    ExistsEqEqPosVarFirstRows case_000867_rank.val case_000867_mask :=
  ⟨case_000867_support, case_000867_sourceAgrees, case_000867_rows⟩

private theorem case_000867_covered :
    RowPropertyParametricCovered case_000867_rank.val case_000867_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000867_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000868_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000868_mask : SignMask := ⟨22, by decide⟩
private def case_000868_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000868_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000868_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000868_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000868_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000868_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000868_rankWord :
    rankPairWord? case_000868_word = some case_000868_rank := by
  decide

private theorem case_000868_unrank :
    unrankPairWord case_000868_rank = case_000868_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000868_word case_000868_rank).1
    case_000868_rankWord |>.symm

private theorem case_000868_seqChoice :
    translationChoiceSeq case_000868_word case_000868_mask = case_000868_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000868_seqAtRank :
    translationSeqAtRankMask case_000868_rank case_000868_mask = case_000868_seq := by
  rw [translationSeqAtRankMask, case_000868_unrank]
  exact case_000868_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000868_bAtRank :
    translationBAtRankMask case_000868_rank case_000868_mask = case_000868_b := by
  rw [translationBAtRankMask, case_000868_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000868_b, case_000868_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000868_firstLine_eq :
    case_000868_support.firstLine case_000868_seq case_000868_b = case_000868_firstLine := by
  norm_num [case_000868_firstLine, case_000868_support, case_000868_seq, case_000868_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000868_secondLine_eq :
    case_000868_support.secondLine case_000868_seq case_000868_b = case_000868_secondLine := by
  norm_num [case_000868_secondLine, case_000868_support, case_000868_seq, case_000868_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000868_sourceAgrees :
    SourceAgrees case_000868_support case_000868_rank.val case_000868_mask := by
  intro hlt
  have hrank : (⟨case_000868_rank.val, hlt⟩ : Fin numPairWords) = case_000868_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000868_rank.val, hlt⟩ case_000868_mask =
        case_000868_seq := by
    simpa [hrank] using case_000868_seqAtRank
  simp [SourceChecks, hseq, case_000868_support,
    checkTranslationConstraintSource, case_000868_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000868_rows :
    OppOneMinusVarFirstRows case_000868_support case_000868_rank.val case_000868_mask := by
  intro hlt
  have hrank : (⟨case_000868_rank.val, hlt⟩ : Fin numPairWords) = case_000868_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000868_rank.val, hlt⟩ case_000868_mask =
        case_000868_seq := by
    simpa [hrank] using case_000868_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000868_rank.val, hlt⟩ case_000868_mask =
        case_000868_b := by
    simpa [hrank] using case_000868_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000868_support case_000868_rank.val hlt
          case_000868_mask = case_000868_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000868_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000868_support case_000868_rank.val hlt
          case_000868_mask = case_000868_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000868_secondLine_eq]
  have case_000868_rowFirst :
      OppPosRow (FirstLineAt case_000868_support case_000868_rank.val hlt case_000868_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000868_firstLine, OppPosRow]
  have case_000868_fixedSecond :
      FixedRow (SecondLineAt case_000868_support case_000868_rank.val hlt case_000868_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000868_secondLine, FixedRow]
  exact ⟨case_000868_rowFirst, case_000868_fixedSecond⟩

private theorem case_000868_existsRows :
    ExistsOppOneMinusVarFirstRows case_000868_rank.val case_000868_mask :=
  ⟨case_000868_support, case_000868_sourceAgrees, case_000868_rows⟩

private theorem case_000868_covered :
    RowPropertyParametricCovered case_000868_rank.val case_000868_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000868_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000869_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000869_mask : SignMask := ⟨23, by decide⟩
private def case_000869_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000869_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000869_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000869_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (100/9) }
private def case_000869_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000869_secondLine : StrictLin2 := { a := (-25/374), b := (-25/374), c := (-35/187) }

private theorem case_000869_rankWord :
    rankPairWord? case_000869_word = some case_000869_rank := by
  decide

private theorem case_000869_unrank :
    unrankPairWord case_000869_rank = case_000869_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000869_word case_000869_rank).1
    case_000869_rankWord |>.symm

private theorem case_000869_seqChoice :
    translationChoiceSeq case_000869_word case_000869_mask = case_000869_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000869_seqAtRank :
    translationSeqAtRankMask case_000869_rank case_000869_mask = case_000869_seq := by
  rw [translationSeqAtRankMask, case_000869_unrank]
  exact case_000869_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000869_bAtRank :
    translationBAtRankMask case_000869_rank case_000869_mask = case_000869_b := by
  rw [translationBAtRankMask, case_000869_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000869_b, case_000869_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000869_firstLine_eq :
    case_000869_support.firstLine case_000869_seq case_000869_b = case_000869_firstLine := by
  norm_num [case_000869_firstLine, case_000869_support, case_000869_seq, case_000869_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000869_secondLine_eq :
    case_000869_support.secondLine case_000869_seq case_000869_b = case_000869_secondLine := by
  norm_num [case_000869_secondLine, case_000869_support, case_000869_seq, case_000869_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000869_sourceAgrees :
    SourceAgrees case_000869_support case_000869_rank.val case_000869_mask := by
  intro hlt
  have hrank : (⟨case_000869_rank.val, hlt⟩ : Fin numPairWords) = case_000869_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000869_rank.val, hlt⟩ case_000869_mask =
        case_000869_seq := by
    simpa [hrank] using case_000869_seqAtRank
  simp [SourceChecks, hseq, case_000869_support,
    checkTranslationConstraintSource, case_000869_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000869_rows :
    EqEqPosVarSecondRows case_000869_support case_000869_rank.val case_000869_mask := by
  intro hlt
  have hrank : (⟨case_000869_rank.val, hlt⟩ : Fin numPairWords) = case_000869_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000869_rank.val, hlt⟩ case_000869_mask =
        case_000869_seq := by
    simpa [hrank] using case_000869_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000869_rank.val, hlt⟩ case_000869_mask =
        case_000869_b := by
    simpa [hrank] using case_000869_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000869_support case_000869_rank.val hlt
          case_000869_mask = case_000869_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000869_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000869_support case_000869_rank.val hlt
          case_000869_mask = case_000869_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000869_secondLine_eq]
  have case_000869_fixedFirst :
      FixedRow (FirstLineAt case_000869_support case_000869_rank.val hlt case_000869_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000869_firstLine, FixedRow]
  have case_000869_rowSecond :
      EqEqPosRow (SecondLineAt case_000869_support case_000869_rank.val hlt case_000869_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000869_secondLine, EqEqPosRow]
  exact ⟨case_000869_fixedFirst, case_000869_rowSecond⟩

private theorem case_000869_existsRows :
    ExistsEqEqPosVarSecondRows case_000869_rank.val case_000869_mask :=
  ⟨case_000869_support, case_000869_sourceAgrees, case_000869_rows⟩

private theorem case_000869_covered :
    RowPropertyParametricCovered case_000869_rank.val case_000869_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000869_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000870_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000870_mask : SignMask := ⟨24, by decide⟩
private def case_000870_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000870_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000870_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000870_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000870_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000870_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000870_rankWord :
    rankPairWord? case_000870_word = some case_000870_rank := by
  decide

private theorem case_000870_unrank :
    unrankPairWord case_000870_rank = case_000870_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000870_word case_000870_rank).1
    case_000870_rankWord |>.symm

private theorem case_000870_seqChoice :
    translationChoiceSeq case_000870_word case_000870_mask = case_000870_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000870_seqAtRank :
    translationSeqAtRankMask case_000870_rank case_000870_mask = case_000870_seq := by
  rw [translationSeqAtRankMask, case_000870_unrank]
  exact case_000870_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000870_bAtRank :
    translationBAtRankMask case_000870_rank case_000870_mask = case_000870_b := by
  rw [translationBAtRankMask, case_000870_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000870_b, case_000870_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000870_firstLine_eq :
    case_000870_support.firstLine case_000870_seq case_000870_b = case_000870_firstLine := by
  norm_num [case_000870_firstLine, case_000870_support, case_000870_seq, case_000870_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000870_secondLine_eq :
    case_000870_support.secondLine case_000870_seq case_000870_b = case_000870_secondLine := by
  norm_num [case_000870_secondLine, case_000870_support, case_000870_seq, case_000870_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000870_sourceAgrees :
    SourceAgrees case_000870_support case_000870_rank.val case_000870_mask := by
  intro hlt
  have hrank : (⟨case_000870_rank.val, hlt⟩ : Fin numPairWords) = case_000870_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000870_rank.val, hlt⟩ case_000870_mask =
        case_000870_seq := by
    simpa [hrank] using case_000870_seqAtRank
  simp [SourceChecks, hseq, case_000870_support,
    checkTranslationConstraintSource, case_000870_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000870_rows :
    EqEqPosVarFirstRows case_000870_support case_000870_rank.val case_000870_mask := by
  intro hlt
  have hrank : (⟨case_000870_rank.val, hlt⟩ : Fin numPairWords) = case_000870_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000870_rank.val, hlt⟩ case_000870_mask =
        case_000870_seq := by
    simpa [hrank] using case_000870_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000870_rank.val, hlt⟩ case_000870_mask =
        case_000870_b := by
    simpa [hrank] using case_000870_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000870_support case_000870_rank.val hlt
          case_000870_mask = case_000870_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000870_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000870_support case_000870_rank.val hlt
          case_000870_mask = case_000870_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000870_secondLine_eq]
  have case_000870_rowFirst :
      EqEqPosRow (FirstLineAt case_000870_support case_000870_rank.val hlt case_000870_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000870_firstLine, EqEqPosRow]
  have case_000870_fixedSecond :
      FixedRow (SecondLineAt case_000870_support case_000870_rank.val hlt case_000870_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000870_secondLine, FixedRow]
  exact ⟨case_000870_rowFirst, case_000870_fixedSecond⟩

private theorem case_000870_existsRows :
    ExistsEqEqPosVarFirstRows case_000870_rank.val case_000870_mask :=
  ⟨case_000870_support, case_000870_sourceAgrees, case_000870_rows⟩

private theorem case_000870_covered :
    RowPropertyParametricCovered case_000870_rank.val case_000870_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000870_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000871_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000871_mask : SignMask := ⟨28, by decide⟩
private def case_000871_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000871_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000871_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000871_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000871_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000871_secondLine : StrictLin2 := { a := (9/52), b := (-9/52), c := (-9/26) }

private theorem case_000871_rankWord :
    rankPairWord? case_000871_word = some case_000871_rank := by
  decide

private theorem case_000871_unrank :
    unrankPairWord case_000871_rank = case_000871_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000871_word case_000871_rank).1
    case_000871_rankWord |>.symm

private theorem case_000871_seqChoice :
    translationChoiceSeq case_000871_word case_000871_mask = case_000871_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000871_seqAtRank :
    translationSeqAtRankMask case_000871_rank case_000871_mask = case_000871_seq := by
  rw [translationSeqAtRankMask, case_000871_unrank]
  exact case_000871_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000871_bAtRank :
    translationBAtRankMask case_000871_rank case_000871_mask = case_000871_b := by
  rw [translationBAtRankMask, case_000871_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000871_b, case_000871_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000871_firstLine_eq :
    case_000871_support.firstLine case_000871_seq case_000871_b = case_000871_firstLine := by
  norm_num [case_000871_firstLine, case_000871_support, case_000871_seq, case_000871_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000871_secondLine_eq :
    case_000871_support.secondLine case_000871_seq case_000871_b = case_000871_secondLine := by
  norm_num [case_000871_secondLine, case_000871_support, case_000871_seq, case_000871_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000871_sourceAgrees :
    SourceAgrees case_000871_support case_000871_rank.val case_000871_mask := by
  intro hlt
  have hrank : (⟨case_000871_rank.val, hlt⟩ : Fin numPairWords) = case_000871_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000871_rank.val, hlt⟩ case_000871_mask =
        case_000871_seq := by
    simpa [hrank] using case_000871_seqAtRank
  simp [SourceChecks, hseq, case_000871_support,
    checkTranslationConstraintSource, case_000871_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000871_rows :
    OppMinusOneVarSecondRows case_000871_support case_000871_rank.val case_000871_mask := by
  intro hlt
  have hrank : (⟨case_000871_rank.val, hlt⟩ : Fin numPairWords) = case_000871_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000871_rank.val, hlt⟩ case_000871_mask =
        case_000871_seq := by
    simpa [hrank] using case_000871_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000871_rank.val, hlt⟩ case_000871_mask =
        case_000871_b := by
    simpa [hrank] using case_000871_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000871_support case_000871_rank.val hlt
          case_000871_mask = case_000871_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000871_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000871_support case_000871_rank.val hlt
          case_000871_mask = case_000871_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000871_secondLine_eq]
  have case_000871_fixedFirst :
      FixedRow (FirstLineAt case_000871_support case_000871_rank.val hlt case_000871_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000871_firstLine, FixedRow]
  have case_000871_rowSecond :
      OppNegRow (SecondLineAt case_000871_support case_000871_rank.val hlt case_000871_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000871_secondLine, OppNegRow]
  exact ⟨case_000871_fixedFirst, case_000871_rowSecond⟩

private theorem case_000871_existsRows :
    ExistsOppMinusOneVarSecondRows case_000871_rank.val case_000871_mask :=
  ⟨case_000871_support, case_000871_sourceAgrees, case_000871_rows⟩

private theorem case_000871_covered :
    RowPropertyParametricCovered case_000871_rank.val case_000871_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000871_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000872_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000872_mask : SignMask := ⟨31, by decide⟩
private def case_000872_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000872_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000872_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000872_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000872_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000872_secondLine : StrictLin2 := { a := (-29/390), b := (-29/390), c := (-7/15) }

private theorem case_000872_rankWord :
    rankPairWord? case_000872_word = some case_000872_rank := by
  decide

private theorem case_000872_unrank :
    unrankPairWord case_000872_rank = case_000872_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000872_word case_000872_rank).1
    case_000872_rankWord |>.symm

private theorem case_000872_seqChoice :
    translationChoiceSeq case_000872_word case_000872_mask = case_000872_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000872_seqAtRank :
    translationSeqAtRankMask case_000872_rank case_000872_mask = case_000872_seq := by
  rw [translationSeqAtRankMask, case_000872_unrank]
  exact case_000872_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000872_bAtRank :
    translationBAtRankMask case_000872_rank case_000872_mask = case_000872_b := by
  rw [translationBAtRankMask, case_000872_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000872_b, case_000872_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000872_firstLine_eq :
    case_000872_support.firstLine case_000872_seq case_000872_b = case_000872_firstLine := by
  norm_num [case_000872_firstLine, case_000872_support, case_000872_seq, case_000872_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000872_secondLine_eq :
    case_000872_support.secondLine case_000872_seq case_000872_b = case_000872_secondLine := by
  norm_num [case_000872_secondLine, case_000872_support, case_000872_seq, case_000872_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000872_sourceAgrees :
    SourceAgrees case_000872_support case_000872_rank.val case_000872_mask := by
  intro hlt
  have hrank : (⟨case_000872_rank.val, hlt⟩ : Fin numPairWords) = case_000872_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000872_rank.val, hlt⟩ case_000872_mask =
        case_000872_seq := by
    simpa [hrank] using case_000872_seqAtRank
  simp [SourceChecks, hseq, case_000872_support,
    checkTranslationConstraintSource, case_000872_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000872_rows :
    EqEqPosVarSecondRows case_000872_support case_000872_rank.val case_000872_mask := by
  intro hlt
  have hrank : (⟨case_000872_rank.val, hlt⟩ : Fin numPairWords) = case_000872_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000872_rank.val, hlt⟩ case_000872_mask =
        case_000872_seq := by
    simpa [hrank] using case_000872_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000872_rank.val, hlt⟩ case_000872_mask =
        case_000872_b := by
    simpa [hrank] using case_000872_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000872_support case_000872_rank.val hlt
          case_000872_mask = case_000872_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000872_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000872_support case_000872_rank.val hlt
          case_000872_mask = case_000872_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000872_secondLine_eq]
  have case_000872_fixedFirst :
      FixedRow (FirstLineAt case_000872_support case_000872_rank.val hlt case_000872_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000872_firstLine, FixedRow]
  have case_000872_rowSecond :
      EqEqPosRow (SecondLineAt case_000872_support case_000872_rank.val hlt case_000872_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000872_secondLine, EqEqPosRow]
  exact ⟨case_000872_fixedFirst, case_000872_rowSecond⟩

private theorem case_000872_existsRows :
    ExistsEqEqPosVarSecondRows case_000872_rank.val case_000872_mask :=
  ⟨case_000872_support, case_000872_sourceAgrees, case_000872_rows⟩

private theorem case_000872_covered :
    RowPropertyParametricCovered case_000872_rank.val case_000872_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000872_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000873_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000873_mask : SignMask := ⟨39, by decide⟩
private def case_000873_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000873_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000873_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000873_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (100/9) }
private def case_000873_firstLine : StrictLin2 := { a := (-2/51), b := (-2/51), c := (-32/17) }
private def case_000873_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000873_rankWord :
    rankPairWord? case_000873_word = some case_000873_rank := by
  decide

private theorem case_000873_unrank :
    unrankPairWord case_000873_rank = case_000873_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000873_word case_000873_rank).1
    case_000873_rankWord |>.symm

private theorem case_000873_seqChoice :
    translationChoiceSeq case_000873_word case_000873_mask = case_000873_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000873_seqAtRank :
    translationSeqAtRankMask case_000873_rank case_000873_mask = case_000873_seq := by
  rw [translationSeqAtRankMask, case_000873_unrank]
  exact case_000873_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000873_bAtRank :
    translationBAtRankMask case_000873_rank case_000873_mask = case_000873_b := by
  rw [translationBAtRankMask, case_000873_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000873_b, case_000873_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000873_firstLine_eq :
    case_000873_support.firstLine case_000873_seq case_000873_b = case_000873_firstLine := by
  norm_num [case_000873_firstLine, case_000873_support, case_000873_seq, case_000873_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000873_secondLine_eq :
    case_000873_support.secondLine case_000873_seq case_000873_b = case_000873_secondLine := by
  norm_num [case_000873_secondLine, case_000873_support, case_000873_seq, case_000873_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000873_sourceAgrees :
    SourceAgrees case_000873_support case_000873_rank.val case_000873_mask := by
  intro hlt
  have hrank : (⟨case_000873_rank.val, hlt⟩ : Fin numPairWords) = case_000873_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000873_rank.val, hlt⟩ case_000873_mask =
        case_000873_seq := by
    simpa [hrank] using case_000873_seqAtRank
  simp [SourceChecks, hseq, case_000873_support,
    checkTranslationConstraintSource, case_000873_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000873_rows :
    EqEqPosVarFirstRows case_000873_support case_000873_rank.val case_000873_mask := by
  intro hlt
  have hrank : (⟨case_000873_rank.val, hlt⟩ : Fin numPairWords) = case_000873_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000873_rank.val, hlt⟩ case_000873_mask =
        case_000873_seq := by
    simpa [hrank] using case_000873_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000873_rank.val, hlt⟩ case_000873_mask =
        case_000873_b := by
    simpa [hrank] using case_000873_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000873_support case_000873_rank.val hlt
          case_000873_mask = case_000873_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000873_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000873_support case_000873_rank.val hlt
          case_000873_mask = case_000873_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000873_secondLine_eq]
  have case_000873_rowFirst :
      EqEqPosRow (FirstLineAt case_000873_support case_000873_rank.val hlt case_000873_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000873_firstLine, EqEqPosRow]
  have case_000873_fixedSecond :
      FixedRow (SecondLineAt case_000873_support case_000873_rank.val hlt case_000873_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000873_secondLine, FixedRow]
  exact ⟨case_000873_rowFirst, case_000873_fixedSecond⟩

private theorem case_000873_existsRows :
    ExistsEqEqPosVarFirstRows case_000873_rank.val case_000873_mask :=
  ⟨case_000873_support, case_000873_sourceAgrees, case_000873_rows⟩

private theorem case_000873_covered :
    RowPropertyParametricCovered case_000873_rank.val case_000873_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000873_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000874_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000874_mask : SignMask := ⟨47, by decide⟩
private def case_000874_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000874_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000874_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000874_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000874_firstLine : StrictLin2 := { a := (-5/3), b := (-5/3), c := -7 }
private def case_000874_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000874_rankWord :
    rankPairWord? case_000874_word = some case_000874_rank := by
  decide

private theorem case_000874_unrank :
    unrankPairWord case_000874_rank = case_000874_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000874_word case_000874_rank).1
    case_000874_rankWord |>.symm

private theorem case_000874_seqChoice :
    translationChoiceSeq case_000874_word case_000874_mask = case_000874_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000874_seqAtRank :
    translationSeqAtRankMask case_000874_rank case_000874_mask = case_000874_seq := by
  rw [translationSeqAtRankMask, case_000874_unrank]
  exact case_000874_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000874_bAtRank :
    translationBAtRankMask case_000874_rank case_000874_mask = case_000874_b := by
  rw [translationBAtRankMask, case_000874_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000874_b, case_000874_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000874_firstLine_eq :
    case_000874_support.firstLine case_000874_seq case_000874_b = case_000874_firstLine := by
  norm_num [case_000874_firstLine, case_000874_support, case_000874_seq, case_000874_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000874_secondLine_eq :
    case_000874_support.secondLine case_000874_seq case_000874_b = case_000874_secondLine := by
  norm_num [case_000874_secondLine, case_000874_support, case_000874_seq, case_000874_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000874_sourceAgrees :
    SourceAgrees case_000874_support case_000874_rank.val case_000874_mask := by
  intro hlt
  have hrank : (⟨case_000874_rank.val, hlt⟩ : Fin numPairWords) = case_000874_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000874_rank.val, hlt⟩ case_000874_mask =
        case_000874_seq := by
    simpa [hrank] using case_000874_seqAtRank
  simp [SourceChecks, hseq, case_000874_support,
    checkTranslationConstraintSource, case_000874_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000874_rows :
    EqEqPosVarFirstRows case_000874_support case_000874_rank.val case_000874_mask := by
  intro hlt
  have hrank : (⟨case_000874_rank.val, hlt⟩ : Fin numPairWords) = case_000874_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000874_rank.val, hlt⟩ case_000874_mask =
        case_000874_seq := by
    simpa [hrank] using case_000874_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000874_rank.val, hlt⟩ case_000874_mask =
        case_000874_b := by
    simpa [hrank] using case_000874_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000874_support case_000874_rank.val hlt
          case_000874_mask = case_000874_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000874_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000874_support case_000874_rank.val hlt
          case_000874_mask = case_000874_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000874_secondLine_eq]
  have case_000874_rowFirst :
      EqEqPosRow (FirstLineAt case_000874_support case_000874_rank.val hlt case_000874_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000874_firstLine, EqEqPosRow]
  have case_000874_fixedSecond :
      FixedRow (SecondLineAt case_000874_support case_000874_rank.val hlt case_000874_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000874_secondLine, FixedRow]
  exact ⟨case_000874_rowFirst, case_000874_fixedSecond⟩

private theorem case_000874_existsRows :
    ExistsEqEqPosVarFirstRows case_000874_rank.val case_000874_mask :=
  ⟨case_000874_support, case_000874_sourceAgrees, case_000874_rows⟩

private theorem case_000874_covered :
    RowPropertyParametricCovered case_000874_rank.val case_000874_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000874_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000875_rank : Fin numPairWords := ⟨629, by decide⟩
private def case_000875_mask : SignMask := ⟨55, by decide⟩
private def case_000875_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000875_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000875_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000875_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000875_firstLine : StrictLin2 := { a := (-5/3), b := (-5/3), c := -7 }
private def case_000875_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000875_rankWord :
    rankPairWord? case_000875_word = some case_000875_rank := by
  decide

private theorem case_000875_unrank :
    unrankPairWord case_000875_rank = case_000875_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000875_word case_000875_rank).1
    case_000875_rankWord |>.symm

private theorem case_000875_seqChoice :
    translationChoiceSeq case_000875_word case_000875_mask = case_000875_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000875_seqAtRank :
    translationSeqAtRankMask case_000875_rank case_000875_mask = case_000875_seq := by
  rw [translationSeqAtRankMask, case_000875_unrank]
  exact case_000875_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000875_bAtRank :
    translationBAtRankMask case_000875_rank case_000875_mask = case_000875_b := by
  rw [translationBAtRankMask, case_000875_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000875_b, case_000875_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000875_firstLine_eq :
    case_000875_support.firstLine case_000875_seq case_000875_b = case_000875_firstLine := by
  norm_num [case_000875_firstLine, case_000875_support, case_000875_seq, case_000875_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000875_secondLine_eq :
    case_000875_support.secondLine case_000875_seq case_000875_b = case_000875_secondLine := by
  norm_num [case_000875_secondLine, case_000875_support, case_000875_seq, case_000875_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000875_sourceAgrees :
    SourceAgrees case_000875_support case_000875_rank.val case_000875_mask := by
  intro hlt
  have hrank : (⟨case_000875_rank.val, hlt⟩ : Fin numPairWords) = case_000875_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000875_rank.val, hlt⟩ case_000875_mask =
        case_000875_seq := by
    simpa [hrank] using case_000875_seqAtRank
  simp [SourceChecks, hseq, case_000875_support,
    checkTranslationConstraintSource, case_000875_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000875_rows :
    EqEqPosVarFirstRows case_000875_support case_000875_rank.val case_000875_mask := by
  intro hlt
  have hrank : (⟨case_000875_rank.val, hlt⟩ : Fin numPairWords) = case_000875_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000875_rank.val, hlt⟩ case_000875_mask =
        case_000875_seq := by
    simpa [hrank] using case_000875_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000875_rank.val, hlt⟩ case_000875_mask =
        case_000875_b := by
    simpa [hrank] using case_000875_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000875_support case_000875_rank.val hlt
          case_000875_mask = case_000875_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000875_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000875_support case_000875_rank.val hlt
          case_000875_mask = case_000875_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000875_secondLine_eq]
  have case_000875_rowFirst :
      EqEqPosRow (FirstLineAt case_000875_support case_000875_rank.val hlt case_000875_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000875_firstLine, EqEqPosRow]
  have case_000875_fixedSecond :
      FixedRow (SecondLineAt case_000875_support case_000875_rank.val hlt case_000875_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000875_secondLine, FixedRow]
  exact ⟨case_000875_rowFirst, case_000875_fixedSecond⟩

private theorem case_000875_existsRows :
    ExistsEqEqPosVarFirstRows case_000875_rank.val case_000875_mask :=
  ⟨case_000875_support, case_000875_sourceAgrees, case_000875_rows⟩

private theorem case_000875_covered :
    RowPropertyParametricCovered case_000875_rank.val case_000875_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000875_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000876_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000876_mask : SignMask := ⟨8, by decide⟩
private def case_000876_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000876_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000876_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000876_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-148/9) }
private def case_000876_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000876_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000876_rankWord :
    rankPairWord? case_000876_word = some case_000876_rank := by
  decide

private theorem case_000876_unrank :
    unrankPairWord case_000876_rank = case_000876_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000876_word case_000876_rank).1
    case_000876_rankWord |>.symm

private theorem case_000876_seqChoice :
    translationChoiceSeq case_000876_word case_000876_mask = case_000876_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000876_seqAtRank :
    translationSeqAtRankMask case_000876_rank case_000876_mask = case_000876_seq := by
  rw [translationSeqAtRankMask, case_000876_unrank]
  exact case_000876_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000876_bAtRank :
    translationBAtRankMask case_000876_rank case_000876_mask = case_000876_b := by
  rw [translationBAtRankMask, case_000876_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000876_b, case_000876_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000876_firstLine_eq :
    case_000876_support.firstLine case_000876_seq case_000876_b = case_000876_firstLine := by
  norm_num [case_000876_firstLine, case_000876_support, case_000876_seq, case_000876_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000876_secondLine_eq :
    case_000876_support.secondLine case_000876_seq case_000876_b = case_000876_secondLine := by
  norm_num [case_000876_secondLine, case_000876_support, case_000876_seq, case_000876_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000876_sourceAgrees :
    SourceAgrees case_000876_support case_000876_rank.val case_000876_mask := by
  intro hlt
  have hrank : (⟨case_000876_rank.val, hlt⟩ : Fin numPairWords) = case_000876_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000876_rank.val, hlt⟩ case_000876_mask =
        case_000876_seq := by
    simpa [hrank] using case_000876_seqAtRank
  simp [SourceChecks, hseq, case_000876_support,
    checkTranslationConstraintSource, case_000876_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000876_rows :
    EqEqPosVarFirstRows case_000876_support case_000876_rank.val case_000876_mask := by
  intro hlt
  have hrank : (⟨case_000876_rank.val, hlt⟩ : Fin numPairWords) = case_000876_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000876_rank.val, hlt⟩ case_000876_mask =
        case_000876_seq := by
    simpa [hrank] using case_000876_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000876_rank.val, hlt⟩ case_000876_mask =
        case_000876_b := by
    simpa [hrank] using case_000876_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000876_support case_000876_rank.val hlt
          case_000876_mask = case_000876_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000876_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000876_support case_000876_rank.val hlt
          case_000876_mask = case_000876_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000876_secondLine_eq]
  have case_000876_rowFirst :
      EqEqPosRow (FirstLineAt case_000876_support case_000876_rank.val hlt case_000876_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000876_firstLine, EqEqPosRow]
  have case_000876_fixedSecond :
      FixedRow (SecondLineAt case_000876_support case_000876_rank.val hlt case_000876_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000876_secondLine, FixedRow]
  exact ⟨case_000876_rowFirst, case_000876_fixedSecond⟩

private theorem case_000876_existsRows :
    ExistsEqEqPosVarFirstRows case_000876_rank.val case_000876_mask :=
  ⟨case_000876_support, case_000876_sourceAgrees, case_000876_rows⟩

private theorem case_000876_covered :
    RowPropertyParametricCovered case_000876_rank.val case_000876_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000876_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000877_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000877_mask : SignMask := ⟨9, by decide⟩
private def case_000877_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000877_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000877_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000877_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-148/9) }
private def case_000877_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000877_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000877_rankWord :
    rankPairWord? case_000877_word = some case_000877_rank := by
  decide

private theorem case_000877_unrank :
    unrankPairWord case_000877_rank = case_000877_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000877_word case_000877_rank).1
    case_000877_rankWord |>.symm

private theorem case_000877_seqChoice :
    translationChoiceSeq case_000877_word case_000877_mask = case_000877_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000877_seqAtRank :
    translationSeqAtRankMask case_000877_rank case_000877_mask = case_000877_seq := by
  rw [translationSeqAtRankMask, case_000877_unrank]
  exact case_000877_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000877_bAtRank :
    translationBAtRankMask case_000877_rank case_000877_mask = case_000877_b := by
  rw [translationBAtRankMask, case_000877_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000877_b, case_000877_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000877_firstLine_eq :
    case_000877_support.firstLine case_000877_seq case_000877_b = case_000877_firstLine := by
  norm_num [case_000877_firstLine, case_000877_support, case_000877_seq, case_000877_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000877_secondLine_eq :
    case_000877_support.secondLine case_000877_seq case_000877_b = case_000877_secondLine := by
  norm_num [case_000877_secondLine, case_000877_support, case_000877_seq, case_000877_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000877_sourceAgrees :
    SourceAgrees case_000877_support case_000877_rank.val case_000877_mask := by
  intro hlt
  have hrank : (⟨case_000877_rank.val, hlt⟩ : Fin numPairWords) = case_000877_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000877_rank.val, hlt⟩ case_000877_mask =
        case_000877_seq := by
    simpa [hrank] using case_000877_seqAtRank
  simp [SourceChecks, hseq, case_000877_support,
    checkTranslationConstraintSource, case_000877_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000877_rows :
    EqEqPosVarFirstRows case_000877_support case_000877_rank.val case_000877_mask := by
  intro hlt
  have hrank : (⟨case_000877_rank.val, hlt⟩ : Fin numPairWords) = case_000877_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000877_rank.val, hlt⟩ case_000877_mask =
        case_000877_seq := by
    simpa [hrank] using case_000877_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000877_rank.val, hlt⟩ case_000877_mask =
        case_000877_b := by
    simpa [hrank] using case_000877_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000877_support case_000877_rank.val hlt
          case_000877_mask = case_000877_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000877_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000877_support case_000877_rank.val hlt
          case_000877_mask = case_000877_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000877_secondLine_eq]
  have case_000877_rowFirst :
      EqEqPosRow (FirstLineAt case_000877_support case_000877_rank.val hlt case_000877_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000877_firstLine, EqEqPosRow]
  have case_000877_fixedSecond :
      FixedRow (SecondLineAt case_000877_support case_000877_rank.val hlt case_000877_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000877_secondLine, FixedRow]
  exact ⟨case_000877_rowFirst, case_000877_fixedSecond⟩

private theorem case_000877_existsRows :
    ExistsEqEqPosVarFirstRows case_000877_rank.val case_000877_mask :=
  ⟨case_000877_support, case_000877_sourceAgrees, case_000877_rows⟩

private theorem case_000877_covered :
    RowPropertyParametricCovered case_000877_rank.val case_000877_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000877_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000878_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000878_mask : SignMask := ⟨16, by decide⟩
private def case_000878_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000878_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000878_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000878_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000878_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000878_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000878_rankWord :
    rankPairWord? case_000878_word = some case_000878_rank := by
  decide

private theorem case_000878_unrank :
    unrankPairWord case_000878_rank = case_000878_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000878_word case_000878_rank).1
    case_000878_rankWord |>.symm

private theorem case_000878_seqChoice :
    translationChoiceSeq case_000878_word case_000878_mask = case_000878_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000878_seqAtRank :
    translationSeqAtRankMask case_000878_rank case_000878_mask = case_000878_seq := by
  rw [translationSeqAtRankMask, case_000878_unrank]
  exact case_000878_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000878_bAtRank :
    translationBAtRankMask case_000878_rank case_000878_mask = case_000878_b := by
  rw [translationBAtRankMask, case_000878_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000878_b, case_000878_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000878_firstLine_eq :
    case_000878_support.firstLine case_000878_seq case_000878_b = case_000878_firstLine := by
  norm_num [case_000878_firstLine, case_000878_support, case_000878_seq, case_000878_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000878_secondLine_eq :
    case_000878_support.secondLine case_000878_seq case_000878_b = case_000878_secondLine := by
  norm_num [case_000878_secondLine, case_000878_support, case_000878_seq, case_000878_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000878_sourceAgrees :
    SourceAgrees case_000878_support case_000878_rank.val case_000878_mask := by
  intro hlt
  have hrank : (⟨case_000878_rank.val, hlt⟩ : Fin numPairWords) = case_000878_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000878_rank.val, hlt⟩ case_000878_mask =
        case_000878_seq := by
    simpa [hrank] using case_000878_seqAtRank
  simp [SourceChecks, hseq, case_000878_support,
    checkTranslationConstraintSource, case_000878_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000878_rows :
    EqEqPosVarFirstRows case_000878_support case_000878_rank.val case_000878_mask := by
  intro hlt
  have hrank : (⟨case_000878_rank.val, hlt⟩ : Fin numPairWords) = case_000878_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000878_rank.val, hlt⟩ case_000878_mask =
        case_000878_seq := by
    simpa [hrank] using case_000878_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000878_rank.val, hlt⟩ case_000878_mask =
        case_000878_b := by
    simpa [hrank] using case_000878_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000878_support case_000878_rank.val hlt
          case_000878_mask = case_000878_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000878_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000878_support case_000878_rank.val hlt
          case_000878_mask = case_000878_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000878_secondLine_eq]
  have case_000878_rowFirst :
      EqEqPosRow (FirstLineAt case_000878_support case_000878_rank.val hlt case_000878_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000878_firstLine, EqEqPosRow]
  have case_000878_fixedSecond :
      FixedRow (SecondLineAt case_000878_support case_000878_rank.val hlt case_000878_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000878_secondLine, FixedRow]
  exact ⟨case_000878_rowFirst, case_000878_fixedSecond⟩

private theorem case_000878_existsRows :
    ExistsEqEqPosVarFirstRows case_000878_rank.val case_000878_mask :=
  ⟨case_000878_support, case_000878_sourceAgrees, case_000878_rows⟩

private theorem case_000878_covered :
    RowPropertyParametricCovered case_000878_rank.val case_000878_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000878_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000879_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000879_mask : SignMask := ⟨22, by decide⟩
private def case_000879_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000879_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000879_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000879_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_000879_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000879_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000879_rankWord :
    rankPairWord? case_000879_word = some case_000879_rank := by
  decide

private theorem case_000879_unrank :
    unrankPairWord case_000879_rank = case_000879_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000879_word case_000879_rank).1
    case_000879_rankWord |>.symm

private theorem case_000879_seqChoice :
    translationChoiceSeq case_000879_word case_000879_mask = case_000879_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000879_seqAtRank :
    translationSeqAtRankMask case_000879_rank case_000879_mask = case_000879_seq := by
  rw [translationSeqAtRankMask, case_000879_unrank]
  exact case_000879_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000879_bAtRank :
    translationBAtRankMask case_000879_rank case_000879_mask = case_000879_b := by
  rw [translationBAtRankMask, case_000879_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000879_b, case_000879_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000879_firstLine_eq :
    case_000879_support.firstLine case_000879_seq case_000879_b = case_000879_firstLine := by
  norm_num [case_000879_firstLine, case_000879_support, case_000879_seq, case_000879_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000879_secondLine_eq :
    case_000879_support.secondLine case_000879_seq case_000879_b = case_000879_secondLine := by
  norm_num [case_000879_secondLine, case_000879_support, case_000879_seq, case_000879_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000879_sourceAgrees :
    SourceAgrees case_000879_support case_000879_rank.val case_000879_mask := by
  intro hlt
  have hrank : (⟨case_000879_rank.val, hlt⟩ : Fin numPairWords) = case_000879_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000879_rank.val, hlt⟩ case_000879_mask =
        case_000879_seq := by
    simpa [hrank] using case_000879_seqAtRank
  simp [SourceChecks, hseq, case_000879_support,
    checkTranslationConstraintSource, case_000879_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000879_rows :
    EqEqPosVarFirstRows case_000879_support case_000879_rank.val case_000879_mask := by
  intro hlt
  have hrank : (⟨case_000879_rank.val, hlt⟩ : Fin numPairWords) = case_000879_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000879_rank.val, hlt⟩ case_000879_mask =
        case_000879_seq := by
    simpa [hrank] using case_000879_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000879_rank.val, hlt⟩ case_000879_mask =
        case_000879_b := by
    simpa [hrank] using case_000879_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000879_support case_000879_rank.val hlt
          case_000879_mask = case_000879_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000879_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000879_support case_000879_rank.val hlt
          case_000879_mask = case_000879_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000879_secondLine_eq]
  have case_000879_rowFirst :
      EqEqPosRow (FirstLineAt case_000879_support case_000879_rank.val hlt case_000879_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000879_firstLine, EqEqPosRow]
  have case_000879_fixedSecond :
      FixedRow (SecondLineAt case_000879_support case_000879_rank.val hlt case_000879_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000879_secondLine, FixedRow]
  exact ⟨case_000879_rowFirst, case_000879_fixedSecond⟩

private theorem case_000879_existsRows :
    ExistsEqEqPosVarFirstRows case_000879_rank.val case_000879_mask :=
  ⟨case_000879_support, case_000879_sourceAgrees, case_000879_rows⟩

private theorem case_000879_covered :
    RowPropertyParametricCovered case_000879_rank.val case_000879_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000879_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000880_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000880_mask : SignMask := ⟨24, by decide⟩
private def case_000880_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000880_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000880_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000880_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000880_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000880_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000880_rankWord :
    rankPairWord? case_000880_word = some case_000880_rank := by
  decide

private theorem case_000880_unrank :
    unrankPairWord case_000880_rank = case_000880_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000880_word case_000880_rank).1
    case_000880_rankWord |>.symm

private theorem case_000880_seqChoice :
    translationChoiceSeq case_000880_word case_000880_mask = case_000880_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000880_seqAtRank :
    translationSeqAtRankMask case_000880_rank case_000880_mask = case_000880_seq := by
  rw [translationSeqAtRankMask, case_000880_unrank]
  exact case_000880_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000880_bAtRank :
    translationBAtRankMask case_000880_rank case_000880_mask = case_000880_b := by
  rw [translationBAtRankMask, case_000880_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000880_b, case_000880_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000880_firstLine_eq :
    case_000880_support.firstLine case_000880_seq case_000880_b = case_000880_firstLine := by
  norm_num [case_000880_firstLine, case_000880_support, case_000880_seq, case_000880_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000880_secondLine_eq :
    case_000880_support.secondLine case_000880_seq case_000880_b = case_000880_secondLine := by
  norm_num [case_000880_secondLine, case_000880_support, case_000880_seq, case_000880_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000880_sourceAgrees :
    SourceAgrees case_000880_support case_000880_rank.val case_000880_mask := by
  intro hlt
  have hrank : (⟨case_000880_rank.val, hlt⟩ : Fin numPairWords) = case_000880_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000880_rank.val, hlt⟩ case_000880_mask =
        case_000880_seq := by
    simpa [hrank] using case_000880_seqAtRank
  simp [SourceChecks, hseq, case_000880_support,
    checkTranslationConstraintSource, case_000880_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000880_rows :
    EqEqPosVarFirstRows case_000880_support case_000880_rank.val case_000880_mask := by
  intro hlt
  have hrank : (⟨case_000880_rank.val, hlt⟩ : Fin numPairWords) = case_000880_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000880_rank.val, hlt⟩ case_000880_mask =
        case_000880_seq := by
    simpa [hrank] using case_000880_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000880_rank.val, hlt⟩ case_000880_mask =
        case_000880_b := by
    simpa [hrank] using case_000880_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000880_support case_000880_rank.val hlt
          case_000880_mask = case_000880_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000880_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000880_support case_000880_rank.val hlt
          case_000880_mask = case_000880_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000880_secondLine_eq]
  have case_000880_rowFirst :
      EqEqPosRow (FirstLineAt case_000880_support case_000880_rank.val hlt case_000880_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000880_firstLine, EqEqPosRow]
  have case_000880_fixedSecond :
      FixedRow (SecondLineAt case_000880_support case_000880_rank.val hlt case_000880_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000880_secondLine, FixedRow]
  exact ⟨case_000880_rowFirst, case_000880_fixedSecond⟩

private theorem case_000880_existsRows :
    ExistsEqEqPosVarFirstRows case_000880_rank.val case_000880_mask :=
  ⟨case_000880_support, case_000880_sourceAgrees, case_000880_rows⟩

private theorem case_000880_covered :
    RowPropertyParametricCovered case_000880_rank.val case_000880_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000880_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000881_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000881_mask : SignMask := ⟨29, by decide⟩
private def case_000881_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000881_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000881_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000881_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_000881_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000881_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000881_rankWord :
    rankPairWord? case_000881_word = some case_000881_rank := by
  decide

private theorem case_000881_unrank :
    unrankPairWord case_000881_rank = case_000881_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000881_word case_000881_rank).1
    case_000881_rankWord |>.symm

private theorem case_000881_seqChoice :
    translationChoiceSeq case_000881_word case_000881_mask = case_000881_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000881_seqAtRank :
    translationSeqAtRankMask case_000881_rank case_000881_mask = case_000881_seq := by
  rw [translationSeqAtRankMask, case_000881_unrank]
  exact case_000881_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000881_bAtRank :
    translationBAtRankMask case_000881_rank case_000881_mask = case_000881_b := by
  rw [translationBAtRankMask, case_000881_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000881_b, case_000881_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000881_firstLine_eq :
    case_000881_support.firstLine case_000881_seq case_000881_b = case_000881_firstLine := by
  norm_num [case_000881_firstLine, case_000881_support, case_000881_seq, case_000881_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000881_secondLine_eq :
    case_000881_support.secondLine case_000881_seq case_000881_b = case_000881_secondLine := by
  norm_num [case_000881_secondLine, case_000881_support, case_000881_seq, case_000881_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000881_sourceAgrees :
    SourceAgrees case_000881_support case_000881_rank.val case_000881_mask := by
  intro hlt
  have hrank : (⟨case_000881_rank.val, hlt⟩ : Fin numPairWords) = case_000881_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000881_rank.val, hlt⟩ case_000881_mask =
        case_000881_seq := by
    simpa [hrank] using case_000881_seqAtRank
  simp [SourceChecks, hseq, case_000881_support,
    checkTranslationConstraintSource, case_000881_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000881_rows :
    EqEqPosVarSecondRows case_000881_support case_000881_rank.val case_000881_mask := by
  intro hlt
  have hrank : (⟨case_000881_rank.val, hlt⟩ : Fin numPairWords) = case_000881_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000881_rank.val, hlt⟩ case_000881_mask =
        case_000881_seq := by
    simpa [hrank] using case_000881_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000881_rank.val, hlt⟩ case_000881_mask =
        case_000881_b := by
    simpa [hrank] using case_000881_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000881_support case_000881_rank.val hlt
          case_000881_mask = case_000881_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000881_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000881_support case_000881_rank.val hlt
          case_000881_mask = case_000881_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000881_secondLine_eq]
  have case_000881_fixedFirst :
      FixedRow (FirstLineAt case_000881_support case_000881_rank.val hlt case_000881_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000881_firstLine, FixedRow]
  have case_000881_rowSecond :
      EqEqPosRow (SecondLineAt case_000881_support case_000881_rank.val hlt case_000881_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000881_secondLine, EqEqPosRow]
  exact ⟨case_000881_fixedFirst, case_000881_rowSecond⟩

private theorem case_000881_existsRows :
    ExistsEqEqPosVarSecondRows case_000881_rank.val case_000881_mask :=
  ⟨case_000881_support, case_000881_sourceAgrees, case_000881_rows⟩

private theorem case_000881_covered :
    RowPropertyParametricCovered case_000881_rank.val case_000881_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000881_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000882_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000882_mask : SignMask := ⟨30, by decide⟩
private def case_000882_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000882_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000882_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000882_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_000882_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000882_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000882_rankWord :
    rankPairWord? case_000882_word = some case_000882_rank := by
  decide

private theorem case_000882_unrank :
    unrankPairWord case_000882_rank = case_000882_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000882_word case_000882_rank).1
    case_000882_rankWord |>.symm

private theorem case_000882_seqChoice :
    translationChoiceSeq case_000882_word case_000882_mask = case_000882_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000882_seqAtRank :
    translationSeqAtRankMask case_000882_rank case_000882_mask = case_000882_seq := by
  rw [translationSeqAtRankMask, case_000882_unrank]
  exact case_000882_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000882_bAtRank :
    translationBAtRankMask case_000882_rank case_000882_mask = case_000882_b := by
  rw [translationBAtRankMask, case_000882_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000882_b, case_000882_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000882_firstLine_eq :
    case_000882_support.firstLine case_000882_seq case_000882_b = case_000882_firstLine := by
  norm_num [case_000882_firstLine, case_000882_support, case_000882_seq, case_000882_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000882_secondLine_eq :
    case_000882_support.secondLine case_000882_seq case_000882_b = case_000882_secondLine := by
  norm_num [case_000882_secondLine, case_000882_support, case_000882_seq, case_000882_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000882_sourceAgrees :
    SourceAgrees case_000882_support case_000882_rank.val case_000882_mask := by
  intro hlt
  have hrank : (⟨case_000882_rank.val, hlt⟩ : Fin numPairWords) = case_000882_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000882_rank.val, hlt⟩ case_000882_mask =
        case_000882_seq := by
    simpa [hrank] using case_000882_seqAtRank
  simp [SourceChecks, hseq, case_000882_support,
    checkTranslationConstraintSource, case_000882_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000882_rows :
    EqEqPosVarFirstRows case_000882_support case_000882_rank.val case_000882_mask := by
  intro hlt
  have hrank : (⟨case_000882_rank.val, hlt⟩ : Fin numPairWords) = case_000882_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000882_rank.val, hlt⟩ case_000882_mask =
        case_000882_seq := by
    simpa [hrank] using case_000882_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000882_rank.val, hlt⟩ case_000882_mask =
        case_000882_b := by
    simpa [hrank] using case_000882_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000882_support case_000882_rank.val hlt
          case_000882_mask = case_000882_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000882_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000882_support case_000882_rank.val hlt
          case_000882_mask = case_000882_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000882_secondLine_eq]
  have case_000882_rowFirst :
      EqEqPosRow (FirstLineAt case_000882_support case_000882_rank.val hlt case_000882_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000882_firstLine, EqEqPosRow]
  have case_000882_fixedSecond :
      FixedRow (SecondLineAt case_000882_support case_000882_rank.val hlt case_000882_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000882_secondLine, FixedRow]
  exact ⟨case_000882_rowFirst, case_000882_fixedSecond⟩

private theorem case_000882_existsRows :
    ExistsEqEqPosVarFirstRows case_000882_rank.val case_000882_mask :=
  ⟨case_000882_support, case_000882_sourceAgrees, case_000882_rows⟩

private theorem case_000882_covered :
    RowPropertyParametricCovered case_000882_rank.val case_000882_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000882_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000883_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000883_mask : SignMask := ⟨31, by decide⟩
private def case_000883_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000883_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000883_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000883_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (52/9) }
private def case_000883_firstLine : StrictLin2 := { a := (-29/11), b := (-29/11), c := (-455/33) }
private def case_000883_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000883_rankWord :
    rankPairWord? case_000883_word = some case_000883_rank := by
  decide

private theorem case_000883_unrank :
    unrankPairWord case_000883_rank = case_000883_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000883_word case_000883_rank).1
    case_000883_rankWord |>.symm

private theorem case_000883_seqChoice :
    translationChoiceSeq case_000883_word case_000883_mask = case_000883_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000883_seqAtRank :
    translationSeqAtRankMask case_000883_rank case_000883_mask = case_000883_seq := by
  rw [translationSeqAtRankMask, case_000883_unrank]
  exact case_000883_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000883_bAtRank :
    translationBAtRankMask case_000883_rank case_000883_mask = case_000883_b := by
  rw [translationBAtRankMask, case_000883_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000883_b, case_000883_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000883_firstLine_eq :
    case_000883_support.firstLine case_000883_seq case_000883_b = case_000883_firstLine := by
  norm_num [case_000883_firstLine, case_000883_support, case_000883_seq, case_000883_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000883_secondLine_eq :
    case_000883_support.secondLine case_000883_seq case_000883_b = case_000883_secondLine := by
  norm_num [case_000883_secondLine, case_000883_support, case_000883_seq, case_000883_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000883_sourceAgrees :
    SourceAgrees case_000883_support case_000883_rank.val case_000883_mask := by
  intro hlt
  have hrank : (⟨case_000883_rank.val, hlt⟩ : Fin numPairWords) = case_000883_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000883_rank.val, hlt⟩ case_000883_mask =
        case_000883_seq := by
    simpa [hrank] using case_000883_seqAtRank
  simp [SourceChecks, hseq, case_000883_support,
    checkTranslationConstraintSource, case_000883_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000883_rows :
    EqEqPosVarFirstRows case_000883_support case_000883_rank.val case_000883_mask := by
  intro hlt
  have hrank : (⟨case_000883_rank.val, hlt⟩ : Fin numPairWords) = case_000883_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000883_rank.val, hlt⟩ case_000883_mask =
        case_000883_seq := by
    simpa [hrank] using case_000883_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000883_rank.val, hlt⟩ case_000883_mask =
        case_000883_b := by
    simpa [hrank] using case_000883_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000883_support case_000883_rank.val hlt
          case_000883_mask = case_000883_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000883_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000883_support case_000883_rank.val hlt
          case_000883_mask = case_000883_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000883_secondLine_eq]
  have case_000883_rowFirst :
      EqEqPosRow (FirstLineAt case_000883_support case_000883_rank.val hlt case_000883_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000883_firstLine, EqEqPosRow]
  have case_000883_fixedSecond :
      FixedRow (SecondLineAt case_000883_support case_000883_rank.val hlt case_000883_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000883_secondLine, FixedRow]
  exact ⟨case_000883_rowFirst, case_000883_fixedSecond⟩

private theorem case_000883_existsRows :
    ExistsEqEqPosVarFirstRows case_000883_rank.val case_000883_mask :=
  ⟨case_000883_support, case_000883_sourceAgrees, case_000883_rows⟩

private theorem case_000883_covered :
    RowPropertyParametricCovered case_000883_rank.val case_000883_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000883_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000884_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000884_mask : SignMask := ⟨45, by decide⟩
private def case_000884_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000884_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000884_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000884_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000884_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000884_secondLine : StrictLin2 := { a := (15/754), b := (-15/754), c := (-159/377) }

private theorem case_000884_rankWord :
    rankPairWord? case_000884_word = some case_000884_rank := by
  decide

private theorem case_000884_unrank :
    unrankPairWord case_000884_rank = case_000884_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000884_word case_000884_rank).1
    case_000884_rankWord |>.symm

private theorem case_000884_seqChoice :
    translationChoiceSeq case_000884_word case_000884_mask = case_000884_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000884_seqAtRank :
    translationSeqAtRankMask case_000884_rank case_000884_mask = case_000884_seq := by
  rw [translationSeqAtRankMask, case_000884_unrank]
  exact case_000884_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000884_bAtRank :
    translationBAtRankMask case_000884_rank case_000884_mask = case_000884_b := by
  rw [translationBAtRankMask, case_000884_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000884_b, case_000884_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000884_firstLine_eq :
    case_000884_support.firstLine case_000884_seq case_000884_b = case_000884_firstLine := by
  norm_num [case_000884_firstLine, case_000884_support, case_000884_seq, case_000884_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000884_secondLine_eq :
    case_000884_support.secondLine case_000884_seq case_000884_b = case_000884_secondLine := by
  norm_num [case_000884_secondLine, case_000884_support, case_000884_seq, case_000884_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000884_sourceAgrees :
    SourceAgrees case_000884_support case_000884_rank.val case_000884_mask := by
  intro hlt
  have hrank : (⟨case_000884_rank.val, hlt⟩ : Fin numPairWords) = case_000884_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000884_rank.val, hlt⟩ case_000884_mask =
        case_000884_seq := by
    simpa [hrank] using case_000884_seqAtRank
  simp [SourceChecks, hseq, case_000884_support,
    checkTranslationConstraintSource, case_000884_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000884_rows :
    OppMinusOneVarSecondRows case_000884_support case_000884_rank.val case_000884_mask := by
  intro hlt
  have hrank : (⟨case_000884_rank.val, hlt⟩ : Fin numPairWords) = case_000884_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000884_rank.val, hlt⟩ case_000884_mask =
        case_000884_seq := by
    simpa [hrank] using case_000884_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000884_rank.val, hlt⟩ case_000884_mask =
        case_000884_b := by
    simpa [hrank] using case_000884_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000884_support case_000884_rank.val hlt
          case_000884_mask = case_000884_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000884_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000884_support case_000884_rank.val hlt
          case_000884_mask = case_000884_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000884_secondLine_eq]
  have case_000884_fixedFirst :
      FixedRow (FirstLineAt case_000884_support case_000884_rank.val hlt case_000884_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000884_firstLine, FixedRow]
  have case_000884_rowSecond :
      OppNegRow (SecondLineAt case_000884_support case_000884_rank.val hlt case_000884_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000884_secondLine, OppNegRow]
  exact ⟨case_000884_fixedFirst, case_000884_rowSecond⟩

private theorem case_000884_existsRows :
    ExistsOppMinusOneVarSecondRows case_000884_rank.val case_000884_mask :=
  ⟨case_000884_support, case_000884_sourceAgrees, case_000884_rows⟩

private theorem case_000884_covered :
    RowPropertyParametricCovered case_000884_rank.val case_000884_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000884_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000885_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000885_mask : SignMask := ⟨47, by decide⟩
private def case_000885_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000885_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000885_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000885_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (52/9) }
private def case_000885_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000885_secondLine : StrictLin2 := { a := (15/154), b := (-15/154), c := (-96/77) }

private theorem case_000885_rankWord :
    rankPairWord? case_000885_word = some case_000885_rank := by
  decide

private theorem case_000885_unrank :
    unrankPairWord case_000885_rank = case_000885_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000885_word case_000885_rank).1
    case_000885_rankWord |>.symm

private theorem case_000885_seqChoice :
    translationChoiceSeq case_000885_word case_000885_mask = case_000885_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000885_seqAtRank :
    translationSeqAtRankMask case_000885_rank case_000885_mask = case_000885_seq := by
  rw [translationSeqAtRankMask, case_000885_unrank]
  exact case_000885_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000885_bAtRank :
    translationBAtRankMask case_000885_rank case_000885_mask = case_000885_b := by
  rw [translationBAtRankMask, case_000885_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000885_b, case_000885_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000885_firstLine_eq :
    case_000885_support.firstLine case_000885_seq case_000885_b = case_000885_firstLine := by
  norm_num [case_000885_firstLine, case_000885_support, case_000885_seq, case_000885_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000885_secondLine_eq :
    case_000885_support.secondLine case_000885_seq case_000885_b = case_000885_secondLine := by
  norm_num [case_000885_secondLine, case_000885_support, case_000885_seq, case_000885_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000885_sourceAgrees :
    SourceAgrees case_000885_support case_000885_rank.val case_000885_mask := by
  intro hlt
  have hrank : (⟨case_000885_rank.val, hlt⟩ : Fin numPairWords) = case_000885_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000885_rank.val, hlt⟩ case_000885_mask =
        case_000885_seq := by
    simpa [hrank] using case_000885_seqAtRank
  simp [SourceChecks, hseq, case_000885_support,
    checkTranslationConstraintSource, case_000885_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000885_rows :
    OppMinusOneVarSecondRows case_000885_support case_000885_rank.val case_000885_mask := by
  intro hlt
  have hrank : (⟨case_000885_rank.val, hlt⟩ : Fin numPairWords) = case_000885_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000885_rank.val, hlt⟩ case_000885_mask =
        case_000885_seq := by
    simpa [hrank] using case_000885_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000885_rank.val, hlt⟩ case_000885_mask =
        case_000885_b := by
    simpa [hrank] using case_000885_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000885_support case_000885_rank.val hlt
          case_000885_mask = case_000885_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000885_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000885_support case_000885_rank.val hlt
          case_000885_mask = case_000885_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000885_secondLine_eq]
  have case_000885_fixedFirst :
      FixedRow (FirstLineAt case_000885_support case_000885_rank.val hlt case_000885_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000885_firstLine, FixedRow]
  have case_000885_rowSecond :
      OppNegRow (SecondLineAt case_000885_support case_000885_rank.val hlt case_000885_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000885_secondLine, OppNegRow]
  exact ⟨case_000885_fixedFirst, case_000885_rowSecond⟩

private theorem case_000885_existsRows :
    ExistsOppMinusOneVarSecondRows case_000885_rank.val case_000885_mask :=
  ⟨case_000885_support, case_000885_sourceAgrees, case_000885_rows⟩

private theorem case_000885_covered :
    RowPropertyParametricCovered case_000885_rank.val case_000885_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000885_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000886_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000886_mask : SignMask := ⟨54, by decide⟩
private def case_000886_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000886_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000886_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000886_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (148/9) }
private def case_000886_firstLine : StrictLin2 := { a := -1, b := 1, c := -19 }
private def case_000886_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000886_rankWord :
    rankPairWord? case_000886_word = some case_000886_rank := by
  decide

private theorem case_000886_unrank :
    unrankPairWord case_000886_rank = case_000886_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000886_word case_000886_rank).1
    case_000886_rankWord |>.symm

private theorem case_000886_seqChoice :
    translationChoiceSeq case_000886_word case_000886_mask = case_000886_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000886_seqAtRank :
    translationSeqAtRankMask case_000886_rank case_000886_mask = case_000886_seq := by
  rw [translationSeqAtRankMask, case_000886_unrank]
  exact case_000886_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000886_bAtRank :
    translationBAtRankMask case_000886_rank case_000886_mask = case_000886_b := by
  rw [translationBAtRankMask, case_000886_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000886_b, case_000886_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000886_firstLine_eq :
    case_000886_support.firstLine case_000886_seq case_000886_b = case_000886_firstLine := by
  norm_num [case_000886_firstLine, case_000886_support, case_000886_seq, case_000886_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000886_secondLine_eq :
    case_000886_support.secondLine case_000886_seq case_000886_b = case_000886_secondLine := by
  norm_num [case_000886_secondLine, case_000886_support, case_000886_seq, case_000886_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000886_sourceAgrees :
    SourceAgrees case_000886_support case_000886_rank.val case_000886_mask := by
  intro hlt
  have hrank : (⟨case_000886_rank.val, hlt⟩ : Fin numPairWords) = case_000886_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000886_rank.val, hlt⟩ case_000886_mask =
        case_000886_seq := by
    simpa [hrank] using case_000886_seqAtRank
  simp [SourceChecks, hseq, case_000886_support,
    checkTranslationConstraintSource, case_000886_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000886_rows :
    OppOneMinusVarFirstRows case_000886_support case_000886_rank.val case_000886_mask := by
  intro hlt
  have hrank : (⟨case_000886_rank.val, hlt⟩ : Fin numPairWords) = case_000886_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000886_rank.val, hlt⟩ case_000886_mask =
        case_000886_seq := by
    simpa [hrank] using case_000886_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000886_rank.val, hlt⟩ case_000886_mask =
        case_000886_b := by
    simpa [hrank] using case_000886_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000886_support case_000886_rank.val hlt
          case_000886_mask = case_000886_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000886_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000886_support case_000886_rank.val hlt
          case_000886_mask = case_000886_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000886_secondLine_eq]
  have case_000886_rowFirst :
      OppPosRow (FirstLineAt case_000886_support case_000886_rank.val hlt case_000886_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000886_firstLine, OppPosRow]
  have case_000886_fixedSecond :
      FixedRow (SecondLineAt case_000886_support case_000886_rank.val hlt case_000886_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000886_secondLine, FixedRow]
  exact ⟨case_000886_rowFirst, case_000886_fixedSecond⟩

private theorem case_000886_existsRows :
    ExistsOppOneMinusVarFirstRows case_000886_rank.val case_000886_mask :=
  ⟨case_000886_support, case_000886_sourceAgrees, case_000886_rows⟩

private theorem case_000886_covered :
    RowPropertyParametricCovered case_000886_rank.val case_000886_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000886_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000887_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000887_mask : SignMask := ⟨55, by decide⟩
private def case_000887_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000887_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000887_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000887_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (148/9) }
private def case_000887_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/5) }
private def case_000887_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000887_rankWord :
    rankPairWord? case_000887_word = some case_000887_rank := by
  decide

private theorem case_000887_unrank :
    unrankPairWord case_000887_rank = case_000887_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000887_word case_000887_rank).1
    case_000887_rankWord |>.symm

private theorem case_000887_seqChoice :
    translationChoiceSeq case_000887_word case_000887_mask = case_000887_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000887_seqAtRank :
    translationSeqAtRankMask case_000887_rank case_000887_mask = case_000887_seq := by
  rw [translationSeqAtRankMask, case_000887_unrank]
  exact case_000887_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000887_bAtRank :
    translationBAtRankMask case_000887_rank case_000887_mask = case_000887_b := by
  rw [translationBAtRankMask, case_000887_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000887_b, case_000887_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000887_firstLine_eq :
    case_000887_support.firstLine case_000887_seq case_000887_b = case_000887_firstLine := by
  norm_num [case_000887_firstLine, case_000887_support, case_000887_seq, case_000887_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000887_secondLine_eq :
    case_000887_support.secondLine case_000887_seq case_000887_b = case_000887_secondLine := by
  norm_num [case_000887_secondLine, case_000887_support, case_000887_seq, case_000887_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000887_sourceAgrees :
    SourceAgrees case_000887_support case_000887_rank.val case_000887_mask := by
  intro hlt
  have hrank : (⟨case_000887_rank.val, hlt⟩ : Fin numPairWords) = case_000887_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000887_rank.val, hlt⟩ case_000887_mask =
        case_000887_seq := by
    simpa [hrank] using case_000887_seqAtRank
  simp [SourceChecks, hseq, case_000887_support,
    checkTranslationConstraintSource, case_000887_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000887_rows :
    OppOneMinusVarFirstRows case_000887_support case_000887_rank.val case_000887_mask := by
  intro hlt
  have hrank : (⟨case_000887_rank.val, hlt⟩ : Fin numPairWords) = case_000887_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000887_rank.val, hlt⟩ case_000887_mask =
        case_000887_seq := by
    simpa [hrank] using case_000887_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000887_rank.val, hlt⟩ case_000887_mask =
        case_000887_b := by
    simpa [hrank] using case_000887_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000887_support case_000887_rank.val hlt
          case_000887_mask = case_000887_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000887_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000887_support case_000887_rank.val hlt
          case_000887_mask = case_000887_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000887_secondLine_eq]
  have case_000887_rowFirst :
      OppPosRow (FirstLineAt case_000887_support case_000887_rank.val hlt case_000887_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000887_firstLine, OppPosRow]
  have case_000887_fixedSecond :
      FixedRow (SecondLineAt case_000887_support case_000887_rank.val hlt case_000887_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000887_secondLine, FixedRow]
  exact ⟨case_000887_rowFirst, case_000887_fixedSecond⟩

private theorem case_000887_existsRows :
    ExistsOppOneMinusVarFirstRows case_000887_rank.val case_000887_mask :=
  ⟨case_000887_support, case_000887_sourceAgrees, case_000887_rows⟩

private theorem case_000887_covered :
    RowPropertyParametricCovered case_000887_rank.val case_000887_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000887_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000888_rank : Fin numPairWords := ⟨630, by decide⟩
private def case_000888_mask : SignMask := ⟨63, by decide⟩
private def case_000888_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000888_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000888_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000888_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (100/9) }
private def case_000888_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000888_secondLine : StrictLin2 := { a := (-17/50), b := (17/50), c := (-73/75) }

private theorem case_000888_rankWord :
    rankPairWord? case_000888_word = some case_000888_rank := by
  decide

private theorem case_000888_unrank :
    unrankPairWord case_000888_rank = case_000888_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000888_word case_000888_rank).1
    case_000888_rankWord |>.symm

private theorem case_000888_seqChoice :
    translationChoiceSeq case_000888_word case_000888_mask = case_000888_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000888_seqAtRank :
    translationSeqAtRankMask case_000888_rank case_000888_mask = case_000888_seq := by
  rw [translationSeqAtRankMask, case_000888_unrank]
  exact case_000888_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000888_bAtRank :
    translationBAtRankMask case_000888_rank case_000888_mask = case_000888_b := by
  rw [translationBAtRankMask, case_000888_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000888_b, case_000888_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000888_firstLine_eq :
    case_000888_support.firstLine case_000888_seq case_000888_b = case_000888_firstLine := by
  norm_num [case_000888_firstLine, case_000888_support, case_000888_seq, case_000888_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000888_secondLine_eq :
    case_000888_support.secondLine case_000888_seq case_000888_b = case_000888_secondLine := by
  norm_num [case_000888_secondLine, case_000888_support, case_000888_seq, case_000888_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000888_sourceAgrees :
    SourceAgrees case_000888_support case_000888_rank.val case_000888_mask := by
  intro hlt
  have hrank : (⟨case_000888_rank.val, hlt⟩ : Fin numPairWords) = case_000888_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000888_rank.val, hlt⟩ case_000888_mask =
        case_000888_seq := by
    simpa [hrank] using case_000888_seqAtRank
  simp [SourceChecks, hseq, case_000888_support,
    checkTranslationConstraintSource, case_000888_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000888_rows :
    OppOneMinusVarSecondRows case_000888_support case_000888_rank.val case_000888_mask := by
  intro hlt
  have hrank : (⟨case_000888_rank.val, hlt⟩ : Fin numPairWords) = case_000888_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000888_rank.val, hlt⟩ case_000888_mask =
        case_000888_seq := by
    simpa [hrank] using case_000888_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000888_rank.val, hlt⟩ case_000888_mask =
        case_000888_b := by
    simpa [hrank] using case_000888_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000888_support case_000888_rank.val hlt
          case_000888_mask = case_000888_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000888_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000888_support case_000888_rank.val hlt
          case_000888_mask = case_000888_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000888_secondLine_eq]
  have case_000888_fixedFirst :
      FixedRow (FirstLineAt case_000888_support case_000888_rank.val hlt case_000888_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000888_firstLine, FixedRow]
  have case_000888_rowSecond :
      OppPosRow (SecondLineAt case_000888_support case_000888_rank.val hlt case_000888_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000888_secondLine, OppPosRow]
  exact ⟨case_000888_fixedFirst, case_000888_rowSecond⟩

private theorem case_000888_existsRows :
    ExistsOppOneMinusVarSecondRows case_000888_rank.val case_000888_mask :=
  ⟨case_000888_support, case_000888_sourceAgrees, case_000888_rows⟩

private theorem case_000888_covered :
    RowPropertyParametricCovered case_000888_rank.val case_000888_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000888_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000889_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000889_mask : SignMask := ⟨8, by decide⟩
private def case_000889_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000889_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000889_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000889_b : Vec3 Rat := { x := -4, y := (-4/9), z := (-164/9) }
private def case_000889_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000889_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000889_rankWord :
    rankPairWord? case_000889_word = some case_000889_rank := by
  decide

private theorem case_000889_unrank :
    unrankPairWord case_000889_rank = case_000889_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000889_word case_000889_rank).1
    case_000889_rankWord |>.symm

private theorem case_000889_seqChoice :
    translationChoiceSeq case_000889_word case_000889_mask = case_000889_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000889_seqAtRank :
    translationSeqAtRankMask case_000889_rank case_000889_mask = case_000889_seq := by
  rw [translationSeqAtRankMask, case_000889_unrank]
  exact case_000889_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000889_bAtRank :
    translationBAtRankMask case_000889_rank case_000889_mask = case_000889_b := by
  rw [translationBAtRankMask, case_000889_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000889_b, case_000889_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000889_firstLine_eq :
    case_000889_support.firstLine case_000889_seq case_000889_b = case_000889_firstLine := by
  norm_num [case_000889_firstLine, case_000889_support, case_000889_seq, case_000889_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000889_secondLine_eq :
    case_000889_support.secondLine case_000889_seq case_000889_b = case_000889_secondLine := by
  norm_num [case_000889_secondLine, case_000889_support, case_000889_seq, case_000889_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000889_sourceAgrees :
    SourceAgrees case_000889_support case_000889_rank.val case_000889_mask := by
  intro hlt
  have hrank : (⟨case_000889_rank.val, hlt⟩ : Fin numPairWords) = case_000889_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000889_rank.val, hlt⟩ case_000889_mask =
        case_000889_seq := by
    simpa [hrank] using case_000889_seqAtRank
  simp [SourceChecks, hseq, case_000889_support,
    checkTranslationConstraintSource, case_000889_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000889_rows :
    EqEqPosVarFirstRows case_000889_support case_000889_rank.val case_000889_mask := by
  intro hlt
  have hrank : (⟨case_000889_rank.val, hlt⟩ : Fin numPairWords) = case_000889_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000889_rank.val, hlt⟩ case_000889_mask =
        case_000889_seq := by
    simpa [hrank] using case_000889_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000889_rank.val, hlt⟩ case_000889_mask =
        case_000889_b := by
    simpa [hrank] using case_000889_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000889_support case_000889_rank.val hlt
          case_000889_mask = case_000889_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000889_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000889_support case_000889_rank.val hlt
          case_000889_mask = case_000889_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000889_secondLine_eq]
  have case_000889_rowFirst :
      EqEqPosRow (FirstLineAt case_000889_support case_000889_rank.val hlt case_000889_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000889_firstLine, EqEqPosRow]
  have case_000889_fixedSecond :
      FixedRow (SecondLineAt case_000889_support case_000889_rank.val hlt case_000889_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000889_secondLine, FixedRow]
  exact ⟨case_000889_rowFirst, case_000889_fixedSecond⟩

private theorem case_000889_existsRows :
    ExistsEqEqPosVarFirstRows case_000889_rank.val case_000889_mask :=
  ⟨case_000889_support, case_000889_sourceAgrees, case_000889_rows⟩

private theorem case_000889_covered :
    RowPropertyParametricCovered case_000889_rank.val case_000889_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000889_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000890_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000890_mask : SignMask := ⟨9, by decide⟩
private def case_000890_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000890_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000890_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000890_b : Vec3 Rat := { x := -4, y := (68/9), z := (-164/9) }
private def case_000890_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000890_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000890_rankWord :
    rankPairWord? case_000890_word = some case_000890_rank := by
  decide

private theorem case_000890_unrank :
    unrankPairWord case_000890_rank = case_000890_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000890_word case_000890_rank).1
    case_000890_rankWord |>.symm

private theorem case_000890_seqChoice :
    translationChoiceSeq case_000890_word case_000890_mask = case_000890_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000890_seqAtRank :
    translationSeqAtRankMask case_000890_rank case_000890_mask = case_000890_seq := by
  rw [translationSeqAtRankMask, case_000890_unrank]
  exact case_000890_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000890_bAtRank :
    translationBAtRankMask case_000890_rank case_000890_mask = case_000890_b := by
  rw [translationBAtRankMask, case_000890_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000890_b, case_000890_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000890_firstLine_eq :
    case_000890_support.firstLine case_000890_seq case_000890_b = case_000890_firstLine := by
  norm_num [case_000890_firstLine, case_000890_support, case_000890_seq, case_000890_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000890_secondLine_eq :
    case_000890_support.secondLine case_000890_seq case_000890_b = case_000890_secondLine := by
  norm_num [case_000890_secondLine, case_000890_support, case_000890_seq, case_000890_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000890_sourceAgrees :
    SourceAgrees case_000890_support case_000890_rank.val case_000890_mask := by
  intro hlt
  have hrank : (⟨case_000890_rank.val, hlt⟩ : Fin numPairWords) = case_000890_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000890_rank.val, hlt⟩ case_000890_mask =
        case_000890_seq := by
    simpa [hrank] using case_000890_seqAtRank
  simp [SourceChecks, hseq, case_000890_support,
    checkTranslationConstraintSource, case_000890_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000890_rows :
    EqEqPosVarFirstRows case_000890_support case_000890_rank.val case_000890_mask := by
  intro hlt
  have hrank : (⟨case_000890_rank.val, hlt⟩ : Fin numPairWords) = case_000890_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000890_rank.val, hlt⟩ case_000890_mask =
        case_000890_seq := by
    simpa [hrank] using case_000890_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000890_rank.val, hlt⟩ case_000890_mask =
        case_000890_b := by
    simpa [hrank] using case_000890_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000890_support case_000890_rank.val hlt
          case_000890_mask = case_000890_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000890_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000890_support case_000890_rank.val hlt
          case_000890_mask = case_000890_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000890_secondLine_eq]
  have case_000890_rowFirst :
      EqEqPosRow (FirstLineAt case_000890_support case_000890_rank.val hlt case_000890_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000890_firstLine, EqEqPosRow]
  have case_000890_fixedSecond :
      FixedRow (SecondLineAt case_000890_support case_000890_rank.val hlt case_000890_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000890_secondLine, FixedRow]
  exact ⟨case_000890_rowFirst, case_000890_fixedSecond⟩

private theorem case_000890_existsRows :
    ExistsEqEqPosVarFirstRows case_000890_rank.val case_000890_mask :=
  ⟨case_000890_support, case_000890_sourceAgrees, case_000890_rows⟩

private theorem case_000890_covered :
    RowPropertyParametricCovered case_000890_rank.val case_000890_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000890_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000891_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000891_mask : SignMask := ⟨18, by decide⟩
private def case_000891_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000891_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000891_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000891_b : Vec3 Rat := { x := -4, y := (-100/9), z := (4/9) }
private def case_000891_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000891_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000891_rankWord :
    rankPairWord? case_000891_word = some case_000891_rank := by
  decide

private theorem case_000891_unrank :
    unrankPairWord case_000891_rank = case_000891_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000891_word case_000891_rank).1
    case_000891_rankWord |>.symm

private theorem case_000891_seqChoice :
    translationChoiceSeq case_000891_word case_000891_mask = case_000891_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000891_seqAtRank :
    translationSeqAtRankMask case_000891_rank case_000891_mask = case_000891_seq := by
  rw [translationSeqAtRankMask, case_000891_unrank]
  exact case_000891_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000891_bAtRank :
    translationBAtRankMask case_000891_rank case_000891_mask = case_000891_b := by
  rw [translationBAtRankMask, case_000891_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000891_b, case_000891_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000891_firstLine_eq :
    case_000891_support.firstLine case_000891_seq case_000891_b = case_000891_firstLine := by
  norm_num [case_000891_firstLine, case_000891_support, case_000891_seq, case_000891_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000891_secondLine_eq :
    case_000891_support.secondLine case_000891_seq case_000891_b = case_000891_secondLine := by
  norm_num [case_000891_secondLine, case_000891_support, case_000891_seq, case_000891_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000891_sourceAgrees :
    SourceAgrees case_000891_support case_000891_rank.val case_000891_mask := by
  intro hlt
  have hrank : (⟨case_000891_rank.val, hlt⟩ : Fin numPairWords) = case_000891_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000891_rank.val, hlt⟩ case_000891_mask =
        case_000891_seq := by
    simpa [hrank] using case_000891_seqAtRank
  simp [SourceChecks, hseq, case_000891_support,
    checkTranslationConstraintSource, case_000891_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000891_rows :
    EqEqPosVarFirstRows case_000891_support case_000891_rank.val case_000891_mask := by
  intro hlt
  have hrank : (⟨case_000891_rank.val, hlt⟩ : Fin numPairWords) = case_000891_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000891_rank.val, hlt⟩ case_000891_mask =
        case_000891_seq := by
    simpa [hrank] using case_000891_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000891_rank.val, hlt⟩ case_000891_mask =
        case_000891_b := by
    simpa [hrank] using case_000891_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000891_support case_000891_rank.val hlt
          case_000891_mask = case_000891_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000891_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000891_support case_000891_rank.val hlt
          case_000891_mask = case_000891_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000891_secondLine_eq]
  have case_000891_rowFirst :
      EqEqPosRow (FirstLineAt case_000891_support case_000891_rank.val hlt case_000891_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000891_firstLine, EqEqPosRow]
  have case_000891_fixedSecond :
      FixedRow (SecondLineAt case_000891_support case_000891_rank.val hlt case_000891_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000891_secondLine, FixedRow]
  exact ⟨case_000891_rowFirst, case_000891_fixedSecond⟩

private theorem case_000891_existsRows :
    ExistsEqEqPosVarFirstRows case_000891_rank.val case_000891_mask :=
  ⟨case_000891_support, case_000891_sourceAgrees, case_000891_rows⟩

private theorem case_000891_covered :
    RowPropertyParametricCovered case_000891_rank.val case_000891_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000891_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000892_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000892_mask : SignMask := ⟨24, by decide⟩
private def case_000892_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000892_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000892_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000892_b : Vec3 Rat := { x := (-28/3), y := (-52/9), z := (-116/9) }
private def case_000892_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000892_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000892_rankWord :
    rankPairWord? case_000892_word = some case_000892_rank := by
  decide

private theorem case_000892_unrank :
    unrankPairWord case_000892_rank = case_000892_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000892_word case_000892_rank).1
    case_000892_rankWord |>.symm

private theorem case_000892_seqChoice :
    translationChoiceSeq case_000892_word case_000892_mask = case_000892_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000892_seqAtRank :
    translationSeqAtRankMask case_000892_rank case_000892_mask = case_000892_seq := by
  rw [translationSeqAtRankMask, case_000892_unrank]
  exact case_000892_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000892_bAtRank :
    translationBAtRankMask case_000892_rank case_000892_mask = case_000892_b := by
  rw [translationBAtRankMask, case_000892_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000892_b, case_000892_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000892_firstLine_eq :
    case_000892_support.firstLine case_000892_seq case_000892_b = case_000892_firstLine := by
  norm_num [case_000892_firstLine, case_000892_support, case_000892_seq, case_000892_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000892_secondLine_eq :
    case_000892_support.secondLine case_000892_seq case_000892_b = case_000892_secondLine := by
  norm_num [case_000892_secondLine, case_000892_support, case_000892_seq, case_000892_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000892_sourceAgrees :
    SourceAgrees case_000892_support case_000892_rank.val case_000892_mask := by
  intro hlt
  have hrank : (⟨case_000892_rank.val, hlt⟩ : Fin numPairWords) = case_000892_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000892_rank.val, hlt⟩ case_000892_mask =
        case_000892_seq := by
    simpa [hrank] using case_000892_seqAtRank
  simp [SourceChecks, hseq, case_000892_support,
    checkTranslationConstraintSource, case_000892_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000892_rows :
    EqEqPosVarFirstRows case_000892_support case_000892_rank.val case_000892_mask := by
  intro hlt
  have hrank : (⟨case_000892_rank.val, hlt⟩ : Fin numPairWords) = case_000892_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000892_rank.val, hlt⟩ case_000892_mask =
        case_000892_seq := by
    simpa [hrank] using case_000892_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000892_rank.val, hlt⟩ case_000892_mask =
        case_000892_b := by
    simpa [hrank] using case_000892_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000892_support case_000892_rank.val hlt
          case_000892_mask = case_000892_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000892_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000892_support case_000892_rank.val hlt
          case_000892_mask = case_000892_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000892_secondLine_eq]
  have case_000892_rowFirst :
      EqEqPosRow (FirstLineAt case_000892_support case_000892_rank.val hlt case_000892_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000892_firstLine, EqEqPosRow]
  have case_000892_fixedSecond :
      FixedRow (SecondLineAt case_000892_support case_000892_rank.val hlt case_000892_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000892_secondLine, FixedRow]
  exact ⟨case_000892_rowFirst, case_000892_fixedSecond⟩

private theorem case_000892_existsRows :
    ExistsEqEqPosVarFirstRows case_000892_rank.val case_000892_mask :=
  ⟨case_000892_support, case_000892_sourceAgrees, case_000892_rows⟩

private theorem case_000892_covered :
    RowPropertyParametricCovered case_000892_rank.val case_000892_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000892_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000893_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000893_mask : SignMask := ⟨45, by decide⟩
private def case_000893_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000893_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000893_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def case_000893_b : Vec3 Rat := { x := -4, y := (100/9), z := (-4/9) }
private def case_000893_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000893_secondLine : StrictLin2 := { a := (81/1190), b := (-81/1190), c := (-137/595) }

private theorem case_000893_rankWord :
    rankPairWord? case_000893_word = some case_000893_rank := by
  decide

private theorem case_000893_unrank :
    unrankPairWord case_000893_rank = case_000893_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000893_word case_000893_rank).1
    case_000893_rankWord |>.symm

private theorem case_000893_seqChoice :
    translationChoiceSeq case_000893_word case_000893_mask = case_000893_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000893_seqAtRank :
    translationSeqAtRankMask case_000893_rank case_000893_mask = case_000893_seq := by
  rw [translationSeqAtRankMask, case_000893_unrank]
  exact case_000893_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000893_bAtRank :
    translationBAtRankMask case_000893_rank case_000893_mask = case_000893_b := by
  rw [translationBAtRankMask, case_000893_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000893_b, case_000893_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000893_firstLine_eq :
    case_000893_support.firstLine case_000893_seq case_000893_b = case_000893_firstLine := by
  norm_num [case_000893_firstLine, case_000893_support, case_000893_seq, case_000893_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000893_secondLine_eq :
    case_000893_support.secondLine case_000893_seq case_000893_b = case_000893_secondLine := by
  norm_num [case_000893_secondLine, case_000893_support, case_000893_seq, case_000893_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000893_sourceAgrees :
    SourceAgrees case_000893_support case_000893_rank.val case_000893_mask := by
  intro hlt
  have hrank : (⟨case_000893_rank.val, hlt⟩ : Fin numPairWords) = case_000893_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000893_rank.val, hlt⟩ case_000893_mask =
        case_000893_seq := by
    simpa [hrank] using case_000893_seqAtRank
  simp [SourceChecks, hseq, case_000893_support,
    checkTranslationConstraintSource, case_000893_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000893_rows :
    OppMinusOneVarSecondRows case_000893_support case_000893_rank.val case_000893_mask := by
  intro hlt
  have hrank : (⟨case_000893_rank.val, hlt⟩ : Fin numPairWords) = case_000893_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000893_rank.val, hlt⟩ case_000893_mask =
        case_000893_seq := by
    simpa [hrank] using case_000893_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000893_rank.val, hlt⟩ case_000893_mask =
        case_000893_b := by
    simpa [hrank] using case_000893_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000893_support case_000893_rank.val hlt
          case_000893_mask = case_000893_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000893_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000893_support case_000893_rank.val hlt
          case_000893_mask = case_000893_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000893_secondLine_eq]
  have case_000893_fixedFirst :
      FixedRow (FirstLineAt case_000893_support case_000893_rank.val hlt case_000893_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000893_firstLine, FixedRow]
  have case_000893_rowSecond :
      OppNegRow (SecondLineAt case_000893_support case_000893_rank.val hlt case_000893_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000893_secondLine, OppNegRow]
  exact ⟨case_000893_fixedFirst, case_000893_rowSecond⟩

private theorem case_000893_existsRows :
    ExistsOppMinusOneVarSecondRows case_000893_rank.val case_000893_mask :=
  ⟨case_000893_support, case_000893_sourceAgrees, case_000893_rows⟩

private theorem case_000893_covered :
    RowPropertyParametricCovered case_000893_rank.val case_000893_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000893_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000894_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000894_mask : SignMask := ⟨54, by decide⟩
private def case_000894_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000894_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000894_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000894_b : Vec3 Rat := { x := -4, y := (-68/9), z := (164/9) }
private def case_000894_firstLine : StrictLin2 := { a := -1, b := 1, c := (-107/9) }
private def case_000894_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000894_rankWord :
    rankPairWord? case_000894_word = some case_000894_rank := by
  decide

private theorem case_000894_unrank :
    unrankPairWord case_000894_rank = case_000894_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000894_word case_000894_rank).1
    case_000894_rankWord |>.symm

private theorem case_000894_seqChoice :
    translationChoiceSeq case_000894_word case_000894_mask = case_000894_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000894_seqAtRank :
    translationSeqAtRankMask case_000894_rank case_000894_mask = case_000894_seq := by
  rw [translationSeqAtRankMask, case_000894_unrank]
  exact case_000894_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000894_bAtRank :
    translationBAtRankMask case_000894_rank case_000894_mask = case_000894_b := by
  rw [translationBAtRankMask, case_000894_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000894_b, case_000894_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000894_firstLine_eq :
    case_000894_support.firstLine case_000894_seq case_000894_b = case_000894_firstLine := by
  norm_num [case_000894_firstLine, case_000894_support, case_000894_seq, case_000894_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000894_secondLine_eq :
    case_000894_support.secondLine case_000894_seq case_000894_b = case_000894_secondLine := by
  norm_num [case_000894_secondLine, case_000894_support, case_000894_seq, case_000894_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000894_sourceAgrees :
    SourceAgrees case_000894_support case_000894_rank.val case_000894_mask := by
  intro hlt
  have hrank : (⟨case_000894_rank.val, hlt⟩ : Fin numPairWords) = case_000894_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000894_rank.val, hlt⟩ case_000894_mask =
        case_000894_seq := by
    simpa [hrank] using case_000894_seqAtRank
  simp [SourceChecks, hseq, case_000894_support,
    checkTranslationConstraintSource, case_000894_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000894_rows :
    OppOneMinusVarFirstRows case_000894_support case_000894_rank.val case_000894_mask := by
  intro hlt
  have hrank : (⟨case_000894_rank.val, hlt⟩ : Fin numPairWords) = case_000894_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000894_rank.val, hlt⟩ case_000894_mask =
        case_000894_seq := by
    simpa [hrank] using case_000894_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000894_rank.val, hlt⟩ case_000894_mask =
        case_000894_b := by
    simpa [hrank] using case_000894_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000894_support case_000894_rank.val hlt
          case_000894_mask = case_000894_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000894_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000894_support case_000894_rank.val hlt
          case_000894_mask = case_000894_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000894_secondLine_eq]
  have case_000894_rowFirst :
      OppPosRow (FirstLineAt case_000894_support case_000894_rank.val hlt case_000894_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000894_firstLine, OppPosRow]
  have case_000894_fixedSecond :
      FixedRow (SecondLineAt case_000894_support case_000894_rank.val hlt case_000894_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000894_secondLine, FixedRow]
  exact ⟨case_000894_rowFirst, case_000894_fixedSecond⟩

private theorem case_000894_existsRows :
    ExistsOppOneMinusVarFirstRows case_000894_rank.val case_000894_mask :=
  ⟨case_000894_support, case_000894_sourceAgrees, case_000894_rows⟩

private theorem case_000894_covered :
    RowPropertyParametricCovered case_000894_rank.val case_000894_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000894_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000895_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000895_mask : SignMask := ⟨55, by decide⟩
private def case_000895_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000895_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000895_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000895_b : Vec3 Rat := { x := -4, y := (4/9), z := (164/9) }
private def case_000895_firstLine : StrictLin2 := { a := -1, b := 1, c := (-71/9) }
private def case_000895_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000895_rankWord :
    rankPairWord? case_000895_word = some case_000895_rank := by
  decide

private theorem case_000895_unrank :
    unrankPairWord case_000895_rank = case_000895_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000895_word case_000895_rank).1
    case_000895_rankWord |>.symm

private theorem case_000895_seqChoice :
    translationChoiceSeq case_000895_word case_000895_mask = case_000895_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000895_seqAtRank :
    translationSeqAtRankMask case_000895_rank case_000895_mask = case_000895_seq := by
  rw [translationSeqAtRankMask, case_000895_unrank]
  exact case_000895_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000895_bAtRank :
    translationBAtRankMask case_000895_rank case_000895_mask = case_000895_b := by
  rw [translationBAtRankMask, case_000895_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000895_b, case_000895_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000895_firstLine_eq :
    case_000895_support.firstLine case_000895_seq case_000895_b = case_000895_firstLine := by
  norm_num [case_000895_firstLine, case_000895_support, case_000895_seq, case_000895_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000895_secondLine_eq :
    case_000895_support.secondLine case_000895_seq case_000895_b = case_000895_secondLine := by
  norm_num [case_000895_secondLine, case_000895_support, case_000895_seq, case_000895_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000895_sourceAgrees :
    SourceAgrees case_000895_support case_000895_rank.val case_000895_mask := by
  intro hlt
  have hrank : (⟨case_000895_rank.val, hlt⟩ : Fin numPairWords) = case_000895_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000895_rank.val, hlt⟩ case_000895_mask =
        case_000895_seq := by
    simpa [hrank] using case_000895_seqAtRank
  simp [SourceChecks, hseq, case_000895_support,
    checkTranslationConstraintSource, case_000895_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000895_rows :
    OppOneMinusVarFirstRows case_000895_support case_000895_rank.val case_000895_mask := by
  intro hlt
  have hrank : (⟨case_000895_rank.val, hlt⟩ : Fin numPairWords) = case_000895_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000895_rank.val, hlt⟩ case_000895_mask =
        case_000895_seq := by
    simpa [hrank] using case_000895_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000895_rank.val, hlt⟩ case_000895_mask =
        case_000895_b := by
    simpa [hrank] using case_000895_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000895_support case_000895_rank.val hlt
          case_000895_mask = case_000895_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000895_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000895_support case_000895_rank.val hlt
          case_000895_mask = case_000895_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000895_secondLine_eq]
  have case_000895_rowFirst :
      OppPosRow (FirstLineAt case_000895_support case_000895_rank.val hlt case_000895_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000895_firstLine, OppPosRow]
  have case_000895_fixedSecond :
      FixedRow (SecondLineAt case_000895_support case_000895_rank.val hlt case_000895_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000895_secondLine, FixedRow]
  exact ⟨case_000895_rowFirst, case_000895_fixedSecond⟩

private theorem case_000895_existsRows :
    ExistsOppOneMinusVarFirstRows case_000895_rank.val case_000895_mask :=
  ⟨case_000895_support, case_000895_sourceAgrees, case_000895_rows⟩

private theorem case_000895_covered :
    RowPropertyParametricCovered case_000895_rank.val case_000895_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000895_existsRows

inductive Group027Covered : Nat -> SignMask -> Prop
  | case_000864 : Group027Covered case_000864_rank.val case_000864_mask
  | case_000865 : Group027Covered case_000865_rank.val case_000865_mask
  | case_000866 : Group027Covered case_000866_rank.val case_000866_mask
  | case_000867 : Group027Covered case_000867_rank.val case_000867_mask
  | case_000868 : Group027Covered case_000868_rank.val case_000868_mask
  | case_000869 : Group027Covered case_000869_rank.val case_000869_mask
  | case_000870 : Group027Covered case_000870_rank.val case_000870_mask
  | case_000871 : Group027Covered case_000871_rank.val case_000871_mask
  | case_000872 : Group027Covered case_000872_rank.val case_000872_mask
  | case_000873 : Group027Covered case_000873_rank.val case_000873_mask
  | case_000874 : Group027Covered case_000874_rank.val case_000874_mask
  | case_000875 : Group027Covered case_000875_rank.val case_000875_mask
  | case_000876 : Group027Covered case_000876_rank.val case_000876_mask
  | case_000877 : Group027Covered case_000877_rank.val case_000877_mask
  | case_000878 : Group027Covered case_000878_rank.val case_000878_mask
  | case_000879 : Group027Covered case_000879_rank.val case_000879_mask
  | case_000880 : Group027Covered case_000880_rank.val case_000880_mask
  | case_000881 : Group027Covered case_000881_rank.val case_000881_mask
  | case_000882 : Group027Covered case_000882_rank.val case_000882_mask
  | case_000883 : Group027Covered case_000883_rank.val case_000883_mask
  | case_000884 : Group027Covered case_000884_rank.val case_000884_mask
  | case_000885 : Group027Covered case_000885_rank.val case_000885_mask
  | case_000886 : Group027Covered case_000886_rank.val case_000886_mask
  | case_000887 : Group027Covered case_000887_rank.val case_000887_mask
  | case_000888 : Group027Covered case_000888_rank.val case_000888_mask
  | case_000889 : Group027Covered case_000889_rank.val case_000889_mask
  | case_000890 : Group027Covered case_000890_rank.val case_000890_mask
  | case_000891 : Group027Covered case_000891_rank.val case_000891_mask
  | case_000892 : Group027Covered case_000892_rank.val case_000892_mask
  | case_000893 : Group027Covered case_000893_rank.val case_000893_mask
  | case_000894 : Group027Covered case_000894_rank.val case_000894_mask
  | case_000895 : Group027Covered case_000895_rank.val case_000895_mask

theorem Group027GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group027Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000864 =>
      exact RowPropertyParametricCovered.kills case_000864_covered
  | case_000865 =>
      exact RowPropertyParametricCovered.kills case_000865_covered
  | case_000866 =>
      exact RowPropertyParametricCovered.kills case_000866_covered
  | case_000867 =>
      exact RowPropertyParametricCovered.kills case_000867_covered
  | case_000868 =>
      exact RowPropertyParametricCovered.kills case_000868_covered
  | case_000869 =>
      exact RowPropertyParametricCovered.kills case_000869_covered
  | case_000870 =>
      exact RowPropertyParametricCovered.kills case_000870_covered
  | case_000871 =>
      exact RowPropertyParametricCovered.kills case_000871_covered
  | case_000872 =>
      exact RowPropertyParametricCovered.kills case_000872_covered
  | case_000873 =>
      exact RowPropertyParametricCovered.kills case_000873_covered
  | case_000874 =>
      exact RowPropertyParametricCovered.kills case_000874_covered
  | case_000875 =>
      exact RowPropertyParametricCovered.kills case_000875_covered
  | case_000876 =>
      exact RowPropertyParametricCovered.kills case_000876_covered
  | case_000877 =>
      exact RowPropertyParametricCovered.kills case_000877_covered
  | case_000878 =>
      exact RowPropertyParametricCovered.kills case_000878_covered
  | case_000879 =>
      exact RowPropertyParametricCovered.kills case_000879_covered
  | case_000880 =>
      exact RowPropertyParametricCovered.kills case_000880_covered
  | case_000881 =>
      exact RowPropertyParametricCovered.kills case_000881_covered
  | case_000882 =>
      exact RowPropertyParametricCovered.kills case_000882_covered
  | case_000883 =>
      exact RowPropertyParametricCovered.kills case_000883_covered
  | case_000884 =>
      exact RowPropertyParametricCovered.kills case_000884_covered
  | case_000885 =>
      exact RowPropertyParametricCovered.kills case_000885_covered
  | case_000886 =>
      exact RowPropertyParametricCovered.kills case_000886_covered
  | case_000887 =>
      exact RowPropertyParametricCovered.kills case_000887_covered
  | case_000888 =>
      exact RowPropertyParametricCovered.kills case_000888_covered
  | case_000889 =>
      exact RowPropertyParametricCovered.kills case_000889_covered
  | case_000890 =>
      exact RowPropertyParametricCovered.kills case_000890_covered
  | case_000891 =>
      exact RowPropertyParametricCovered.kills case_000891_covered
  | case_000892 =>
      exact RowPropertyParametricCovered.kills case_000892_covered
  | case_000893 =>
      exact RowPropertyParametricCovered.kills case_000893_covered
  | case_000894 =>
      exact RowPropertyParametricCovered.kills case_000894_covered
  | case_000895 =>
      exact RowPropertyParametricCovered.kills case_000895_covered

theorem Group027_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group027
