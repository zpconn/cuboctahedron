import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group016

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000512_rank : Fin numPairWords := ⟨261, by decide⟩
private def case_000512_mask : SignMask := ⟨45, by decide⟩
private def case_000512_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000512_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000512_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000512_b : Vec3 Rat := { x := (-28/27), y := (316/27), z := (-284/27) }
private def case_000512_firstLine : StrictLin2 := { a := 1, b := -1, c := (-293/7) }
private def case_000512_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000512_rankWord :
    rankPairWord? case_000512_word = some case_000512_rank := by
  decide

private theorem case_000512_unrank :
    unrankPairWord case_000512_rank = case_000512_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000512_word case_000512_rank).1
    case_000512_rankWord |>.symm

private theorem case_000512_seqChoice :
    translationChoiceSeq case_000512_word case_000512_mask = case_000512_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000512_seqAtRank :
    translationSeqAtRankMask case_000512_rank case_000512_mask = case_000512_seq := by
  rw [translationSeqAtRankMask, case_000512_unrank]
  exact case_000512_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000512_bAtRank :
    translationBAtRankMask case_000512_rank case_000512_mask = case_000512_b := by
  rw [translationBAtRankMask, case_000512_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000512_b, case_000512_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000512_firstLine_eq :
    case_000512_support.firstLine case_000512_seq case_000512_b = case_000512_firstLine := by
  norm_num [case_000512_firstLine, case_000512_support, case_000512_seq, case_000512_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000512_secondLine_eq :
    case_000512_support.secondLine case_000512_seq case_000512_b = case_000512_secondLine := by
  norm_num [case_000512_secondLine, case_000512_support, case_000512_seq, case_000512_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000512_sourceAgrees :
    SourceAgrees case_000512_support case_000512_rank.val case_000512_mask := by
  intro hlt
  have hrank : (⟨case_000512_rank.val, hlt⟩ : Fin numPairWords) = case_000512_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000512_rank.val, hlt⟩ case_000512_mask =
        case_000512_seq := by
    simpa [hrank] using case_000512_seqAtRank
  simp [SourceChecks, hseq, case_000512_support,
    checkTranslationConstraintSource, case_000512_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000512_rows :
    OppMinusOneVarFirstRows case_000512_support case_000512_rank.val case_000512_mask := by
  intro hlt
  have hrank : (⟨case_000512_rank.val, hlt⟩ : Fin numPairWords) = case_000512_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000512_rank.val, hlt⟩ case_000512_mask =
        case_000512_seq := by
    simpa [hrank] using case_000512_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000512_rank.val, hlt⟩ case_000512_mask =
        case_000512_b := by
    simpa [hrank] using case_000512_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000512_support case_000512_rank.val hlt
          case_000512_mask = case_000512_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000512_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000512_support case_000512_rank.val hlt
          case_000512_mask = case_000512_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000512_secondLine_eq]
  have case_000512_rowFirst :
      OppNegRow (FirstLineAt case_000512_support case_000512_rank.val hlt case_000512_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000512_firstLine, OppNegRow]
  have case_000512_fixedSecond :
      FixedRow (SecondLineAt case_000512_support case_000512_rank.val hlt case_000512_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000512_secondLine, FixedRow]
  exact ⟨case_000512_rowFirst, case_000512_fixedSecond⟩

private theorem case_000512_existsRows :
    ExistsOppMinusOneVarFirstRows case_000512_rank.val case_000512_mask :=
  ⟨case_000512_support, case_000512_sourceAgrees, case_000512_rows⟩

private theorem case_000512_covered :
    RowPropertyParametricCovered case_000512_rank.val case_000512_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000512_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000513_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000513_mask : SignMask := ⟨7, by decide⟩
private def case_000513_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000513_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000513_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000513_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (332/27) }
private def case_000513_firstLine : StrictLin2 := { a := 1, b := 1, c := (-225/59) }
private def case_000513_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000513_rankWord :
    rankPairWord? case_000513_word = some case_000513_rank := by
  decide

private theorem case_000513_unrank :
    unrankPairWord case_000513_rank = case_000513_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000513_word case_000513_rank).1
    case_000513_rankWord |>.symm

private theorem case_000513_seqChoice :
    translationChoiceSeq case_000513_word case_000513_mask = case_000513_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000513_seqAtRank :
    translationSeqAtRankMask case_000513_rank case_000513_mask = case_000513_seq := by
  rw [translationSeqAtRankMask, case_000513_unrank]
  exact case_000513_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000513_bAtRank :
    translationBAtRankMask case_000513_rank case_000513_mask = case_000513_b := by
  rw [translationBAtRankMask, case_000513_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000513_b, case_000513_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000513_firstLine_eq :
    case_000513_support.firstLine case_000513_seq case_000513_b = case_000513_firstLine := by
  norm_num [case_000513_firstLine, case_000513_support, case_000513_seq, case_000513_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000513_secondLine_eq :
    case_000513_support.secondLine case_000513_seq case_000513_b = case_000513_secondLine := by
  norm_num [case_000513_secondLine, case_000513_support, case_000513_seq, case_000513_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000513_sourceAgrees :
    SourceAgrees case_000513_support case_000513_rank.val case_000513_mask := by
  intro hlt
  have hrank : (⟨case_000513_rank.val, hlt⟩ : Fin numPairWords) = case_000513_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000513_rank.val, hlt⟩ case_000513_mask =
        case_000513_seq := by
    simpa [hrank] using case_000513_seqAtRank
  simp [SourceChecks, hseq, case_000513_support,
    checkTranslationConstraintSource, case_000513_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000513_rows :
    EqEqNegVarFirstRows case_000513_support case_000513_rank.val case_000513_mask := by
  intro hlt
  have hrank : (⟨case_000513_rank.val, hlt⟩ : Fin numPairWords) = case_000513_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000513_rank.val, hlt⟩ case_000513_mask =
        case_000513_seq := by
    simpa [hrank] using case_000513_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000513_rank.val, hlt⟩ case_000513_mask =
        case_000513_b := by
    simpa [hrank] using case_000513_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000513_support case_000513_rank.val hlt
          case_000513_mask = case_000513_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000513_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000513_support case_000513_rank.val hlt
          case_000513_mask = case_000513_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000513_secondLine_eq]
  have case_000513_rowFirst :
      EqEqNegRow (FirstLineAt case_000513_support case_000513_rank.val hlt case_000513_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000513_firstLine, EqEqNegRow]
  have case_000513_fixedSecond :
      FixedRow (SecondLineAt case_000513_support case_000513_rank.val hlt case_000513_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000513_secondLine, FixedRow]
  exact ⟨case_000513_rowFirst, case_000513_fixedSecond⟩

private theorem case_000513_existsRows :
    ExistsEqEqNegVarFirstRows case_000513_rank.val case_000513_mask :=
  ⟨case_000513_support, case_000513_sourceAgrees, case_000513_rows⟩

private theorem case_000513_covered :
    RowPropertyParametricCovered case_000513_rank.val case_000513_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000513_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000514_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000514_mask : SignMask := ⟨13, by decide⟩
private def case_000514_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000514_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000514_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000514_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (-124/27) }
private def case_000514_firstLine : StrictLin2 := { a := 1, b := -1, c := (-133/71) }
private def case_000514_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000514_rankWord :
    rankPairWord? case_000514_word = some case_000514_rank := by
  decide

private theorem case_000514_unrank :
    unrankPairWord case_000514_rank = case_000514_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000514_word case_000514_rank).1
    case_000514_rankWord |>.symm

private theorem case_000514_seqChoice :
    translationChoiceSeq case_000514_word case_000514_mask = case_000514_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000514_seqAtRank :
    translationSeqAtRankMask case_000514_rank case_000514_mask = case_000514_seq := by
  rw [translationSeqAtRankMask, case_000514_unrank]
  exact case_000514_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000514_bAtRank :
    translationBAtRankMask case_000514_rank case_000514_mask = case_000514_b := by
  rw [translationBAtRankMask, case_000514_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000514_b, case_000514_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000514_firstLine_eq :
    case_000514_support.firstLine case_000514_seq case_000514_b = case_000514_firstLine := by
  norm_num [case_000514_firstLine, case_000514_support, case_000514_seq, case_000514_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000514_secondLine_eq :
    case_000514_support.secondLine case_000514_seq case_000514_b = case_000514_secondLine := by
  norm_num [case_000514_secondLine, case_000514_support, case_000514_seq, case_000514_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000514_sourceAgrees :
    SourceAgrees case_000514_support case_000514_rank.val case_000514_mask := by
  intro hlt
  have hrank : (⟨case_000514_rank.val, hlt⟩ : Fin numPairWords) = case_000514_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000514_rank.val, hlt⟩ case_000514_mask =
        case_000514_seq := by
    simpa [hrank] using case_000514_seqAtRank
  simp [SourceChecks, hseq, case_000514_support,
    checkTranslationConstraintSource, case_000514_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000514_rows :
    OppMinusOneVarFirstRows case_000514_support case_000514_rank.val case_000514_mask := by
  intro hlt
  have hrank : (⟨case_000514_rank.val, hlt⟩ : Fin numPairWords) = case_000514_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000514_rank.val, hlt⟩ case_000514_mask =
        case_000514_seq := by
    simpa [hrank] using case_000514_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000514_rank.val, hlt⟩ case_000514_mask =
        case_000514_b := by
    simpa [hrank] using case_000514_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000514_support case_000514_rank.val hlt
          case_000514_mask = case_000514_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000514_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000514_support case_000514_rank.val hlt
          case_000514_mask = case_000514_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000514_secondLine_eq]
  have case_000514_rowFirst :
      OppNegRow (FirstLineAt case_000514_support case_000514_rank.val hlt case_000514_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000514_firstLine, OppNegRow]
  have case_000514_fixedSecond :
      FixedRow (SecondLineAt case_000514_support case_000514_rank.val hlt case_000514_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000514_secondLine, FixedRow]
  exact ⟨case_000514_rowFirst, case_000514_fixedSecond⟩

private theorem case_000514_existsRows :
    ExistsOppMinusOneVarFirstRows case_000514_rank.val case_000514_mask :=
  ⟨case_000514_support, case_000514_sourceAgrees, case_000514_rows⟩

private theorem case_000514_covered :
    RowPropertyParametricCovered case_000514_rank.val case_000514_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000514_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000515_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000515_mask : SignMask := ⟨15, by decide⟩
private def case_000515_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000515_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000515_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000515_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (92/27) }
private def case_000515_firstLine : StrictLin2 := { a := (-71/165), b := (-71/165), c := (-263/165) }
private def case_000515_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000515_rankWord :
    rankPairWord? case_000515_word = some case_000515_rank := by
  decide

private theorem case_000515_unrank :
    unrankPairWord case_000515_rank = case_000515_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000515_word case_000515_rank).1
    case_000515_rankWord |>.symm

private theorem case_000515_seqChoice :
    translationChoiceSeq case_000515_word case_000515_mask = case_000515_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000515_seqAtRank :
    translationSeqAtRankMask case_000515_rank case_000515_mask = case_000515_seq := by
  rw [translationSeqAtRankMask, case_000515_unrank]
  exact case_000515_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000515_bAtRank :
    translationBAtRankMask case_000515_rank case_000515_mask = case_000515_b := by
  rw [translationBAtRankMask, case_000515_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000515_b, case_000515_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000515_firstLine_eq :
    case_000515_support.firstLine case_000515_seq case_000515_b = case_000515_firstLine := by
  norm_num [case_000515_firstLine, case_000515_support, case_000515_seq, case_000515_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000515_secondLine_eq :
    case_000515_support.secondLine case_000515_seq case_000515_b = case_000515_secondLine := by
  norm_num [case_000515_secondLine, case_000515_support, case_000515_seq, case_000515_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000515_sourceAgrees :
    SourceAgrees case_000515_support case_000515_rank.val case_000515_mask := by
  intro hlt
  have hrank : (⟨case_000515_rank.val, hlt⟩ : Fin numPairWords) = case_000515_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000515_rank.val, hlt⟩ case_000515_mask =
        case_000515_seq := by
    simpa [hrank] using case_000515_seqAtRank
  simp [SourceChecks, hseq, case_000515_support,
    checkTranslationConstraintSource, case_000515_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000515_rows :
    EqEqPosVarFirstRows case_000515_support case_000515_rank.val case_000515_mask := by
  intro hlt
  have hrank : (⟨case_000515_rank.val, hlt⟩ : Fin numPairWords) = case_000515_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000515_rank.val, hlt⟩ case_000515_mask =
        case_000515_seq := by
    simpa [hrank] using case_000515_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000515_rank.val, hlt⟩ case_000515_mask =
        case_000515_b := by
    simpa [hrank] using case_000515_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000515_support case_000515_rank.val hlt
          case_000515_mask = case_000515_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000515_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000515_support case_000515_rank.val hlt
          case_000515_mask = case_000515_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000515_secondLine_eq]
  have case_000515_rowFirst :
      EqEqPosRow (FirstLineAt case_000515_support case_000515_rank.val hlt case_000515_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000515_firstLine, EqEqPosRow]
  have case_000515_fixedSecond :
      FixedRow (SecondLineAt case_000515_support case_000515_rank.val hlt case_000515_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000515_secondLine, FixedRow]
  exact ⟨case_000515_rowFirst, case_000515_fixedSecond⟩

private theorem case_000515_existsRows :
    ExistsEqEqPosVarFirstRows case_000515_rank.val case_000515_mask :=
  ⟨case_000515_support, case_000515_sourceAgrees, case_000515_rows⟩

private theorem case_000515_covered :
    RowPropertyParametricCovered case_000515_rank.val case_000515_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000515_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000516_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000516_mask : SignMask := ⟨22, by decide⟩
private def case_000516_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000516_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000516_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000516_b : Vec3 Rat := { x := (-284/27), y := (-220/27), z := (380/27) }
private def case_000516_firstLine : StrictLin2 := { a := -1, b := 1, c := (-229/71) }
private def case_000516_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000516_rankWord :
    rankPairWord? case_000516_word = some case_000516_rank := by
  decide

private theorem case_000516_unrank :
    unrankPairWord case_000516_rank = case_000516_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000516_word case_000516_rank).1
    case_000516_rankWord |>.symm

private theorem case_000516_seqChoice :
    translationChoiceSeq case_000516_word case_000516_mask = case_000516_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000516_seqAtRank :
    translationSeqAtRankMask case_000516_rank case_000516_mask = case_000516_seq := by
  rw [translationSeqAtRankMask, case_000516_unrank]
  exact case_000516_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000516_bAtRank :
    translationBAtRankMask case_000516_rank case_000516_mask = case_000516_b := by
  rw [translationBAtRankMask, case_000516_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000516_b, case_000516_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000516_firstLine_eq :
    case_000516_support.firstLine case_000516_seq case_000516_b = case_000516_firstLine := by
  norm_num [case_000516_firstLine, case_000516_support, case_000516_seq, case_000516_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000516_secondLine_eq :
    case_000516_support.secondLine case_000516_seq case_000516_b = case_000516_secondLine := by
  norm_num [case_000516_secondLine, case_000516_support, case_000516_seq, case_000516_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000516_sourceAgrees :
    SourceAgrees case_000516_support case_000516_rank.val case_000516_mask := by
  intro hlt
  have hrank : (⟨case_000516_rank.val, hlt⟩ : Fin numPairWords) = case_000516_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000516_rank.val, hlt⟩ case_000516_mask =
        case_000516_seq := by
    simpa [hrank] using case_000516_seqAtRank
  simp [SourceChecks, hseq, case_000516_support,
    checkTranslationConstraintSource, case_000516_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000516_rows :
    OppOneMinusVarFirstRows case_000516_support case_000516_rank.val case_000516_mask := by
  intro hlt
  have hrank : (⟨case_000516_rank.val, hlt⟩ : Fin numPairWords) = case_000516_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000516_rank.val, hlt⟩ case_000516_mask =
        case_000516_seq := by
    simpa [hrank] using case_000516_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000516_rank.val, hlt⟩ case_000516_mask =
        case_000516_b := by
    simpa [hrank] using case_000516_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000516_support case_000516_rank.val hlt
          case_000516_mask = case_000516_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000516_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000516_support case_000516_rank.val hlt
          case_000516_mask = case_000516_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000516_secondLine_eq]
  have case_000516_rowFirst :
      OppPosRow (FirstLineAt case_000516_support case_000516_rank.val hlt case_000516_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000516_firstLine, OppPosRow]
  have case_000516_fixedSecond :
      FixedRow (SecondLineAt case_000516_support case_000516_rank.val hlt case_000516_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000516_secondLine, FixedRow]
  exact ⟨case_000516_rowFirst, case_000516_fixedSecond⟩

private theorem case_000516_existsRows :
    ExistsOppOneMinusVarFirstRows case_000516_rank.val case_000516_mask :=
  ⟨case_000516_support, case_000516_sourceAgrees, case_000516_rows⟩

private theorem case_000516_covered :
    RowPropertyParametricCovered case_000516_rank.val case_000516_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000516_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000517_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000517_mask : SignMask := ⟨24, by decide⟩
private def case_000517_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000517_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000517_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000517_b : Vec3 Rat := { x := (-188/27), y := (-316/27), z := (-220/27) }
private def case_000517_firstLine : StrictLin2 := { a := -1, b := -1, c := (-221/47) }
private def case_000517_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000517_rankWord :
    rankPairWord? case_000517_word = some case_000517_rank := by
  decide

private theorem case_000517_unrank :
    unrankPairWord case_000517_rank = case_000517_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000517_word case_000517_rank).1
    case_000517_rankWord |>.symm

private theorem case_000517_seqChoice :
    translationChoiceSeq case_000517_word case_000517_mask = case_000517_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000517_seqAtRank :
    translationSeqAtRankMask case_000517_rank case_000517_mask = case_000517_seq := by
  rw [translationSeqAtRankMask, case_000517_unrank]
  exact case_000517_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000517_bAtRank :
    translationBAtRankMask case_000517_rank case_000517_mask = case_000517_b := by
  rw [translationBAtRankMask, case_000517_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000517_b, case_000517_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000517_firstLine_eq :
    case_000517_support.firstLine case_000517_seq case_000517_b = case_000517_firstLine := by
  norm_num [case_000517_firstLine, case_000517_support, case_000517_seq, case_000517_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000517_secondLine_eq :
    case_000517_support.secondLine case_000517_seq case_000517_b = case_000517_secondLine := by
  norm_num [case_000517_secondLine, case_000517_support, case_000517_seq, case_000517_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000517_sourceAgrees :
    SourceAgrees case_000517_support case_000517_rank.val case_000517_mask := by
  intro hlt
  have hrank : (⟨case_000517_rank.val, hlt⟩ : Fin numPairWords) = case_000517_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000517_rank.val, hlt⟩ case_000517_mask =
        case_000517_seq := by
    simpa [hrank] using case_000517_seqAtRank
  simp [SourceChecks, hseq, case_000517_support,
    checkTranslationConstraintSource, case_000517_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000517_rows :
    EqEqPosVarFirstRows case_000517_support case_000517_rank.val case_000517_mask := by
  intro hlt
  have hrank : (⟨case_000517_rank.val, hlt⟩ : Fin numPairWords) = case_000517_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000517_rank.val, hlt⟩ case_000517_mask =
        case_000517_seq := by
    simpa [hrank] using case_000517_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000517_rank.val, hlt⟩ case_000517_mask =
        case_000517_b := by
    simpa [hrank] using case_000517_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000517_support case_000517_rank.val hlt
          case_000517_mask = case_000517_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000517_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000517_support case_000517_rank.val hlt
          case_000517_mask = case_000517_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000517_secondLine_eq]
  have case_000517_rowFirst :
      EqEqPosRow (FirstLineAt case_000517_support case_000517_rank.val hlt case_000517_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000517_firstLine, EqEqPosRow]
  have case_000517_fixedSecond :
      FixedRow (SecondLineAt case_000517_support case_000517_rank.val hlt case_000517_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000517_secondLine, FixedRow]
  exact ⟨case_000517_rowFirst, case_000517_fixedSecond⟩

private theorem case_000517_existsRows :
    ExistsEqEqPosVarFirstRows case_000517_rank.val case_000517_mask :=
  ⟨case_000517_support, case_000517_sourceAgrees, case_000517_rows⟩

private theorem case_000517_covered :
    RowPropertyParametricCovered case_000517_rank.val case_000517_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000517_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000518_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000518_mask : SignMask := ⟨28, by decide⟩
private def case_000518_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000518_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000518_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000518_b : Vec3 Rat := { x := (-332/27), y := (-172/27), z := (-76/27) }
private def case_000518_firstLine : StrictLin2 := { a := (83/21), b := (83/21), c := (-97/7) }
private def case_000518_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000518_rankWord :
    rankPairWord? case_000518_word = some case_000518_rank := by
  decide

private theorem case_000518_unrank :
    unrankPairWord case_000518_rank = case_000518_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000518_word case_000518_rank).1
    case_000518_rankWord |>.symm

private theorem case_000518_seqChoice :
    translationChoiceSeq case_000518_word case_000518_mask = case_000518_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000518_seqAtRank :
    translationSeqAtRankMask case_000518_rank case_000518_mask = case_000518_seq := by
  rw [translationSeqAtRankMask, case_000518_unrank]
  exact case_000518_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000518_bAtRank :
    translationBAtRankMask case_000518_rank case_000518_mask = case_000518_b := by
  rw [translationBAtRankMask, case_000518_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000518_b, case_000518_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000518_firstLine_eq :
    case_000518_support.firstLine case_000518_seq case_000518_b = case_000518_firstLine := by
  norm_num [case_000518_firstLine, case_000518_support, case_000518_seq, case_000518_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000518_secondLine_eq :
    case_000518_support.secondLine case_000518_seq case_000518_b = case_000518_secondLine := by
  norm_num [case_000518_secondLine, case_000518_support, case_000518_seq, case_000518_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000518_sourceAgrees :
    SourceAgrees case_000518_support case_000518_rank.val case_000518_mask := by
  intro hlt
  have hrank : (⟨case_000518_rank.val, hlt⟩ : Fin numPairWords) = case_000518_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000518_rank.val, hlt⟩ case_000518_mask =
        case_000518_seq := by
    simpa [hrank] using case_000518_seqAtRank
  simp [SourceChecks, hseq, case_000518_support,
    checkTranslationConstraintSource, case_000518_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000518_rows :
    EqEqNegVarFirstRows case_000518_support case_000518_rank.val case_000518_mask := by
  intro hlt
  have hrank : (⟨case_000518_rank.val, hlt⟩ : Fin numPairWords) = case_000518_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000518_rank.val, hlt⟩ case_000518_mask =
        case_000518_seq := by
    simpa [hrank] using case_000518_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000518_rank.val, hlt⟩ case_000518_mask =
        case_000518_b := by
    simpa [hrank] using case_000518_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000518_support case_000518_rank.val hlt
          case_000518_mask = case_000518_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000518_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000518_support case_000518_rank.val hlt
          case_000518_mask = case_000518_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000518_secondLine_eq]
  have case_000518_rowFirst :
      EqEqNegRow (FirstLineAt case_000518_support case_000518_rank.val hlt case_000518_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000518_firstLine, EqEqNegRow]
  have case_000518_fixedSecond :
      FixedRow (SecondLineAt case_000518_support case_000518_rank.val hlt case_000518_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000518_secondLine, FixedRow]
  exact ⟨case_000518_rowFirst, case_000518_fixedSecond⟩

private theorem case_000518_existsRows :
    ExistsEqEqNegVarFirstRows case_000518_rank.val case_000518_mask :=
  ⟨case_000518_support, case_000518_sourceAgrees, case_000518_rows⟩

private theorem case_000518_covered :
    RowPropertyParametricCovered case_000518_rank.val case_000518_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000518_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000519_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000519_mask : SignMask := ⟨29, by decide⟩
private def case_000519_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000519_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000519_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000519_b : Vec3 Rat := { x := (-332/27), y := (44/27), z := (-76/27) }
private def case_000519_firstLine : StrictLin2 := { a := (-83/75), b := (-83/75), c := (-23/15) }
private def case_000519_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000519_rankWord :
    rankPairWord? case_000519_word = some case_000519_rank := by
  decide

private theorem case_000519_unrank :
    unrankPairWord case_000519_rank = case_000519_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000519_word case_000519_rank).1
    case_000519_rankWord |>.symm

private theorem case_000519_seqChoice :
    translationChoiceSeq case_000519_word case_000519_mask = case_000519_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000519_seqAtRank :
    translationSeqAtRankMask case_000519_rank case_000519_mask = case_000519_seq := by
  rw [translationSeqAtRankMask, case_000519_unrank]
  exact case_000519_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000519_bAtRank :
    translationBAtRankMask case_000519_rank case_000519_mask = case_000519_b := by
  rw [translationBAtRankMask, case_000519_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000519_b, case_000519_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000519_firstLine_eq :
    case_000519_support.firstLine case_000519_seq case_000519_b = case_000519_firstLine := by
  norm_num [case_000519_firstLine, case_000519_support, case_000519_seq, case_000519_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000519_secondLine_eq :
    case_000519_support.secondLine case_000519_seq case_000519_b = case_000519_secondLine := by
  norm_num [case_000519_secondLine, case_000519_support, case_000519_seq, case_000519_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000519_sourceAgrees :
    SourceAgrees case_000519_support case_000519_rank.val case_000519_mask := by
  intro hlt
  have hrank : (⟨case_000519_rank.val, hlt⟩ : Fin numPairWords) = case_000519_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000519_rank.val, hlt⟩ case_000519_mask =
        case_000519_seq := by
    simpa [hrank] using case_000519_seqAtRank
  simp [SourceChecks, hseq, case_000519_support,
    checkTranslationConstraintSource, case_000519_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000519_rows :
    EqEqPosVarFirstRows case_000519_support case_000519_rank.val case_000519_mask := by
  intro hlt
  have hrank : (⟨case_000519_rank.val, hlt⟩ : Fin numPairWords) = case_000519_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000519_rank.val, hlt⟩ case_000519_mask =
        case_000519_seq := by
    simpa [hrank] using case_000519_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000519_rank.val, hlt⟩ case_000519_mask =
        case_000519_b := by
    simpa [hrank] using case_000519_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000519_support case_000519_rank.val hlt
          case_000519_mask = case_000519_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000519_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000519_support case_000519_rank.val hlt
          case_000519_mask = case_000519_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000519_secondLine_eq]
  have case_000519_rowFirst :
      EqEqPosRow (FirstLineAt case_000519_support case_000519_rank.val hlt case_000519_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000519_firstLine, EqEqPosRow]
  have case_000519_fixedSecond :
      FixedRow (SecondLineAt case_000519_support case_000519_rank.val hlt case_000519_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000519_secondLine, FixedRow]
  exact ⟨case_000519_rowFirst, case_000519_fixedSecond⟩

private theorem case_000519_existsRows :
    ExistsEqEqPosVarFirstRows case_000519_rank.val case_000519_mask :=
  ⟨case_000519_support, case_000519_sourceAgrees, case_000519_rows⟩

private theorem case_000519_covered :
    RowPropertyParametricCovered case_000519_rank.val case_000519_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000519_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000520_rank : Fin numPairWords := ⟨263, by decide⟩
private def case_000520_mask : SignMask := ⟨45, by decide⟩
private def case_000520_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000520_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000520_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000520_b : Vec3 Rat := { x := (-76/27), y := (364/27), z := (-236/27) }
private def case_000520_firstLine : StrictLin2 := { a := 1, b := -1, c := (-281/19) }
private def case_000520_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000520_rankWord :
    rankPairWord? case_000520_word = some case_000520_rank := by
  decide

private theorem case_000520_unrank :
    unrankPairWord case_000520_rank = case_000520_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000520_word case_000520_rank).1
    case_000520_rankWord |>.symm

private theorem case_000520_seqChoice :
    translationChoiceSeq case_000520_word case_000520_mask = case_000520_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000520_seqAtRank :
    translationSeqAtRankMask case_000520_rank case_000520_mask = case_000520_seq := by
  rw [translationSeqAtRankMask, case_000520_unrank]
  exact case_000520_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000520_bAtRank :
    translationBAtRankMask case_000520_rank case_000520_mask = case_000520_b := by
  rw [translationBAtRankMask, case_000520_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000520_b, case_000520_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000520_firstLine_eq :
    case_000520_support.firstLine case_000520_seq case_000520_b = case_000520_firstLine := by
  norm_num [case_000520_firstLine, case_000520_support, case_000520_seq, case_000520_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000520_secondLine_eq :
    case_000520_support.secondLine case_000520_seq case_000520_b = case_000520_secondLine := by
  norm_num [case_000520_secondLine, case_000520_support, case_000520_seq, case_000520_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000520_sourceAgrees :
    SourceAgrees case_000520_support case_000520_rank.val case_000520_mask := by
  intro hlt
  have hrank : (⟨case_000520_rank.val, hlt⟩ : Fin numPairWords) = case_000520_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000520_rank.val, hlt⟩ case_000520_mask =
        case_000520_seq := by
    simpa [hrank] using case_000520_seqAtRank
  simp [SourceChecks, hseq, case_000520_support,
    checkTranslationConstraintSource, case_000520_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000520_rows :
    OppMinusOneVarFirstRows case_000520_support case_000520_rank.val case_000520_mask := by
  intro hlt
  have hrank : (⟨case_000520_rank.val, hlt⟩ : Fin numPairWords) = case_000520_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000520_rank.val, hlt⟩ case_000520_mask =
        case_000520_seq := by
    simpa [hrank] using case_000520_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000520_rank.val, hlt⟩ case_000520_mask =
        case_000520_b := by
    simpa [hrank] using case_000520_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000520_support case_000520_rank.val hlt
          case_000520_mask = case_000520_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000520_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000520_support case_000520_rank.val hlt
          case_000520_mask = case_000520_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000520_secondLine_eq]
  have case_000520_rowFirst :
      OppNegRow (FirstLineAt case_000520_support case_000520_rank.val hlt case_000520_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000520_firstLine, OppNegRow]
  have case_000520_fixedSecond :
      FixedRow (SecondLineAt case_000520_support case_000520_rank.val hlt case_000520_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000520_secondLine, FixedRow]
  exact ⟨case_000520_rowFirst, case_000520_fixedSecond⟩

private theorem case_000520_existsRows :
    ExistsOppMinusOneVarFirstRows case_000520_rank.val case_000520_mask :=
  ⟨case_000520_support, case_000520_sourceAgrees, case_000520_rows⟩

private theorem case_000520_covered :
    RowPropertyParametricCovered case_000520_rank.val case_000520_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000520_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000521_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000521_mask : SignMask := ⟨7, by decide⟩
private def case_000521_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000521_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000521_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000521_b : Vec3 Rat := { x := (-220/27), y := (220/27), z := (412/27) }
private def case_000521_firstLine : StrictLin2 := { a := 1, b := 1, c := (-261/55) }
private def case_000521_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000521_rankWord :
    rankPairWord? case_000521_word = some case_000521_rank := by
  decide

private theorem case_000521_unrank :
    unrankPairWord case_000521_rank = case_000521_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000521_word case_000521_rank).1
    case_000521_rankWord |>.symm

private theorem case_000521_seqChoice :
    translationChoiceSeq case_000521_word case_000521_mask = case_000521_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000521_seqAtRank :
    translationSeqAtRankMask case_000521_rank case_000521_mask = case_000521_seq := by
  rw [translationSeqAtRankMask, case_000521_unrank]
  exact case_000521_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000521_bAtRank :
    translationBAtRankMask case_000521_rank case_000521_mask = case_000521_b := by
  rw [translationBAtRankMask, case_000521_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000521_b, case_000521_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000521_firstLine_eq :
    case_000521_support.firstLine case_000521_seq case_000521_b = case_000521_firstLine := by
  norm_num [case_000521_firstLine, case_000521_support, case_000521_seq, case_000521_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000521_secondLine_eq :
    case_000521_support.secondLine case_000521_seq case_000521_b = case_000521_secondLine := by
  norm_num [case_000521_secondLine, case_000521_support, case_000521_seq, case_000521_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000521_sourceAgrees :
    SourceAgrees case_000521_support case_000521_rank.val case_000521_mask := by
  intro hlt
  have hrank : (⟨case_000521_rank.val, hlt⟩ : Fin numPairWords) = case_000521_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000521_rank.val, hlt⟩ case_000521_mask =
        case_000521_seq := by
    simpa [hrank] using case_000521_seqAtRank
  simp [SourceChecks, hseq, case_000521_support,
    checkTranslationConstraintSource, case_000521_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000521_rows :
    EqEqNegVarFirstRows case_000521_support case_000521_rank.val case_000521_mask := by
  intro hlt
  have hrank : (⟨case_000521_rank.val, hlt⟩ : Fin numPairWords) = case_000521_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000521_rank.val, hlt⟩ case_000521_mask =
        case_000521_seq := by
    simpa [hrank] using case_000521_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000521_rank.val, hlt⟩ case_000521_mask =
        case_000521_b := by
    simpa [hrank] using case_000521_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000521_support case_000521_rank.val hlt
          case_000521_mask = case_000521_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000521_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000521_support case_000521_rank.val hlt
          case_000521_mask = case_000521_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000521_secondLine_eq]
  have case_000521_rowFirst :
      EqEqNegRow (FirstLineAt case_000521_support case_000521_rank.val hlt case_000521_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000521_firstLine, EqEqNegRow]
  have case_000521_fixedSecond :
      FixedRow (SecondLineAt case_000521_support case_000521_rank.val hlt case_000521_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000521_secondLine, FixedRow]
  exact ⟨case_000521_rowFirst, case_000521_fixedSecond⟩

private theorem case_000521_existsRows :
    ExistsEqEqNegVarFirstRows case_000521_rank.val case_000521_mask :=
  ⟨case_000521_support, case_000521_sourceAgrees, case_000521_rows⟩

private theorem case_000521_covered :
    RowPropertyParametricCovered case_000521_rank.val case_000521_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000521_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000522_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000522_mask : SignMask := ⟨13, by decide⟩
private def case_000522_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000522_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000522_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000522_b : Vec3 Rat := { x := (-268/27), y := (268/27), z := (-44/27) }
private def case_000522_firstLine : StrictLin2 := { a := 1, b := -1, c := (-89/67) }
private def case_000522_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000522_rankWord :
    rankPairWord? case_000522_word = some case_000522_rank := by
  decide

private theorem case_000522_unrank :
    unrankPairWord case_000522_rank = case_000522_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000522_word case_000522_rank).1
    case_000522_rankWord |>.symm

private theorem case_000522_seqChoice :
    translationChoiceSeq case_000522_word case_000522_mask = case_000522_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000522_seqAtRank :
    translationSeqAtRankMask case_000522_rank case_000522_mask = case_000522_seq := by
  rw [translationSeqAtRankMask, case_000522_unrank]
  exact case_000522_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000522_bAtRank :
    translationBAtRankMask case_000522_rank case_000522_mask = case_000522_b := by
  rw [translationBAtRankMask, case_000522_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000522_b, case_000522_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000522_firstLine_eq :
    case_000522_support.firstLine case_000522_seq case_000522_b = case_000522_firstLine := by
  norm_num [case_000522_firstLine, case_000522_support, case_000522_seq, case_000522_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000522_secondLine_eq :
    case_000522_support.secondLine case_000522_seq case_000522_b = case_000522_secondLine := by
  norm_num [case_000522_secondLine, case_000522_support, case_000522_seq, case_000522_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000522_sourceAgrees :
    SourceAgrees case_000522_support case_000522_rank.val case_000522_mask := by
  intro hlt
  have hrank : (⟨case_000522_rank.val, hlt⟩ : Fin numPairWords) = case_000522_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000522_rank.val, hlt⟩ case_000522_mask =
        case_000522_seq := by
    simpa [hrank] using case_000522_seqAtRank
  simp [SourceChecks, hseq, case_000522_support,
    checkTranslationConstraintSource, case_000522_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000522_rows :
    OppMinusOneVarFirstRows case_000522_support case_000522_rank.val case_000522_mask := by
  intro hlt
  have hrank : (⟨case_000522_rank.val, hlt⟩ : Fin numPairWords) = case_000522_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000522_rank.val, hlt⟩ case_000522_mask =
        case_000522_seq := by
    simpa [hrank] using case_000522_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000522_rank.val, hlt⟩ case_000522_mask =
        case_000522_b := by
    simpa [hrank] using case_000522_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000522_support case_000522_rank.val hlt
          case_000522_mask = case_000522_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000522_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000522_support case_000522_rank.val hlt
          case_000522_mask = case_000522_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000522_secondLine_eq]
  have case_000522_rowFirst :
      OppNegRow (FirstLineAt case_000522_support case_000522_rank.val hlt case_000522_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000522_firstLine, OppNegRow]
  have case_000522_fixedSecond :
      FixedRow (SecondLineAt case_000522_support case_000522_rank.val hlt case_000522_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000522_secondLine, FixedRow]
  exact ⟨case_000522_rowFirst, case_000522_fixedSecond⟩

private theorem case_000522_existsRows :
    ExistsOppMinusOneVarFirstRows case_000522_rank.val case_000522_mask :=
  ⟨case_000522_support, case_000522_sourceAgrees, case_000522_rows⟩

private theorem case_000522_covered :
    RowPropertyParametricCovered case_000522_rank.val case_000522_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000522_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000523_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000523_mask : SignMask := ⟨18, by decide⟩
private def case_000523_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000523_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000523_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000523_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000523_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000523_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000523_rankWord :
    rankPairWord? case_000523_word = some case_000523_rank := by
  decide

private theorem case_000523_unrank :
    unrankPairWord case_000523_rank = case_000523_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000523_word case_000523_rank).1
    case_000523_rankWord |>.symm

private theorem case_000523_seqChoice :
    translationChoiceSeq case_000523_word case_000523_mask = case_000523_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000523_seqAtRank :
    translationSeqAtRankMask case_000523_rank case_000523_mask = case_000523_seq := by
  rw [translationSeqAtRankMask, case_000523_unrank]
  exact case_000523_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000523_bAtRank :
    translationBAtRankMask case_000523_rank case_000523_mask = case_000523_b := by
  rw [translationBAtRankMask, case_000523_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000523_b, case_000523_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000523_firstLine_eq :
    case_000523_support.firstLine case_000523_seq case_000523_b = case_000523_firstLine := by
  norm_num [case_000523_firstLine, case_000523_support, case_000523_seq, case_000523_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000523_secondLine_eq :
    case_000523_support.secondLine case_000523_seq case_000523_b = case_000523_secondLine := by
  norm_num [case_000523_secondLine, case_000523_support, case_000523_seq, case_000523_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000523_sourceAgrees :
    SourceAgrees case_000523_support case_000523_rank.val case_000523_mask := by
  intro hlt
  have hrank : (⟨case_000523_rank.val, hlt⟩ : Fin numPairWords) = case_000523_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000523_rank.val, hlt⟩ case_000523_mask =
        case_000523_seq := by
    simpa [hrank] using case_000523_seqAtRank
  simp [SourceChecks, hseq, case_000523_support,
    checkTranslationConstraintSource, case_000523_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000523_rows :
    EqEqPosVarFirstRows case_000523_support case_000523_rank.val case_000523_mask := by
  intro hlt
  have hrank : (⟨case_000523_rank.val, hlt⟩ : Fin numPairWords) = case_000523_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000523_rank.val, hlt⟩ case_000523_mask =
        case_000523_seq := by
    simpa [hrank] using case_000523_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000523_rank.val, hlt⟩ case_000523_mask =
        case_000523_b := by
    simpa [hrank] using case_000523_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000523_support case_000523_rank.val hlt
          case_000523_mask = case_000523_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000523_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000523_support case_000523_rank.val hlt
          case_000523_mask = case_000523_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000523_secondLine_eq]
  have case_000523_rowFirst :
      EqEqPosRow (FirstLineAt case_000523_support case_000523_rank.val hlt case_000523_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000523_firstLine, EqEqPosRow]
  have case_000523_fixedSecond :
      FixedRow (SecondLineAt case_000523_support case_000523_rank.val hlt case_000523_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000523_secondLine, FixedRow]
  exact ⟨case_000523_rowFirst, case_000523_fixedSecond⟩

private theorem case_000523_existsRows :
    ExistsEqEqPosVarFirstRows case_000523_rank.val case_000523_mask :=
  ⟨case_000523_support, case_000523_sourceAgrees, case_000523_rows⟩

private theorem case_000523_covered :
    RowPropertyParametricCovered case_000523_rank.val case_000523_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000523_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000524_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000524_mask : SignMask := ⟨22, by decide⟩
private def case_000524_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000524_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000524_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000524_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000524_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000524_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000524_rankWord :
    rankPairWord? case_000524_word = some case_000524_rank := by
  decide

private theorem case_000524_unrank :
    unrankPairWord case_000524_rank = case_000524_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000524_word case_000524_rank).1
    case_000524_rankWord |>.symm

private theorem case_000524_seqChoice :
    translationChoiceSeq case_000524_word case_000524_mask = case_000524_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000524_seqAtRank :
    translationSeqAtRankMask case_000524_rank case_000524_mask = case_000524_seq := by
  rw [translationSeqAtRankMask, case_000524_unrank]
  exact case_000524_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000524_bAtRank :
    translationBAtRankMask case_000524_rank case_000524_mask = case_000524_b := by
  rw [translationBAtRankMask, case_000524_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000524_b, case_000524_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000524_firstLine_eq :
    case_000524_support.firstLine case_000524_seq case_000524_b = case_000524_firstLine := by
  norm_num [case_000524_firstLine, case_000524_support, case_000524_seq, case_000524_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000524_secondLine_eq :
    case_000524_support.secondLine case_000524_seq case_000524_b = case_000524_secondLine := by
  norm_num [case_000524_secondLine, case_000524_support, case_000524_seq, case_000524_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000524_sourceAgrees :
    SourceAgrees case_000524_support case_000524_rank.val case_000524_mask := by
  intro hlt
  have hrank : (⟨case_000524_rank.val, hlt⟩ : Fin numPairWords) = case_000524_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000524_rank.val, hlt⟩ case_000524_mask =
        case_000524_seq := by
    simpa [hrank] using case_000524_seqAtRank
  simp [SourceChecks, hseq, case_000524_support,
    checkTranslationConstraintSource, case_000524_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000524_rows :
    OppOneMinusVarFirstRows case_000524_support case_000524_rank.val case_000524_mask := by
  intro hlt
  have hrank : (⟨case_000524_rank.val, hlt⟩ : Fin numPairWords) = case_000524_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000524_rank.val, hlt⟩ case_000524_mask =
        case_000524_seq := by
    simpa [hrank] using case_000524_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000524_rank.val, hlt⟩ case_000524_mask =
        case_000524_b := by
    simpa [hrank] using case_000524_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000524_support case_000524_rank.val hlt
          case_000524_mask = case_000524_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000524_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000524_support case_000524_rank.val hlt
          case_000524_mask = case_000524_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000524_secondLine_eq]
  have case_000524_rowFirst :
      OppPosRow (FirstLineAt case_000524_support case_000524_rank.val hlt case_000524_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000524_firstLine, OppPosRow]
  have case_000524_fixedSecond :
      FixedRow (SecondLineAt case_000524_support case_000524_rank.val hlt case_000524_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000524_secondLine, FixedRow]
  exact ⟨case_000524_rowFirst, case_000524_fixedSecond⟩

private theorem case_000524_existsRows :
    ExistsOppOneMinusVarFirstRows case_000524_rank.val case_000524_mask :=
  ⟨case_000524_support, case_000524_sourceAgrees, case_000524_rows⟩

private theorem case_000524_covered :
    RowPropertyParametricCovered case_000524_rank.val case_000524_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000524_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000525_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000525_mask : SignMask := ⟨24, by decide⟩
private def case_000525_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000525_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000525_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000525_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000525_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000525_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000525_rankWord :
    rankPairWord? case_000525_word = some case_000525_rank := by
  decide

private theorem case_000525_unrank :
    unrankPairWord case_000525_rank = case_000525_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000525_word case_000525_rank).1
    case_000525_rankWord |>.symm

private theorem case_000525_seqChoice :
    translationChoiceSeq case_000525_word case_000525_mask = case_000525_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000525_seqAtRank :
    translationSeqAtRankMask case_000525_rank case_000525_mask = case_000525_seq := by
  rw [translationSeqAtRankMask, case_000525_unrank]
  exact case_000525_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000525_bAtRank :
    translationBAtRankMask case_000525_rank case_000525_mask = case_000525_b := by
  rw [translationBAtRankMask, case_000525_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000525_b, case_000525_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000525_firstLine_eq :
    case_000525_support.firstLine case_000525_seq case_000525_b = case_000525_firstLine := by
  norm_num [case_000525_firstLine, case_000525_support, case_000525_seq, case_000525_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000525_secondLine_eq :
    case_000525_support.secondLine case_000525_seq case_000525_b = case_000525_secondLine := by
  norm_num [case_000525_secondLine, case_000525_support, case_000525_seq, case_000525_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000525_sourceAgrees :
    SourceAgrees case_000525_support case_000525_rank.val case_000525_mask := by
  intro hlt
  have hrank : (⟨case_000525_rank.val, hlt⟩ : Fin numPairWords) = case_000525_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000525_rank.val, hlt⟩ case_000525_mask =
        case_000525_seq := by
    simpa [hrank] using case_000525_seqAtRank
  simp [SourceChecks, hseq, case_000525_support,
    checkTranslationConstraintSource, case_000525_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000525_rows :
    EqEqPosVarFirstRows case_000525_support case_000525_rank.val case_000525_mask := by
  intro hlt
  have hrank : (⟨case_000525_rank.val, hlt⟩ : Fin numPairWords) = case_000525_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000525_rank.val, hlt⟩ case_000525_mask =
        case_000525_seq := by
    simpa [hrank] using case_000525_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000525_rank.val, hlt⟩ case_000525_mask =
        case_000525_b := by
    simpa [hrank] using case_000525_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000525_support case_000525_rank.val hlt
          case_000525_mask = case_000525_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000525_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000525_support case_000525_rank.val hlt
          case_000525_mask = case_000525_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000525_secondLine_eq]
  have case_000525_rowFirst :
      EqEqPosRow (FirstLineAt case_000525_support case_000525_rank.val hlt case_000525_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000525_firstLine, EqEqPosRow]
  have case_000525_fixedSecond :
      FixedRow (SecondLineAt case_000525_support case_000525_rank.val hlt case_000525_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000525_secondLine, FixedRow]
  exact ⟨case_000525_rowFirst, case_000525_fixedSecond⟩

private theorem case_000525_existsRows :
    ExistsEqEqPosVarFirstRows case_000525_rank.val case_000525_mask :=
  ⟨case_000525_support, case_000525_sourceAgrees, case_000525_rows⟩

private theorem case_000525_covered :
    RowPropertyParametricCovered case_000525_rank.val case_000525_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000525_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000526_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000526_mask : SignMask := ⟨28, by decide⟩
private def case_000526_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000526_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000526_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000526_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000526_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000526_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000526_rankWord :
    rankPairWord? case_000526_word = some case_000526_rank := by
  decide

private theorem case_000526_unrank :
    unrankPairWord case_000526_rank = case_000526_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000526_word case_000526_rank).1
    case_000526_rankWord |>.symm

private theorem case_000526_seqChoice :
    translationChoiceSeq case_000526_word case_000526_mask = case_000526_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000526_seqAtRank :
    translationSeqAtRankMask case_000526_rank case_000526_mask = case_000526_seq := by
  rw [translationSeqAtRankMask, case_000526_unrank]
  exact case_000526_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000526_bAtRank :
    translationBAtRankMask case_000526_rank case_000526_mask = case_000526_b := by
  rw [translationBAtRankMask, case_000526_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000526_b, case_000526_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000526_firstLine_eq :
    case_000526_support.firstLine case_000526_seq case_000526_b = case_000526_firstLine := by
  norm_num [case_000526_firstLine, case_000526_support, case_000526_seq, case_000526_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000526_secondLine_eq :
    case_000526_support.secondLine case_000526_seq case_000526_b = case_000526_secondLine := by
  norm_num [case_000526_secondLine, case_000526_support, case_000526_seq, case_000526_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000526_sourceAgrees :
    SourceAgrees case_000526_support case_000526_rank.val case_000526_mask := by
  intro hlt
  have hrank : (⟨case_000526_rank.val, hlt⟩ : Fin numPairWords) = case_000526_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000526_rank.val, hlt⟩ case_000526_mask =
        case_000526_seq := by
    simpa [hrank] using case_000526_seqAtRank
  simp [SourceChecks, hseq, case_000526_support,
    checkTranslationConstraintSource, case_000526_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000526_rows :
    OppOneMinusVarFirstRows case_000526_support case_000526_rank.val case_000526_mask := by
  intro hlt
  have hrank : (⟨case_000526_rank.val, hlt⟩ : Fin numPairWords) = case_000526_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000526_rank.val, hlt⟩ case_000526_mask =
        case_000526_seq := by
    simpa [hrank] using case_000526_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000526_rank.val, hlt⟩ case_000526_mask =
        case_000526_b := by
    simpa [hrank] using case_000526_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000526_support case_000526_rank.val hlt
          case_000526_mask = case_000526_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000526_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000526_support case_000526_rank.val hlt
          case_000526_mask = case_000526_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000526_secondLine_eq]
  have case_000526_rowFirst :
      OppPosRow (FirstLineAt case_000526_support case_000526_rank.val hlt case_000526_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000526_firstLine, OppPosRow]
  have case_000526_fixedSecond :
      FixedRow (SecondLineAt case_000526_support case_000526_rank.val hlt case_000526_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000526_secondLine, FixedRow]
  exact ⟨case_000526_rowFirst, case_000526_fixedSecond⟩

private theorem case_000526_existsRows :
    ExistsOppOneMinusVarFirstRows case_000526_rank.val case_000526_mask :=
  ⟨case_000526_support, case_000526_sourceAgrees, case_000526_rows⟩

private theorem case_000526_covered :
    RowPropertyParametricCovered case_000526_rank.val case_000526_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000526_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000527_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000527_mask : SignMask := ⟨29, by decide⟩
private def case_000527_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000527_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000527_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000527_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-52/9) }
private def case_000527_firstLine : StrictLin2 := { a := (-29/21), b := (-29/21), c := (-61/21) }
private def case_000527_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000527_rankWord :
    rankPairWord? case_000527_word = some case_000527_rank := by
  decide

private theorem case_000527_unrank :
    unrankPairWord case_000527_rank = case_000527_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000527_word case_000527_rank).1
    case_000527_rankWord |>.symm

private theorem case_000527_seqChoice :
    translationChoiceSeq case_000527_word case_000527_mask = case_000527_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000527_seqAtRank :
    translationSeqAtRankMask case_000527_rank case_000527_mask = case_000527_seq := by
  rw [translationSeqAtRankMask, case_000527_unrank]
  exact case_000527_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000527_bAtRank :
    translationBAtRankMask case_000527_rank case_000527_mask = case_000527_b := by
  rw [translationBAtRankMask, case_000527_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000527_b, case_000527_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000527_firstLine_eq :
    case_000527_support.firstLine case_000527_seq case_000527_b = case_000527_firstLine := by
  norm_num [case_000527_firstLine, case_000527_support, case_000527_seq, case_000527_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000527_secondLine_eq :
    case_000527_support.secondLine case_000527_seq case_000527_b = case_000527_secondLine := by
  norm_num [case_000527_secondLine, case_000527_support, case_000527_seq, case_000527_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000527_sourceAgrees :
    SourceAgrees case_000527_support case_000527_rank.val case_000527_mask := by
  intro hlt
  have hrank : (⟨case_000527_rank.val, hlt⟩ : Fin numPairWords) = case_000527_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000527_rank.val, hlt⟩ case_000527_mask =
        case_000527_seq := by
    simpa [hrank] using case_000527_seqAtRank
  simp [SourceChecks, hseq, case_000527_support,
    checkTranslationConstraintSource, case_000527_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000527_rows :
    EqEqPosVarFirstRows case_000527_support case_000527_rank.val case_000527_mask := by
  intro hlt
  have hrank : (⟨case_000527_rank.val, hlt⟩ : Fin numPairWords) = case_000527_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000527_rank.val, hlt⟩ case_000527_mask =
        case_000527_seq := by
    simpa [hrank] using case_000527_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000527_rank.val, hlt⟩ case_000527_mask =
        case_000527_b := by
    simpa [hrank] using case_000527_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000527_support case_000527_rank.val hlt
          case_000527_mask = case_000527_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000527_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000527_support case_000527_rank.val hlt
          case_000527_mask = case_000527_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000527_secondLine_eq]
  have case_000527_rowFirst :
      EqEqPosRow (FirstLineAt case_000527_support case_000527_rank.val hlt case_000527_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000527_firstLine, EqEqPosRow]
  have case_000527_fixedSecond :
      FixedRow (SecondLineAt case_000527_support case_000527_rank.val hlt case_000527_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000527_secondLine, FixedRow]
  exact ⟨case_000527_rowFirst, case_000527_fixedSecond⟩

private theorem case_000527_existsRows :
    ExistsEqEqPosVarFirstRows case_000527_rank.val case_000527_mask :=
  ⟨case_000527_support, case_000527_sourceAgrees, case_000527_rows⟩

private theorem case_000527_covered :
    RowPropertyParametricCovered case_000527_rank.val case_000527_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000527_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000528_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000528_mask : SignMask := ⟨31, by decide⟩
private def case_000528_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000528_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000528_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000528_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000528_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000528_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000528_rankWord :
    rankPairWord? case_000528_word = some case_000528_rank := by
  decide

private theorem case_000528_unrank :
    unrankPairWord case_000528_rank = case_000528_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000528_word case_000528_rank).1
    case_000528_rankWord |>.symm

private theorem case_000528_seqChoice :
    translationChoiceSeq case_000528_word case_000528_mask = case_000528_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000528_seqAtRank :
    translationSeqAtRankMask case_000528_rank case_000528_mask = case_000528_seq := by
  rw [translationSeqAtRankMask, case_000528_unrank]
  exact case_000528_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000528_bAtRank :
    translationBAtRankMask case_000528_rank case_000528_mask = case_000528_b := by
  rw [translationBAtRankMask, case_000528_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000528_b, case_000528_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000528_firstLine_eq :
    case_000528_support.firstLine case_000528_seq case_000528_b = case_000528_firstLine := by
  norm_num [case_000528_firstLine, case_000528_support, case_000528_seq, case_000528_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000528_secondLine_eq :
    case_000528_support.secondLine case_000528_seq case_000528_b = case_000528_secondLine := by
  norm_num [case_000528_secondLine, case_000528_support, case_000528_seq, case_000528_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000528_sourceAgrees :
    SourceAgrees case_000528_support case_000528_rank.val case_000528_mask := by
  intro hlt
  have hrank : (⟨case_000528_rank.val, hlt⟩ : Fin numPairWords) = case_000528_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000528_rank.val, hlt⟩ case_000528_mask =
        case_000528_seq := by
    simpa [hrank] using case_000528_seqAtRank
  simp [SourceChecks, hseq, case_000528_support,
    checkTranslationConstraintSource, case_000528_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000528_rows :
    EqEqPosVarFirstRows case_000528_support case_000528_rank.val case_000528_mask := by
  intro hlt
  have hrank : (⟨case_000528_rank.val, hlt⟩ : Fin numPairWords) = case_000528_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000528_rank.val, hlt⟩ case_000528_mask =
        case_000528_seq := by
    simpa [hrank] using case_000528_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000528_rank.val, hlt⟩ case_000528_mask =
        case_000528_b := by
    simpa [hrank] using case_000528_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000528_support case_000528_rank.val hlt
          case_000528_mask = case_000528_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000528_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000528_support case_000528_rank.val hlt
          case_000528_mask = case_000528_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000528_secondLine_eq]
  have case_000528_rowFirst :
      EqEqPosRow (FirstLineAt case_000528_support case_000528_rank.val hlt case_000528_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000528_firstLine, EqEqPosRow]
  have case_000528_fixedSecond :
      FixedRow (SecondLineAt case_000528_support case_000528_rank.val hlt case_000528_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000528_secondLine, FixedRow]
  exact ⟨case_000528_rowFirst, case_000528_fixedSecond⟩

private theorem case_000528_existsRows :
    ExistsEqEqPosVarFirstRows case_000528_rank.val case_000528_mask :=
  ⟨case_000528_support, case_000528_sourceAgrees, case_000528_rows⟩

private theorem case_000528_covered :
    RowPropertyParametricCovered case_000528_rank.val case_000528_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000528_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000529_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000529_mask : SignMask := ⟨45, by decide⟩
private def case_000529_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000529_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000529_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000529_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-52/9) }
private def case_000529_firstLine : StrictLin2 := { a := (-10/21), b := (-10/21), c := (-4/7) }
private def case_000529_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000529_rankWord :
    rankPairWord? case_000529_word = some case_000529_rank := by
  decide

private theorem case_000529_unrank :
    unrankPairWord case_000529_rank = case_000529_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000529_word case_000529_rank).1
    case_000529_rankWord |>.symm

private theorem case_000529_seqChoice :
    translationChoiceSeq case_000529_word case_000529_mask = case_000529_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000529_seqAtRank :
    translationSeqAtRankMask case_000529_rank case_000529_mask = case_000529_seq := by
  rw [translationSeqAtRankMask, case_000529_unrank]
  exact case_000529_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000529_bAtRank :
    translationBAtRankMask case_000529_rank case_000529_mask = case_000529_b := by
  rw [translationBAtRankMask, case_000529_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000529_b, case_000529_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000529_firstLine_eq :
    case_000529_support.firstLine case_000529_seq case_000529_b = case_000529_firstLine := by
  norm_num [case_000529_firstLine, case_000529_support, case_000529_seq, case_000529_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000529_secondLine_eq :
    case_000529_support.secondLine case_000529_seq case_000529_b = case_000529_secondLine := by
  norm_num [case_000529_secondLine, case_000529_support, case_000529_seq, case_000529_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000529_sourceAgrees :
    SourceAgrees case_000529_support case_000529_rank.val case_000529_mask := by
  intro hlt
  have hrank : (⟨case_000529_rank.val, hlt⟩ : Fin numPairWords) = case_000529_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000529_rank.val, hlt⟩ case_000529_mask =
        case_000529_seq := by
    simpa [hrank] using case_000529_seqAtRank
  simp [SourceChecks, hseq, case_000529_support,
    checkTranslationConstraintSource, case_000529_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000529_rows :
    EqEqPosVarFirstRows case_000529_support case_000529_rank.val case_000529_mask := by
  intro hlt
  have hrank : (⟨case_000529_rank.val, hlt⟩ : Fin numPairWords) = case_000529_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000529_rank.val, hlt⟩ case_000529_mask =
        case_000529_seq := by
    simpa [hrank] using case_000529_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000529_rank.val, hlt⟩ case_000529_mask =
        case_000529_b := by
    simpa [hrank] using case_000529_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000529_support case_000529_rank.val hlt
          case_000529_mask = case_000529_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000529_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000529_support case_000529_rank.val hlt
          case_000529_mask = case_000529_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000529_secondLine_eq]
  have case_000529_rowFirst :
      EqEqPosRow (FirstLineAt case_000529_support case_000529_rank.val hlt case_000529_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000529_firstLine, EqEqPosRow]
  have case_000529_fixedSecond :
      FixedRow (SecondLineAt case_000529_support case_000529_rank.val hlt case_000529_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000529_secondLine, FixedRow]
  exact ⟨case_000529_rowFirst, case_000529_fixedSecond⟩

private theorem case_000529_existsRows :
    ExistsEqEqPosVarFirstRows case_000529_rank.val case_000529_mask :=
  ⟨case_000529_support, case_000529_sourceAgrees, case_000529_rows⟩

private theorem case_000529_covered :
    RowPropertyParametricCovered case_000529_rank.val case_000529_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000529_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000530_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000530_mask : SignMask := ⟨47, by decide⟩
private def case_000530_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000530_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000530_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000530_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000530_firstLine : StrictLin2 := { a := (-10/39), b := (-10/39), c := (-16/13) }
private def case_000530_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000530_rankWord :
    rankPairWord? case_000530_word = some case_000530_rank := by
  decide

private theorem case_000530_unrank :
    unrankPairWord case_000530_rank = case_000530_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000530_word case_000530_rank).1
    case_000530_rankWord |>.symm

private theorem case_000530_seqChoice :
    translationChoiceSeq case_000530_word case_000530_mask = case_000530_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000530_seqAtRank :
    translationSeqAtRankMask case_000530_rank case_000530_mask = case_000530_seq := by
  rw [translationSeqAtRankMask, case_000530_unrank]
  exact case_000530_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000530_bAtRank :
    translationBAtRankMask case_000530_rank case_000530_mask = case_000530_b := by
  rw [translationBAtRankMask, case_000530_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000530_b, case_000530_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000530_firstLine_eq :
    case_000530_support.firstLine case_000530_seq case_000530_b = case_000530_firstLine := by
  norm_num [case_000530_firstLine, case_000530_support, case_000530_seq, case_000530_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000530_secondLine_eq :
    case_000530_support.secondLine case_000530_seq case_000530_b = case_000530_secondLine := by
  norm_num [case_000530_secondLine, case_000530_support, case_000530_seq, case_000530_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000530_sourceAgrees :
    SourceAgrees case_000530_support case_000530_rank.val case_000530_mask := by
  intro hlt
  have hrank : (⟨case_000530_rank.val, hlt⟩ : Fin numPairWords) = case_000530_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000530_rank.val, hlt⟩ case_000530_mask =
        case_000530_seq := by
    simpa [hrank] using case_000530_seqAtRank
  simp [SourceChecks, hseq, case_000530_support,
    checkTranslationConstraintSource, case_000530_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000530_rows :
    EqEqPosVarFirstRows case_000530_support case_000530_rank.val case_000530_mask := by
  intro hlt
  have hrank : (⟨case_000530_rank.val, hlt⟩ : Fin numPairWords) = case_000530_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000530_rank.val, hlt⟩ case_000530_mask =
        case_000530_seq := by
    simpa [hrank] using case_000530_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000530_rank.val, hlt⟩ case_000530_mask =
        case_000530_b := by
    simpa [hrank] using case_000530_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000530_support case_000530_rank.val hlt
          case_000530_mask = case_000530_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000530_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000530_support case_000530_rank.val hlt
          case_000530_mask = case_000530_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000530_secondLine_eq]
  have case_000530_rowFirst :
      EqEqPosRow (FirstLineAt case_000530_support case_000530_rank.val hlt case_000530_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000530_firstLine, EqEqPosRow]
  have case_000530_fixedSecond :
      FixedRow (SecondLineAt case_000530_support case_000530_rank.val hlt case_000530_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000530_secondLine, FixedRow]
  exact ⟨case_000530_rowFirst, case_000530_fixedSecond⟩

private theorem case_000530_existsRows :
    ExistsEqEqPosVarFirstRows case_000530_rank.val case_000530_mask :=
  ⟨case_000530_support, case_000530_sourceAgrees, case_000530_rows⟩

private theorem case_000530_covered :
    RowPropertyParametricCovered case_000530_rank.val case_000530_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000530_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000531_rank : Fin numPairWords := ⟨269, by decide⟩
private def case_000531_mask : SignMask := ⟨61, by decide⟩
private def case_000531_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000531_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000531_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000531_b : Vec3 Rat := { x := (-140/27), y := (140/27), z := (-268/27) }
private def case_000531_firstLine : StrictLin2 := { a := (-35/3), b := (-35/3), c := (-163/3) }
private def case_000531_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000531_rankWord :
    rankPairWord? case_000531_word = some case_000531_rank := by
  decide

private theorem case_000531_unrank :
    unrankPairWord case_000531_rank = case_000531_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000531_word case_000531_rank).1
    case_000531_rankWord |>.symm

private theorem case_000531_seqChoice :
    translationChoiceSeq case_000531_word case_000531_mask = case_000531_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000531_seqAtRank :
    translationSeqAtRankMask case_000531_rank case_000531_mask = case_000531_seq := by
  rw [translationSeqAtRankMask, case_000531_unrank]
  exact case_000531_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000531_bAtRank :
    translationBAtRankMask case_000531_rank case_000531_mask = case_000531_b := by
  rw [translationBAtRankMask, case_000531_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000531_b, case_000531_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000531_firstLine_eq :
    case_000531_support.firstLine case_000531_seq case_000531_b = case_000531_firstLine := by
  norm_num [case_000531_firstLine, case_000531_support, case_000531_seq, case_000531_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000531_secondLine_eq :
    case_000531_support.secondLine case_000531_seq case_000531_b = case_000531_secondLine := by
  norm_num [case_000531_secondLine, case_000531_support, case_000531_seq, case_000531_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000531_sourceAgrees :
    SourceAgrees case_000531_support case_000531_rank.val case_000531_mask := by
  intro hlt
  have hrank : (⟨case_000531_rank.val, hlt⟩ : Fin numPairWords) = case_000531_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000531_rank.val, hlt⟩ case_000531_mask =
        case_000531_seq := by
    simpa [hrank] using case_000531_seqAtRank
  simp [SourceChecks, hseq, case_000531_support,
    checkTranslationConstraintSource, case_000531_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000531_rows :
    EqEqPosVarFirstRows case_000531_support case_000531_rank.val case_000531_mask := by
  intro hlt
  have hrank : (⟨case_000531_rank.val, hlt⟩ : Fin numPairWords) = case_000531_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000531_rank.val, hlt⟩ case_000531_mask =
        case_000531_seq := by
    simpa [hrank] using case_000531_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000531_rank.val, hlt⟩ case_000531_mask =
        case_000531_b := by
    simpa [hrank] using case_000531_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000531_support case_000531_rank.val hlt
          case_000531_mask = case_000531_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000531_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000531_support case_000531_rank.val hlt
          case_000531_mask = case_000531_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000531_secondLine_eq]
  have case_000531_rowFirst :
      EqEqPosRow (FirstLineAt case_000531_support case_000531_rank.val hlt case_000531_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000531_firstLine, EqEqPosRow]
  have case_000531_fixedSecond :
      FixedRow (SecondLineAt case_000531_support case_000531_rank.val hlt case_000531_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000531_secondLine, FixedRow]
  exact ⟨case_000531_rowFirst, case_000531_fixedSecond⟩

private theorem case_000531_existsRows :
    ExistsEqEqPosVarFirstRows case_000531_rank.val case_000531_mask :=
  ⟨case_000531_support, case_000531_sourceAgrees, case_000531_rows⟩

private theorem case_000531_covered :
    RowPropertyParametricCovered case_000531_rank.val case_000531_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000531_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000532_rank : Fin numPairWords := ⟨315, by decide⟩
private def case_000532_mask : SignMask := ⟨9, by decide⟩
private def case_000532_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000532_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000532_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000532_b : Vec3 Rat := { x := (-124/27), y := (28/27), z := (-380/27) }
private def case_000532_firstLine : StrictLin2 := { a := -1, b := -1, c := (-145/31) }
private def case_000532_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000532_rankWord :
    rankPairWord? case_000532_word = some case_000532_rank := by
  decide

private theorem case_000532_unrank :
    unrankPairWord case_000532_rank = case_000532_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000532_word case_000532_rank).1
    case_000532_rankWord |>.symm

private theorem case_000532_seqChoice :
    translationChoiceSeq case_000532_word case_000532_mask = case_000532_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000532_seqAtRank :
    translationSeqAtRankMask case_000532_rank case_000532_mask = case_000532_seq := by
  rw [translationSeqAtRankMask, case_000532_unrank]
  exact case_000532_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000532_bAtRank :
    translationBAtRankMask case_000532_rank case_000532_mask = case_000532_b := by
  rw [translationBAtRankMask, case_000532_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000532_b, case_000532_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000532_firstLine_eq :
    case_000532_support.firstLine case_000532_seq case_000532_b = case_000532_firstLine := by
  norm_num [case_000532_firstLine, case_000532_support, case_000532_seq, case_000532_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000532_secondLine_eq :
    case_000532_support.secondLine case_000532_seq case_000532_b = case_000532_secondLine := by
  norm_num [case_000532_secondLine, case_000532_support, case_000532_seq, case_000532_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000532_sourceAgrees :
    SourceAgrees case_000532_support case_000532_rank.val case_000532_mask := by
  intro hlt
  have hrank : (⟨case_000532_rank.val, hlt⟩ : Fin numPairWords) = case_000532_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000532_rank.val, hlt⟩ case_000532_mask =
        case_000532_seq := by
    simpa [hrank] using case_000532_seqAtRank
  simp [SourceChecks, hseq, case_000532_support,
    checkTranslationConstraintSource, case_000532_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000532_rows :
    EqEqPosVarFirstRows case_000532_support case_000532_rank.val case_000532_mask := by
  intro hlt
  have hrank : (⟨case_000532_rank.val, hlt⟩ : Fin numPairWords) = case_000532_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000532_rank.val, hlt⟩ case_000532_mask =
        case_000532_seq := by
    simpa [hrank] using case_000532_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000532_rank.val, hlt⟩ case_000532_mask =
        case_000532_b := by
    simpa [hrank] using case_000532_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000532_support case_000532_rank.val hlt
          case_000532_mask = case_000532_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000532_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000532_support case_000532_rank.val hlt
          case_000532_mask = case_000532_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000532_secondLine_eq]
  have case_000532_rowFirst :
      EqEqPosRow (FirstLineAt case_000532_support case_000532_rank.val hlt case_000532_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000532_firstLine, EqEqPosRow]
  have case_000532_fixedSecond :
      FixedRow (SecondLineAt case_000532_support case_000532_rank.val hlt case_000532_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000532_secondLine, FixedRow]
  exact ⟨case_000532_rowFirst, case_000532_fixedSecond⟩

private theorem case_000532_existsRows :
    ExistsEqEqPosVarFirstRows case_000532_rank.val case_000532_mask :=
  ⟨case_000532_support, case_000532_sourceAgrees, case_000532_rows⟩

private theorem case_000532_covered :
    RowPropertyParametricCovered case_000532_rank.val case_000532_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000532_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000533_rank : Fin numPairWords := ⟨315, by decide⟩
private def case_000533_mask : SignMask := ⟨13, by decide⟩
private def case_000533_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000533_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000533_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000533_b : Vec3 Rat := { x := (-268/27), y := (172/27), z := (-236/27) }
private def case_000533_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000533_secondLine : StrictLin2 := { a := (-603/2822), b := (-603/2822), c := (-741/1411) }

private theorem case_000533_rankWord :
    rankPairWord? case_000533_word = some case_000533_rank := by
  decide

private theorem case_000533_unrank :
    unrankPairWord case_000533_rank = case_000533_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000533_word case_000533_rank).1
    case_000533_rankWord |>.symm

private theorem case_000533_seqChoice :
    translationChoiceSeq case_000533_word case_000533_mask = case_000533_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000533_seqAtRank :
    translationSeqAtRankMask case_000533_rank case_000533_mask = case_000533_seq := by
  rw [translationSeqAtRankMask, case_000533_unrank]
  exact case_000533_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000533_bAtRank :
    translationBAtRankMask case_000533_rank case_000533_mask = case_000533_b := by
  rw [translationBAtRankMask, case_000533_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000533_b, case_000533_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000533_firstLine_eq :
    case_000533_support.firstLine case_000533_seq case_000533_b = case_000533_firstLine := by
  norm_num [case_000533_firstLine, case_000533_support, case_000533_seq, case_000533_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000533_secondLine_eq :
    case_000533_support.secondLine case_000533_seq case_000533_b = case_000533_secondLine := by
  norm_num [case_000533_secondLine, case_000533_support, case_000533_seq, case_000533_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000533_sourceAgrees :
    SourceAgrees case_000533_support case_000533_rank.val case_000533_mask := by
  intro hlt
  have hrank : (⟨case_000533_rank.val, hlt⟩ : Fin numPairWords) = case_000533_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000533_rank.val, hlt⟩ case_000533_mask =
        case_000533_seq := by
    simpa [hrank] using case_000533_seqAtRank
  simp [SourceChecks, hseq, case_000533_support,
    checkTranslationConstraintSource, case_000533_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000533_rows :
    EqEqPosVarSecondRows case_000533_support case_000533_rank.val case_000533_mask := by
  intro hlt
  have hrank : (⟨case_000533_rank.val, hlt⟩ : Fin numPairWords) = case_000533_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000533_rank.val, hlt⟩ case_000533_mask =
        case_000533_seq := by
    simpa [hrank] using case_000533_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000533_rank.val, hlt⟩ case_000533_mask =
        case_000533_b := by
    simpa [hrank] using case_000533_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000533_support case_000533_rank.val hlt
          case_000533_mask = case_000533_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000533_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000533_support case_000533_rank.val hlt
          case_000533_mask = case_000533_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000533_secondLine_eq]
  have case_000533_fixedFirst :
      FixedRow (FirstLineAt case_000533_support case_000533_rank.val hlt case_000533_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000533_firstLine, FixedRow]
  have case_000533_rowSecond :
      EqEqPosRow (SecondLineAt case_000533_support case_000533_rank.val hlt case_000533_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000533_secondLine, EqEqPosRow]
  exact ⟨case_000533_fixedFirst, case_000533_rowSecond⟩

private theorem case_000533_existsRows :
    ExistsEqEqPosVarSecondRows case_000533_rank.val case_000533_mask :=
  ⟨case_000533_support, case_000533_sourceAgrees, case_000533_rows⟩

private theorem case_000533_covered :
    RowPropertyParametricCovered case_000533_rank.val case_000533_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000533_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000534_rank : Fin numPairWords := ⟨315, by decide⟩
private def case_000534_mask : SignMask := ⟨22, by decide⟩
private def case_000534_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000534_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000534_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000534_b : Vec3 Rat := { x := (-236/27), y := (-172/27), z := (236/27) }
private def case_000534_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000534_secondLine : StrictLin2 := { a := (-531/2150), b := (-531/2150), c := (-1149/1075) }

private theorem case_000534_rankWord :
    rankPairWord? case_000534_word = some case_000534_rank := by
  decide

private theorem case_000534_unrank :
    unrankPairWord case_000534_rank = case_000534_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000534_word case_000534_rank).1
    case_000534_rankWord |>.symm

private theorem case_000534_seqChoice :
    translationChoiceSeq case_000534_word case_000534_mask = case_000534_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000534_seqAtRank :
    translationSeqAtRankMask case_000534_rank case_000534_mask = case_000534_seq := by
  rw [translationSeqAtRankMask, case_000534_unrank]
  exact case_000534_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000534_bAtRank :
    translationBAtRankMask case_000534_rank case_000534_mask = case_000534_b := by
  rw [translationBAtRankMask, case_000534_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000534_b, case_000534_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000534_firstLine_eq :
    case_000534_support.firstLine case_000534_seq case_000534_b = case_000534_firstLine := by
  norm_num [case_000534_firstLine, case_000534_support, case_000534_seq, case_000534_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000534_secondLine_eq :
    case_000534_support.secondLine case_000534_seq case_000534_b = case_000534_secondLine := by
  norm_num [case_000534_secondLine, case_000534_support, case_000534_seq, case_000534_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000534_sourceAgrees :
    SourceAgrees case_000534_support case_000534_rank.val case_000534_mask := by
  intro hlt
  have hrank : (⟨case_000534_rank.val, hlt⟩ : Fin numPairWords) = case_000534_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000534_rank.val, hlt⟩ case_000534_mask =
        case_000534_seq := by
    simpa [hrank] using case_000534_seqAtRank
  simp [SourceChecks, hseq, case_000534_support,
    checkTranslationConstraintSource, case_000534_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000534_rows :
    EqEqPosVarSecondRows case_000534_support case_000534_rank.val case_000534_mask := by
  intro hlt
  have hrank : (⟨case_000534_rank.val, hlt⟩ : Fin numPairWords) = case_000534_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000534_rank.val, hlt⟩ case_000534_mask =
        case_000534_seq := by
    simpa [hrank] using case_000534_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000534_rank.val, hlt⟩ case_000534_mask =
        case_000534_b := by
    simpa [hrank] using case_000534_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000534_support case_000534_rank.val hlt
          case_000534_mask = case_000534_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000534_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000534_support case_000534_rank.val hlt
          case_000534_mask = case_000534_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000534_secondLine_eq]
  have case_000534_fixedFirst :
      FixedRow (FirstLineAt case_000534_support case_000534_rank.val hlt case_000534_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000534_firstLine, FixedRow]
  have case_000534_rowSecond :
      EqEqPosRow (SecondLineAt case_000534_support case_000534_rank.val hlt case_000534_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000534_secondLine, EqEqPosRow]
  exact ⟨case_000534_fixedFirst, case_000534_rowSecond⟩

private theorem case_000534_existsRows :
    ExistsEqEqPosVarSecondRows case_000534_rank.val case_000534_mask :=
  ⟨case_000534_support, case_000534_sourceAgrees, case_000534_rows⟩

private theorem case_000534_covered :
    RowPropertyParametricCovered case_000534_rank.val case_000534_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000534_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000535_rank : Fin numPairWords := ⟨315, by decide⟩
private def case_000535_mask : SignMask := ⟨24, by decide⟩
private def case_000535_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000535_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000535_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000535_b : Vec3 Rat := { x := (-172/27), y := (-428/27), z := (-332/27) }
private def case_000535_firstLine : StrictLin2 := { a := -1, b := -1, c := (-337/43) }
private def case_000535_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000535_rankWord :
    rankPairWord? case_000535_word = some case_000535_rank := by
  decide

private theorem case_000535_unrank :
    unrankPairWord case_000535_rank = case_000535_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000535_word case_000535_rank).1
    case_000535_rankWord |>.symm

private theorem case_000535_seqChoice :
    translationChoiceSeq case_000535_word case_000535_mask = case_000535_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000535_seqAtRank :
    translationSeqAtRankMask case_000535_rank case_000535_mask = case_000535_seq := by
  rw [translationSeqAtRankMask, case_000535_unrank]
  exact case_000535_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000535_bAtRank :
    translationBAtRankMask case_000535_rank case_000535_mask = case_000535_b := by
  rw [translationBAtRankMask, case_000535_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000535_b, case_000535_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000535_firstLine_eq :
    case_000535_support.firstLine case_000535_seq case_000535_b = case_000535_firstLine := by
  norm_num [case_000535_firstLine, case_000535_support, case_000535_seq, case_000535_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000535_secondLine_eq :
    case_000535_support.secondLine case_000535_seq case_000535_b = case_000535_secondLine := by
  norm_num [case_000535_secondLine, case_000535_support, case_000535_seq, case_000535_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000535_sourceAgrees :
    SourceAgrees case_000535_support case_000535_rank.val case_000535_mask := by
  intro hlt
  have hrank : (⟨case_000535_rank.val, hlt⟩ : Fin numPairWords) = case_000535_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000535_rank.val, hlt⟩ case_000535_mask =
        case_000535_seq := by
    simpa [hrank] using case_000535_seqAtRank
  simp [SourceChecks, hseq, case_000535_support,
    checkTranslationConstraintSource, case_000535_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000535_rows :
    EqEqPosVarFirstRows case_000535_support case_000535_rank.val case_000535_mask := by
  intro hlt
  have hrank : (⟨case_000535_rank.val, hlt⟩ : Fin numPairWords) = case_000535_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000535_rank.val, hlt⟩ case_000535_mask =
        case_000535_seq := by
    simpa [hrank] using case_000535_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000535_rank.val, hlt⟩ case_000535_mask =
        case_000535_b := by
    simpa [hrank] using case_000535_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000535_support case_000535_rank.val hlt
          case_000535_mask = case_000535_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000535_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000535_support case_000535_rank.val hlt
          case_000535_mask = case_000535_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000535_secondLine_eq]
  have case_000535_rowFirst :
      EqEqPosRow (FirstLineAt case_000535_support case_000535_rank.val hlt case_000535_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000535_firstLine, EqEqPosRow]
  have case_000535_fixedSecond :
      FixedRow (SecondLineAt case_000535_support case_000535_rank.val hlt case_000535_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000535_secondLine, FixedRow]
  exact ⟨case_000535_rowFirst, case_000535_fixedSecond⟩

private theorem case_000535_existsRows :
    ExistsEqEqPosVarFirstRows case_000535_rank.val case_000535_mask :=
  ⟨case_000535_support, case_000535_sourceAgrees, case_000535_rows⟩

private theorem case_000535_covered :
    RowPropertyParametricCovered case_000535_rank.val case_000535_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000535_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000536_rank : Fin numPairWords := ⟨315, by decide⟩
private def case_000536_mask : SignMask := ⟨30, by decide⟩
private def case_000536_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000536_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000536_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000536_b : Vec3 Rat := { x := (-316/27), y := (-284/27), z := (28/27) }
private def case_000536_firstLine : StrictLin2 := { a := (-79/15), b := (-79/15), c := (-67/3) }
private def case_000536_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000536_rankWord :
    rankPairWord? case_000536_word = some case_000536_rank := by
  decide

private theorem case_000536_unrank :
    unrankPairWord case_000536_rank = case_000536_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000536_word case_000536_rank).1
    case_000536_rankWord |>.symm

private theorem case_000536_seqChoice :
    translationChoiceSeq case_000536_word case_000536_mask = case_000536_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000536_seqAtRank :
    translationSeqAtRankMask case_000536_rank case_000536_mask = case_000536_seq := by
  rw [translationSeqAtRankMask, case_000536_unrank]
  exact case_000536_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000536_bAtRank :
    translationBAtRankMask case_000536_rank case_000536_mask = case_000536_b := by
  rw [translationBAtRankMask, case_000536_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000536_b, case_000536_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000536_firstLine_eq :
    case_000536_support.firstLine case_000536_seq case_000536_b = case_000536_firstLine := by
  norm_num [case_000536_firstLine, case_000536_support, case_000536_seq, case_000536_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000536_secondLine_eq :
    case_000536_support.secondLine case_000536_seq case_000536_b = case_000536_secondLine := by
  norm_num [case_000536_secondLine, case_000536_support, case_000536_seq, case_000536_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000536_sourceAgrees :
    SourceAgrees case_000536_support case_000536_rank.val case_000536_mask := by
  intro hlt
  have hrank : (⟨case_000536_rank.val, hlt⟩ : Fin numPairWords) = case_000536_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000536_rank.val, hlt⟩ case_000536_mask =
        case_000536_seq := by
    simpa [hrank] using case_000536_seqAtRank
  simp [SourceChecks, hseq, case_000536_support,
    checkTranslationConstraintSource, case_000536_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000536_rows :
    EqEqPosVarFirstRows case_000536_support case_000536_rank.val case_000536_mask := by
  intro hlt
  have hrank : (⟨case_000536_rank.val, hlt⟩ : Fin numPairWords) = case_000536_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000536_rank.val, hlt⟩ case_000536_mask =
        case_000536_seq := by
    simpa [hrank] using case_000536_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000536_rank.val, hlt⟩ case_000536_mask =
        case_000536_b := by
    simpa [hrank] using case_000536_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000536_support case_000536_rank.val hlt
          case_000536_mask = case_000536_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000536_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000536_support case_000536_rank.val hlt
          case_000536_mask = case_000536_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000536_secondLine_eq]
  have case_000536_rowFirst :
      EqEqPosRow (FirstLineAt case_000536_support case_000536_rank.val hlt case_000536_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000536_firstLine, EqEqPosRow]
  have case_000536_fixedSecond :
      FixedRow (SecondLineAt case_000536_support case_000536_rank.val hlt case_000536_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000536_secondLine, FixedRow]
  exact ⟨case_000536_rowFirst, case_000536_fixedSecond⟩

private theorem case_000536_existsRows :
    ExistsEqEqPosVarFirstRows case_000536_rank.val case_000536_mask :=
  ⟨case_000536_support, case_000536_sourceAgrees, case_000536_rows⟩

private theorem case_000536_covered :
    RowPropertyParametricCovered case_000536_rank.val case_000536_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000536_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000537_rank : Fin numPairWords := ⟨315, by decide⟩
private def case_000537_mask : SignMask := ⟨39, by decide⟩
private def case_000537_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000537_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000537_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000537_b : Vec3 Rat := { x := (-44/27), y := (428/27), z := (332/27) }
private def case_000537_firstLine : StrictLin2 := { a := 1, b := -1, c := (-37/11) }
private def case_000537_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000537_rankWord :
    rankPairWord? case_000537_word = some case_000537_rank := by
  decide

private theorem case_000537_unrank :
    unrankPairWord case_000537_rank = case_000537_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000537_word case_000537_rank).1
    case_000537_rankWord |>.symm

private theorem case_000537_seqChoice :
    translationChoiceSeq case_000537_word case_000537_mask = case_000537_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000537_seqAtRank :
    translationSeqAtRankMask case_000537_rank case_000537_mask = case_000537_seq := by
  rw [translationSeqAtRankMask, case_000537_unrank]
  exact case_000537_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000537_bAtRank :
    translationBAtRankMask case_000537_rank case_000537_mask = case_000537_b := by
  rw [translationBAtRankMask, case_000537_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000537_b, case_000537_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000537_firstLine_eq :
    case_000537_support.firstLine case_000537_seq case_000537_b = case_000537_firstLine := by
  norm_num [case_000537_firstLine, case_000537_support, case_000537_seq, case_000537_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000537_secondLine_eq :
    case_000537_support.secondLine case_000537_seq case_000537_b = case_000537_secondLine := by
  norm_num [case_000537_secondLine, case_000537_support, case_000537_seq, case_000537_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000537_sourceAgrees :
    SourceAgrees case_000537_support case_000537_rank.val case_000537_mask := by
  intro hlt
  have hrank : (⟨case_000537_rank.val, hlt⟩ : Fin numPairWords) = case_000537_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000537_rank.val, hlt⟩ case_000537_mask =
        case_000537_seq := by
    simpa [hrank] using case_000537_seqAtRank
  simp [SourceChecks, hseq, case_000537_support,
    checkTranslationConstraintSource, case_000537_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000537_rows :
    OppMinusOneVarFirstRows case_000537_support case_000537_rank.val case_000537_mask := by
  intro hlt
  have hrank : (⟨case_000537_rank.val, hlt⟩ : Fin numPairWords) = case_000537_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000537_rank.val, hlt⟩ case_000537_mask =
        case_000537_seq := by
    simpa [hrank] using case_000537_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000537_rank.val, hlt⟩ case_000537_mask =
        case_000537_b := by
    simpa [hrank] using case_000537_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000537_support case_000537_rank.val hlt
          case_000537_mask = case_000537_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000537_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000537_support case_000537_rank.val hlt
          case_000537_mask = case_000537_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000537_secondLine_eq]
  have case_000537_rowFirst :
      OppNegRow (FirstLineAt case_000537_support case_000537_rank.val hlt case_000537_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000537_firstLine, OppNegRow]
  have case_000537_fixedSecond :
      FixedRow (SecondLineAt case_000537_support case_000537_rank.val hlt case_000537_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000537_secondLine, FixedRow]
  exact ⟨case_000537_rowFirst, case_000537_fixedSecond⟩

private theorem case_000537_existsRows :
    ExistsOppMinusOneVarFirstRows case_000537_rank.val case_000537_mask :=
  ⟨case_000537_support, case_000537_sourceAgrees, case_000537_rows⟩

private theorem case_000537_covered :
    RowPropertyParametricCovered case_000537_rank.val case_000537_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000537_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000538_rank : Fin numPairWords := ⟨315, by decide⟩
private def case_000538_mask : SignMask := ⟨54, by decide⟩
private def case_000538_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000538_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000538_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000538_b : Vec3 Rat := { x := (-92/27), y := (-28/27), z := (380/27) }
private def case_000538_firstLine : StrictLin2 := { a := -1, b := 1, c := (-181/23) }
private def case_000538_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000538_rankWord :
    rankPairWord? case_000538_word = some case_000538_rank := by
  decide

private theorem case_000538_unrank :
    unrankPairWord case_000538_rank = case_000538_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000538_word case_000538_rank).1
    case_000538_rankWord |>.symm

private theorem case_000538_seqChoice :
    translationChoiceSeq case_000538_word case_000538_mask = case_000538_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000538_seqAtRank :
    translationSeqAtRankMask case_000538_rank case_000538_mask = case_000538_seq := by
  rw [translationSeqAtRankMask, case_000538_unrank]
  exact case_000538_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000538_bAtRank :
    translationBAtRankMask case_000538_rank case_000538_mask = case_000538_b := by
  rw [translationBAtRankMask, case_000538_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000538_b, case_000538_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000538_firstLine_eq :
    case_000538_support.firstLine case_000538_seq case_000538_b = case_000538_firstLine := by
  norm_num [case_000538_firstLine, case_000538_support, case_000538_seq, case_000538_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000538_secondLine_eq :
    case_000538_support.secondLine case_000538_seq case_000538_b = case_000538_secondLine := by
  norm_num [case_000538_secondLine, case_000538_support, case_000538_seq, case_000538_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000538_sourceAgrees :
    SourceAgrees case_000538_support case_000538_rank.val case_000538_mask := by
  intro hlt
  have hrank : (⟨case_000538_rank.val, hlt⟩ : Fin numPairWords) = case_000538_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000538_rank.val, hlt⟩ case_000538_mask =
        case_000538_seq := by
    simpa [hrank] using case_000538_seqAtRank
  simp [SourceChecks, hseq, case_000538_support,
    checkTranslationConstraintSource, case_000538_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000538_rows :
    OppOneMinusVarFirstRows case_000538_support case_000538_rank.val case_000538_mask := by
  intro hlt
  have hrank : (⟨case_000538_rank.val, hlt⟩ : Fin numPairWords) = case_000538_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000538_rank.val, hlt⟩ case_000538_mask =
        case_000538_seq := by
    simpa [hrank] using case_000538_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000538_rank.val, hlt⟩ case_000538_mask =
        case_000538_b := by
    simpa [hrank] using case_000538_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000538_support case_000538_rank.val hlt
          case_000538_mask = case_000538_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000538_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000538_support case_000538_rank.val hlt
          case_000538_mask = case_000538_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000538_secondLine_eq]
  have case_000538_rowFirst :
      OppPosRow (FirstLineAt case_000538_support case_000538_rank.val hlt case_000538_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000538_firstLine, OppPosRow]
  have case_000538_fixedSecond :
      FixedRow (SecondLineAt case_000538_support case_000538_rank.val hlt case_000538_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000538_secondLine, FixedRow]
  exact ⟨case_000538_rowFirst, case_000538_fixedSecond⟩

private theorem case_000538_existsRows :
    ExistsOppOneMinusVarFirstRows case_000538_rank.val case_000538_mask :=
  ⟨case_000538_support, case_000538_sourceAgrees, case_000538_rows⟩

private theorem case_000538_covered :
    RowPropertyParametricCovered case_000538_rank.val case_000538_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000538_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000539_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000539_mask : SignMask := ⟨7, by decide⟩
private def case_000539_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000539_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000539_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000539_b : Vec3 Rat := { x := (-236/27), y := (332/27), z := (236/27) }
private def case_000539_firstLine : StrictLin2 := { a := (-59/51), b := (-59/51), c := (-709/51) }
private def case_000539_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000539_rankWord :
    rankPairWord? case_000539_word = some case_000539_rank := by
  decide

private theorem case_000539_unrank :
    unrankPairWord case_000539_rank = case_000539_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000539_word case_000539_rank).1
    case_000539_rankWord |>.symm

private theorem case_000539_seqChoice :
    translationChoiceSeq case_000539_word case_000539_mask = case_000539_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000539_seqAtRank :
    translationSeqAtRankMask case_000539_rank case_000539_mask = case_000539_seq := by
  rw [translationSeqAtRankMask, case_000539_unrank]
  exact case_000539_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000539_bAtRank :
    translationBAtRankMask case_000539_rank case_000539_mask = case_000539_b := by
  rw [translationBAtRankMask, case_000539_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000539_b, case_000539_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000539_firstLine_eq :
    case_000539_support.firstLine case_000539_seq case_000539_b = case_000539_firstLine := by
  norm_num [case_000539_firstLine, case_000539_support, case_000539_seq, case_000539_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000539_secondLine_eq :
    case_000539_support.secondLine case_000539_seq case_000539_b = case_000539_secondLine := by
  norm_num [case_000539_secondLine, case_000539_support, case_000539_seq, case_000539_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000539_sourceAgrees :
    SourceAgrees case_000539_support case_000539_rank.val case_000539_mask := by
  intro hlt
  have hrank : (⟨case_000539_rank.val, hlt⟩ : Fin numPairWords) = case_000539_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000539_rank.val, hlt⟩ case_000539_mask =
        case_000539_seq := by
    simpa [hrank] using case_000539_seqAtRank
  simp [SourceChecks, hseq, case_000539_support,
    checkTranslationConstraintSource, case_000539_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000539_rows :
    EqEqPosVarFirstRows case_000539_support case_000539_rank.val case_000539_mask := by
  intro hlt
  have hrank : (⟨case_000539_rank.val, hlt⟩ : Fin numPairWords) = case_000539_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000539_rank.val, hlt⟩ case_000539_mask =
        case_000539_seq := by
    simpa [hrank] using case_000539_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000539_rank.val, hlt⟩ case_000539_mask =
        case_000539_b := by
    simpa [hrank] using case_000539_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000539_support case_000539_rank.val hlt
          case_000539_mask = case_000539_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000539_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000539_support case_000539_rank.val hlt
          case_000539_mask = case_000539_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000539_secondLine_eq]
  have case_000539_rowFirst :
      EqEqPosRow (FirstLineAt case_000539_support case_000539_rank.val hlt case_000539_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000539_firstLine, EqEqPosRow]
  have case_000539_fixedSecond :
      FixedRow (SecondLineAt case_000539_support case_000539_rank.val hlt case_000539_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000539_secondLine, FixedRow]
  exact ⟨case_000539_rowFirst, case_000539_fixedSecond⟩

private theorem case_000539_existsRows :
    ExistsEqEqPosVarFirstRows case_000539_rank.val case_000539_mask :=
  ⟨case_000539_support, case_000539_sourceAgrees, case_000539_rows⟩

private theorem case_000539_covered :
    RowPropertyParametricCovered case_000539_rank.val case_000539_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000539_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000540_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000540_mask : SignMask := ⟨9, by decide⟩
private def case_000540_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000540_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000540_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000540_b : Vec3 Rat := { x := (-172/27), y := (76/27), z := (-332/27) }
private def case_000540_firstLine : StrictLin2 := { a := -1, b := -1, c := (-85/43) }
private def case_000540_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000540_rankWord :
    rankPairWord? case_000540_word = some case_000540_rank := by
  decide

private theorem case_000540_unrank :
    unrankPairWord case_000540_rank = case_000540_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000540_word case_000540_rank).1
    case_000540_rankWord |>.symm

private theorem case_000540_seqChoice :
    translationChoiceSeq case_000540_word case_000540_mask = case_000540_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000540_seqAtRank :
    translationSeqAtRankMask case_000540_rank case_000540_mask = case_000540_seq := by
  rw [translationSeqAtRankMask, case_000540_unrank]
  exact case_000540_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000540_bAtRank :
    translationBAtRankMask case_000540_rank case_000540_mask = case_000540_b := by
  rw [translationBAtRankMask, case_000540_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000540_b, case_000540_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000540_firstLine_eq :
    case_000540_support.firstLine case_000540_seq case_000540_b = case_000540_firstLine := by
  norm_num [case_000540_firstLine, case_000540_support, case_000540_seq, case_000540_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000540_secondLine_eq :
    case_000540_support.secondLine case_000540_seq case_000540_b = case_000540_secondLine := by
  norm_num [case_000540_secondLine, case_000540_support, case_000540_seq, case_000540_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000540_sourceAgrees :
    SourceAgrees case_000540_support case_000540_rank.val case_000540_mask := by
  intro hlt
  have hrank : (⟨case_000540_rank.val, hlt⟩ : Fin numPairWords) = case_000540_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000540_rank.val, hlt⟩ case_000540_mask =
        case_000540_seq := by
    simpa [hrank] using case_000540_seqAtRank
  simp [SourceChecks, hseq, case_000540_support,
    checkTranslationConstraintSource, case_000540_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000540_rows :
    EqEqPosVarFirstRows case_000540_support case_000540_rank.val case_000540_mask := by
  intro hlt
  have hrank : (⟨case_000540_rank.val, hlt⟩ : Fin numPairWords) = case_000540_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000540_rank.val, hlt⟩ case_000540_mask =
        case_000540_seq := by
    simpa [hrank] using case_000540_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000540_rank.val, hlt⟩ case_000540_mask =
        case_000540_b := by
    simpa [hrank] using case_000540_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000540_support case_000540_rank.val hlt
          case_000540_mask = case_000540_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000540_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000540_support case_000540_rank.val hlt
          case_000540_mask = case_000540_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000540_secondLine_eq]
  have case_000540_rowFirst :
      EqEqPosRow (FirstLineAt case_000540_support case_000540_rank.val hlt case_000540_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000540_firstLine, EqEqPosRow]
  have case_000540_fixedSecond :
      FixedRow (SecondLineAt case_000540_support case_000540_rank.val hlt case_000540_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000540_secondLine, FixedRow]
  exact ⟨case_000540_rowFirst, case_000540_fixedSecond⟩

private theorem case_000540_existsRows :
    ExistsEqEqPosVarFirstRows case_000540_rank.val case_000540_mask :=
  ⟨case_000540_support, case_000540_sourceAgrees, case_000540_rows⟩

private theorem case_000540_covered :
    RowPropertyParametricCovered case_000540_rank.val case_000540_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000540_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000541_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000541_mask : SignMask := ⟨13, by decide⟩
private def case_000541_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000541_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000541_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000541_b : Vec3 Rat := { x := (-316/27), y := (220/27), z := (-188/27) }
private def case_000541_firstLine : StrictLin2 := { a := 1, b := -1, c := (-125/79) }
private def case_000541_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000541_rankWord :
    rankPairWord? case_000541_word = some case_000541_rank := by
  decide

private theorem case_000541_unrank :
    unrankPairWord case_000541_rank = case_000541_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000541_word case_000541_rank).1
    case_000541_rankWord |>.symm

private theorem case_000541_seqChoice :
    translationChoiceSeq case_000541_word case_000541_mask = case_000541_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000541_seqAtRank :
    translationSeqAtRankMask case_000541_rank case_000541_mask = case_000541_seq := by
  rw [translationSeqAtRankMask, case_000541_unrank]
  exact case_000541_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000541_bAtRank :
    translationBAtRankMask case_000541_rank case_000541_mask = case_000541_b := by
  rw [translationBAtRankMask, case_000541_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000541_b, case_000541_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000541_firstLine_eq :
    case_000541_support.firstLine case_000541_seq case_000541_b = case_000541_firstLine := by
  norm_num [case_000541_firstLine, case_000541_support, case_000541_seq, case_000541_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000541_secondLine_eq :
    case_000541_support.secondLine case_000541_seq case_000541_b = case_000541_secondLine := by
  norm_num [case_000541_secondLine, case_000541_support, case_000541_seq, case_000541_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000541_sourceAgrees :
    SourceAgrees case_000541_support case_000541_rank.val case_000541_mask := by
  intro hlt
  have hrank : (⟨case_000541_rank.val, hlt⟩ : Fin numPairWords) = case_000541_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000541_rank.val, hlt⟩ case_000541_mask =
        case_000541_seq := by
    simpa [hrank] using case_000541_seqAtRank
  simp [SourceChecks, hseq, case_000541_support,
    checkTranslationConstraintSource, case_000541_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000541_rows :
    OppMinusOneVarFirstRows case_000541_support case_000541_rank.val case_000541_mask := by
  intro hlt
  have hrank : (⟨case_000541_rank.val, hlt⟩ : Fin numPairWords) = case_000541_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000541_rank.val, hlt⟩ case_000541_mask =
        case_000541_seq := by
    simpa [hrank] using case_000541_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000541_rank.val, hlt⟩ case_000541_mask =
        case_000541_b := by
    simpa [hrank] using case_000541_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000541_support case_000541_rank.val hlt
          case_000541_mask = case_000541_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000541_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000541_support case_000541_rank.val hlt
          case_000541_mask = case_000541_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000541_secondLine_eq]
  have case_000541_rowFirst :
      OppNegRow (FirstLineAt case_000541_support case_000541_rank.val hlt case_000541_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000541_firstLine, OppNegRow]
  have case_000541_fixedSecond :
      FixedRow (SecondLineAt case_000541_support case_000541_rank.val hlt case_000541_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000541_secondLine, FixedRow]
  exact ⟨case_000541_rowFirst, case_000541_fixedSecond⟩

private theorem case_000541_existsRows :
    ExistsOppMinusOneVarFirstRows case_000541_rank.val case_000541_mask :=
  ⟨case_000541_support, case_000541_sourceAgrees, case_000541_rows⟩

private theorem case_000541_covered :
    RowPropertyParametricCovered case_000541_rank.val case_000541_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000541_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000542_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000542_mask : SignMask := ⟨22, by decide⟩
private def case_000542_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000542_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000542_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000542_b : Vec3 Rat := { x := (-284/27), y := (-124/27), z := (284/27) }
private def case_000542_firstLine : StrictLin2 := { a := (-71/105), b := (-71/105), c := (-97/105) }
private def case_000542_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000542_rankWord :
    rankPairWord? case_000542_word = some case_000542_rank := by
  decide

private theorem case_000542_unrank :
    unrankPairWord case_000542_rank = case_000542_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000542_word case_000542_rank).1
    case_000542_rankWord |>.symm

private theorem case_000542_seqChoice :
    translationChoiceSeq case_000542_word case_000542_mask = case_000542_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000542_seqAtRank :
    translationSeqAtRankMask case_000542_rank case_000542_mask = case_000542_seq := by
  rw [translationSeqAtRankMask, case_000542_unrank]
  exact case_000542_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000542_bAtRank :
    translationBAtRankMask case_000542_rank case_000542_mask = case_000542_b := by
  rw [translationBAtRankMask, case_000542_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000542_b, case_000542_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000542_firstLine_eq :
    case_000542_support.firstLine case_000542_seq case_000542_b = case_000542_firstLine := by
  norm_num [case_000542_firstLine, case_000542_support, case_000542_seq, case_000542_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000542_secondLine_eq :
    case_000542_support.secondLine case_000542_seq case_000542_b = case_000542_secondLine := by
  norm_num [case_000542_secondLine, case_000542_support, case_000542_seq, case_000542_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000542_sourceAgrees :
    SourceAgrees case_000542_support case_000542_rank.val case_000542_mask := by
  intro hlt
  have hrank : (⟨case_000542_rank.val, hlt⟩ : Fin numPairWords) = case_000542_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000542_rank.val, hlt⟩ case_000542_mask =
        case_000542_seq := by
    simpa [hrank] using case_000542_seqAtRank
  simp [SourceChecks, hseq, case_000542_support,
    checkTranslationConstraintSource, case_000542_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000542_rows :
    EqEqPosVarFirstRows case_000542_support case_000542_rank.val case_000542_mask := by
  intro hlt
  have hrank : (⟨case_000542_rank.val, hlt⟩ : Fin numPairWords) = case_000542_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000542_rank.val, hlt⟩ case_000542_mask =
        case_000542_seq := by
    simpa [hrank] using case_000542_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000542_rank.val, hlt⟩ case_000542_mask =
        case_000542_b := by
    simpa [hrank] using case_000542_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000542_support case_000542_rank.val hlt
          case_000542_mask = case_000542_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000542_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000542_support case_000542_rank.val hlt
          case_000542_mask = case_000542_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000542_secondLine_eq]
  have case_000542_rowFirst :
      EqEqPosRow (FirstLineAt case_000542_support case_000542_rank.val hlt case_000542_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000542_firstLine, EqEqPosRow]
  have case_000542_fixedSecond :
      FixedRow (SecondLineAt case_000542_support case_000542_rank.val hlt case_000542_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000542_secondLine, FixedRow]
  exact ⟨case_000542_rowFirst, case_000542_fixedSecond⟩

private theorem case_000542_existsRows :
    ExistsEqEqPosVarFirstRows case_000542_rank.val case_000542_mask :=
  ⟨case_000542_support, case_000542_sourceAgrees, case_000542_rows⟩

private theorem case_000542_covered :
    RowPropertyParametricCovered case_000542_rank.val case_000542_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000542_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000543_rank : Fin numPairWords := ⟨317, by decide⟩
private def case_000543_mask : SignMask := ⟨23, by decide⟩
private def case_000543_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000543_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000543_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000543_b : Vec3 Rat := { x := (-284/27), y := (92/27), z := (284/27) }
private def case_000543_firstLine : StrictLin2 := { a := (-71/165), b := (-71/165), c := (-263/165) }
private def case_000543_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000543_rankWord :
    rankPairWord? case_000543_word = some case_000543_rank := by
  decide

private theorem case_000543_unrank :
    unrankPairWord case_000543_rank = case_000543_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000543_word case_000543_rank).1
    case_000543_rankWord |>.symm

private theorem case_000543_seqChoice :
    translationChoiceSeq case_000543_word case_000543_mask = case_000543_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000543_seqAtRank :
    translationSeqAtRankMask case_000543_rank case_000543_mask = case_000543_seq := by
  rw [translationSeqAtRankMask, case_000543_unrank]
  exact case_000543_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000543_bAtRank :
    translationBAtRankMask case_000543_rank case_000543_mask = case_000543_b := by
  rw [translationBAtRankMask, case_000543_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000543_b, case_000543_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000543_firstLine_eq :
    case_000543_support.firstLine case_000543_seq case_000543_b = case_000543_firstLine := by
  norm_num [case_000543_firstLine, case_000543_support, case_000543_seq, case_000543_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000543_secondLine_eq :
    case_000543_support.secondLine case_000543_seq case_000543_b = case_000543_secondLine := by
  norm_num [case_000543_secondLine, case_000543_support, case_000543_seq, case_000543_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000543_sourceAgrees :
    SourceAgrees case_000543_support case_000543_rank.val case_000543_mask := by
  intro hlt
  have hrank : (⟨case_000543_rank.val, hlt⟩ : Fin numPairWords) = case_000543_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000543_rank.val, hlt⟩ case_000543_mask =
        case_000543_seq := by
    simpa [hrank] using case_000543_seqAtRank
  simp [SourceChecks, hseq, case_000543_support,
    checkTranslationConstraintSource, case_000543_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000543_rows :
    EqEqPosVarFirstRows case_000543_support case_000543_rank.val case_000543_mask := by
  intro hlt
  have hrank : (⟨case_000543_rank.val, hlt⟩ : Fin numPairWords) = case_000543_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000543_rank.val, hlt⟩ case_000543_mask =
        case_000543_seq := by
    simpa [hrank] using case_000543_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000543_rank.val, hlt⟩ case_000543_mask =
        case_000543_b := by
    simpa [hrank] using case_000543_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000543_support case_000543_rank.val hlt
          case_000543_mask = case_000543_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000543_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000543_support case_000543_rank.val hlt
          case_000543_mask = case_000543_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000543_secondLine_eq]
  have case_000543_rowFirst :
      EqEqPosRow (FirstLineAt case_000543_support case_000543_rank.val hlt case_000543_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000543_firstLine, EqEqPosRow]
  have case_000543_fixedSecond :
      FixedRow (SecondLineAt case_000543_support case_000543_rank.val hlt case_000543_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000543_secondLine, FixedRow]
  exact ⟨case_000543_rowFirst, case_000543_fixedSecond⟩

private theorem case_000543_existsRows :
    ExistsEqEqPosVarFirstRows case_000543_rank.val case_000543_mask :=
  ⟨case_000543_support, case_000543_sourceAgrees, case_000543_rows⟩

private theorem case_000543_covered :
    RowPropertyParametricCovered case_000543_rank.val case_000543_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000543_existsRows

inductive Group016Covered : Nat -> SignMask -> Prop
  | case_000512 : Group016Covered case_000512_rank.val case_000512_mask
  | case_000513 : Group016Covered case_000513_rank.val case_000513_mask
  | case_000514 : Group016Covered case_000514_rank.val case_000514_mask
  | case_000515 : Group016Covered case_000515_rank.val case_000515_mask
  | case_000516 : Group016Covered case_000516_rank.val case_000516_mask
  | case_000517 : Group016Covered case_000517_rank.val case_000517_mask
  | case_000518 : Group016Covered case_000518_rank.val case_000518_mask
  | case_000519 : Group016Covered case_000519_rank.val case_000519_mask
  | case_000520 : Group016Covered case_000520_rank.val case_000520_mask
  | case_000521 : Group016Covered case_000521_rank.val case_000521_mask
  | case_000522 : Group016Covered case_000522_rank.val case_000522_mask
  | case_000523 : Group016Covered case_000523_rank.val case_000523_mask
  | case_000524 : Group016Covered case_000524_rank.val case_000524_mask
  | case_000525 : Group016Covered case_000525_rank.val case_000525_mask
  | case_000526 : Group016Covered case_000526_rank.val case_000526_mask
  | case_000527 : Group016Covered case_000527_rank.val case_000527_mask
  | case_000528 : Group016Covered case_000528_rank.val case_000528_mask
  | case_000529 : Group016Covered case_000529_rank.val case_000529_mask
  | case_000530 : Group016Covered case_000530_rank.val case_000530_mask
  | case_000531 : Group016Covered case_000531_rank.val case_000531_mask
  | case_000532 : Group016Covered case_000532_rank.val case_000532_mask
  | case_000533 : Group016Covered case_000533_rank.val case_000533_mask
  | case_000534 : Group016Covered case_000534_rank.val case_000534_mask
  | case_000535 : Group016Covered case_000535_rank.val case_000535_mask
  | case_000536 : Group016Covered case_000536_rank.val case_000536_mask
  | case_000537 : Group016Covered case_000537_rank.val case_000537_mask
  | case_000538 : Group016Covered case_000538_rank.val case_000538_mask
  | case_000539 : Group016Covered case_000539_rank.val case_000539_mask
  | case_000540 : Group016Covered case_000540_rank.val case_000540_mask
  | case_000541 : Group016Covered case_000541_rank.val case_000541_mask
  | case_000542 : Group016Covered case_000542_rank.val case_000542_mask
  | case_000543 : Group016Covered case_000543_rank.val case_000543_mask

theorem Group016GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group016Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000512 =>
      exact RowPropertyParametricCovered.kills case_000512_covered
  | case_000513 =>
      exact RowPropertyParametricCovered.kills case_000513_covered
  | case_000514 =>
      exact RowPropertyParametricCovered.kills case_000514_covered
  | case_000515 =>
      exact RowPropertyParametricCovered.kills case_000515_covered
  | case_000516 =>
      exact RowPropertyParametricCovered.kills case_000516_covered
  | case_000517 =>
      exact RowPropertyParametricCovered.kills case_000517_covered
  | case_000518 =>
      exact RowPropertyParametricCovered.kills case_000518_covered
  | case_000519 =>
      exact RowPropertyParametricCovered.kills case_000519_covered
  | case_000520 =>
      exact RowPropertyParametricCovered.kills case_000520_covered
  | case_000521 =>
      exact RowPropertyParametricCovered.kills case_000521_covered
  | case_000522 =>
      exact RowPropertyParametricCovered.kills case_000522_covered
  | case_000523 =>
      exact RowPropertyParametricCovered.kills case_000523_covered
  | case_000524 =>
      exact RowPropertyParametricCovered.kills case_000524_covered
  | case_000525 =>
      exact RowPropertyParametricCovered.kills case_000525_covered
  | case_000526 =>
      exact RowPropertyParametricCovered.kills case_000526_covered
  | case_000527 =>
      exact RowPropertyParametricCovered.kills case_000527_covered
  | case_000528 =>
      exact RowPropertyParametricCovered.kills case_000528_covered
  | case_000529 =>
      exact RowPropertyParametricCovered.kills case_000529_covered
  | case_000530 =>
      exact RowPropertyParametricCovered.kills case_000530_covered
  | case_000531 =>
      exact RowPropertyParametricCovered.kills case_000531_covered
  | case_000532 =>
      exact RowPropertyParametricCovered.kills case_000532_covered
  | case_000533 =>
      exact RowPropertyParametricCovered.kills case_000533_covered
  | case_000534 =>
      exact RowPropertyParametricCovered.kills case_000534_covered
  | case_000535 =>
      exact RowPropertyParametricCovered.kills case_000535_covered
  | case_000536 =>
      exact RowPropertyParametricCovered.kills case_000536_covered
  | case_000537 =>
      exact RowPropertyParametricCovered.kills case_000537_covered
  | case_000538 =>
      exact RowPropertyParametricCovered.kills case_000538_covered
  | case_000539 =>
      exact RowPropertyParametricCovered.kills case_000539_covered
  | case_000540 =>
      exact RowPropertyParametricCovered.kills case_000540_covered
  | case_000541 =>
      exact RowPropertyParametricCovered.kills case_000541_covered
  | case_000542 =>
      exact RowPropertyParametricCovered.kills case_000542_covered
  | case_000543 =>
      exact RowPropertyParametricCovered.kills case_000543_covered

theorem Group016_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group016
