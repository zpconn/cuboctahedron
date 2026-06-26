import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group008

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
private def case_000256_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000256_mask : SignMask := ⟨22, by decide⟩
private def case_000256_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000256_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000256_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000256_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (68/9) }
private def case_000256_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000256_secondLine : StrictLin2 := { a := (-75/374), b := (-75/374), c := (-193/187) }

private theorem case_000256_rankWord :
    rankPairWord? case_000256_word = some case_000256_rank := by
  decide

private theorem case_000256_unrank :
    unrankPairWord case_000256_rank = case_000256_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000256_word case_000256_rank).1
    case_000256_rankWord |>.symm

private theorem case_000256_seqChoice :
    translationChoiceSeq case_000256_word case_000256_mask = case_000256_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000256_seqAtRank :
    translationSeqAtRankMask case_000256_rank case_000256_mask = case_000256_seq := by
  rw [translationSeqAtRankMask, case_000256_unrank]
  exact case_000256_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000256_bAtRank :
    translationBAtRankMask case_000256_rank case_000256_mask = case_000256_b := by
  rw [translationBAtRankMask, case_000256_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000256_b, case_000256_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000256_firstLine_eq :
    case_000256_support.firstLine case_000256_seq case_000256_b = case_000256_firstLine := by
  norm_num [case_000256_firstLine, case_000256_support, case_000256_seq, case_000256_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000256_secondLine_eq :
    case_000256_support.secondLine case_000256_seq case_000256_b = case_000256_secondLine := by
  norm_num [case_000256_secondLine, case_000256_support, case_000256_seq, case_000256_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000256_sourceAgrees :
    SourceAgrees case_000256_support case_000256_rank.val case_000256_mask := by
  intro hlt
  have hrank : (⟨case_000256_rank.val, hlt⟩ : Fin numPairWords) = case_000256_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000256_rank.val, hlt⟩ case_000256_mask =
        case_000256_seq := by
    simpa [hrank] using case_000256_seqAtRank
  simp [SourceChecks, hseq, case_000256_support,
    checkTranslationConstraintSource, case_000256_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000256_rows :
    EqEqPosVarSecondRows case_000256_support case_000256_rank.val case_000256_mask := by
  intro hlt
  have hrank : (⟨case_000256_rank.val, hlt⟩ : Fin numPairWords) = case_000256_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000256_rank.val, hlt⟩ case_000256_mask =
        case_000256_seq := by
    simpa [hrank] using case_000256_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000256_rank.val, hlt⟩ case_000256_mask =
        case_000256_b := by
    simpa [hrank] using case_000256_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000256_support case_000256_rank.val hlt
          case_000256_mask = case_000256_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000256_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000256_support case_000256_rank.val hlt
          case_000256_mask = case_000256_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000256_secondLine_eq]
  have case_000256_fixedFirst :
      FixedRow (FirstLineAt case_000256_support case_000256_rank.val hlt case_000256_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000256_firstLine, FixedRow]
  have case_000256_rowSecond :
      EqEqPosRow (SecondLineAt case_000256_support case_000256_rank.val hlt case_000256_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000256_secondLine, EqEqPosRow]
  exact ⟨case_000256_fixedFirst, case_000256_rowSecond⟩

private theorem case_000256_existsRows :
    ExistsEqEqPosVarSecondRows case_000256_rank.val case_000256_mask :=
  ⟨case_000256_support, case_000256_sourceAgrees, case_000256_rows⟩

private theorem case_000256_covered :
    RowPropertyParametricCovered case_000256_rank.val case_000256_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000256_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000257_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000257_mask : SignMask := ⟨28, by decide⟩
private def case_000257_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000257_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000257_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000257_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_000257_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000257_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000257_rankWord :
    rankPairWord? case_000257_word = some case_000257_rank := by
  decide

private theorem case_000257_unrank :
    unrankPairWord case_000257_rank = case_000257_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000257_word case_000257_rank).1
    case_000257_rankWord |>.symm

private theorem case_000257_seqChoice :
    translationChoiceSeq case_000257_word case_000257_mask = case_000257_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000257_seqAtRank :
    translationSeqAtRankMask case_000257_rank case_000257_mask = case_000257_seq := by
  rw [translationSeqAtRankMask, case_000257_unrank]
  exact case_000257_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000257_bAtRank :
    translationBAtRankMask case_000257_rank case_000257_mask = case_000257_b := by
  rw [translationBAtRankMask, case_000257_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000257_b, case_000257_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000257_firstLine_eq :
    case_000257_support.firstLine case_000257_seq case_000257_b = case_000257_firstLine := by
  norm_num [case_000257_firstLine, case_000257_support, case_000257_seq, case_000257_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000257_secondLine_eq :
    case_000257_support.secondLine case_000257_seq case_000257_b = case_000257_secondLine := by
  norm_num [case_000257_secondLine, case_000257_support, case_000257_seq, case_000257_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000257_sourceAgrees :
    SourceAgrees case_000257_support case_000257_rank.val case_000257_mask := by
  intro hlt
  have hrank : (⟨case_000257_rank.val, hlt⟩ : Fin numPairWords) = case_000257_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000257_rank.val, hlt⟩ case_000257_mask =
        case_000257_seq := by
    simpa [hrank] using case_000257_seqAtRank
  simp [SourceChecks, hseq, case_000257_support,
    checkTranslationConstraintSource, case_000257_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000257_rows :
    OppOneMinusVarFirstRows case_000257_support case_000257_rank.val case_000257_mask := by
  intro hlt
  have hrank : (⟨case_000257_rank.val, hlt⟩ : Fin numPairWords) = case_000257_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000257_rank.val, hlt⟩ case_000257_mask =
        case_000257_seq := by
    simpa [hrank] using case_000257_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000257_rank.val, hlt⟩ case_000257_mask =
        case_000257_b := by
    simpa [hrank] using case_000257_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000257_support case_000257_rank.val hlt
          case_000257_mask = case_000257_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000257_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000257_support case_000257_rank.val hlt
          case_000257_mask = case_000257_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000257_secondLine_eq]
  have case_000257_rowFirst :
      OppPosRow (FirstLineAt case_000257_support case_000257_rank.val hlt case_000257_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000257_firstLine, OppPosRow]
  have case_000257_fixedSecond :
      FixedRow (SecondLineAt case_000257_support case_000257_rank.val hlt case_000257_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000257_secondLine, FixedRow]
  exact ⟨case_000257_rowFirst, case_000257_fixedSecond⟩

private theorem case_000257_existsRows :
    ExistsOppOneMinusVarFirstRows case_000257_rank.val case_000257_mask :=
  ⟨case_000257_support, case_000257_sourceAgrees, case_000257_rows⟩

private theorem case_000257_covered :
    RowPropertyParametricCovered case_000257_rank.val case_000257_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000257_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000258_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000258_mask : SignMask := ⟨29, by decide⟩
private def case_000258_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000258_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000258_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000258_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-20/9) }
private def case_000258_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000258_secondLine : StrictLin2 := { a := (-87/518), b := (-87/518), c := (-11/37) }

private theorem case_000258_rankWord :
    rankPairWord? case_000258_word = some case_000258_rank := by
  decide

private theorem case_000258_unrank :
    unrankPairWord case_000258_rank = case_000258_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000258_word case_000258_rank).1
    case_000258_rankWord |>.symm

private theorem case_000258_seqChoice :
    translationChoiceSeq case_000258_word case_000258_mask = case_000258_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000258_seqAtRank :
    translationSeqAtRankMask case_000258_rank case_000258_mask = case_000258_seq := by
  rw [translationSeqAtRankMask, case_000258_unrank]
  exact case_000258_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000258_bAtRank :
    translationBAtRankMask case_000258_rank case_000258_mask = case_000258_b := by
  rw [translationBAtRankMask, case_000258_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000258_b, case_000258_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000258_firstLine_eq :
    case_000258_support.firstLine case_000258_seq case_000258_b = case_000258_firstLine := by
  norm_num [case_000258_firstLine, case_000258_support, case_000258_seq, case_000258_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000258_secondLine_eq :
    case_000258_support.secondLine case_000258_seq case_000258_b = case_000258_secondLine := by
  norm_num [case_000258_secondLine, case_000258_support, case_000258_seq, case_000258_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000258_sourceAgrees :
    SourceAgrees case_000258_support case_000258_rank.val case_000258_mask := by
  intro hlt
  have hrank : (⟨case_000258_rank.val, hlt⟩ : Fin numPairWords) = case_000258_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000258_rank.val, hlt⟩ case_000258_mask =
        case_000258_seq := by
    simpa [hrank] using case_000258_seqAtRank
  simp [SourceChecks, hseq, case_000258_support,
    checkTranslationConstraintSource, case_000258_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000258_rows :
    EqEqPosVarSecondRows case_000258_support case_000258_rank.val case_000258_mask := by
  intro hlt
  have hrank : (⟨case_000258_rank.val, hlt⟩ : Fin numPairWords) = case_000258_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000258_rank.val, hlt⟩ case_000258_mask =
        case_000258_seq := by
    simpa [hrank] using case_000258_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000258_rank.val, hlt⟩ case_000258_mask =
        case_000258_b := by
    simpa [hrank] using case_000258_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000258_support case_000258_rank.val hlt
          case_000258_mask = case_000258_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000258_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000258_support case_000258_rank.val hlt
          case_000258_mask = case_000258_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000258_secondLine_eq]
  have case_000258_fixedFirst :
      FixedRow (FirstLineAt case_000258_support case_000258_rank.val hlt case_000258_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000258_firstLine, FixedRow]
  have case_000258_rowSecond :
      EqEqPosRow (SecondLineAt case_000258_support case_000258_rank.val hlt case_000258_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000258_secondLine, EqEqPosRow]
  exact ⟨case_000258_fixedFirst, case_000258_rowSecond⟩

private theorem case_000258_existsRows :
    ExistsEqEqPosVarSecondRows case_000258_rank.val case_000258_mask :=
  ⟨case_000258_support, case_000258_sourceAgrees, case_000258_rows⟩

private theorem case_000258_covered :
    RowPropertyParametricCovered case_000258_rank.val case_000258_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000258_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000259_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000259_mask : SignMask := ⟨31, by decide⟩
private def case_000259_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000259_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000259_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000259_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_000259_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000259_secondLine : StrictLin2 := { a := (-87/110), b := (-87/110), c := (-272/55) }

private theorem case_000259_rankWord :
    rankPairWord? case_000259_word = some case_000259_rank := by
  decide

private theorem case_000259_unrank :
    unrankPairWord case_000259_rank = case_000259_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000259_word case_000259_rank).1
    case_000259_rankWord |>.symm

private theorem case_000259_seqChoice :
    translationChoiceSeq case_000259_word case_000259_mask = case_000259_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000259_seqAtRank :
    translationSeqAtRankMask case_000259_rank case_000259_mask = case_000259_seq := by
  rw [translationSeqAtRankMask, case_000259_unrank]
  exact case_000259_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000259_bAtRank :
    translationBAtRankMask case_000259_rank case_000259_mask = case_000259_b := by
  rw [translationBAtRankMask, case_000259_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000259_b, case_000259_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000259_firstLine_eq :
    case_000259_support.firstLine case_000259_seq case_000259_b = case_000259_firstLine := by
  norm_num [case_000259_firstLine, case_000259_support, case_000259_seq, case_000259_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000259_secondLine_eq :
    case_000259_support.secondLine case_000259_seq case_000259_b = case_000259_secondLine := by
  norm_num [case_000259_secondLine, case_000259_support, case_000259_seq, case_000259_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000259_sourceAgrees :
    SourceAgrees case_000259_support case_000259_rank.val case_000259_mask := by
  intro hlt
  have hrank : (⟨case_000259_rank.val, hlt⟩ : Fin numPairWords) = case_000259_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000259_rank.val, hlt⟩ case_000259_mask =
        case_000259_seq := by
    simpa [hrank] using case_000259_seqAtRank
  simp [SourceChecks, hseq, case_000259_support,
    checkTranslationConstraintSource, case_000259_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000259_rows :
    EqEqPosVarSecondRows case_000259_support case_000259_rank.val case_000259_mask := by
  intro hlt
  have hrank : (⟨case_000259_rank.val, hlt⟩ : Fin numPairWords) = case_000259_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000259_rank.val, hlt⟩ case_000259_mask =
        case_000259_seq := by
    simpa [hrank] using case_000259_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000259_rank.val, hlt⟩ case_000259_mask =
        case_000259_b := by
    simpa [hrank] using case_000259_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000259_support case_000259_rank.val hlt
          case_000259_mask = case_000259_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000259_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000259_support case_000259_rank.val hlt
          case_000259_mask = case_000259_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000259_secondLine_eq]
  have case_000259_fixedFirst :
      FixedRow (FirstLineAt case_000259_support case_000259_rank.val hlt case_000259_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000259_firstLine, FixedRow]
  have case_000259_rowSecond :
      EqEqPosRow (SecondLineAt case_000259_support case_000259_rank.val hlt case_000259_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000259_secondLine, EqEqPosRow]
  exact ⟨case_000259_fixedFirst, case_000259_rowSecond⟩

private theorem case_000259_existsRows :
    ExistsEqEqPosVarSecondRows case_000259_rank.val case_000259_mask :=
  ⟨case_000259_support, case_000259_sourceAgrees, case_000259_rows⟩

private theorem case_000259_covered :
    RowPropertyParametricCovered case_000259_rank.val case_000259_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000259_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000260_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000260_mask : SignMask := ⟨45, by decide⟩
private def case_000260_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000260_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000260_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000260_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (-20/9) }
private def case_000260_firstLine : StrictLin2 := { a := 1, b := -1, c := (-79/5) }
private def case_000260_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000260_rankWord :
    rankPairWord? case_000260_word = some case_000260_rank := by
  decide

private theorem case_000260_unrank :
    unrankPairWord case_000260_rank = case_000260_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000260_word case_000260_rank).1
    case_000260_rankWord |>.symm

private theorem case_000260_seqChoice :
    translationChoiceSeq case_000260_word case_000260_mask = case_000260_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000260_seqAtRank :
    translationSeqAtRankMask case_000260_rank case_000260_mask = case_000260_seq := by
  rw [translationSeqAtRankMask, case_000260_unrank]
  exact case_000260_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000260_bAtRank :
    translationBAtRankMask case_000260_rank case_000260_mask = case_000260_b := by
  rw [translationBAtRankMask, case_000260_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000260_b, case_000260_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000260_firstLine_eq :
    case_000260_support.firstLine case_000260_seq case_000260_b = case_000260_firstLine := by
  norm_num [case_000260_firstLine, case_000260_support, case_000260_seq, case_000260_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000260_secondLine_eq :
    case_000260_support.secondLine case_000260_seq case_000260_b = case_000260_secondLine := by
  norm_num [case_000260_secondLine, case_000260_support, case_000260_seq, case_000260_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000260_sourceAgrees :
    SourceAgrees case_000260_support case_000260_rank.val case_000260_mask := by
  intro hlt
  have hrank : (⟨case_000260_rank.val, hlt⟩ : Fin numPairWords) = case_000260_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000260_rank.val, hlt⟩ case_000260_mask =
        case_000260_seq := by
    simpa [hrank] using case_000260_seqAtRank
  simp [SourceChecks, hseq, case_000260_support,
    checkTranslationConstraintSource, case_000260_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000260_rows :
    OppMinusOneVarFirstRows case_000260_support case_000260_rank.val case_000260_mask := by
  intro hlt
  have hrank : (⟨case_000260_rank.val, hlt⟩ : Fin numPairWords) = case_000260_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000260_rank.val, hlt⟩ case_000260_mask =
        case_000260_seq := by
    simpa [hrank] using case_000260_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000260_rank.val, hlt⟩ case_000260_mask =
        case_000260_b := by
    simpa [hrank] using case_000260_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000260_support case_000260_rank.val hlt
          case_000260_mask = case_000260_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000260_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000260_support case_000260_rank.val hlt
          case_000260_mask = case_000260_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000260_secondLine_eq]
  have case_000260_rowFirst :
      OppNegRow (FirstLineAt case_000260_support case_000260_rank.val hlt case_000260_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000260_firstLine, OppNegRow]
  have case_000260_fixedSecond :
      FixedRow (SecondLineAt case_000260_support case_000260_rank.val hlt case_000260_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000260_secondLine, FixedRow]
  exact ⟨case_000260_rowFirst, case_000260_fixedSecond⟩

private theorem case_000260_existsRows :
    ExistsOppMinusOneVarFirstRows case_000260_rank.val case_000260_mask :=
  ⟨case_000260_support, case_000260_sourceAgrees, case_000260_rows⟩

private theorem case_000260_covered :
    RowPropertyParametricCovered case_000260_rank.val case_000260_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000260_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000261_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000261_mask : SignMask := ⟨47, by decide⟩
private def case_000261_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000261_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000261_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000261_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (52/9) }
private def case_000261_firstLine : StrictLin2 := { a := 1, b := -1, c := (-43/5) }
private def case_000261_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000261_rankWord :
    rankPairWord? case_000261_word = some case_000261_rank := by
  decide

private theorem case_000261_unrank :
    unrankPairWord case_000261_rank = case_000261_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000261_word case_000261_rank).1
    case_000261_rankWord |>.symm

private theorem case_000261_seqChoice :
    translationChoiceSeq case_000261_word case_000261_mask = case_000261_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000261_seqAtRank :
    translationSeqAtRankMask case_000261_rank case_000261_mask = case_000261_seq := by
  rw [translationSeqAtRankMask, case_000261_unrank]
  exact case_000261_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000261_bAtRank :
    translationBAtRankMask case_000261_rank case_000261_mask = case_000261_b := by
  rw [translationBAtRankMask, case_000261_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000261_b, case_000261_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000261_firstLine_eq :
    case_000261_support.firstLine case_000261_seq case_000261_b = case_000261_firstLine := by
  norm_num [case_000261_firstLine, case_000261_support, case_000261_seq, case_000261_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000261_secondLine_eq :
    case_000261_support.secondLine case_000261_seq case_000261_b = case_000261_secondLine := by
  norm_num [case_000261_secondLine, case_000261_support, case_000261_seq, case_000261_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000261_sourceAgrees :
    SourceAgrees case_000261_support case_000261_rank.val case_000261_mask := by
  intro hlt
  have hrank : (⟨case_000261_rank.val, hlt⟩ : Fin numPairWords) = case_000261_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000261_rank.val, hlt⟩ case_000261_mask =
        case_000261_seq := by
    simpa [hrank] using case_000261_seqAtRank
  simp [SourceChecks, hseq, case_000261_support,
    checkTranslationConstraintSource, case_000261_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000261_rows :
    OppMinusOneVarFirstRows case_000261_support case_000261_rank.val case_000261_mask := by
  intro hlt
  have hrank : (⟨case_000261_rank.val, hlt⟩ : Fin numPairWords) = case_000261_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000261_rank.val, hlt⟩ case_000261_mask =
        case_000261_seq := by
    simpa [hrank] using case_000261_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000261_rank.val, hlt⟩ case_000261_mask =
        case_000261_b := by
    simpa [hrank] using case_000261_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000261_support case_000261_rank.val hlt
          case_000261_mask = case_000261_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000261_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000261_support case_000261_rank.val hlt
          case_000261_mask = case_000261_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000261_secondLine_eq]
  have case_000261_rowFirst :
      OppNegRow (FirstLineAt case_000261_support case_000261_rank.val hlt case_000261_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000261_firstLine, OppNegRow]
  have case_000261_fixedSecond :
      FixedRow (SecondLineAt case_000261_support case_000261_rank.val hlt case_000261_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000261_secondLine, FixedRow]
  exact ⟨case_000261_rowFirst, case_000261_fixedSecond⟩

private theorem case_000261_existsRows :
    ExistsOppMinusOneVarFirstRows case_000261_rank.val case_000261_mask :=
  ⟨case_000261_support, case_000261_sourceAgrees, case_000261_rows⟩

private theorem case_000261_covered :
    RowPropertyParametricCovered case_000261_rank.val case_000261_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000261_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000262_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000262_mask : SignMask := ⟨54, by decide⟩
private def case_000262_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000262_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000262_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000262_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (116/9) }
private def case_000262_firstLine : StrictLin2 := { a := (-13/3), b := (-13/3), c := (-89/9) }
private def case_000262_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000262_rankWord :
    rankPairWord? case_000262_word = some case_000262_rank := by
  decide

private theorem case_000262_unrank :
    unrankPairWord case_000262_rank = case_000262_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000262_word case_000262_rank).1
    case_000262_rankWord |>.symm

private theorem case_000262_seqChoice :
    translationChoiceSeq case_000262_word case_000262_mask = case_000262_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000262_seqAtRank :
    translationSeqAtRankMask case_000262_rank case_000262_mask = case_000262_seq := by
  rw [translationSeqAtRankMask, case_000262_unrank]
  exact case_000262_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000262_bAtRank :
    translationBAtRankMask case_000262_rank case_000262_mask = case_000262_b := by
  rw [translationBAtRankMask, case_000262_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000262_b, case_000262_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000262_firstLine_eq :
    case_000262_support.firstLine case_000262_seq case_000262_b = case_000262_firstLine := by
  norm_num [case_000262_firstLine, case_000262_support, case_000262_seq, case_000262_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000262_secondLine_eq :
    case_000262_support.secondLine case_000262_seq case_000262_b = case_000262_secondLine := by
  norm_num [case_000262_secondLine, case_000262_support, case_000262_seq, case_000262_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000262_sourceAgrees :
    SourceAgrees case_000262_support case_000262_rank.val case_000262_mask := by
  intro hlt
  have hrank : (⟨case_000262_rank.val, hlt⟩ : Fin numPairWords) = case_000262_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000262_rank.val, hlt⟩ case_000262_mask =
        case_000262_seq := by
    simpa [hrank] using case_000262_seqAtRank
  simp [SourceChecks, hseq, case_000262_support,
    checkTranslationConstraintSource, case_000262_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000262_rows :
    EqEqPosVarFirstRows case_000262_support case_000262_rank.val case_000262_mask := by
  intro hlt
  have hrank : (⟨case_000262_rank.val, hlt⟩ : Fin numPairWords) = case_000262_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000262_rank.val, hlt⟩ case_000262_mask =
        case_000262_seq := by
    simpa [hrank] using case_000262_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000262_rank.val, hlt⟩ case_000262_mask =
        case_000262_b := by
    simpa [hrank] using case_000262_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000262_support case_000262_rank.val hlt
          case_000262_mask = case_000262_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000262_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000262_support case_000262_rank.val hlt
          case_000262_mask = case_000262_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000262_secondLine_eq]
  have case_000262_rowFirst :
      EqEqPosRow (FirstLineAt case_000262_support case_000262_rank.val hlt case_000262_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000262_firstLine, EqEqPosRow]
  have case_000262_fixedSecond :
      FixedRow (SecondLineAt case_000262_support case_000262_rank.val hlt case_000262_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000262_secondLine, FixedRow]
  exact ⟨case_000262_rowFirst, case_000262_fixedSecond⟩

private theorem case_000262_existsRows :
    ExistsEqEqPosVarFirstRows case_000262_rank.val case_000262_mask :=
  ⟨case_000262_support, case_000262_sourceAgrees, case_000262_rows⟩

private theorem case_000262_covered :
    RowPropertyParametricCovered case_000262_rank.val case_000262_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000262_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000263_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000263_mask : SignMask := ⟨63, by decide⟩
private def case_000263_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000263_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000263_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000263_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_000263_firstLine : StrictLin2 := { a := (-17/33), b := (-17/33), c := (-349/99) }
private def case_000263_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000263_rankWord :
    rankPairWord? case_000263_word = some case_000263_rank := by
  decide

private theorem case_000263_unrank :
    unrankPairWord case_000263_rank = case_000263_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000263_word case_000263_rank).1
    case_000263_rankWord |>.symm

private theorem case_000263_seqChoice :
    translationChoiceSeq case_000263_word case_000263_mask = case_000263_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000263_seqAtRank :
    translationSeqAtRankMask case_000263_rank case_000263_mask = case_000263_seq := by
  rw [translationSeqAtRankMask, case_000263_unrank]
  exact case_000263_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000263_bAtRank :
    translationBAtRankMask case_000263_rank case_000263_mask = case_000263_b := by
  rw [translationBAtRankMask, case_000263_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000263_b, case_000263_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000263_firstLine_eq :
    case_000263_support.firstLine case_000263_seq case_000263_b = case_000263_firstLine := by
  norm_num [case_000263_firstLine, case_000263_support, case_000263_seq, case_000263_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000263_secondLine_eq :
    case_000263_support.secondLine case_000263_seq case_000263_b = case_000263_secondLine := by
  norm_num [case_000263_secondLine, case_000263_support, case_000263_seq, case_000263_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000263_sourceAgrees :
    SourceAgrees case_000263_support case_000263_rank.val case_000263_mask := by
  intro hlt
  have hrank : (⟨case_000263_rank.val, hlt⟩ : Fin numPairWords) = case_000263_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000263_rank.val, hlt⟩ case_000263_mask =
        case_000263_seq := by
    simpa [hrank] using case_000263_seqAtRank
  simp [SourceChecks, hseq, case_000263_support,
    checkTranslationConstraintSource, case_000263_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000263_rows :
    EqEqPosVarFirstRows case_000263_support case_000263_rank.val case_000263_mask := by
  intro hlt
  have hrank : (⟨case_000263_rank.val, hlt⟩ : Fin numPairWords) = case_000263_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000263_rank.val, hlt⟩ case_000263_mask =
        case_000263_seq := by
    simpa [hrank] using case_000263_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000263_rank.val, hlt⟩ case_000263_mask =
        case_000263_b := by
    simpa [hrank] using case_000263_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000263_support case_000263_rank.val hlt
          case_000263_mask = case_000263_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000263_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000263_support case_000263_rank.val hlt
          case_000263_mask = case_000263_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000263_secondLine_eq]
  have case_000263_rowFirst :
      EqEqPosRow (FirstLineAt case_000263_support case_000263_rank.val hlt case_000263_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000263_firstLine, EqEqPosRow]
  have case_000263_fixedSecond :
      FixedRow (SecondLineAt case_000263_support case_000263_rank.val hlt case_000263_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000263_secondLine, FixedRow]
  exact ⟨case_000263_rowFirst, case_000263_fixedSecond⟩

private theorem case_000263_existsRows :
    ExistsEqEqPosVarFirstRows case_000263_rank.val case_000263_mask :=
  ⟨case_000263_support, case_000263_sourceAgrees, case_000263_rows⟩

private theorem case_000263_covered :
    RowPropertyParametricCovered case_000263_rank.val case_000263_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000263_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000264_rank : Fin numPairWords := ⟨65, by decide⟩
private def case_000264_mask : SignMask := ⟨0, by decide⟩
private def case_000264_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000264_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000264_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000264_b : Vec3 Rat := { x := (-44/27), y := (-428/27), z := (-332/27) }
private def case_000264_firstLine : StrictLin2 := { a := -1, b := -1, c := (-369/11) }
private def case_000264_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000264_rankWord :
    rankPairWord? case_000264_word = some case_000264_rank := by
  decide

private theorem case_000264_unrank :
    unrankPairWord case_000264_rank = case_000264_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000264_word case_000264_rank).1
    case_000264_rankWord |>.symm

private theorem case_000264_seqChoice :
    translationChoiceSeq case_000264_word case_000264_mask = case_000264_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000264_seqAtRank :
    translationSeqAtRankMask case_000264_rank case_000264_mask = case_000264_seq := by
  rw [translationSeqAtRankMask, case_000264_unrank]
  exact case_000264_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000264_bAtRank :
    translationBAtRankMask case_000264_rank case_000264_mask = case_000264_b := by
  rw [translationBAtRankMask, case_000264_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000264_b, case_000264_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000264_firstLine_eq :
    case_000264_support.firstLine case_000264_seq case_000264_b = case_000264_firstLine := by
  norm_num [case_000264_firstLine, case_000264_support, case_000264_seq, case_000264_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000264_secondLine_eq :
    case_000264_support.secondLine case_000264_seq case_000264_b = case_000264_secondLine := by
  norm_num [case_000264_secondLine, case_000264_support, case_000264_seq, case_000264_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000264_sourceAgrees :
    SourceAgrees case_000264_support case_000264_rank.val case_000264_mask := by
  intro hlt
  have hrank : (⟨case_000264_rank.val, hlt⟩ : Fin numPairWords) = case_000264_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000264_rank.val, hlt⟩ case_000264_mask =
        case_000264_seq := by
    simpa [hrank] using case_000264_seqAtRank
  simp [SourceChecks, hseq, case_000264_support,
    checkTranslationConstraintSource, case_000264_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000264_rows :
    EqEqPosVarFirstRows case_000264_support case_000264_rank.val case_000264_mask := by
  intro hlt
  have hrank : (⟨case_000264_rank.val, hlt⟩ : Fin numPairWords) = case_000264_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000264_rank.val, hlt⟩ case_000264_mask =
        case_000264_seq := by
    simpa [hrank] using case_000264_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000264_rank.val, hlt⟩ case_000264_mask =
        case_000264_b := by
    simpa [hrank] using case_000264_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000264_support case_000264_rank.val hlt
          case_000264_mask = case_000264_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000264_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000264_support case_000264_rank.val hlt
          case_000264_mask = case_000264_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000264_secondLine_eq]
  have case_000264_rowFirst :
      EqEqPosRow (FirstLineAt case_000264_support case_000264_rank.val hlt case_000264_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000264_firstLine, EqEqPosRow]
  have case_000264_fixedSecond :
      FixedRow (SecondLineAt case_000264_support case_000264_rank.val hlt case_000264_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000264_secondLine, FixedRow]
  exact ⟨case_000264_rowFirst, case_000264_fixedSecond⟩

private theorem case_000264_existsRows :
    ExistsEqEqPosVarFirstRows case_000264_rank.val case_000264_mask :=
  ⟨case_000264_support, case_000264_sourceAgrees, case_000264_rows⟩

private theorem case_000264_covered :
    RowPropertyParametricCovered case_000264_rank.val case_000264_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000264_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000265_rank : Fin numPairWords := ⟨65, by decide⟩
private def case_000265_mask : SignMask := ⟨9, by decide⟩
private def case_000265_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000265_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000265_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000265_b : Vec3 Rat := { x := (-92/27), y := (28/27), z := (-380/27) }
private def case_000265_firstLine : StrictLin2 := { a := -1, b := -1, c := (-153/23) }
private def case_000265_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000265_rankWord :
    rankPairWord? case_000265_word = some case_000265_rank := by
  decide

private theorem case_000265_unrank :
    unrankPairWord case_000265_rank = case_000265_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000265_word case_000265_rank).1
    case_000265_rankWord |>.symm

private theorem case_000265_seqChoice :
    translationChoiceSeq case_000265_word case_000265_mask = case_000265_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000265_seqAtRank :
    translationSeqAtRankMask case_000265_rank case_000265_mask = case_000265_seq := by
  rw [translationSeqAtRankMask, case_000265_unrank]
  exact case_000265_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000265_bAtRank :
    translationBAtRankMask case_000265_rank case_000265_mask = case_000265_b := by
  rw [translationBAtRankMask, case_000265_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000265_b, case_000265_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000265_firstLine_eq :
    case_000265_support.firstLine case_000265_seq case_000265_b = case_000265_firstLine := by
  norm_num [case_000265_firstLine, case_000265_support, case_000265_seq, case_000265_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000265_secondLine_eq :
    case_000265_support.secondLine case_000265_seq case_000265_b = case_000265_secondLine := by
  norm_num [case_000265_secondLine, case_000265_support, case_000265_seq, case_000265_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000265_sourceAgrees :
    SourceAgrees case_000265_support case_000265_rank.val case_000265_mask := by
  intro hlt
  have hrank : (⟨case_000265_rank.val, hlt⟩ : Fin numPairWords) = case_000265_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000265_rank.val, hlt⟩ case_000265_mask =
        case_000265_seq := by
    simpa [hrank] using case_000265_seqAtRank
  simp [SourceChecks, hseq, case_000265_support,
    checkTranslationConstraintSource, case_000265_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000265_rows :
    EqEqPosVarFirstRows case_000265_support case_000265_rank.val case_000265_mask := by
  intro hlt
  have hrank : (⟨case_000265_rank.val, hlt⟩ : Fin numPairWords) = case_000265_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000265_rank.val, hlt⟩ case_000265_mask =
        case_000265_seq := by
    simpa [hrank] using case_000265_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000265_rank.val, hlt⟩ case_000265_mask =
        case_000265_b := by
    simpa [hrank] using case_000265_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000265_support case_000265_rank.val hlt
          case_000265_mask = case_000265_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000265_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000265_support case_000265_rank.val hlt
          case_000265_mask = case_000265_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000265_secondLine_eq]
  have case_000265_rowFirst :
      EqEqPosRow (FirstLineAt case_000265_support case_000265_rank.val hlt case_000265_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000265_firstLine, EqEqPosRow]
  have case_000265_fixedSecond :
      FixedRow (SecondLineAt case_000265_support case_000265_rank.val hlt case_000265_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000265_secondLine, FixedRow]
  exact ⟨case_000265_rowFirst, case_000265_fixedSecond⟩

private theorem case_000265_existsRows :
    ExistsEqEqPosVarFirstRows case_000265_rank.val case_000265_mask :=
  ⟨case_000265_support, case_000265_sourceAgrees, case_000265_rows⟩

private theorem case_000265_covered :
    RowPropertyParametricCovered case_000265_rank.val case_000265_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000265_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000266_rank : Fin numPairWords := ⟨65, by decide⟩
private def case_000266_mask : SignMask := ⟨13, by decide⟩
private def case_000266_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000266_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000266_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000266_b : Vec3 Rat := { x := (-236/27), y := (172/27), z := (-236/27) }
private def case_000266_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000266_secondLine : StrictLin2 := { a := (-531/2150), b := (-531/2150), c := (-1293/1075) }

private theorem case_000266_rankWord :
    rankPairWord? case_000266_word = some case_000266_rank := by
  decide

private theorem case_000266_unrank :
    unrankPairWord case_000266_rank = case_000266_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000266_word case_000266_rank).1
    case_000266_rankWord |>.symm

private theorem case_000266_seqChoice :
    translationChoiceSeq case_000266_word case_000266_mask = case_000266_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000266_seqAtRank :
    translationSeqAtRankMask case_000266_rank case_000266_mask = case_000266_seq := by
  rw [translationSeqAtRankMask, case_000266_unrank]
  exact case_000266_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000266_bAtRank :
    translationBAtRankMask case_000266_rank case_000266_mask = case_000266_b := by
  rw [translationBAtRankMask, case_000266_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000266_b, case_000266_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000266_firstLine_eq :
    case_000266_support.firstLine case_000266_seq case_000266_b = case_000266_firstLine := by
  norm_num [case_000266_firstLine, case_000266_support, case_000266_seq, case_000266_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000266_secondLine_eq :
    case_000266_support.secondLine case_000266_seq case_000266_b = case_000266_secondLine := by
  norm_num [case_000266_secondLine, case_000266_support, case_000266_seq, case_000266_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000266_sourceAgrees :
    SourceAgrees case_000266_support case_000266_rank.val case_000266_mask := by
  intro hlt
  have hrank : (⟨case_000266_rank.val, hlt⟩ : Fin numPairWords) = case_000266_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000266_rank.val, hlt⟩ case_000266_mask =
        case_000266_seq := by
    simpa [hrank] using case_000266_seqAtRank
  simp [SourceChecks, hseq, case_000266_support,
    checkTranslationConstraintSource, case_000266_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000266_rows :
    EqEqPosVarSecondRows case_000266_support case_000266_rank.val case_000266_mask := by
  intro hlt
  have hrank : (⟨case_000266_rank.val, hlt⟩ : Fin numPairWords) = case_000266_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000266_rank.val, hlt⟩ case_000266_mask =
        case_000266_seq := by
    simpa [hrank] using case_000266_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000266_rank.val, hlt⟩ case_000266_mask =
        case_000266_b := by
    simpa [hrank] using case_000266_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000266_support case_000266_rank.val hlt
          case_000266_mask = case_000266_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000266_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000266_support case_000266_rank.val hlt
          case_000266_mask = case_000266_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000266_secondLine_eq]
  have case_000266_fixedFirst :
      FixedRow (FirstLineAt case_000266_support case_000266_rank.val hlt case_000266_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000266_firstLine, FixedRow]
  have case_000266_rowSecond :
      EqEqPosRow (SecondLineAt case_000266_support case_000266_rank.val hlt case_000266_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000266_secondLine, EqEqPosRow]
  exact ⟨case_000266_fixedFirst, case_000266_rowSecond⟩

private theorem case_000266_existsRows :
    ExistsEqEqPosVarSecondRows case_000266_rank.val case_000266_mask :=
  ⟨case_000266_support, case_000266_sourceAgrees, case_000266_rows⟩

private theorem case_000266_covered :
    RowPropertyParametricCovered case_000266_rank.val case_000266_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000266_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000267_rank : Fin numPairWords := ⟨65, by decide⟩
private def case_000267_mask : SignMask := ⟨22, by decide⟩
private def case_000267_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000267_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000267_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000267_b : Vec3 Rat := { x := (-268/27), y := (-172/27), z := (236/27) }
private def case_000267_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000267_secondLine : StrictLin2 := { a := (-603/2822), b := (-603/2822), c := (-597/1411) }

private theorem case_000267_rankWord :
    rankPairWord? case_000267_word = some case_000267_rank := by
  decide

private theorem case_000267_unrank :
    unrankPairWord case_000267_rank = case_000267_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000267_word case_000267_rank).1
    case_000267_rankWord |>.symm

private theorem case_000267_seqChoice :
    translationChoiceSeq case_000267_word case_000267_mask = case_000267_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000267_seqAtRank :
    translationSeqAtRankMask case_000267_rank case_000267_mask = case_000267_seq := by
  rw [translationSeqAtRankMask, case_000267_unrank]
  exact case_000267_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000267_bAtRank :
    translationBAtRankMask case_000267_rank case_000267_mask = case_000267_b := by
  rw [translationBAtRankMask, case_000267_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000267_b, case_000267_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000267_firstLine_eq :
    case_000267_support.firstLine case_000267_seq case_000267_b = case_000267_firstLine := by
  norm_num [case_000267_firstLine, case_000267_support, case_000267_seq, case_000267_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000267_secondLine_eq :
    case_000267_support.secondLine case_000267_seq case_000267_b = case_000267_secondLine := by
  norm_num [case_000267_secondLine, case_000267_support, case_000267_seq, case_000267_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000267_sourceAgrees :
    SourceAgrees case_000267_support case_000267_rank.val case_000267_mask := by
  intro hlt
  have hrank : (⟨case_000267_rank.val, hlt⟩ : Fin numPairWords) = case_000267_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000267_rank.val, hlt⟩ case_000267_mask =
        case_000267_seq := by
    simpa [hrank] using case_000267_seqAtRank
  simp [SourceChecks, hseq, case_000267_support,
    checkTranslationConstraintSource, case_000267_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000267_rows :
    EqEqPosVarSecondRows case_000267_support case_000267_rank.val case_000267_mask := by
  intro hlt
  have hrank : (⟨case_000267_rank.val, hlt⟩ : Fin numPairWords) = case_000267_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000267_rank.val, hlt⟩ case_000267_mask =
        case_000267_seq := by
    simpa [hrank] using case_000267_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000267_rank.val, hlt⟩ case_000267_mask =
        case_000267_b := by
    simpa [hrank] using case_000267_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000267_support case_000267_rank.val hlt
          case_000267_mask = case_000267_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000267_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000267_support case_000267_rank.val hlt
          case_000267_mask = case_000267_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000267_secondLine_eq]
  have case_000267_fixedFirst :
      FixedRow (FirstLineAt case_000267_support case_000267_rank.val hlt case_000267_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000267_firstLine, FixedRow]
  have case_000267_rowSecond :
      EqEqPosRow (SecondLineAt case_000267_support case_000267_rank.val hlt case_000267_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000267_secondLine, EqEqPosRow]
  exact ⟨case_000267_fixedFirst, case_000267_rowSecond⟩

private theorem case_000267_existsRows :
    ExistsEqEqPosVarSecondRows case_000267_rank.val case_000267_mask :=
  ⟨case_000267_support, case_000267_sourceAgrees, case_000267_rows⟩

private theorem case_000267_covered :
    RowPropertyParametricCovered case_000267_rank.val case_000267_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000267_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000268_rank : Fin numPairWords := ⟨65, by decide⟩
private def case_000268_mask : SignMask := ⟨29, by decide⟩
private def case_000268_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000268_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000268_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000268_b : Vec3 Rat := { x := (-316/27), y := (284/27), z := (-28/27) }
private def case_000268_firstLine : StrictLin2 := { a := (-79/15), b := (-79/15), c := (-69/5) }
private def case_000268_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000268_rankWord :
    rankPairWord? case_000268_word = some case_000268_rank := by
  decide

private theorem case_000268_unrank :
    unrankPairWord case_000268_rank = case_000268_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000268_word case_000268_rank).1
    case_000268_rankWord |>.symm

private theorem case_000268_seqChoice :
    translationChoiceSeq case_000268_word case_000268_mask = case_000268_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000268_seqAtRank :
    translationSeqAtRankMask case_000268_rank case_000268_mask = case_000268_seq := by
  rw [translationSeqAtRankMask, case_000268_unrank]
  exact case_000268_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000268_bAtRank :
    translationBAtRankMask case_000268_rank case_000268_mask = case_000268_b := by
  rw [translationBAtRankMask, case_000268_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000268_b, case_000268_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000268_firstLine_eq :
    case_000268_support.firstLine case_000268_seq case_000268_b = case_000268_firstLine := by
  norm_num [case_000268_firstLine, case_000268_support, case_000268_seq, case_000268_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000268_secondLine_eq :
    case_000268_support.secondLine case_000268_seq case_000268_b = case_000268_secondLine := by
  norm_num [case_000268_secondLine, case_000268_support, case_000268_seq, case_000268_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000268_sourceAgrees :
    SourceAgrees case_000268_support case_000268_rank.val case_000268_mask := by
  intro hlt
  have hrank : (⟨case_000268_rank.val, hlt⟩ : Fin numPairWords) = case_000268_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000268_rank.val, hlt⟩ case_000268_mask =
        case_000268_seq := by
    simpa [hrank] using case_000268_seqAtRank
  simp [SourceChecks, hseq, case_000268_support,
    checkTranslationConstraintSource, case_000268_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000268_rows :
    EqEqPosVarFirstRows case_000268_support case_000268_rank.val case_000268_mask := by
  intro hlt
  have hrank : (⟨case_000268_rank.val, hlt⟩ : Fin numPairWords) = case_000268_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000268_rank.val, hlt⟩ case_000268_mask =
        case_000268_seq := by
    simpa [hrank] using case_000268_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000268_rank.val, hlt⟩ case_000268_mask =
        case_000268_b := by
    simpa [hrank] using case_000268_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000268_support case_000268_rank.val hlt
          case_000268_mask = case_000268_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000268_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000268_support case_000268_rank.val hlt
          case_000268_mask = case_000268_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000268_secondLine_eq]
  have case_000268_rowFirst :
      EqEqPosRow (FirstLineAt case_000268_support case_000268_rank.val hlt case_000268_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000268_firstLine, EqEqPosRow]
  have case_000268_fixedSecond :
      FixedRow (SecondLineAt case_000268_support case_000268_rank.val hlt case_000268_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000268_secondLine, FixedRow]
  exact ⟨case_000268_rowFirst, case_000268_fixedSecond⟩

private theorem case_000268_existsRows :
    ExistsEqEqPosVarFirstRows case_000268_rank.val case_000268_mask :=
  ⟨case_000268_support, case_000268_sourceAgrees, case_000268_rows⟩

private theorem case_000268_covered :
    RowPropertyParametricCovered case_000268_rank.val case_000268_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000268_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000269_rank : Fin numPairWords := ⟨65, by decide⟩
private def case_000269_mask : SignMask := ⟨54, by decide⟩
private def case_000269_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000269_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000269_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def case_000269_b : Vec3 Rat := { x := (-124/27), y := (-28/27), z := (380/27) }
private def case_000269_firstLine : StrictLin2 := { a := -1, b := 1, c := (-173/31) }
private def case_000269_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000269_rankWord :
    rankPairWord? case_000269_word = some case_000269_rank := by
  decide

private theorem case_000269_unrank :
    unrankPairWord case_000269_rank = case_000269_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000269_word case_000269_rank).1
    case_000269_rankWord |>.symm

private theorem case_000269_seqChoice :
    translationChoiceSeq case_000269_word case_000269_mask = case_000269_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000269_seqAtRank :
    translationSeqAtRankMask case_000269_rank case_000269_mask = case_000269_seq := by
  rw [translationSeqAtRankMask, case_000269_unrank]
  exact case_000269_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000269_bAtRank :
    translationBAtRankMask case_000269_rank case_000269_mask = case_000269_b := by
  rw [translationBAtRankMask, case_000269_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000269_b, case_000269_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000269_firstLine_eq :
    case_000269_support.firstLine case_000269_seq case_000269_b = case_000269_firstLine := by
  norm_num [case_000269_firstLine, case_000269_support, case_000269_seq, case_000269_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000269_secondLine_eq :
    case_000269_support.secondLine case_000269_seq case_000269_b = case_000269_secondLine := by
  norm_num [case_000269_secondLine, case_000269_support, case_000269_seq, case_000269_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000269_sourceAgrees :
    SourceAgrees case_000269_support case_000269_rank.val case_000269_mask := by
  intro hlt
  have hrank : (⟨case_000269_rank.val, hlt⟩ : Fin numPairWords) = case_000269_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000269_rank.val, hlt⟩ case_000269_mask =
        case_000269_seq := by
    simpa [hrank] using case_000269_seqAtRank
  simp [SourceChecks, hseq, case_000269_support,
    checkTranslationConstraintSource, case_000269_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000269_rows :
    OppOneMinusVarFirstRows case_000269_support case_000269_rank.val case_000269_mask := by
  intro hlt
  have hrank : (⟨case_000269_rank.val, hlt⟩ : Fin numPairWords) = case_000269_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000269_rank.val, hlt⟩ case_000269_mask =
        case_000269_seq := by
    simpa [hrank] using case_000269_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000269_rank.val, hlt⟩ case_000269_mask =
        case_000269_b := by
    simpa [hrank] using case_000269_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000269_support case_000269_rank.val hlt
          case_000269_mask = case_000269_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000269_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000269_support case_000269_rank.val hlt
          case_000269_mask = case_000269_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000269_secondLine_eq]
  have case_000269_rowFirst :
      OppPosRow (FirstLineAt case_000269_support case_000269_rank.val hlt case_000269_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000269_firstLine, OppPosRow]
  have case_000269_fixedSecond :
      FixedRow (SecondLineAt case_000269_support case_000269_rank.val hlt case_000269_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000269_secondLine, FixedRow]
  exact ⟨case_000269_rowFirst, case_000269_fixedSecond⟩

private theorem case_000269_existsRows :
    ExistsOppOneMinusVarFirstRows case_000269_rank.val case_000269_mask :=
  ⟨case_000269_support, case_000269_sourceAgrees, case_000269_rows⟩

private theorem case_000269_covered :
    RowPropertyParametricCovered case_000269_rank.val case_000269_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000269_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_second|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`. -/
private def case_000270_rank : Fin numPairWords := ⟨65, by decide⟩
private def case_000270_mask : SignMask := ⟨63, by decide⟩
private def case_000270_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000270_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000270_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000270_b : Vec3 Rat := { x := (-172/27), y := (428/27), z := (332/27) }
private def case_000270_firstLine : StrictLin2 := { a := -1, b := -1, c := 1 }
private def case_000270_secondLine : StrictLin2 := { a := (387/22834), b := (387/22834), c := (-555/11417) }

private theorem case_000270_rankWord :
    rankPairWord? case_000270_word = some case_000270_rank := by
  decide

private theorem case_000270_unrank :
    unrankPairWord case_000270_rank = case_000270_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000270_word case_000270_rank).1
    case_000270_rankWord |>.symm

private theorem case_000270_seqChoice :
    translationChoiceSeq case_000270_word case_000270_mask = case_000270_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000270_seqAtRank :
    translationSeqAtRankMask case_000270_rank case_000270_mask = case_000270_seq := by
  rw [translationSeqAtRankMask, case_000270_unrank]
  exact case_000270_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000270_bAtRank :
    translationBAtRankMask case_000270_rank case_000270_mask = case_000270_b := by
  rw [translationBAtRankMask, case_000270_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000270_b, case_000270_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000270_firstLine_eq :
    case_000270_support.firstLine case_000270_seq case_000270_b = case_000270_firstLine := by
  norm_num [case_000270_firstLine, case_000270_support, case_000270_seq, case_000270_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000270_secondLine_eq :
    case_000270_support.secondLine case_000270_seq case_000270_b = case_000270_secondLine := by
  norm_num [case_000270_secondLine, case_000270_support, case_000270_seq, case_000270_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000270_sourceAgrees :
    SourceAgrees case_000270_support case_000270_rank.val case_000270_mask := by
  intro hlt
  have hrank : (⟨case_000270_rank.val, hlt⟩ : Fin numPairWords) = case_000270_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000270_rank.val, hlt⟩ case_000270_mask =
        case_000270_seq := by
    simpa [hrank] using case_000270_seqAtRank
  simp [SourceChecks, hseq, case_000270_support,
    checkTranslationConstraintSource, case_000270_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000270_rows :
    EqEqNegVarSecondRows case_000270_support case_000270_rank.val case_000270_mask := by
  intro hlt
  have hrank : (⟨case_000270_rank.val, hlt⟩ : Fin numPairWords) = case_000270_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000270_rank.val, hlt⟩ case_000270_mask =
        case_000270_seq := by
    simpa [hrank] using case_000270_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000270_rank.val, hlt⟩ case_000270_mask =
        case_000270_b := by
    simpa [hrank] using case_000270_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000270_support case_000270_rank.val hlt
          case_000270_mask = case_000270_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000270_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000270_support case_000270_rank.val hlt
          case_000270_mask = case_000270_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000270_secondLine_eq]
  have case_000270_fixedFirst :
      FixedRow (FirstLineAt case_000270_support case_000270_rank.val hlt case_000270_mask)
        (-1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000270_firstLine, FixedRow]
  have case_000270_rowSecond :
      EqEqNegRow (SecondLineAt case_000270_support case_000270_rank.val hlt case_000270_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000270_secondLine, EqEqNegRow]
  exact ⟨case_000270_fixedFirst, case_000270_rowSecond⟩

private theorem case_000270_existsRows :
    ExistsEqEqNegVarSecondRows case_000270_rank.val case_000270_mask :=
  ⟨case_000270_support, case_000270_sourceAgrees, case_000270_rows⟩

private theorem case_000270_covered :
    RowPropertyParametricCovered case_000270_rank.val case_000270_mask :=
  RowPropertyParametricCovered.eqEqNegVarSecond case_000270_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000271_rank : Fin numPairWords := ⟨72, by decide⟩
private def case_000271_mask : SignMask := ⟨0, by decide⟩
private def case_000271_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000271_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000271_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000271_b : Vec3 Rat := { x := (-44/27), y := (-332/27), z := (-428/27) }
private def case_000271_firstLine : StrictLin2 := { a := -1, b := -1, c := (-369/11) }
private def case_000271_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000271_rankWord :
    rankPairWord? case_000271_word = some case_000271_rank := by
  decide

private theorem case_000271_unrank :
    unrankPairWord case_000271_rank = case_000271_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000271_word case_000271_rank).1
    case_000271_rankWord |>.symm

private theorem case_000271_seqChoice :
    translationChoiceSeq case_000271_word case_000271_mask = case_000271_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000271_seqAtRank :
    translationSeqAtRankMask case_000271_rank case_000271_mask = case_000271_seq := by
  rw [translationSeqAtRankMask, case_000271_unrank]
  exact case_000271_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000271_bAtRank :
    translationBAtRankMask case_000271_rank case_000271_mask = case_000271_b := by
  rw [translationBAtRankMask, case_000271_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000271_b, case_000271_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000271_firstLine_eq :
    case_000271_support.firstLine case_000271_seq case_000271_b = case_000271_firstLine := by
  norm_num [case_000271_firstLine, case_000271_support, case_000271_seq, case_000271_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000271_secondLine_eq :
    case_000271_support.secondLine case_000271_seq case_000271_b = case_000271_secondLine := by
  norm_num [case_000271_secondLine, case_000271_support, case_000271_seq, case_000271_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000271_sourceAgrees :
    SourceAgrees case_000271_support case_000271_rank.val case_000271_mask := by
  intro hlt
  have hrank : (⟨case_000271_rank.val, hlt⟩ : Fin numPairWords) = case_000271_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000271_rank.val, hlt⟩ case_000271_mask =
        case_000271_seq := by
    simpa [hrank] using case_000271_seqAtRank
  simp [SourceChecks, hseq, case_000271_support,
    checkTranslationConstraintSource, case_000271_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000271_rows :
    EqEqPosVarFirstRows case_000271_support case_000271_rank.val case_000271_mask := by
  intro hlt
  have hrank : (⟨case_000271_rank.val, hlt⟩ : Fin numPairWords) = case_000271_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000271_rank.val, hlt⟩ case_000271_mask =
        case_000271_seq := by
    simpa [hrank] using case_000271_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000271_rank.val, hlt⟩ case_000271_mask =
        case_000271_b := by
    simpa [hrank] using case_000271_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000271_support case_000271_rank.val hlt
          case_000271_mask = case_000271_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000271_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000271_support case_000271_rank.val hlt
          case_000271_mask = case_000271_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000271_secondLine_eq]
  have case_000271_rowFirst :
      EqEqPosRow (FirstLineAt case_000271_support case_000271_rank.val hlt case_000271_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000271_firstLine, EqEqPosRow]
  have case_000271_fixedSecond :
      FixedRow (SecondLineAt case_000271_support case_000271_rank.val hlt case_000271_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000271_secondLine, FixedRow]
  exact ⟨case_000271_rowFirst, case_000271_fixedSecond⟩

private theorem case_000271_existsRows :
    ExistsEqEqPosVarFirstRows case_000271_rank.val case_000271_mask :=
  ⟨case_000271_support, case_000271_sourceAgrees, case_000271_rows⟩

private theorem case_000271_covered :
    RowPropertyParametricCovered case_000271_rank.val case_000271_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000271_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000272_rank : Fin numPairWords := ⟨72, by decide⟩
private def case_000272_mask : SignMask := ⟨13, by decide⟩
private def case_000272_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000272_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000272_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000272_b : Vec3 Rat := { x := (-268/27), y := (236/27), z := (-172/27) }
private def case_000272_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000272_secondLine : StrictLin2 := { a := (-603/2822), b := (-603/2822), c := (-597/1411) }

private theorem case_000272_rankWord :
    rankPairWord? case_000272_word = some case_000272_rank := by
  decide

private theorem case_000272_unrank :
    unrankPairWord case_000272_rank = case_000272_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000272_word case_000272_rank).1
    case_000272_rankWord |>.symm

private theorem case_000272_seqChoice :
    translationChoiceSeq case_000272_word case_000272_mask = case_000272_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000272_seqAtRank :
    translationSeqAtRankMask case_000272_rank case_000272_mask = case_000272_seq := by
  rw [translationSeqAtRankMask, case_000272_unrank]
  exact case_000272_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000272_bAtRank :
    translationBAtRankMask case_000272_rank case_000272_mask = case_000272_b := by
  rw [translationBAtRankMask, case_000272_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000272_b, case_000272_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000272_firstLine_eq :
    case_000272_support.firstLine case_000272_seq case_000272_b = case_000272_firstLine := by
  norm_num [case_000272_firstLine, case_000272_support, case_000272_seq, case_000272_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000272_secondLine_eq :
    case_000272_support.secondLine case_000272_seq case_000272_b = case_000272_secondLine := by
  norm_num [case_000272_secondLine, case_000272_support, case_000272_seq, case_000272_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000272_sourceAgrees :
    SourceAgrees case_000272_support case_000272_rank.val case_000272_mask := by
  intro hlt
  have hrank : (⟨case_000272_rank.val, hlt⟩ : Fin numPairWords) = case_000272_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000272_rank.val, hlt⟩ case_000272_mask =
        case_000272_seq := by
    simpa [hrank] using case_000272_seqAtRank
  simp [SourceChecks, hseq, case_000272_support,
    checkTranslationConstraintSource, case_000272_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000272_rows :
    EqEqPosVarSecondRows case_000272_support case_000272_rank.val case_000272_mask := by
  intro hlt
  have hrank : (⟨case_000272_rank.val, hlt⟩ : Fin numPairWords) = case_000272_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000272_rank.val, hlt⟩ case_000272_mask =
        case_000272_seq := by
    simpa [hrank] using case_000272_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000272_rank.val, hlt⟩ case_000272_mask =
        case_000272_b := by
    simpa [hrank] using case_000272_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000272_support case_000272_rank.val hlt
          case_000272_mask = case_000272_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000272_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000272_support case_000272_rank.val hlt
          case_000272_mask = case_000272_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000272_secondLine_eq]
  have case_000272_fixedFirst :
      FixedRow (FirstLineAt case_000272_support case_000272_rank.val hlt case_000272_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000272_firstLine, FixedRow]
  have case_000272_rowSecond :
      EqEqPosRow (SecondLineAt case_000272_support case_000272_rank.val hlt case_000272_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000272_secondLine, EqEqPosRow]
  exact ⟨case_000272_fixedFirst, case_000272_rowSecond⟩

private theorem case_000272_existsRows :
    ExistsEqEqPosVarSecondRows case_000272_rank.val case_000272_mask :=
  ⟨case_000272_support, case_000272_sourceAgrees, case_000272_rows⟩

private theorem case_000272_covered :
    RowPropertyParametricCovered case_000272_rank.val case_000272_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000272_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000273_rank : Fin numPairWords := ⟨72, by decide⟩
private def case_000273_mask : SignMask := ⟨18, by decide⟩
private def case_000273_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000273_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000273_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000273_b : Vec3 Rat := { x := (-92/27), y := (-380/27), z := (28/27) }
private def case_000273_firstLine : StrictLin2 := { a := -1, b := -1, c := (-153/23) }
private def case_000273_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000273_rankWord :
    rankPairWord? case_000273_word = some case_000273_rank := by
  decide

private theorem case_000273_unrank :
    unrankPairWord case_000273_rank = case_000273_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000273_word case_000273_rank).1
    case_000273_rankWord |>.symm

private theorem case_000273_seqChoice :
    translationChoiceSeq case_000273_word case_000273_mask = case_000273_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000273_seqAtRank :
    translationSeqAtRankMask case_000273_rank case_000273_mask = case_000273_seq := by
  rw [translationSeqAtRankMask, case_000273_unrank]
  exact case_000273_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000273_bAtRank :
    translationBAtRankMask case_000273_rank case_000273_mask = case_000273_b := by
  rw [translationBAtRankMask, case_000273_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000273_b, case_000273_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000273_firstLine_eq :
    case_000273_support.firstLine case_000273_seq case_000273_b = case_000273_firstLine := by
  norm_num [case_000273_firstLine, case_000273_support, case_000273_seq, case_000273_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000273_secondLine_eq :
    case_000273_support.secondLine case_000273_seq case_000273_b = case_000273_secondLine := by
  norm_num [case_000273_secondLine, case_000273_support, case_000273_seq, case_000273_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000273_sourceAgrees :
    SourceAgrees case_000273_support case_000273_rank.val case_000273_mask := by
  intro hlt
  have hrank : (⟨case_000273_rank.val, hlt⟩ : Fin numPairWords) = case_000273_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000273_rank.val, hlt⟩ case_000273_mask =
        case_000273_seq := by
    simpa [hrank] using case_000273_seqAtRank
  simp [SourceChecks, hseq, case_000273_support,
    checkTranslationConstraintSource, case_000273_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000273_rows :
    EqEqPosVarFirstRows case_000273_support case_000273_rank.val case_000273_mask := by
  intro hlt
  have hrank : (⟨case_000273_rank.val, hlt⟩ : Fin numPairWords) = case_000273_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000273_rank.val, hlt⟩ case_000273_mask =
        case_000273_seq := by
    simpa [hrank] using case_000273_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000273_rank.val, hlt⟩ case_000273_mask =
        case_000273_b := by
    simpa [hrank] using case_000273_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000273_support case_000273_rank.val hlt
          case_000273_mask = case_000273_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000273_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000273_support case_000273_rank.val hlt
          case_000273_mask = case_000273_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000273_secondLine_eq]
  have case_000273_rowFirst :
      EqEqPosRow (FirstLineAt case_000273_support case_000273_rank.val hlt case_000273_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000273_firstLine, EqEqPosRow]
  have case_000273_fixedSecond :
      FixedRow (SecondLineAt case_000273_support case_000273_rank.val hlt case_000273_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000273_secondLine, FixedRow]
  exact ⟨case_000273_rowFirst, case_000273_fixedSecond⟩

private theorem case_000273_existsRows :
    ExistsEqEqPosVarFirstRows case_000273_rank.val case_000273_mask :=
  ⟨case_000273_support, case_000273_sourceAgrees, case_000273_rows⟩

private theorem case_000273_covered :
    RowPropertyParametricCovered case_000273_rank.val case_000273_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000273_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000274_rank : Fin numPairWords := ⟨72, by decide⟩
private def case_000274_mask : SignMask := ⟨22, by decide⟩
private def case_000274_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000274_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000274_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000274_b : Vec3 Rat := { x := (-236/27), y := (-236/27), z := (172/27) }
private def case_000274_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000274_secondLine : StrictLin2 := { a := (-531/2150), b := (-531/2150), c := (-1293/1075) }

private theorem case_000274_rankWord :
    rankPairWord? case_000274_word = some case_000274_rank := by
  decide

private theorem case_000274_unrank :
    unrankPairWord case_000274_rank = case_000274_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000274_word case_000274_rank).1
    case_000274_rankWord |>.symm

private theorem case_000274_seqChoice :
    translationChoiceSeq case_000274_word case_000274_mask = case_000274_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000274_seqAtRank :
    translationSeqAtRankMask case_000274_rank case_000274_mask = case_000274_seq := by
  rw [translationSeqAtRankMask, case_000274_unrank]
  exact case_000274_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000274_bAtRank :
    translationBAtRankMask case_000274_rank case_000274_mask = case_000274_b := by
  rw [translationBAtRankMask, case_000274_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000274_b, case_000274_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000274_firstLine_eq :
    case_000274_support.firstLine case_000274_seq case_000274_b = case_000274_firstLine := by
  norm_num [case_000274_firstLine, case_000274_support, case_000274_seq, case_000274_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000274_secondLine_eq :
    case_000274_support.secondLine case_000274_seq case_000274_b = case_000274_secondLine := by
  norm_num [case_000274_secondLine, case_000274_support, case_000274_seq, case_000274_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000274_sourceAgrees :
    SourceAgrees case_000274_support case_000274_rank.val case_000274_mask := by
  intro hlt
  have hrank : (⟨case_000274_rank.val, hlt⟩ : Fin numPairWords) = case_000274_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000274_rank.val, hlt⟩ case_000274_mask =
        case_000274_seq := by
    simpa [hrank] using case_000274_seqAtRank
  simp [SourceChecks, hseq, case_000274_support,
    checkTranslationConstraintSource, case_000274_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000274_rows :
    EqEqPosVarSecondRows case_000274_support case_000274_rank.val case_000274_mask := by
  intro hlt
  have hrank : (⟨case_000274_rank.val, hlt⟩ : Fin numPairWords) = case_000274_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000274_rank.val, hlt⟩ case_000274_mask =
        case_000274_seq := by
    simpa [hrank] using case_000274_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000274_rank.val, hlt⟩ case_000274_mask =
        case_000274_b := by
    simpa [hrank] using case_000274_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000274_support case_000274_rank.val hlt
          case_000274_mask = case_000274_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000274_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000274_support case_000274_rank.val hlt
          case_000274_mask = case_000274_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000274_secondLine_eq]
  have case_000274_fixedFirst :
      FixedRow (FirstLineAt case_000274_support case_000274_rank.val hlt case_000274_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000274_firstLine, FixedRow]
  have case_000274_rowSecond :
      EqEqPosRow (SecondLineAt case_000274_support case_000274_rank.val hlt case_000274_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000274_secondLine, EqEqPosRow]
  exact ⟨case_000274_fixedFirst, case_000274_rowSecond⟩

private theorem case_000274_existsRows :
    ExistsEqEqPosVarSecondRows case_000274_rank.val case_000274_mask :=
  ⟨case_000274_support, case_000274_sourceAgrees, case_000274_rows⟩

private theorem case_000274_covered :
    RowPropertyParametricCovered case_000274_rank.val case_000274_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000274_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000275_rank : Fin numPairWords := ⟨72, by decide⟩
private def case_000275_mask : SignMask := ⟨30, by decide⟩
private def case_000275_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000275_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000275_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000275_b : Vec3 Rat := { x := (-316/27), y := (-28/27), z := (284/27) }
private def case_000275_firstLine : StrictLin2 := { a := (-79/15), b := (-79/15), c := (-69/5) }
private def case_000275_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000275_rankWord :
    rankPairWord? case_000275_word = some case_000275_rank := by
  decide

private theorem case_000275_unrank :
    unrankPairWord case_000275_rank = case_000275_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000275_word case_000275_rank).1
    case_000275_rankWord |>.symm

private theorem case_000275_seqChoice :
    translationChoiceSeq case_000275_word case_000275_mask = case_000275_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000275_seqAtRank :
    translationSeqAtRankMask case_000275_rank case_000275_mask = case_000275_seq := by
  rw [translationSeqAtRankMask, case_000275_unrank]
  exact case_000275_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000275_bAtRank :
    translationBAtRankMask case_000275_rank case_000275_mask = case_000275_b := by
  rw [translationBAtRankMask, case_000275_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000275_b, case_000275_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000275_firstLine_eq :
    case_000275_support.firstLine case_000275_seq case_000275_b = case_000275_firstLine := by
  norm_num [case_000275_firstLine, case_000275_support, case_000275_seq, case_000275_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000275_secondLine_eq :
    case_000275_support.secondLine case_000275_seq case_000275_b = case_000275_secondLine := by
  norm_num [case_000275_secondLine, case_000275_support, case_000275_seq, case_000275_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000275_sourceAgrees :
    SourceAgrees case_000275_support case_000275_rank.val case_000275_mask := by
  intro hlt
  have hrank : (⟨case_000275_rank.val, hlt⟩ : Fin numPairWords) = case_000275_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000275_rank.val, hlt⟩ case_000275_mask =
        case_000275_seq := by
    simpa [hrank] using case_000275_seqAtRank
  simp [SourceChecks, hseq, case_000275_support,
    checkTranslationConstraintSource, case_000275_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000275_rows :
    EqEqPosVarFirstRows case_000275_support case_000275_rank.val case_000275_mask := by
  intro hlt
  have hrank : (⟨case_000275_rank.val, hlt⟩ : Fin numPairWords) = case_000275_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000275_rank.val, hlt⟩ case_000275_mask =
        case_000275_seq := by
    simpa [hrank] using case_000275_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000275_rank.val, hlt⟩ case_000275_mask =
        case_000275_b := by
    simpa [hrank] using case_000275_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000275_support case_000275_rank.val hlt
          case_000275_mask = case_000275_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000275_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000275_support case_000275_rank.val hlt
          case_000275_mask = case_000275_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000275_secondLine_eq]
  have case_000275_rowFirst :
      EqEqPosRow (FirstLineAt case_000275_support case_000275_rank.val hlt case_000275_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000275_firstLine, EqEqPosRow]
  have case_000275_fixedSecond :
      FixedRow (SecondLineAt case_000275_support case_000275_rank.val hlt case_000275_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000275_secondLine, FixedRow]
  exact ⟨case_000275_rowFirst, case_000275_fixedSecond⟩

private theorem case_000275_existsRows :
    ExistsEqEqPosVarFirstRows case_000275_rank.val case_000275_mask :=
  ⟨case_000275_support, case_000275_sourceAgrees, case_000275_rows⟩

private theorem case_000275_covered :
    RowPropertyParametricCovered case_000275_rank.val case_000275_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000275_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000276_rank : Fin numPairWords := ⟨72, by decide⟩
private def case_000276_mask : SignMask := ⟨45, by decide⟩
private def case_000276_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000276_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000276_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000276_b : Vec3 Rat := { x := (-124/27), y := (380/27), z := (-28/27) }
private def case_000276_firstLine : StrictLin2 := { a := 1, b := -1, c := (-173/31) }
private def case_000276_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000276_rankWord :
    rankPairWord? case_000276_word = some case_000276_rank := by
  decide

private theorem case_000276_unrank :
    unrankPairWord case_000276_rank = case_000276_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000276_word case_000276_rank).1
    case_000276_rankWord |>.symm

private theorem case_000276_seqChoice :
    translationChoiceSeq case_000276_word case_000276_mask = case_000276_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000276_seqAtRank :
    translationSeqAtRankMask case_000276_rank case_000276_mask = case_000276_seq := by
  rw [translationSeqAtRankMask, case_000276_unrank]
  exact case_000276_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000276_bAtRank :
    translationBAtRankMask case_000276_rank case_000276_mask = case_000276_b := by
  rw [translationBAtRankMask, case_000276_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000276_b, case_000276_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000276_firstLine_eq :
    case_000276_support.firstLine case_000276_seq case_000276_b = case_000276_firstLine := by
  norm_num [case_000276_firstLine, case_000276_support, case_000276_seq, case_000276_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000276_secondLine_eq :
    case_000276_support.secondLine case_000276_seq case_000276_b = case_000276_secondLine := by
  norm_num [case_000276_secondLine, case_000276_support, case_000276_seq, case_000276_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000276_sourceAgrees :
    SourceAgrees case_000276_support case_000276_rank.val case_000276_mask := by
  intro hlt
  have hrank : (⟨case_000276_rank.val, hlt⟩ : Fin numPairWords) = case_000276_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000276_rank.val, hlt⟩ case_000276_mask =
        case_000276_seq := by
    simpa [hrank] using case_000276_seqAtRank
  simp [SourceChecks, hseq, case_000276_support,
    checkTranslationConstraintSource, case_000276_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000276_rows :
    OppMinusOneVarFirstRows case_000276_support case_000276_rank.val case_000276_mask := by
  intro hlt
  have hrank : (⟨case_000276_rank.val, hlt⟩ : Fin numPairWords) = case_000276_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000276_rank.val, hlt⟩ case_000276_mask =
        case_000276_seq := by
    simpa [hrank] using case_000276_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000276_rank.val, hlt⟩ case_000276_mask =
        case_000276_b := by
    simpa [hrank] using case_000276_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000276_support case_000276_rank.val hlt
          case_000276_mask = case_000276_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000276_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000276_support case_000276_rank.val hlt
          case_000276_mask = case_000276_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000276_secondLine_eq]
  have case_000276_rowFirst :
      OppNegRow (FirstLineAt case_000276_support case_000276_rank.val hlt case_000276_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000276_firstLine, OppNegRow]
  have case_000276_fixedSecond :
      FixedRow (SecondLineAt case_000276_support case_000276_rank.val hlt case_000276_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000276_secondLine, FixedRow]
  exact ⟨case_000276_rowFirst, case_000276_fixedSecond⟩

private theorem case_000276_existsRows :
    ExistsOppMinusOneVarFirstRows case_000276_rank.val case_000276_mask :=
  ⟨case_000276_support, case_000276_sourceAgrees, case_000276_rows⟩

private theorem case_000276_covered :
    RowPropertyParametricCovered case_000276_rank.val case_000276_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000276_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_second|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`. -/
private def case_000277_rank : Fin numPairWords := ⟨72, by decide⟩
private def case_000277_mask : SignMask := ⟨63, by decide⟩
private def case_000277_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000277_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000277_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000277_b : Vec3 Rat := { x := (-172/27), y := (332/27), z := (428/27) }
private def case_000277_firstLine : StrictLin2 := { a := -1, b := -1, c := 1 }
private def case_000277_secondLine : StrictLin2 := { a := (387/22834), b := (387/22834), c := (-555/11417) }

private theorem case_000277_rankWord :
    rankPairWord? case_000277_word = some case_000277_rank := by
  decide

private theorem case_000277_unrank :
    unrankPairWord case_000277_rank = case_000277_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000277_word case_000277_rank).1
    case_000277_rankWord |>.symm

private theorem case_000277_seqChoice :
    translationChoiceSeq case_000277_word case_000277_mask = case_000277_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000277_seqAtRank :
    translationSeqAtRankMask case_000277_rank case_000277_mask = case_000277_seq := by
  rw [translationSeqAtRankMask, case_000277_unrank]
  exact case_000277_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000277_bAtRank :
    translationBAtRankMask case_000277_rank case_000277_mask = case_000277_b := by
  rw [translationBAtRankMask, case_000277_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000277_b, case_000277_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000277_firstLine_eq :
    case_000277_support.firstLine case_000277_seq case_000277_b = case_000277_firstLine := by
  norm_num [case_000277_firstLine, case_000277_support, case_000277_seq, case_000277_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000277_secondLine_eq :
    case_000277_support.secondLine case_000277_seq case_000277_b = case_000277_secondLine := by
  norm_num [case_000277_secondLine, case_000277_support, case_000277_seq, case_000277_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000277_sourceAgrees :
    SourceAgrees case_000277_support case_000277_rank.val case_000277_mask := by
  intro hlt
  have hrank : (⟨case_000277_rank.val, hlt⟩ : Fin numPairWords) = case_000277_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000277_rank.val, hlt⟩ case_000277_mask =
        case_000277_seq := by
    simpa [hrank] using case_000277_seqAtRank
  simp [SourceChecks, hseq, case_000277_support,
    checkTranslationConstraintSource, case_000277_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000277_rows :
    EqEqNegVarSecondRows case_000277_support case_000277_rank.val case_000277_mask := by
  intro hlt
  have hrank : (⟨case_000277_rank.val, hlt⟩ : Fin numPairWords) = case_000277_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000277_rank.val, hlt⟩ case_000277_mask =
        case_000277_seq := by
    simpa [hrank] using case_000277_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000277_rank.val, hlt⟩ case_000277_mask =
        case_000277_b := by
    simpa [hrank] using case_000277_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000277_support case_000277_rank.val hlt
          case_000277_mask = case_000277_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000277_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000277_support case_000277_rank.val hlt
          case_000277_mask = case_000277_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000277_secondLine_eq]
  have case_000277_fixedFirst :
      FixedRow (FirstLineAt case_000277_support case_000277_rank.val hlt case_000277_mask)
        (-1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000277_firstLine, FixedRow]
  have case_000277_rowSecond :
      EqEqNegRow (SecondLineAt case_000277_support case_000277_rank.val hlt case_000277_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000277_secondLine, EqEqNegRow]
  exact ⟨case_000277_fixedFirst, case_000277_rowSecond⟩

private theorem case_000277_existsRows :
    ExistsEqEqNegVarSecondRows case_000277_rank.val case_000277_mask :=
  ⟨case_000277_support, case_000277_sourceAgrees, case_000277_rows⟩

private theorem case_000277_covered :
    RowPropertyParametricCovered case_000277_rank.val case_000277_mask :=
  RowPropertyParametricCovered.eqEqNegVarSecond case_000277_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000278_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000278_mask : SignMask := ⟨0, by decide⟩
private def case_000278_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000278_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000278_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000278_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-116/9) }
private def case_000278_firstLine : StrictLin2 := { a := -1, b := -1, c := (-111/5) }
private def case_000278_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000278_rankWord :
    rankPairWord? case_000278_word = some case_000278_rank := by
  decide

private theorem case_000278_unrank :
    unrankPairWord case_000278_rank = case_000278_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000278_word case_000278_rank).1
    case_000278_rankWord |>.symm

private theorem case_000278_seqChoice :
    translationChoiceSeq case_000278_word case_000278_mask = case_000278_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000278_seqAtRank :
    translationSeqAtRankMask case_000278_rank case_000278_mask = case_000278_seq := by
  rw [translationSeqAtRankMask, case_000278_unrank]
  exact case_000278_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000278_bAtRank :
    translationBAtRankMask case_000278_rank case_000278_mask = case_000278_b := by
  rw [translationBAtRankMask, case_000278_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000278_b, case_000278_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000278_firstLine_eq :
    case_000278_support.firstLine case_000278_seq case_000278_b = case_000278_firstLine := by
  norm_num [case_000278_firstLine, case_000278_support, case_000278_seq, case_000278_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000278_secondLine_eq :
    case_000278_support.secondLine case_000278_seq case_000278_b = case_000278_secondLine := by
  norm_num [case_000278_secondLine, case_000278_support, case_000278_seq, case_000278_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000278_sourceAgrees :
    SourceAgrees case_000278_support case_000278_rank.val case_000278_mask := by
  intro hlt
  have hrank : (⟨case_000278_rank.val, hlt⟩ : Fin numPairWords) = case_000278_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000278_rank.val, hlt⟩ case_000278_mask =
        case_000278_seq := by
    simpa [hrank] using case_000278_seqAtRank
  simp [SourceChecks, hseq, case_000278_support,
    checkTranslationConstraintSource, case_000278_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000278_rows :
    EqEqPosVarFirstRows case_000278_support case_000278_rank.val case_000278_mask := by
  intro hlt
  have hrank : (⟨case_000278_rank.val, hlt⟩ : Fin numPairWords) = case_000278_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000278_rank.val, hlt⟩ case_000278_mask =
        case_000278_seq := by
    simpa [hrank] using case_000278_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000278_rank.val, hlt⟩ case_000278_mask =
        case_000278_b := by
    simpa [hrank] using case_000278_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000278_support case_000278_rank.val hlt
          case_000278_mask = case_000278_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000278_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000278_support case_000278_rank.val hlt
          case_000278_mask = case_000278_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000278_secondLine_eq]
  have case_000278_rowFirst :
      EqEqPosRow (FirstLineAt case_000278_support case_000278_rank.val hlt case_000278_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000278_firstLine, EqEqPosRow]
  have case_000278_fixedSecond :
      FixedRow (SecondLineAt case_000278_support case_000278_rank.val hlt case_000278_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000278_secondLine, FixedRow]
  exact ⟨case_000278_rowFirst, case_000278_fixedSecond⟩

private theorem case_000278_existsRows :
    ExistsEqEqPosVarFirstRows case_000278_rank.val case_000278_mask :=
  ⟨case_000278_support, case_000278_sourceAgrees, case_000278_rows⟩

private theorem case_000278_covered :
    RowPropertyParametricCovered case_000278_rank.val case_000278_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000278_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000279_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000279_mask : SignMask := ⟨9, by decide⟩
private def case_000279_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000279_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000279_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000279_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000279_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000279_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000279_rankWord :
    rankPairWord? case_000279_word = some case_000279_rank := by
  decide

private theorem case_000279_unrank :
    unrankPairWord case_000279_rank = case_000279_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000279_word case_000279_rank).1
    case_000279_rankWord |>.symm

private theorem case_000279_seqChoice :
    translationChoiceSeq case_000279_word case_000279_mask = case_000279_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000279_seqAtRank :
    translationSeqAtRankMask case_000279_rank case_000279_mask = case_000279_seq := by
  rw [translationSeqAtRankMask, case_000279_unrank]
  exact case_000279_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000279_bAtRank :
    translationBAtRankMask case_000279_rank case_000279_mask = case_000279_b := by
  rw [translationBAtRankMask, case_000279_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000279_b, case_000279_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000279_firstLine_eq :
    case_000279_support.firstLine case_000279_seq case_000279_b = case_000279_firstLine := by
  norm_num [case_000279_firstLine, case_000279_support, case_000279_seq, case_000279_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000279_secondLine_eq :
    case_000279_support.secondLine case_000279_seq case_000279_b = case_000279_secondLine := by
  norm_num [case_000279_secondLine, case_000279_support, case_000279_seq, case_000279_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000279_sourceAgrees :
    SourceAgrees case_000279_support case_000279_rank.val case_000279_mask := by
  intro hlt
  have hrank : (⟨case_000279_rank.val, hlt⟩ : Fin numPairWords) = case_000279_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000279_rank.val, hlt⟩ case_000279_mask =
        case_000279_seq := by
    simpa [hrank] using case_000279_seqAtRank
  simp [SourceChecks, hseq, case_000279_support,
    checkTranslationConstraintSource, case_000279_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000279_rows :
    EqEqPosVarFirstRows case_000279_support case_000279_rank.val case_000279_mask := by
  intro hlt
  have hrank : (⟨case_000279_rank.val, hlt⟩ : Fin numPairWords) = case_000279_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000279_rank.val, hlt⟩ case_000279_mask =
        case_000279_seq := by
    simpa [hrank] using case_000279_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000279_rank.val, hlt⟩ case_000279_mask =
        case_000279_b := by
    simpa [hrank] using case_000279_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000279_support case_000279_rank.val hlt
          case_000279_mask = case_000279_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000279_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000279_support case_000279_rank.val hlt
          case_000279_mask = case_000279_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000279_secondLine_eq]
  have case_000279_rowFirst :
      EqEqPosRow (FirstLineAt case_000279_support case_000279_rank.val hlt case_000279_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000279_firstLine, EqEqPosRow]
  have case_000279_fixedSecond :
      FixedRow (SecondLineAt case_000279_support case_000279_rank.val hlt case_000279_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000279_secondLine, FixedRow]
  exact ⟨case_000279_rowFirst, case_000279_fixedSecond⟩

private theorem case_000279_existsRows :
    ExistsEqEqPosVarFirstRows case_000279_rank.val case_000279_mask :=
  ⟨case_000279_support, case_000279_sourceAgrees, case_000279_rows⟩

private theorem case_000279_covered :
    RowPropertyParametricCovered case_000279_rank.val case_000279_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000279_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000280_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000280_mask : SignMask := ⟨13, by decide⟩
private def case_000280_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000280_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000280_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000280_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000280_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000280_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000280_rankWord :
    rankPairWord? case_000280_word = some case_000280_rank := by
  decide

private theorem case_000280_unrank :
    unrankPairWord case_000280_rank = case_000280_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000280_word case_000280_rank).1
    case_000280_rankWord |>.symm

private theorem case_000280_seqChoice :
    translationChoiceSeq case_000280_word case_000280_mask = case_000280_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000280_seqAtRank :
    translationSeqAtRankMask case_000280_rank case_000280_mask = case_000280_seq := by
  rw [translationSeqAtRankMask, case_000280_unrank]
  exact case_000280_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000280_bAtRank :
    translationBAtRankMask case_000280_rank case_000280_mask = case_000280_b := by
  rw [translationBAtRankMask, case_000280_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000280_b, case_000280_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000280_firstLine_eq :
    case_000280_support.firstLine case_000280_seq case_000280_b = case_000280_firstLine := by
  norm_num [case_000280_firstLine, case_000280_support, case_000280_seq, case_000280_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000280_secondLine_eq :
    case_000280_support.secondLine case_000280_seq case_000280_b = case_000280_secondLine := by
  norm_num [case_000280_secondLine, case_000280_support, case_000280_seq, case_000280_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000280_sourceAgrees :
    SourceAgrees case_000280_support case_000280_rank.val case_000280_mask := by
  intro hlt
  have hrank : (⟨case_000280_rank.val, hlt⟩ : Fin numPairWords) = case_000280_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000280_rank.val, hlt⟩ case_000280_mask =
        case_000280_seq := by
    simpa [hrank] using case_000280_seqAtRank
  simp [SourceChecks, hseq, case_000280_support,
    checkTranslationConstraintSource, case_000280_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000280_rows :
    EqEqPosVarSecondRows case_000280_support case_000280_rank.val case_000280_mask := by
  intro hlt
  have hrank : (⟨case_000280_rank.val, hlt⟩ : Fin numPairWords) = case_000280_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000280_rank.val, hlt⟩ case_000280_mask =
        case_000280_seq := by
    simpa [hrank] using case_000280_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000280_rank.val, hlt⟩ case_000280_mask =
        case_000280_b := by
    simpa [hrank] using case_000280_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000280_support case_000280_rank.val hlt
          case_000280_mask = case_000280_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000280_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000280_support case_000280_rank.val hlt
          case_000280_mask = case_000280_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000280_secondLine_eq]
  have case_000280_fixedFirst :
      FixedRow (FirstLineAt case_000280_support case_000280_rank.val hlt case_000280_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000280_firstLine, FixedRow]
  have case_000280_rowSecond :
      EqEqPosRow (SecondLineAt case_000280_support case_000280_rank.val hlt case_000280_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000280_secondLine, EqEqPosRow]
  exact ⟨case_000280_fixedFirst, case_000280_rowSecond⟩

private theorem case_000280_existsRows :
    ExistsEqEqPosVarSecondRows case_000280_rank.val case_000280_mask :=
  ⟨case_000280_support, case_000280_sourceAgrees, case_000280_rows⟩

private theorem case_000280_covered :
    RowPropertyParametricCovered case_000280_rank.val case_000280_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000280_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000281_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000281_mask : SignMask := ⟨18, by decide⟩
private def case_000281_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000281_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000281_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000281_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000281_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000281_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000281_rankWord :
    rankPairWord? case_000281_word = some case_000281_rank := by
  decide

private theorem case_000281_unrank :
    unrankPairWord case_000281_rank = case_000281_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000281_word case_000281_rank).1
    case_000281_rankWord |>.symm

private theorem case_000281_seqChoice :
    translationChoiceSeq case_000281_word case_000281_mask = case_000281_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000281_seqAtRank :
    translationSeqAtRankMask case_000281_rank case_000281_mask = case_000281_seq := by
  rw [translationSeqAtRankMask, case_000281_unrank]
  exact case_000281_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000281_bAtRank :
    translationBAtRankMask case_000281_rank case_000281_mask = case_000281_b := by
  rw [translationBAtRankMask, case_000281_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000281_b, case_000281_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000281_firstLine_eq :
    case_000281_support.firstLine case_000281_seq case_000281_b = case_000281_firstLine := by
  norm_num [case_000281_firstLine, case_000281_support, case_000281_seq, case_000281_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000281_secondLine_eq :
    case_000281_support.secondLine case_000281_seq case_000281_b = case_000281_secondLine := by
  norm_num [case_000281_secondLine, case_000281_support, case_000281_seq, case_000281_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000281_sourceAgrees :
    SourceAgrees case_000281_support case_000281_rank.val case_000281_mask := by
  intro hlt
  have hrank : (⟨case_000281_rank.val, hlt⟩ : Fin numPairWords) = case_000281_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000281_rank.val, hlt⟩ case_000281_mask =
        case_000281_seq := by
    simpa [hrank] using case_000281_seqAtRank
  simp [SourceChecks, hseq, case_000281_support,
    checkTranslationConstraintSource, case_000281_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000281_rows :
    EqEqPosVarFirstRows case_000281_support case_000281_rank.val case_000281_mask := by
  intro hlt
  have hrank : (⟨case_000281_rank.val, hlt⟩ : Fin numPairWords) = case_000281_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000281_rank.val, hlt⟩ case_000281_mask =
        case_000281_seq := by
    simpa [hrank] using case_000281_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000281_rank.val, hlt⟩ case_000281_mask =
        case_000281_b := by
    simpa [hrank] using case_000281_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000281_support case_000281_rank.val hlt
          case_000281_mask = case_000281_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000281_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000281_support case_000281_rank.val hlt
          case_000281_mask = case_000281_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000281_secondLine_eq]
  have case_000281_rowFirst :
      EqEqPosRow (FirstLineAt case_000281_support case_000281_rank.val hlt case_000281_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000281_firstLine, EqEqPosRow]
  have case_000281_fixedSecond :
      FixedRow (SecondLineAt case_000281_support case_000281_rank.val hlt case_000281_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000281_secondLine, FixedRow]
  exact ⟨case_000281_rowFirst, case_000281_fixedSecond⟩

private theorem case_000281_existsRows :
    ExistsEqEqPosVarFirstRows case_000281_rank.val case_000281_mask :=
  ⟨case_000281_support, case_000281_sourceAgrees, case_000281_rows⟩

private theorem case_000281_covered :
    RowPropertyParametricCovered case_000281_rank.val case_000281_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000281_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000282_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000282_mask : SignMask := ⟨22, by decide⟩
private def case_000282_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000282_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000282_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000282_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000282_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000282_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_000282_rankWord :
    rankPairWord? case_000282_word = some case_000282_rank := by
  decide

private theorem case_000282_unrank :
    unrankPairWord case_000282_rank = case_000282_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000282_word case_000282_rank).1
    case_000282_rankWord |>.symm

private theorem case_000282_seqChoice :
    translationChoiceSeq case_000282_word case_000282_mask = case_000282_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000282_seqAtRank :
    translationSeqAtRankMask case_000282_rank case_000282_mask = case_000282_seq := by
  rw [translationSeqAtRankMask, case_000282_unrank]
  exact case_000282_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000282_bAtRank :
    translationBAtRankMask case_000282_rank case_000282_mask = case_000282_b := by
  rw [translationBAtRankMask, case_000282_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000282_b, case_000282_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000282_firstLine_eq :
    case_000282_support.firstLine case_000282_seq case_000282_b = case_000282_firstLine := by
  norm_num [case_000282_firstLine, case_000282_support, case_000282_seq, case_000282_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000282_secondLine_eq :
    case_000282_support.secondLine case_000282_seq case_000282_b = case_000282_secondLine := by
  norm_num [case_000282_secondLine, case_000282_support, case_000282_seq, case_000282_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000282_sourceAgrees :
    SourceAgrees case_000282_support case_000282_rank.val case_000282_mask := by
  intro hlt
  have hrank : (⟨case_000282_rank.val, hlt⟩ : Fin numPairWords) = case_000282_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000282_rank.val, hlt⟩ case_000282_mask =
        case_000282_seq := by
    simpa [hrank] using case_000282_seqAtRank
  simp [SourceChecks, hseq, case_000282_support,
    checkTranslationConstraintSource, case_000282_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000282_rows :
    EqEqPosVarSecondRows case_000282_support case_000282_rank.val case_000282_mask := by
  intro hlt
  have hrank : (⟨case_000282_rank.val, hlt⟩ : Fin numPairWords) = case_000282_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000282_rank.val, hlt⟩ case_000282_mask =
        case_000282_seq := by
    simpa [hrank] using case_000282_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000282_rank.val, hlt⟩ case_000282_mask =
        case_000282_b := by
    simpa [hrank] using case_000282_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000282_support case_000282_rank.val hlt
          case_000282_mask = case_000282_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000282_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000282_support case_000282_rank.val hlt
          case_000282_mask = case_000282_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000282_secondLine_eq]
  have case_000282_fixedFirst :
      FixedRow (FirstLineAt case_000282_support case_000282_rank.val hlt case_000282_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000282_firstLine, FixedRow]
  have case_000282_rowSecond :
      EqEqPosRow (SecondLineAt case_000282_support case_000282_rank.val hlt case_000282_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000282_secondLine, EqEqPosRow]
  exact ⟨case_000282_fixedFirst, case_000282_rowSecond⟩

private theorem case_000282_existsRows :
    ExistsEqEqPosVarSecondRows case_000282_rank.val case_000282_mask :=
  ⟨case_000282_support, case_000282_sourceAgrees, case_000282_rows⟩

private theorem case_000282_covered :
    RowPropertyParametricCovered case_000282_rank.val case_000282_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000282_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000283_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000283_mask : SignMask := ⟨28, by decide⟩
private def case_000283_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000283_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000283_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000283_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (-4/9) }
private def case_000283_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000283_secondLine : StrictLin2 := { a := (9/4), b := (-9/4), c := (-9/2) }

private theorem case_000283_rankWord :
    rankPairWord? case_000283_word = some case_000283_rank := by
  decide

private theorem case_000283_unrank :
    unrankPairWord case_000283_rank = case_000283_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000283_word case_000283_rank).1
    case_000283_rankWord |>.symm

private theorem case_000283_seqChoice :
    translationChoiceSeq case_000283_word case_000283_mask = case_000283_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000283_seqAtRank :
    translationSeqAtRankMask case_000283_rank case_000283_mask = case_000283_seq := by
  rw [translationSeqAtRankMask, case_000283_unrank]
  exact case_000283_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000283_bAtRank :
    translationBAtRankMask case_000283_rank case_000283_mask = case_000283_b := by
  rw [translationBAtRankMask, case_000283_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000283_b, case_000283_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000283_firstLine_eq :
    case_000283_support.firstLine case_000283_seq case_000283_b = case_000283_firstLine := by
  norm_num [case_000283_firstLine, case_000283_support, case_000283_seq, case_000283_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000283_secondLine_eq :
    case_000283_support.secondLine case_000283_seq case_000283_b = case_000283_secondLine := by
  norm_num [case_000283_secondLine, case_000283_support, case_000283_seq, case_000283_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000283_sourceAgrees :
    SourceAgrees case_000283_support case_000283_rank.val case_000283_mask := by
  intro hlt
  have hrank : (⟨case_000283_rank.val, hlt⟩ : Fin numPairWords) = case_000283_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000283_rank.val, hlt⟩ case_000283_mask =
        case_000283_seq := by
    simpa [hrank] using case_000283_seqAtRank
  simp [SourceChecks, hseq, case_000283_support,
    checkTranslationConstraintSource, case_000283_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000283_rows :
    OppMinusOneVarSecondRows case_000283_support case_000283_rank.val case_000283_mask := by
  intro hlt
  have hrank : (⟨case_000283_rank.val, hlt⟩ : Fin numPairWords) = case_000283_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000283_rank.val, hlt⟩ case_000283_mask =
        case_000283_seq := by
    simpa [hrank] using case_000283_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000283_rank.val, hlt⟩ case_000283_mask =
        case_000283_b := by
    simpa [hrank] using case_000283_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000283_support case_000283_rank.val hlt
          case_000283_mask = case_000283_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000283_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000283_support case_000283_rank.val hlt
          case_000283_mask = case_000283_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000283_secondLine_eq]
  have case_000283_fixedFirst :
      FixedRow (FirstLineAt case_000283_support case_000283_rank.val hlt case_000283_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000283_firstLine, FixedRow]
  have case_000283_rowSecond :
      OppNegRow (SecondLineAt case_000283_support case_000283_rank.val hlt case_000283_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000283_secondLine, OppNegRow]
  exact ⟨case_000283_fixedFirst, case_000283_rowSecond⟩

private theorem case_000283_existsRows :
    ExistsOppMinusOneVarSecondRows case_000283_rank.val case_000283_mask :=
  ⟨case_000283_support, case_000283_sourceAgrees, case_000283_rows⟩

private theorem case_000283_covered :
    RowPropertyParametricCovered case_000283_rank.val case_000283_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000283_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000284_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000284_mask : SignMask := ⟨29, by decide⟩
private def case_000284_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000284_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000284_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000284_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-4/9) }
private def case_000284_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-19/3) }
private def case_000284_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000284_rankWord :
    rankPairWord? case_000284_word = some case_000284_rank := by
  decide

private theorem case_000284_unrank :
    unrankPairWord case_000284_rank = case_000284_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000284_word case_000284_rank).1
    case_000284_rankWord |>.symm

private theorem case_000284_seqChoice :
    translationChoiceSeq case_000284_word case_000284_mask = case_000284_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000284_seqAtRank :
    translationSeqAtRankMask case_000284_rank case_000284_mask = case_000284_seq := by
  rw [translationSeqAtRankMask, case_000284_unrank]
  exact case_000284_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000284_bAtRank :
    translationBAtRankMask case_000284_rank case_000284_mask = case_000284_b := by
  rw [translationBAtRankMask, case_000284_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000284_b, case_000284_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000284_firstLine_eq :
    case_000284_support.firstLine case_000284_seq case_000284_b = case_000284_firstLine := by
  norm_num [case_000284_firstLine, case_000284_support, case_000284_seq, case_000284_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000284_secondLine_eq :
    case_000284_support.secondLine case_000284_seq case_000284_b = case_000284_secondLine := by
  norm_num [case_000284_secondLine, case_000284_support, case_000284_seq, case_000284_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000284_sourceAgrees :
    SourceAgrees case_000284_support case_000284_rank.val case_000284_mask := by
  intro hlt
  have hrank : (⟨case_000284_rank.val, hlt⟩ : Fin numPairWords) = case_000284_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000284_rank.val, hlt⟩ case_000284_mask =
        case_000284_seq := by
    simpa [hrank] using case_000284_seqAtRank
  simp [SourceChecks, hseq, case_000284_support,
    checkTranslationConstraintSource, case_000284_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000284_rows :
    EqEqPosVarFirstRows case_000284_support case_000284_rank.val case_000284_mask := by
  intro hlt
  have hrank : (⟨case_000284_rank.val, hlt⟩ : Fin numPairWords) = case_000284_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000284_rank.val, hlt⟩ case_000284_mask =
        case_000284_seq := by
    simpa [hrank] using case_000284_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000284_rank.val, hlt⟩ case_000284_mask =
        case_000284_b := by
    simpa [hrank] using case_000284_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000284_support case_000284_rank.val hlt
          case_000284_mask = case_000284_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000284_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000284_support case_000284_rank.val hlt
          case_000284_mask = case_000284_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000284_secondLine_eq]
  have case_000284_rowFirst :
      EqEqPosRow (FirstLineAt case_000284_support case_000284_rank.val hlt case_000284_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000284_firstLine, EqEqPosRow]
  have case_000284_fixedSecond :
      FixedRow (SecondLineAt case_000284_support case_000284_rank.val hlt case_000284_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000284_secondLine, FixedRow]
  exact ⟨case_000284_rowFirst, case_000284_fixedSecond⟩

private theorem case_000284_existsRows :
    ExistsEqEqPosVarFirstRows case_000284_rank.val case_000284_mask :=
  ⟨case_000284_support, case_000284_sourceAgrees, case_000284_rows⟩

private theorem case_000284_covered :
    RowPropertyParametricCovered case_000284_rank.val case_000284_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000284_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000285_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000285_mask : SignMask := ⟨30, by decide⟩
private def case_000285_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000285_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000285_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000285_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (68/9) }
private def case_000285_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-19/3) }
private def case_000285_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000285_rankWord :
    rankPairWord? case_000285_word = some case_000285_rank := by
  decide

private theorem case_000285_unrank :
    unrankPairWord case_000285_rank = case_000285_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000285_word case_000285_rank).1
    case_000285_rankWord |>.symm

private theorem case_000285_seqChoice :
    translationChoiceSeq case_000285_word case_000285_mask = case_000285_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000285_seqAtRank :
    translationSeqAtRankMask case_000285_rank case_000285_mask = case_000285_seq := by
  rw [translationSeqAtRankMask, case_000285_unrank]
  exact case_000285_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000285_bAtRank :
    translationBAtRankMask case_000285_rank case_000285_mask = case_000285_b := by
  rw [translationBAtRankMask, case_000285_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000285_b, case_000285_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000285_firstLine_eq :
    case_000285_support.firstLine case_000285_seq case_000285_b = case_000285_firstLine := by
  norm_num [case_000285_firstLine, case_000285_support, case_000285_seq, case_000285_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000285_secondLine_eq :
    case_000285_support.secondLine case_000285_seq case_000285_b = case_000285_secondLine := by
  norm_num [case_000285_secondLine, case_000285_support, case_000285_seq, case_000285_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000285_sourceAgrees :
    SourceAgrees case_000285_support case_000285_rank.val case_000285_mask := by
  intro hlt
  have hrank : (⟨case_000285_rank.val, hlt⟩ : Fin numPairWords) = case_000285_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000285_rank.val, hlt⟩ case_000285_mask =
        case_000285_seq := by
    simpa [hrank] using case_000285_seqAtRank
  simp [SourceChecks, hseq, case_000285_support,
    checkTranslationConstraintSource, case_000285_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000285_rows :
    EqEqPosVarFirstRows case_000285_support case_000285_rank.val case_000285_mask := by
  intro hlt
  have hrank : (⟨case_000285_rank.val, hlt⟩ : Fin numPairWords) = case_000285_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000285_rank.val, hlt⟩ case_000285_mask =
        case_000285_seq := by
    simpa [hrank] using case_000285_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000285_rank.val, hlt⟩ case_000285_mask =
        case_000285_b := by
    simpa [hrank] using case_000285_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000285_support case_000285_rank.val hlt
          case_000285_mask = case_000285_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000285_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000285_support case_000285_rank.val hlt
          case_000285_mask = case_000285_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000285_secondLine_eq]
  have case_000285_rowFirst :
      EqEqPosRow (FirstLineAt case_000285_support case_000285_rank.val hlt case_000285_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000285_firstLine, EqEqPosRow]
  have case_000285_fixedSecond :
      FixedRow (SecondLineAt case_000285_support case_000285_rank.val hlt case_000285_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000285_secondLine, FixedRow]
  exact ⟨case_000285_rowFirst, case_000285_fixedSecond⟩

private theorem case_000285_existsRows :
    ExistsEqEqPosVarFirstRows case_000285_rank.val case_000285_mask :=
  ⟨case_000285_support, case_000285_sourceAgrees, case_000285_rows⟩

private theorem case_000285_covered :
    RowPropertyParametricCovered case_000285_rank.val case_000285_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000285_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000286_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000286_mask : SignMask := ⟨45, by decide⟩
private def case_000286_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000286_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000286_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000286_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000286_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000286_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000286_rankWord :
    rankPairWord? case_000286_word = some case_000286_rank := by
  decide

private theorem case_000286_unrank :
    unrankPairWord case_000286_rank = case_000286_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000286_word case_000286_rank).1
    case_000286_rankWord |>.symm

private theorem case_000286_seqChoice :
    translationChoiceSeq case_000286_word case_000286_mask = case_000286_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000286_seqAtRank :
    translationSeqAtRankMask case_000286_rank case_000286_mask = case_000286_seq := by
  rw [translationSeqAtRankMask, case_000286_unrank]
  exact case_000286_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000286_bAtRank :
    translationBAtRankMask case_000286_rank case_000286_mask = case_000286_b := by
  rw [translationBAtRankMask, case_000286_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000286_b, case_000286_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000286_firstLine_eq :
    case_000286_support.firstLine case_000286_seq case_000286_b = case_000286_firstLine := by
  norm_num [case_000286_firstLine, case_000286_support, case_000286_seq, case_000286_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000286_secondLine_eq :
    case_000286_support.secondLine case_000286_seq case_000286_b = case_000286_secondLine := by
  norm_num [case_000286_secondLine, case_000286_support, case_000286_seq, case_000286_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000286_sourceAgrees :
    SourceAgrees case_000286_support case_000286_rank.val case_000286_mask := by
  intro hlt
  have hrank : (⟨case_000286_rank.val, hlt⟩ : Fin numPairWords) = case_000286_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000286_rank.val, hlt⟩ case_000286_mask =
        case_000286_seq := by
    simpa [hrank] using case_000286_seqAtRank
  simp [SourceChecks, hseq, case_000286_support,
    checkTranslationConstraintSource, case_000286_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000286_rows :
    OppMinusOneVarFirstRows case_000286_support case_000286_rank.val case_000286_mask := by
  intro hlt
  have hrank : (⟨case_000286_rank.val, hlt⟩ : Fin numPairWords) = case_000286_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000286_rank.val, hlt⟩ case_000286_mask =
        case_000286_seq := by
    simpa [hrank] using case_000286_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000286_rank.val, hlt⟩ case_000286_mask =
        case_000286_b := by
    simpa [hrank] using case_000286_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000286_support case_000286_rank.val hlt
          case_000286_mask = case_000286_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000286_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000286_support case_000286_rank.val hlt
          case_000286_mask = case_000286_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000286_secondLine_eq]
  have case_000286_rowFirst :
      OppNegRow (FirstLineAt case_000286_support case_000286_rank.val hlt case_000286_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000286_firstLine, OppNegRow]
  have case_000286_fixedSecond :
      FixedRow (SecondLineAt case_000286_support case_000286_rank.val hlt case_000286_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000286_secondLine, FixedRow]
  exact ⟨case_000286_rowFirst, case_000286_fixedSecond⟩

private theorem case_000286_existsRows :
    ExistsOppMinusOneVarFirstRows case_000286_rank.val case_000286_mask :=
  ⟨case_000286_support, case_000286_sourceAgrees, case_000286_rows⟩

private theorem case_000286_covered :
    RowPropertyParametricCovered case_000286_rank.val case_000286_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000286_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000287_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000287_mask : SignMask := ⟨54, by decide⟩
private def case_000287_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000287_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000287_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def case_000287_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000287_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000287_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000287_rankWord :
    rankPairWord? case_000287_word = some case_000287_rank := by
  decide

private theorem case_000287_unrank :
    unrankPairWord case_000287_rank = case_000287_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000287_word case_000287_rank).1
    case_000287_rankWord |>.symm

private theorem case_000287_seqChoice :
    translationChoiceSeq case_000287_word case_000287_mask = case_000287_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000287_seqAtRank :
    translationSeqAtRankMask case_000287_rank case_000287_mask = case_000287_seq := by
  rw [translationSeqAtRankMask, case_000287_unrank]
  exact case_000287_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000287_bAtRank :
    translationBAtRankMask case_000287_rank case_000287_mask = case_000287_b := by
  rw [translationBAtRankMask, case_000287_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000287_b, case_000287_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000287_firstLine_eq :
    case_000287_support.firstLine case_000287_seq case_000287_b = case_000287_firstLine := by
  norm_num [case_000287_firstLine, case_000287_support, case_000287_seq, case_000287_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000287_secondLine_eq :
    case_000287_support.secondLine case_000287_seq case_000287_b = case_000287_secondLine := by
  norm_num [case_000287_secondLine, case_000287_support, case_000287_seq, case_000287_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000287_sourceAgrees :
    SourceAgrees case_000287_support case_000287_rank.val case_000287_mask := by
  intro hlt
  have hrank : (⟨case_000287_rank.val, hlt⟩ : Fin numPairWords) = case_000287_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000287_rank.val, hlt⟩ case_000287_mask =
        case_000287_seq := by
    simpa [hrank] using case_000287_seqAtRank
  simp [SourceChecks, hseq, case_000287_support,
    checkTranslationConstraintSource, case_000287_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000287_rows :
    OppOneMinusVarFirstRows case_000287_support case_000287_rank.val case_000287_mask := by
  intro hlt
  have hrank : (⟨case_000287_rank.val, hlt⟩ : Fin numPairWords) = case_000287_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000287_rank.val, hlt⟩ case_000287_mask =
        case_000287_seq := by
    simpa [hrank] using case_000287_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000287_rank.val, hlt⟩ case_000287_mask =
        case_000287_b := by
    simpa [hrank] using case_000287_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000287_support case_000287_rank.val hlt
          case_000287_mask = case_000287_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000287_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000287_support case_000287_rank.val hlt
          case_000287_mask = case_000287_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000287_secondLine_eq]
  have case_000287_rowFirst :
      OppPosRow (FirstLineAt case_000287_support case_000287_rank.val hlt case_000287_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000287_firstLine, OppPosRow]
  have case_000287_fixedSecond :
      FixedRow (SecondLineAt case_000287_support case_000287_rank.val hlt case_000287_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000287_secondLine, FixedRow]
  exact ⟨case_000287_rowFirst, case_000287_fixedSecond⟩

private theorem case_000287_existsRows :
    ExistsOppOneMinusVarFirstRows case_000287_rank.val case_000287_mask :=
  ⟨case_000287_support, case_000287_sourceAgrees, case_000287_rows⟩

private theorem case_000287_covered :
    RowPropertyParametricCovered case_000287_rank.val case_000287_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000287_existsRows

inductive Group008Covered : Nat -> SignMask -> Prop
  | case_000256 : Group008Covered case_000256_rank.val case_000256_mask
  | case_000257 : Group008Covered case_000257_rank.val case_000257_mask
  | case_000258 : Group008Covered case_000258_rank.val case_000258_mask
  | case_000259 : Group008Covered case_000259_rank.val case_000259_mask
  | case_000260 : Group008Covered case_000260_rank.val case_000260_mask
  | case_000261 : Group008Covered case_000261_rank.val case_000261_mask
  | case_000262 : Group008Covered case_000262_rank.val case_000262_mask
  | case_000263 : Group008Covered case_000263_rank.val case_000263_mask
  | case_000264 : Group008Covered case_000264_rank.val case_000264_mask
  | case_000265 : Group008Covered case_000265_rank.val case_000265_mask
  | case_000266 : Group008Covered case_000266_rank.val case_000266_mask
  | case_000267 : Group008Covered case_000267_rank.val case_000267_mask
  | case_000268 : Group008Covered case_000268_rank.val case_000268_mask
  | case_000269 : Group008Covered case_000269_rank.val case_000269_mask
  | case_000270 : Group008Covered case_000270_rank.val case_000270_mask
  | case_000271 : Group008Covered case_000271_rank.val case_000271_mask
  | case_000272 : Group008Covered case_000272_rank.val case_000272_mask
  | case_000273 : Group008Covered case_000273_rank.val case_000273_mask
  | case_000274 : Group008Covered case_000274_rank.val case_000274_mask
  | case_000275 : Group008Covered case_000275_rank.val case_000275_mask
  | case_000276 : Group008Covered case_000276_rank.val case_000276_mask
  | case_000277 : Group008Covered case_000277_rank.val case_000277_mask
  | case_000278 : Group008Covered case_000278_rank.val case_000278_mask
  | case_000279 : Group008Covered case_000279_rank.val case_000279_mask
  | case_000280 : Group008Covered case_000280_rank.val case_000280_mask
  | case_000281 : Group008Covered case_000281_rank.val case_000281_mask
  | case_000282 : Group008Covered case_000282_rank.val case_000282_mask
  | case_000283 : Group008Covered case_000283_rank.val case_000283_mask
  | case_000284 : Group008Covered case_000284_rank.val case_000284_mask
  | case_000285 : Group008Covered case_000285_rank.val case_000285_mask
  | case_000286 : Group008Covered case_000286_rank.val case_000286_mask
  | case_000287 : Group008Covered case_000287_rank.val case_000287_mask

theorem Group008GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group008Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000256 =>
      exact RowPropertyParametricCovered.kills case_000256_covered
  | case_000257 =>
      exact RowPropertyParametricCovered.kills case_000257_covered
  | case_000258 =>
      exact RowPropertyParametricCovered.kills case_000258_covered
  | case_000259 =>
      exact RowPropertyParametricCovered.kills case_000259_covered
  | case_000260 =>
      exact RowPropertyParametricCovered.kills case_000260_covered
  | case_000261 =>
      exact RowPropertyParametricCovered.kills case_000261_covered
  | case_000262 =>
      exact RowPropertyParametricCovered.kills case_000262_covered
  | case_000263 =>
      exact RowPropertyParametricCovered.kills case_000263_covered
  | case_000264 =>
      exact RowPropertyParametricCovered.kills case_000264_covered
  | case_000265 =>
      exact RowPropertyParametricCovered.kills case_000265_covered
  | case_000266 =>
      exact RowPropertyParametricCovered.kills case_000266_covered
  | case_000267 =>
      exact RowPropertyParametricCovered.kills case_000267_covered
  | case_000268 =>
      exact RowPropertyParametricCovered.kills case_000268_covered
  | case_000269 =>
      exact RowPropertyParametricCovered.kills case_000269_covered
  | case_000270 =>
      exact RowPropertyParametricCovered.kills case_000270_covered
  | case_000271 =>
      exact RowPropertyParametricCovered.kills case_000271_covered
  | case_000272 =>
      exact RowPropertyParametricCovered.kills case_000272_covered
  | case_000273 =>
      exact RowPropertyParametricCovered.kills case_000273_covered
  | case_000274 =>
      exact RowPropertyParametricCovered.kills case_000274_covered
  | case_000275 =>
      exact RowPropertyParametricCovered.kills case_000275_covered
  | case_000276 =>
      exact RowPropertyParametricCovered.kills case_000276_covered
  | case_000277 =>
      exact RowPropertyParametricCovered.kills case_000277_covered
  | case_000278 =>
      exact RowPropertyParametricCovered.kills case_000278_covered
  | case_000279 =>
      exact RowPropertyParametricCovered.kills case_000279_covered
  | case_000280 =>
      exact RowPropertyParametricCovered.kills case_000280_covered
  | case_000281 =>
      exact RowPropertyParametricCovered.kills case_000281_covered
  | case_000282 =>
      exact RowPropertyParametricCovered.kills case_000282_covered
  | case_000283 =>
      exact RowPropertyParametricCovered.kills case_000283_covered
  | case_000284 =>
      exact RowPropertyParametricCovered.kills case_000284_covered
  | case_000285 =>
      exact RowPropertyParametricCovered.kills case_000285_covered
  | case_000286 =>
      exact RowPropertyParametricCovered.kills case_000286_covered
  | case_000287 =>
      exact RowPropertyParametricCovered.kills case_000287_covered

theorem Group008_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group008
