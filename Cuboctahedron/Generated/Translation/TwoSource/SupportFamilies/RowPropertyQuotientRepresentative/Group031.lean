import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group031

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000992_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000992_mask : SignMask := ⟨31, by decide⟩
private def case_000992_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000992_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000992_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000992_b : Vec3 Rat := { x := (-332/27), y := (44/27), z := (76/27) }
private def case_000992_firstLine : StrictLin2 := { a := (-83/75), b := (83/75), c := (-23/15) }
private def case_000992_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000992_rankWord :
    rankPairWord? case_000992_word = some case_000992_rank := by
  decide

private theorem case_000992_unrank :
    unrankPairWord case_000992_rank = case_000992_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000992_word case_000992_rank).1
    case_000992_rankWord |>.symm

private theorem case_000992_seqChoice :
    translationChoiceSeq case_000992_word case_000992_mask = case_000992_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000992_seqAtRank :
    translationSeqAtRankMask case_000992_rank case_000992_mask = case_000992_seq := by
  rw [translationSeqAtRankMask, case_000992_unrank]
  exact case_000992_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000992_bAtRank :
    translationBAtRankMask case_000992_rank case_000992_mask = case_000992_b := by
  rw [translationBAtRankMask, case_000992_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000992_b, case_000992_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000992_firstLine_eq :
    case_000992_support.firstLine case_000992_seq case_000992_b = case_000992_firstLine := by
  norm_num [case_000992_firstLine, case_000992_support, case_000992_seq, case_000992_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000992_secondLine_eq :
    case_000992_support.secondLine case_000992_seq case_000992_b = case_000992_secondLine := by
  norm_num [case_000992_secondLine, case_000992_support, case_000992_seq, case_000992_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000992_sourceAgrees :
    SourceAgrees case_000992_support case_000992_rank.val case_000992_mask := by
  intro hlt
  have hrank : (⟨case_000992_rank.val, hlt⟩ : Fin numPairWords) = case_000992_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000992_rank.val, hlt⟩ case_000992_mask =
        case_000992_seq := by
    simpa [hrank] using case_000992_seqAtRank
  simp [SourceChecks, hseq, case_000992_support,
    checkTranslationConstraintSource, case_000992_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000992_rows :
    OppOneMinusVarFirstRows case_000992_support case_000992_rank.val case_000992_mask := by
  intro hlt
  have hrank : (⟨case_000992_rank.val, hlt⟩ : Fin numPairWords) = case_000992_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000992_rank.val, hlt⟩ case_000992_mask =
        case_000992_seq := by
    simpa [hrank] using case_000992_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000992_rank.val, hlt⟩ case_000992_mask =
        case_000992_b := by
    simpa [hrank] using case_000992_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000992_support case_000992_rank.val hlt
          case_000992_mask = case_000992_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000992_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000992_support case_000992_rank.val hlt
          case_000992_mask = case_000992_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000992_secondLine_eq]
  have case_000992_rowFirst :
      OppPosRow (FirstLineAt case_000992_support case_000992_rank.val hlt case_000992_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000992_firstLine, OppPosRow]
  have case_000992_fixedSecond :
      FixedRow (SecondLineAt case_000992_support case_000992_rank.val hlt case_000992_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000992_secondLine, FixedRow]
  exact ⟨case_000992_rowFirst, case_000992_fixedSecond⟩

private theorem case_000992_existsRows :
    ExistsOppOneMinusVarFirstRows case_000992_rank.val case_000992_mask :=
  ⟨case_000992_support, case_000992_sourceAgrees, case_000992_rows⟩

private theorem case_000992_covered :
    RowPropertyParametricCovered case_000992_rank.val case_000992_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000992_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000993_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000993_mask : SignMask := ⟨47, by decide⟩
private def case_000993_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000993_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000993_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000993_b : Vec3 Rat := { x := (-76/27), y := (364/27), z := (236/27) }
private def case_000993_firstLine : StrictLin2 := { a := 1, b := -1, c := (-45/19) }
private def case_000993_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000993_rankWord :
    rankPairWord? case_000993_word = some case_000993_rank := by
  decide

private theorem case_000993_unrank :
    unrankPairWord case_000993_rank = case_000993_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000993_word case_000993_rank).1
    case_000993_rankWord |>.symm

private theorem case_000993_seqChoice :
    translationChoiceSeq case_000993_word case_000993_mask = case_000993_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000993_seqAtRank :
    translationSeqAtRankMask case_000993_rank case_000993_mask = case_000993_seq := by
  rw [translationSeqAtRankMask, case_000993_unrank]
  exact case_000993_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000993_bAtRank :
    translationBAtRankMask case_000993_rank case_000993_mask = case_000993_b := by
  rw [translationBAtRankMask, case_000993_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000993_b, case_000993_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000993_firstLine_eq :
    case_000993_support.firstLine case_000993_seq case_000993_b = case_000993_firstLine := by
  norm_num [case_000993_firstLine, case_000993_support, case_000993_seq, case_000993_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000993_secondLine_eq :
    case_000993_support.secondLine case_000993_seq case_000993_b = case_000993_secondLine := by
  norm_num [case_000993_secondLine, case_000993_support, case_000993_seq, case_000993_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000993_sourceAgrees :
    SourceAgrees case_000993_support case_000993_rank.val case_000993_mask := by
  intro hlt
  have hrank : (⟨case_000993_rank.val, hlt⟩ : Fin numPairWords) = case_000993_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000993_rank.val, hlt⟩ case_000993_mask =
        case_000993_seq := by
    simpa [hrank] using case_000993_seqAtRank
  simp [SourceChecks, hseq, case_000993_support,
    checkTranslationConstraintSource, case_000993_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000993_rows :
    OppMinusOneVarFirstRows case_000993_support case_000993_rank.val case_000993_mask := by
  intro hlt
  have hrank : (⟨case_000993_rank.val, hlt⟩ : Fin numPairWords) = case_000993_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000993_rank.val, hlt⟩ case_000993_mask =
        case_000993_seq := by
    simpa [hrank] using case_000993_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000993_rank.val, hlt⟩ case_000993_mask =
        case_000993_b := by
    simpa [hrank] using case_000993_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000993_support case_000993_rank.val hlt
          case_000993_mask = case_000993_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000993_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000993_support case_000993_rank.val hlt
          case_000993_mask = case_000993_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000993_secondLine_eq]
  have case_000993_rowFirst :
      OppNegRow (FirstLineAt case_000993_support case_000993_rank.val hlt case_000993_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000993_firstLine, OppNegRow]
  have case_000993_fixedSecond :
      FixedRow (SecondLineAt case_000993_support case_000993_rank.val hlt case_000993_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000993_secondLine, FixedRow]
  exact ⟨case_000993_rowFirst, case_000993_fixedSecond⟩

private theorem case_000993_existsRows :
    ExistsOppMinusOneVarFirstRows case_000993_rank.val case_000993_mask :=
  ⟨case_000993_support, case_000993_sourceAgrees, case_000993_rows⟩

private theorem case_000993_covered :
    RowPropertyParametricCovered case_000993_rank.val case_000993_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000993_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000994_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000994_mask : SignMask := ⟨57, by decide⟩
private def case_000994_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000994_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000994_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000994_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (-332/27) }
private def case_000994_firstLine : StrictLin2 := { a := 1, b := -1, c := (-225/59) }
private def case_000994_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000994_rankWord :
    rankPairWord? case_000994_word = some case_000994_rank := by
  decide

private theorem case_000994_unrank :
    unrankPairWord case_000994_rank = case_000994_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000994_word case_000994_rank).1
    case_000994_rankWord |>.symm

private theorem case_000994_seqChoice :
    translationChoiceSeq case_000994_word case_000994_mask = case_000994_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000994_seqAtRank :
    translationSeqAtRankMask case_000994_rank case_000994_mask = case_000994_seq := by
  rw [translationSeqAtRankMask, case_000994_unrank]
  exact case_000994_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000994_bAtRank :
    translationBAtRankMask case_000994_rank case_000994_mask = case_000994_b := by
  rw [translationBAtRankMask, case_000994_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000994_b, case_000994_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000994_firstLine_eq :
    case_000994_support.firstLine case_000994_seq case_000994_b = case_000994_firstLine := by
  norm_num [case_000994_firstLine, case_000994_support, case_000994_seq, case_000994_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000994_secondLine_eq :
    case_000994_support.secondLine case_000994_seq case_000994_b = case_000994_secondLine := by
  norm_num [case_000994_secondLine, case_000994_support, case_000994_seq, case_000994_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000994_sourceAgrees :
    SourceAgrees case_000994_support case_000994_rank.val case_000994_mask := by
  intro hlt
  have hrank : (⟨case_000994_rank.val, hlt⟩ : Fin numPairWords) = case_000994_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000994_rank.val, hlt⟩ case_000994_mask =
        case_000994_seq := by
    simpa [hrank] using case_000994_seqAtRank
  simp [SourceChecks, hseq, case_000994_support,
    checkTranslationConstraintSource, case_000994_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000994_rows :
    OppMinusOneVarFirstRows case_000994_support case_000994_rank.val case_000994_mask := by
  intro hlt
  have hrank : (⟨case_000994_rank.val, hlt⟩ : Fin numPairWords) = case_000994_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000994_rank.val, hlt⟩ case_000994_mask =
        case_000994_seq := by
    simpa [hrank] using case_000994_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000994_rank.val, hlt⟩ case_000994_mask =
        case_000994_b := by
    simpa [hrank] using case_000994_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000994_support case_000994_rank.val hlt
          case_000994_mask = case_000994_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000994_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000994_support case_000994_rank.val hlt
          case_000994_mask = case_000994_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000994_secondLine_eq]
  have case_000994_rowFirst :
      OppNegRow (FirstLineAt case_000994_support case_000994_rank.val hlt case_000994_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000994_firstLine, OppNegRow]
  have case_000994_fixedSecond :
      FixedRow (SecondLineAt case_000994_support case_000994_rank.val hlt case_000994_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000994_secondLine, FixedRow]
  exact ⟨case_000994_rowFirst, case_000994_fixedSecond⟩

private theorem case_000994_existsRows :
    ExistsOppMinusOneVarFirstRows case_000994_rank.val case_000994_mask :=
  ⟨case_000994_support, case_000994_sourceAgrees, case_000994_rows⟩

private theorem case_000994_covered :
    RowPropertyParametricCovered case_000994_rank.val case_000994_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000994_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000995_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000995_mask : SignMask := ⟨61, by decide⟩
private def case_000995_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000995_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000995_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000995_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (-92/27) }
private def case_000995_firstLine : StrictLin2 := { a := (-71/165), b := (71/165), c := (-263/165) }
private def case_000995_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000995_rankWord :
    rankPairWord? case_000995_word = some case_000995_rank := by
  decide

private theorem case_000995_unrank :
    unrankPairWord case_000995_rank = case_000995_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000995_word case_000995_rank).1
    case_000995_rankWord |>.symm

private theorem case_000995_seqChoice :
    translationChoiceSeq case_000995_word case_000995_mask = case_000995_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000995_seqAtRank :
    translationSeqAtRankMask case_000995_rank case_000995_mask = case_000995_seq := by
  rw [translationSeqAtRankMask, case_000995_unrank]
  exact case_000995_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000995_bAtRank :
    translationBAtRankMask case_000995_rank case_000995_mask = case_000995_b := by
  rw [translationBAtRankMask, case_000995_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000995_b, case_000995_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000995_firstLine_eq :
    case_000995_support.firstLine case_000995_seq case_000995_b = case_000995_firstLine := by
  norm_num [case_000995_firstLine, case_000995_support, case_000995_seq, case_000995_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000995_secondLine_eq :
    case_000995_support.secondLine case_000995_seq case_000995_b = case_000995_secondLine := by
  norm_num [case_000995_secondLine, case_000995_support, case_000995_seq, case_000995_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000995_sourceAgrees :
    SourceAgrees case_000995_support case_000995_rank.val case_000995_mask := by
  intro hlt
  have hrank : (⟨case_000995_rank.val, hlt⟩ : Fin numPairWords) = case_000995_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000995_rank.val, hlt⟩ case_000995_mask =
        case_000995_seq := by
    simpa [hrank] using case_000995_seqAtRank
  simp [SourceChecks, hseq, case_000995_support,
    checkTranslationConstraintSource, case_000995_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000995_rows :
    OppOneMinusVarFirstRows case_000995_support case_000995_rank.val case_000995_mask := by
  intro hlt
  have hrank : (⟨case_000995_rank.val, hlt⟩ : Fin numPairWords) = case_000995_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000995_rank.val, hlt⟩ case_000995_mask =
        case_000995_seq := by
    simpa [hrank] using case_000995_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000995_rank.val, hlt⟩ case_000995_mask =
        case_000995_b := by
    simpa [hrank] using case_000995_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000995_support case_000995_rank.val hlt
          case_000995_mask = case_000995_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000995_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000995_support case_000995_rank.val hlt
          case_000995_mask = case_000995_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000995_secondLine_eq]
  have case_000995_rowFirst :
      OppPosRow (FirstLineAt case_000995_support case_000995_rank.val hlt case_000995_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000995_firstLine, OppPosRow]
  have case_000995_fixedSecond :
      FixedRow (SecondLineAt case_000995_support case_000995_rank.val hlt case_000995_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000995_secondLine, FixedRow]
  exact ⟨case_000995_rowFirst, case_000995_fixedSecond⟩

private theorem case_000995_existsRows :
    ExistsOppOneMinusVarFirstRows case_000995_rank.val case_000995_mask :=
  ⟨case_000995_support, case_000995_sourceAgrees, case_000995_rows⟩

private theorem case_000995_covered :
    RowPropertyParametricCovered case_000995_rank.val case_000995_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000995_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000996_rank : Fin numPairWords := ⟨716, by decide⟩
private def case_000996_mask : SignMask := ⟨63, by decide⟩
private def case_000996_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000996_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000996_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000996_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (124/27) }
private def case_000996_firstLine : StrictLin2 := { a := 1, b := 1, c := (-133/71) }
private def case_000996_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000996_rankWord :
    rankPairWord? case_000996_word = some case_000996_rank := by
  decide

private theorem case_000996_unrank :
    unrankPairWord case_000996_rank = case_000996_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000996_word case_000996_rank).1
    case_000996_rankWord |>.symm

private theorem case_000996_seqChoice :
    translationChoiceSeq case_000996_word case_000996_mask = case_000996_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000996_seqAtRank :
    translationSeqAtRankMask case_000996_rank case_000996_mask = case_000996_seq := by
  rw [translationSeqAtRankMask, case_000996_unrank]
  exact case_000996_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000996_bAtRank :
    translationBAtRankMask case_000996_rank case_000996_mask = case_000996_b := by
  rw [translationBAtRankMask, case_000996_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000996_b, case_000996_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000996_firstLine_eq :
    case_000996_support.firstLine case_000996_seq case_000996_b = case_000996_firstLine := by
  norm_num [case_000996_firstLine, case_000996_support, case_000996_seq, case_000996_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000996_secondLine_eq :
    case_000996_support.secondLine case_000996_seq case_000996_b = case_000996_secondLine := by
  norm_num [case_000996_secondLine, case_000996_support, case_000996_seq, case_000996_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000996_sourceAgrees :
    SourceAgrees case_000996_support case_000996_rank.val case_000996_mask := by
  intro hlt
  have hrank : (⟨case_000996_rank.val, hlt⟩ : Fin numPairWords) = case_000996_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000996_rank.val, hlt⟩ case_000996_mask =
        case_000996_seq := by
    simpa [hrank] using case_000996_seqAtRank
  simp [SourceChecks, hseq, case_000996_support,
    checkTranslationConstraintSource, case_000996_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000996_rows :
    EqEqNegVarFirstRows case_000996_support case_000996_rank.val case_000996_mask := by
  intro hlt
  have hrank : (⟨case_000996_rank.val, hlt⟩ : Fin numPairWords) = case_000996_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000996_rank.val, hlt⟩ case_000996_mask =
        case_000996_seq := by
    simpa [hrank] using case_000996_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000996_rank.val, hlt⟩ case_000996_mask =
        case_000996_b := by
    simpa [hrank] using case_000996_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000996_support case_000996_rank.val hlt
          case_000996_mask = case_000996_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000996_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000996_support case_000996_rank.val hlt
          case_000996_mask = case_000996_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000996_secondLine_eq]
  have case_000996_rowFirst :
      EqEqNegRow (FirstLineAt case_000996_support case_000996_rank.val hlt case_000996_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000996_firstLine, EqEqNegRow]
  have case_000996_fixedSecond :
      FixedRow (SecondLineAt case_000996_support case_000996_rank.val hlt case_000996_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000996_secondLine, FixedRow]
  exact ⟨case_000996_rowFirst, case_000996_fixedSecond⟩

private theorem case_000996_existsRows :
    ExistsEqEqNegVarFirstRows case_000996_rank.val case_000996_mask :=
  ⟨case_000996_support, case_000996_sourceAgrees, case_000996_rows⟩

private theorem case_000996_covered :
    RowPropertyParametricCovered case_000996_rank.val case_000996_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000996_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000997_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_000997_mask : SignMask := ⟨15, by decide⟩
private def case_000997_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_000997_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000997_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000997_b : Vec3 Rat := { x := (-140/27), y := (140/27), z := (268/27) }
private def case_000997_firstLine : StrictLin2 := { a := (-35/3), b := (35/3), c := (-163/3) }
private def case_000997_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000997_rankWord :
    rankPairWord? case_000997_word = some case_000997_rank := by
  decide

private theorem case_000997_unrank :
    unrankPairWord case_000997_rank = case_000997_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000997_word case_000997_rank).1
    case_000997_rankWord |>.symm

private theorem case_000997_seqChoice :
    translationChoiceSeq case_000997_word case_000997_mask = case_000997_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000997_seqAtRank :
    translationSeqAtRankMask case_000997_rank case_000997_mask = case_000997_seq := by
  rw [translationSeqAtRankMask, case_000997_unrank]
  exact case_000997_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000997_bAtRank :
    translationBAtRankMask case_000997_rank case_000997_mask = case_000997_b := by
  rw [translationBAtRankMask, case_000997_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000997_b, case_000997_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000997_firstLine_eq :
    case_000997_support.firstLine case_000997_seq case_000997_b = case_000997_firstLine := by
  norm_num [case_000997_firstLine, case_000997_support, case_000997_seq, case_000997_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000997_secondLine_eq :
    case_000997_support.secondLine case_000997_seq case_000997_b = case_000997_secondLine := by
  norm_num [case_000997_secondLine, case_000997_support, case_000997_seq, case_000997_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000997_sourceAgrees :
    SourceAgrees case_000997_support case_000997_rank.val case_000997_mask := by
  intro hlt
  have hrank : (⟨case_000997_rank.val, hlt⟩ : Fin numPairWords) = case_000997_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000997_rank.val, hlt⟩ case_000997_mask =
        case_000997_seq := by
    simpa [hrank] using case_000997_seqAtRank
  simp [SourceChecks, hseq, case_000997_support,
    checkTranslationConstraintSource, case_000997_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000997_rows :
    OppOneMinusVarFirstRows case_000997_support case_000997_rank.val case_000997_mask := by
  intro hlt
  have hrank : (⟨case_000997_rank.val, hlt⟩ : Fin numPairWords) = case_000997_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000997_rank.val, hlt⟩ case_000997_mask =
        case_000997_seq := by
    simpa [hrank] using case_000997_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000997_rank.val, hlt⟩ case_000997_mask =
        case_000997_b := by
    simpa [hrank] using case_000997_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000997_support case_000997_rank.val hlt
          case_000997_mask = case_000997_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000997_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000997_support case_000997_rank.val hlt
          case_000997_mask = case_000997_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000997_secondLine_eq]
  have case_000997_rowFirst :
      OppPosRow (FirstLineAt case_000997_support case_000997_rank.val hlt case_000997_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000997_firstLine, OppPosRow]
  have case_000997_fixedSecond :
      FixedRow (SecondLineAt case_000997_support case_000997_rank.val hlt case_000997_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000997_secondLine, FixedRow]
  exact ⟨case_000997_rowFirst, case_000997_fixedSecond⟩

private theorem case_000997_existsRows :
    ExistsOppOneMinusVarFirstRows case_000997_rank.val case_000997_mask :=
  ⟨case_000997_support, case_000997_sourceAgrees, case_000997_rows⟩

private theorem case_000997_covered :
    RowPropertyParametricCovered case_000997_rank.val case_000997_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000997_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000998_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_000998_mask : SignMask := ⟨16, by decide⟩
private def case_000998_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_000998_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000998_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tppm
private def case_000998_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000998_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000998_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000998_rankWord :
    rankPairWord? case_000998_word = some case_000998_rank := by
  decide

private theorem case_000998_unrank :
    unrankPairWord case_000998_rank = case_000998_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000998_word case_000998_rank).1
    case_000998_rankWord |>.symm

private theorem case_000998_seqChoice :
    translationChoiceSeq case_000998_word case_000998_mask = case_000998_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000998_seqAtRank :
    translationSeqAtRankMask case_000998_rank case_000998_mask = case_000998_seq := by
  rw [translationSeqAtRankMask, case_000998_unrank]
  exact case_000998_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000998_bAtRank :
    translationBAtRankMask case_000998_rank case_000998_mask = case_000998_b := by
  rw [translationBAtRankMask, case_000998_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000998_b, case_000998_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000998_firstLine_eq :
    case_000998_support.firstLine case_000998_seq case_000998_b = case_000998_firstLine := by
  norm_num [case_000998_firstLine, case_000998_support, case_000998_seq, case_000998_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000998_secondLine_eq :
    case_000998_support.secondLine case_000998_seq case_000998_b = case_000998_secondLine := by
  norm_num [case_000998_secondLine, case_000998_support, case_000998_seq, case_000998_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000998_sourceAgrees :
    SourceAgrees case_000998_support case_000998_rank.val case_000998_mask := by
  intro hlt
  have hrank : (⟨case_000998_rank.val, hlt⟩ : Fin numPairWords) = case_000998_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000998_rank.val, hlt⟩ case_000998_mask =
        case_000998_seq := by
    simpa [hrank] using case_000998_seqAtRank
  simp [SourceChecks, hseq, case_000998_support,
    checkTranslationConstraintSource, case_000998_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000998_rows :
    EqEqPosVarFirstRows case_000998_support case_000998_rank.val case_000998_mask := by
  intro hlt
  have hrank : (⟨case_000998_rank.val, hlt⟩ : Fin numPairWords) = case_000998_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000998_rank.val, hlt⟩ case_000998_mask =
        case_000998_seq := by
    simpa [hrank] using case_000998_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000998_rank.val, hlt⟩ case_000998_mask =
        case_000998_b := by
    simpa [hrank] using case_000998_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000998_support case_000998_rank.val hlt
          case_000998_mask = case_000998_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000998_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000998_support case_000998_rank.val hlt
          case_000998_mask = case_000998_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000998_secondLine_eq]
  have case_000998_rowFirst :
      EqEqPosRow (FirstLineAt case_000998_support case_000998_rank.val hlt case_000998_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000998_firstLine, EqEqPosRow]
  have case_000998_fixedSecond :
      FixedRow (SecondLineAt case_000998_support case_000998_rank.val hlt case_000998_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000998_secondLine, FixedRow]
  exact ⟨case_000998_rowFirst, case_000998_fixedSecond⟩

private theorem case_000998_existsRows :
    ExistsEqEqPosVarFirstRows case_000998_rank.val case_000998_mask :=
  ⟨case_000998_support, case_000998_sourceAgrees, case_000998_rows⟩

private theorem case_000998_covered :
    RowPropertyParametricCovered case_000998_rank.val case_000998_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000998_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000999_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_000999_mask : SignMask := ⟨22, by decide⟩
private def case_000999_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_000999_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000999_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppm
private def case_000999_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_000999_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000999_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000999_rankWord :
    rankPairWord? case_000999_word = some case_000999_rank := by
  decide

private theorem case_000999_unrank :
    unrankPairWord case_000999_rank = case_000999_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000999_word case_000999_rank).1
    case_000999_rankWord |>.symm

private theorem case_000999_seqChoice :
    translationChoiceSeq case_000999_word case_000999_mask = case_000999_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000999_seqAtRank :
    translationSeqAtRankMask case_000999_rank case_000999_mask = case_000999_seq := by
  rw [translationSeqAtRankMask, case_000999_unrank]
  exact case_000999_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000999_bAtRank :
    translationBAtRankMask case_000999_rank case_000999_mask = case_000999_b := by
  rw [translationBAtRankMask, case_000999_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000999_b, case_000999_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000999_firstLine_eq :
    case_000999_support.firstLine case_000999_seq case_000999_b = case_000999_firstLine := by
  norm_num [case_000999_firstLine, case_000999_support, case_000999_seq, case_000999_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000999_secondLine_eq :
    case_000999_support.secondLine case_000999_seq case_000999_b = case_000999_secondLine := by
  norm_num [case_000999_secondLine, case_000999_support, case_000999_seq, case_000999_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000999_sourceAgrees :
    SourceAgrees case_000999_support case_000999_rank.val case_000999_mask := by
  intro hlt
  have hrank : (⟨case_000999_rank.val, hlt⟩ : Fin numPairWords) = case_000999_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000999_rank.val, hlt⟩ case_000999_mask =
        case_000999_seq := by
    simpa [hrank] using case_000999_seqAtRank
  simp [SourceChecks, hseq, case_000999_support,
    checkTranslationConstraintSource, case_000999_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000999_rows :
    EqEqPosVarFirstRows case_000999_support case_000999_rank.val case_000999_mask := by
  intro hlt
  have hrank : (⟨case_000999_rank.val, hlt⟩ : Fin numPairWords) = case_000999_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000999_rank.val, hlt⟩ case_000999_mask =
        case_000999_seq := by
    simpa [hrank] using case_000999_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000999_rank.val, hlt⟩ case_000999_mask =
        case_000999_b := by
    simpa [hrank] using case_000999_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000999_support case_000999_rank.val hlt
          case_000999_mask = case_000999_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000999_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000999_support case_000999_rank.val hlt
          case_000999_mask = case_000999_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000999_secondLine_eq]
  have case_000999_rowFirst :
      EqEqPosRow (FirstLineAt case_000999_support case_000999_rank.val hlt case_000999_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000999_firstLine, EqEqPosRow]
  have case_000999_fixedSecond :
      FixedRow (SecondLineAt case_000999_support case_000999_rank.val hlt case_000999_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000999_secondLine, FixedRow]
  exact ⟨case_000999_rowFirst, case_000999_fixedSecond⟩

private theorem case_000999_existsRows :
    ExistsEqEqPosVarFirstRows case_000999_rank.val case_000999_mask :=
  ⟨case_000999_support, case_000999_sourceAgrees, case_000999_rows⟩

private theorem case_000999_covered :
    RowPropertyParametricCovered case_000999_rank.val case_000999_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000999_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001000_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001000_mask : SignMask := ⟨24, by decide⟩
private def case_001000_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001000_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001000_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_001000_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_001000_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001000_rankWord :
    rankPairWord? case_001000_word = some case_001000_rank := by
  decide

private theorem case_001000_unrank :
    unrankPairWord case_001000_rank = case_001000_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001000_word case_001000_rank).1
    case_001000_rankWord |>.symm

private theorem case_001000_seqChoice :
    translationChoiceSeq case_001000_word case_001000_mask = case_001000_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001000_seqAtRank :
    translationSeqAtRankMask case_001000_rank case_001000_mask = case_001000_seq := by
  rw [translationSeqAtRankMask, case_001000_unrank]
  exact case_001000_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001000_bAtRank :
    translationBAtRankMask case_001000_rank case_001000_mask = case_001000_b := by
  rw [translationBAtRankMask, case_001000_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001000_b, case_001000_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001000_firstLine_eq :
    case_001000_support.firstLine case_001000_seq case_001000_b = case_001000_firstLine := by
  norm_num [case_001000_firstLine, case_001000_support, case_001000_seq, case_001000_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001000_secondLine_eq :
    case_001000_support.secondLine case_001000_seq case_001000_b = case_001000_secondLine := by
  norm_num [case_001000_secondLine, case_001000_support, case_001000_seq, case_001000_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001000_sourceAgrees :
    SourceAgrees case_001000_support case_001000_rank.val case_001000_mask := by
  intro hlt
  have hrank : (⟨case_001000_rank.val, hlt⟩ : Fin numPairWords) = case_001000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001000_rank.val, hlt⟩ case_001000_mask =
        case_001000_seq := by
    simpa [hrank] using case_001000_seqAtRank
  simp [SourceChecks, hseq, case_001000_support,
    checkTranslationConstraintSource, case_001000_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001000_rows :
    EqEqPosVarFirstRows case_001000_support case_001000_rank.val case_001000_mask := by
  intro hlt
  have hrank : (⟨case_001000_rank.val, hlt⟩ : Fin numPairWords) = case_001000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001000_rank.val, hlt⟩ case_001000_mask =
        case_001000_seq := by
    simpa [hrank] using case_001000_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001000_rank.val, hlt⟩ case_001000_mask =
        case_001000_b := by
    simpa [hrank] using case_001000_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001000_support case_001000_rank.val hlt
          case_001000_mask = case_001000_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001000_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001000_support case_001000_rank.val hlt
          case_001000_mask = case_001000_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001000_secondLine_eq]
  have case_001000_rowFirst :
      EqEqPosRow (FirstLineAt case_001000_support case_001000_rank.val hlt case_001000_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001000_firstLine, EqEqPosRow]
  have case_001000_fixedSecond :
      FixedRow (SecondLineAt case_001000_support case_001000_rank.val hlt case_001000_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001000_secondLine, FixedRow]
  exact ⟨case_001000_rowFirst, case_001000_fixedSecond⟩

private theorem case_001000_existsRows :
    ExistsEqEqPosVarFirstRows case_001000_rank.val case_001000_mask :=
  ⟨case_001000_support, case_001000_sourceAgrees, case_001000_rows⟩

private theorem case_001000_covered :
    RowPropertyParametricCovered case_001000_rank.val case_001000_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001000_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001001_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001001_mask : SignMask := ⟨29, by decide⟩
private def case_001001_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001001_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001001_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_001001_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001001_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_001001_rankWord :
    rankPairWord? case_001001_word = some case_001001_rank := by
  decide

private theorem case_001001_unrank :
    unrankPairWord case_001001_rank = case_001001_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001001_word case_001001_rank).1
    case_001001_rankWord |>.symm

private theorem case_001001_seqChoice :
    translationChoiceSeq case_001001_word case_001001_mask = case_001001_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001001_seqAtRank :
    translationSeqAtRankMask case_001001_rank case_001001_mask = case_001001_seq := by
  rw [translationSeqAtRankMask, case_001001_unrank]
  exact case_001001_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001001_bAtRank :
    translationBAtRankMask case_001001_rank case_001001_mask = case_001001_b := by
  rw [translationBAtRankMask, case_001001_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001001_b, case_001001_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001001_firstLine_eq :
    case_001001_support.firstLine case_001001_seq case_001001_b = case_001001_firstLine := by
  norm_num [case_001001_firstLine, case_001001_support, case_001001_seq, case_001001_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001001_secondLine_eq :
    case_001001_support.secondLine case_001001_seq case_001001_b = case_001001_secondLine := by
  norm_num [case_001001_secondLine, case_001001_support, case_001001_seq, case_001001_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001001_sourceAgrees :
    SourceAgrees case_001001_support case_001001_rank.val case_001001_mask := by
  intro hlt
  have hrank : (⟨case_001001_rank.val, hlt⟩ : Fin numPairWords) = case_001001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001001_rank.val, hlt⟩ case_001001_mask =
        case_001001_seq := by
    simpa [hrank] using case_001001_seqAtRank
  simp [SourceChecks, hseq, case_001001_support,
    checkTranslationConstraintSource, case_001001_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001001_rows :
    EqEqPosVarSecondRows case_001001_support case_001001_rank.val case_001001_mask := by
  intro hlt
  have hrank : (⟨case_001001_rank.val, hlt⟩ : Fin numPairWords) = case_001001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001001_rank.val, hlt⟩ case_001001_mask =
        case_001001_seq := by
    simpa [hrank] using case_001001_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001001_rank.val, hlt⟩ case_001001_mask =
        case_001001_b := by
    simpa [hrank] using case_001001_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001001_support case_001001_rank.val hlt
          case_001001_mask = case_001001_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001001_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001001_support case_001001_rank.val hlt
          case_001001_mask = case_001001_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001001_secondLine_eq]
  have case_001001_fixedFirst :
      FixedRow (FirstLineAt case_001001_support case_001001_rank.val hlt case_001001_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001001_firstLine, FixedRow]
  have case_001001_rowSecond :
      EqEqPosRow (SecondLineAt case_001001_support case_001001_rank.val hlt case_001001_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001001_secondLine, EqEqPosRow]
  exact ⟨case_001001_fixedFirst, case_001001_rowSecond⟩

private theorem case_001001_existsRows :
    ExistsEqEqPosVarSecondRows case_001001_rank.val case_001001_mask :=
  ⟨case_001001_support, case_001001_sourceAgrees, case_001001_rows⟩

private theorem case_001001_covered :
    RowPropertyParametricCovered case_001001_rank.val case_001001_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001001_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001002_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001002_mask : SignMask := ⟨30, by decide⟩
private def case_001002_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001002_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001002_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_001002_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001002_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001002_rankWord :
    rankPairWord? case_001002_word = some case_001002_rank := by
  decide

private theorem case_001002_unrank :
    unrankPairWord case_001002_rank = case_001002_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001002_word case_001002_rank).1
    case_001002_rankWord |>.symm

private theorem case_001002_seqChoice :
    translationChoiceSeq case_001002_word case_001002_mask = case_001002_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001002_seqAtRank :
    translationSeqAtRankMask case_001002_rank case_001002_mask = case_001002_seq := by
  rw [translationSeqAtRankMask, case_001002_unrank]
  exact case_001002_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001002_bAtRank :
    translationBAtRankMask case_001002_rank case_001002_mask = case_001002_b := by
  rw [translationBAtRankMask, case_001002_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001002_b, case_001002_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001002_firstLine_eq :
    case_001002_support.firstLine case_001002_seq case_001002_b = case_001002_firstLine := by
  norm_num [case_001002_firstLine, case_001002_support, case_001002_seq, case_001002_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001002_secondLine_eq :
    case_001002_support.secondLine case_001002_seq case_001002_b = case_001002_secondLine := by
  norm_num [case_001002_secondLine, case_001002_support, case_001002_seq, case_001002_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001002_sourceAgrees :
    SourceAgrees case_001002_support case_001002_rank.val case_001002_mask := by
  intro hlt
  have hrank : (⟨case_001002_rank.val, hlt⟩ : Fin numPairWords) = case_001002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001002_rank.val, hlt⟩ case_001002_mask =
        case_001002_seq := by
    simpa [hrank] using case_001002_seqAtRank
  simp [SourceChecks, hseq, case_001002_support,
    checkTranslationConstraintSource, case_001002_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001002_rows :
    EqEqPosVarFirstRows case_001002_support case_001002_rank.val case_001002_mask := by
  intro hlt
  have hrank : (⟨case_001002_rank.val, hlt⟩ : Fin numPairWords) = case_001002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001002_rank.val, hlt⟩ case_001002_mask =
        case_001002_seq := by
    simpa [hrank] using case_001002_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001002_rank.val, hlt⟩ case_001002_mask =
        case_001002_b := by
    simpa [hrank] using case_001002_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001002_support case_001002_rank.val hlt
          case_001002_mask = case_001002_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001002_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001002_support case_001002_rank.val hlt
          case_001002_mask = case_001002_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001002_secondLine_eq]
  have case_001002_rowFirst :
      EqEqPosRow (FirstLineAt case_001002_support case_001002_rank.val hlt case_001002_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001002_firstLine, EqEqPosRow]
  have case_001002_fixedSecond :
      FixedRow (SecondLineAt case_001002_support case_001002_rank.val hlt case_001002_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001002_secondLine, FixedRow]
  exact ⟨case_001002_rowFirst, case_001002_fixedSecond⟩

private theorem case_001002_existsRows :
    ExistsEqEqPosVarFirstRows case_001002_rank.val case_001002_mask :=
  ⟨case_001002_support, case_001002_sourceAgrees, case_001002_rows⟩

private theorem case_001002_covered :
    RowPropertyParametricCovered case_001002_rank.val case_001002_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001002_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001003_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001003_mask : SignMask := ⟨31, by decide⟩
private def case_001003_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001003_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001003_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (52/9) }
private def case_001003_firstLine : StrictLin2 := { a := (-29/21), b := (29/21), c := (-61/21) }
private def case_001003_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001003_rankWord :
    rankPairWord? case_001003_word = some case_001003_rank := by
  decide

private theorem case_001003_unrank :
    unrankPairWord case_001003_rank = case_001003_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001003_word case_001003_rank).1
    case_001003_rankWord |>.symm

private theorem case_001003_seqChoice :
    translationChoiceSeq case_001003_word case_001003_mask = case_001003_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001003_seqAtRank :
    translationSeqAtRankMask case_001003_rank case_001003_mask = case_001003_seq := by
  rw [translationSeqAtRankMask, case_001003_unrank]
  exact case_001003_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001003_bAtRank :
    translationBAtRankMask case_001003_rank case_001003_mask = case_001003_b := by
  rw [translationBAtRankMask, case_001003_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001003_b, case_001003_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001003_firstLine_eq :
    case_001003_support.firstLine case_001003_seq case_001003_b = case_001003_firstLine := by
  norm_num [case_001003_firstLine, case_001003_support, case_001003_seq, case_001003_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001003_secondLine_eq :
    case_001003_support.secondLine case_001003_seq case_001003_b = case_001003_secondLine := by
  norm_num [case_001003_secondLine, case_001003_support, case_001003_seq, case_001003_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001003_sourceAgrees :
    SourceAgrees case_001003_support case_001003_rank.val case_001003_mask := by
  intro hlt
  have hrank : (⟨case_001003_rank.val, hlt⟩ : Fin numPairWords) = case_001003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001003_rank.val, hlt⟩ case_001003_mask =
        case_001003_seq := by
    simpa [hrank] using case_001003_seqAtRank
  simp [SourceChecks, hseq, case_001003_support,
    checkTranslationConstraintSource, case_001003_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001003_rows :
    OppOneMinusVarFirstRows case_001003_support case_001003_rank.val case_001003_mask := by
  intro hlt
  have hrank : (⟨case_001003_rank.val, hlt⟩ : Fin numPairWords) = case_001003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001003_rank.val, hlt⟩ case_001003_mask =
        case_001003_seq := by
    simpa [hrank] using case_001003_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001003_rank.val, hlt⟩ case_001003_mask =
        case_001003_b := by
    simpa [hrank] using case_001003_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001003_support case_001003_rank.val hlt
          case_001003_mask = case_001003_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001003_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001003_support case_001003_rank.val hlt
          case_001003_mask = case_001003_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001003_secondLine_eq]
  have case_001003_rowFirst :
      OppPosRow (FirstLineAt case_001003_support case_001003_rank.val hlt case_001003_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001003_firstLine, OppPosRow]
  have case_001003_fixedSecond :
      FixedRow (SecondLineAt case_001003_support case_001003_rank.val hlt case_001003_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001003_secondLine, FixedRow]
  exact ⟨case_001003_rowFirst, case_001003_fixedSecond⟩

private theorem case_001003_existsRows :
    ExistsOppOneMinusVarFirstRows case_001003_rank.val case_001003_mask :=
  ⟨case_001003_support, case_001003_sourceAgrees, case_001003_rows⟩

private theorem case_001003_covered :
    RowPropertyParametricCovered case_001003_rank.val case_001003_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001003_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001004_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001004_mask : SignMask := ⟨45, by decide⟩
private def case_001004_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001004_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001004_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_001004_firstLine : StrictLin2 := { a := (-10/39), b := (10/39), c := (-16/13) }
private def case_001004_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001004_rankWord :
    rankPairWord? case_001004_word = some case_001004_rank := by
  decide

private theorem case_001004_unrank :
    unrankPairWord case_001004_rank = case_001004_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001004_word case_001004_rank).1
    case_001004_rankWord |>.symm

private theorem case_001004_seqChoice :
    translationChoiceSeq case_001004_word case_001004_mask = case_001004_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001004_seqAtRank :
    translationSeqAtRankMask case_001004_rank case_001004_mask = case_001004_seq := by
  rw [translationSeqAtRankMask, case_001004_unrank]
  exact case_001004_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001004_bAtRank :
    translationBAtRankMask case_001004_rank case_001004_mask = case_001004_b := by
  rw [translationBAtRankMask, case_001004_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001004_b, case_001004_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001004_firstLine_eq :
    case_001004_support.firstLine case_001004_seq case_001004_b = case_001004_firstLine := by
  norm_num [case_001004_firstLine, case_001004_support, case_001004_seq, case_001004_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001004_secondLine_eq :
    case_001004_support.secondLine case_001004_seq case_001004_b = case_001004_secondLine := by
  norm_num [case_001004_secondLine, case_001004_support, case_001004_seq, case_001004_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001004_sourceAgrees :
    SourceAgrees case_001004_support case_001004_rank.val case_001004_mask := by
  intro hlt
  have hrank : (⟨case_001004_rank.val, hlt⟩ : Fin numPairWords) = case_001004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001004_rank.val, hlt⟩ case_001004_mask =
        case_001004_seq := by
    simpa [hrank] using case_001004_seqAtRank
  simp [SourceChecks, hseq, case_001004_support,
    checkTranslationConstraintSource, case_001004_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001004_rows :
    OppOneMinusVarFirstRows case_001004_support case_001004_rank.val case_001004_mask := by
  intro hlt
  have hrank : (⟨case_001004_rank.val, hlt⟩ : Fin numPairWords) = case_001004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001004_rank.val, hlt⟩ case_001004_mask =
        case_001004_seq := by
    simpa [hrank] using case_001004_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001004_rank.val, hlt⟩ case_001004_mask =
        case_001004_b := by
    simpa [hrank] using case_001004_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001004_support case_001004_rank.val hlt
          case_001004_mask = case_001004_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001004_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001004_support case_001004_rank.val hlt
          case_001004_mask = case_001004_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001004_secondLine_eq]
  have case_001004_rowFirst :
      OppPosRow (FirstLineAt case_001004_support case_001004_rank.val hlt case_001004_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001004_firstLine, OppPosRow]
  have case_001004_fixedSecond :
      FixedRow (SecondLineAt case_001004_support case_001004_rank.val hlt case_001004_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001004_secondLine, FixedRow]
  exact ⟨case_001004_rowFirst, case_001004_fixedSecond⟩

private theorem case_001004_existsRows :
    ExistsOppOneMinusVarFirstRows case_001004_rank.val case_001004_mask :=
  ⟨case_001004_support, case_001004_sourceAgrees, case_001004_rows⟩

private theorem case_001004_covered :
    RowPropertyParametricCovered case_001004_rank.val case_001004_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001004_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001005_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001005_mask : SignMask := ⟨47, by decide⟩
private def case_001005_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001005_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001005_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (52/9) }
private def case_001005_firstLine : StrictLin2 := { a := (-10/21), b := (10/21), c := (-4/7) }
private def case_001005_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001005_rankWord :
    rankPairWord? case_001005_word = some case_001005_rank := by
  decide

private theorem case_001005_unrank :
    unrankPairWord case_001005_rank = case_001005_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001005_word case_001005_rank).1
    case_001005_rankWord |>.symm

private theorem case_001005_seqChoice :
    translationChoiceSeq case_001005_word case_001005_mask = case_001005_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001005_seqAtRank :
    translationSeqAtRankMask case_001005_rank case_001005_mask = case_001005_seq := by
  rw [translationSeqAtRankMask, case_001005_unrank]
  exact case_001005_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001005_bAtRank :
    translationBAtRankMask case_001005_rank case_001005_mask = case_001005_b := by
  rw [translationBAtRankMask, case_001005_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001005_b, case_001005_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001005_firstLine_eq :
    case_001005_support.firstLine case_001005_seq case_001005_b = case_001005_firstLine := by
  norm_num [case_001005_firstLine, case_001005_support, case_001005_seq, case_001005_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001005_secondLine_eq :
    case_001005_support.secondLine case_001005_seq case_001005_b = case_001005_secondLine := by
  norm_num [case_001005_secondLine, case_001005_support, case_001005_seq, case_001005_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001005_sourceAgrees :
    SourceAgrees case_001005_support case_001005_rank.val case_001005_mask := by
  intro hlt
  have hrank : (⟨case_001005_rank.val, hlt⟩ : Fin numPairWords) = case_001005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001005_rank.val, hlt⟩ case_001005_mask =
        case_001005_seq := by
    simpa [hrank] using case_001005_seqAtRank
  simp [SourceChecks, hseq, case_001005_support,
    checkTranslationConstraintSource, case_001005_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001005_rows :
    OppOneMinusVarFirstRows case_001005_support case_001005_rank.val case_001005_mask := by
  intro hlt
  have hrank : (⟨case_001005_rank.val, hlt⟩ : Fin numPairWords) = case_001005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001005_rank.val, hlt⟩ case_001005_mask =
        case_001005_seq := by
    simpa [hrank] using case_001005_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001005_rank.val, hlt⟩ case_001005_mask =
        case_001005_b := by
    simpa [hrank] using case_001005_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001005_support case_001005_rank.val hlt
          case_001005_mask = case_001005_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001005_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001005_support case_001005_rank.val hlt
          case_001005_mask = case_001005_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001005_secondLine_eq]
  have case_001005_rowFirst :
      OppPosRow (FirstLineAt case_001005_support case_001005_rank.val hlt case_001005_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001005_firstLine, OppPosRow]
  have case_001005_fixedSecond :
      FixedRow (SecondLineAt case_001005_support case_001005_rank.val hlt case_001005_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001005_secondLine, FixedRow]
  exact ⟨case_001005_rowFirst, case_001005_fixedSecond⟩

private theorem case_001005_existsRows :
    ExistsOppOneMinusVarFirstRows case_001005_rank.val case_001005_mask :=
  ⟨case_001005_support, case_001005_sourceAgrees, case_001005_rows⟩

private theorem case_001005_covered :
    RowPropertyParametricCovered case_001005_rank.val case_001005_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001005_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001006_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001006_mask : SignMask := ⟨57, by decide⟩
private def case_001006_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001006_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001006_b : Vec3 Rat := { x := (-220/27), y := (220/27), z := (-412/27) }
private def case_001006_firstLine : StrictLin2 := { a := 1, b := -1, c := (-261/55) }
private def case_001006_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001006_rankWord :
    rankPairWord? case_001006_word = some case_001006_rank := by
  decide

private theorem case_001006_unrank :
    unrankPairWord case_001006_rank = case_001006_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001006_word case_001006_rank).1
    case_001006_rankWord |>.symm

private theorem case_001006_seqChoice :
    translationChoiceSeq case_001006_word case_001006_mask = case_001006_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001006_seqAtRank :
    translationSeqAtRankMask case_001006_rank case_001006_mask = case_001006_seq := by
  rw [translationSeqAtRankMask, case_001006_unrank]
  exact case_001006_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001006_bAtRank :
    translationBAtRankMask case_001006_rank case_001006_mask = case_001006_b := by
  rw [translationBAtRankMask, case_001006_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001006_b, case_001006_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001006_firstLine_eq :
    case_001006_support.firstLine case_001006_seq case_001006_b = case_001006_firstLine := by
  norm_num [case_001006_firstLine, case_001006_support, case_001006_seq, case_001006_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001006_secondLine_eq :
    case_001006_support.secondLine case_001006_seq case_001006_b = case_001006_secondLine := by
  norm_num [case_001006_secondLine, case_001006_support, case_001006_seq, case_001006_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001006_sourceAgrees :
    SourceAgrees case_001006_support case_001006_rank.val case_001006_mask := by
  intro hlt
  have hrank : (⟨case_001006_rank.val, hlt⟩ : Fin numPairWords) = case_001006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001006_rank.val, hlt⟩ case_001006_mask =
        case_001006_seq := by
    simpa [hrank] using case_001006_seqAtRank
  simp [SourceChecks, hseq, case_001006_support,
    checkTranslationConstraintSource, case_001006_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001006_rows :
    OppMinusOneVarFirstRows case_001006_support case_001006_rank.val case_001006_mask := by
  intro hlt
  have hrank : (⟨case_001006_rank.val, hlt⟩ : Fin numPairWords) = case_001006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001006_rank.val, hlt⟩ case_001006_mask =
        case_001006_seq := by
    simpa [hrank] using case_001006_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001006_rank.val, hlt⟩ case_001006_mask =
        case_001006_b := by
    simpa [hrank] using case_001006_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001006_support case_001006_rank.val hlt
          case_001006_mask = case_001006_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001006_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001006_support case_001006_rank.val hlt
          case_001006_mask = case_001006_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001006_secondLine_eq]
  have case_001006_rowFirst :
      OppNegRow (FirstLineAt case_001006_support case_001006_rank.val hlt case_001006_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001006_firstLine, OppNegRow]
  have case_001006_fixedSecond :
      FixedRow (SecondLineAt case_001006_support case_001006_rank.val hlt case_001006_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001006_secondLine, FixedRow]
  exact ⟨case_001006_rowFirst, case_001006_fixedSecond⟩

private theorem case_001006_existsRows :
    ExistsOppMinusOneVarFirstRows case_001006_rank.val case_001006_mask :=
  ⟨case_001006_support, case_001006_sourceAgrees, case_001006_rows⟩

private theorem case_001006_covered :
    RowPropertyParametricCovered case_001006_rank.val case_001006_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001006_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_001007_rank : Fin numPairWords := ⟨724, by decide⟩
private def case_001007_mask : SignMask := ⟨63, by decide⟩
private def case_001007_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_001007_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001007_b : Vec3 Rat := { x := (-268/27), y := (268/27), z := (44/27) }
private def case_001007_firstLine : StrictLin2 := { a := 1, b := 1, c := (-89/67) }
private def case_001007_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_001007_rankWord :
    rankPairWord? case_001007_word = some case_001007_rank := by
  decide

private theorem case_001007_unrank :
    unrankPairWord case_001007_rank = case_001007_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001007_word case_001007_rank).1
    case_001007_rankWord |>.symm

private theorem case_001007_seqChoice :
    translationChoiceSeq case_001007_word case_001007_mask = case_001007_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001007_seqAtRank :
    translationSeqAtRankMask case_001007_rank case_001007_mask = case_001007_seq := by
  rw [translationSeqAtRankMask, case_001007_unrank]
  exact case_001007_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001007_bAtRank :
    translationBAtRankMask case_001007_rank case_001007_mask = case_001007_b := by
  rw [translationBAtRankMask, case_001007_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001007_b, case_001007_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001007_firstLine_eq :
    case_001007_support.firstLine case_001007_seq case_001007_b = case_001007_firstLine := by
  norm_num [case_001007_firstLine, case_001007_support, case_001007_seq, case_001007_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001007_secondLine_eq :
    case_001007_support.secondLine case_001007_seq case_001007_b = case_001007_secondLine := by
  norm_num [case_001007_secondLine, case_001007_support, case_001007_seq, case_001007_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001007_sourceAgrees :
    SourceAgrees case_001007_support case_001007_rank.val case_001007_mask := by
  intro hlt
  have hrank : (⟨case_001007_rank.val, hlt⟩ : Fin numPairWords) = case_001007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001007_rank.val, hlt⟩ case_001007_mask =
        case_001007_seq := by
    simpa [hrank] using case_001007_seqAtRank
  simp [SourceChecks, hseq, case_001007_support,
    checkTranslationConstraintSource, case_001007_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001007_rows :
    EqEqNegVarFirstRows case_001007_support case_001007_rank.val case_001007_mask := by
  intro hlt
  have hrank : (⟨case_001007_rank.val, hlt⟩ : Fin numPairWords) = case_001007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001007_rank.val, hlt⟩ case_001007_mask =
        case_001007_seq := by
    simpa [hrank] using case_001007_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001007_rank.val, hlt⟩ case_001007_mask =
        case_001007_b := by
    simpa [hrank] using case_001007_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001007_support case_001007_rank.val hlt
          case_001007_mask = case_001007_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001007_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001007_support case_001007_rank.val hlt
          case_001007_mask = case_001007_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001007_secondLine_eq]
  have case_001007_rowFirst :
      EqEqNegRow (FirstLineAt case_001007_support case_001007_rank.val hlt case_001007_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001007_firstLine, EqEqNegRow]
  have case_001007_fixedSecond :
      FixedRow (SecondLineAt case_001007_support case_001007_rank.val hlt case_001007_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001007_secondLine, FixedRow]
  exact ⟨case_001007_rowFirst, case_001007_fixedSecond⟩

private theorem case_001007_existsRows :
    ExistsEqEqNegVarFirstRows case_001007_rank.val case_001007_mask :=
  ⟨case_001007_support, case_001007_sourceAgrees, case_001007_rows⟩

private theorem case_001007_covered :
    RowPropertyParametricCovered case_001007_rank.val case_001007_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_001007_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001008_rank : Fin numPairWords := ⟨748, by decide⟩
private def case_001008_mask : SignMask := ⟨16, by decide⟩
private def case_001008_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001008_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tppm
private def case_001008_b : Vec3 Rat := { x := (-260/81), y := (-964/81), z := (-356/81) }
private def case_001008_firstLine : StrictLin2 := { a := -1, b := -1, c := (-119/13) }
private def case_001008_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001008_rankWord :
    rankPairWord? case_001008_word = some case_001008_rank := by
  decide

private theorem case_001008_unrank :
    unrankPairWord case_001008_rank = case_001008_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001008_word case_001008_rank).1
    case_001008_rankWord |>.symm

private theorem case_001008_seqChoice :
    translationChoiceSeq case_001008_word case_001008_mask = case_001008_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001008_seqAtRank :
    translationSeqAtRankMask case_001008_rank case_001008_mask = case_001008_seq := by
  rw [translationSeqAtRankMask, case_001008_unrank]
  exact case_001008_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001008_bAtRank :
    translationBAtRankMask case_001008_rank case_001008_mask = case_001008_b := by
  rw [translationBAtRankMask, case_001008_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001008_b, case_001008_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001008_firstLine_eq :
    case_001008_support.firstLine case_001008_seq case_001008_b = case_001008_firstLine := by
  norm_num [case_001008_firstLine, case_001008_support, case_001008_seq, case_001008_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001008_secondLine_eq :
    case_001008_support.secondLine case_001008_seq case_001008_b = case_001008_secondLine := by
  norm_num [case_001008_secondLine, case_001008_support, case_001008_seq, case_001008_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001008_sourceAgrees :
    SourceAgrees case_001008_support case_001008_rank.val case_001008_mask := by
  intro hlt
  have hrank : (⟨case_001008_rank.val, hlt⟩ : Fin numPairWords) = case_001008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001008_rank.val, hlt⟩ case_001008_mask =
        case_001008_seq := by
    simpa [hrank] using case_001008_seqAtRank
  simp [SourceChecks, hseq, case_001008_support,
    checkTranslationConstraintSource, case_001008_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001008_rows :
    EqEqPosVarFirstRows case_001008_support case_001008_rank.val case_001008_mask := by
  intro hlt
  have hrank : (⟨case_001008_rank.val, hlt⟩ : Fin numPairWords) = case_001008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001008_rank.val, hlt⟩ case_001008_mask =
        case_001008_seq := by
    simpa [hrank] using case_001008_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001008_rank.val, hlt⟩ case_001008_mask =
        case_001008_b := by
    simpa [hrank] using case_001008_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001008_support case_001008_rank.val hlt
          case_001008_mask = case_001008_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001008_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001008_support case_001008_rank.val hlt
          case_001008_mask = case_001008_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001008_secondLine_eq]
  have case_001008_rowFirst :
      EqEqPosRow (FirstLineAt case_001008_support case_001008_rank.val hlt case_001008_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001008_firstLine, EqEqPosRow]
  have case_001008_fixedSecond :
      FixedRow (SecondLineAt case_001008_support case_001008_rank.val hlt case_001008_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001008_secondLine, FixedRow]
  exact ⟨case_001008_rowFirst, case_001008_fixedSecond⟩

private theorem case_001008_existsRows :
    ExistsEqEqPosVarFirstRows case_001008_rank.val case_001008_mask :=
  ⟨case_001008_support, case_001008_sourceAgrees, case_001008_rows⟩

private theorem case_001008_covered :
    RowPropertyParametricCovered case_001008_rank.val case_001008_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001008_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001009_rank : Fin numPairWords := ⟨748, by decide⟩
private def case_001009_mask : SignMask := ⟨22, by decide⟩
private def case_001009_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001009_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppm
private def case_001009_b : Vec3 Rat := { x := (-404/81), y := (-820/81), z := (1012/81) }
private def case_001009_firstLine : StrictLin2 := { a := -1, b := 1, c := (-815/101) }
private def case_001009_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001009_rankWord :
    rankPairWord? case_001009_word = some case_001009_rank := by
  decide

private theorem case_001009_unrank :
    unrankPairWord case_001009_rank = case_001009_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001009_word case_001009_rank).1
    case_001009_rankWord |>.symm

private theorem case_001009_seqChoice :
    translationChoiceSeq case_001009_word case_001009_mask = case_001009_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001009_seqAtRank :
    translationSeqAtRankMask case_001009_rank case_001009_mask = case_001009_seq := by
  rw [translationSeqAtRankMask, case_001009_unrank]
  exact case_001009_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001009_bAtRank :
    translationBAtRankMask case_001009_rank case_001009_mask = case_001009_b := by
  rw [translationBAtRankMask, case_001009_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001009_b, case_001009_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001009_firstLine_eq :
    case_001009_support.firstLine case_001009_seq case_001009_b = case_001009_firstLine := by
  norm_num [case_001009_firstLine, case_001009_support, case_001009_seq, case_001009_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001009_secondLine_eq :
    case_001009_support.secondLine case_001009_seq case_001009_b = case_001009_secondLine := by
  norm_num [case_001009_secondLine, case_001009_support, case_001009_seq, case_001009_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001009_sourceAgrees :
    SourceAgrees case_001009_support case_001009_rank.val case_001009_mask := by
  intro hlt
  have hrank : (⟨case_001009_rank.val, hlt⟩ : Fin numPairWords) = case_001009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001009_rank.val, hlt⟩ case_001009_mask =
        case_001009_seq := by
    simpa [hrank] using case_001009_seqAtRank
  simp [SourceChecks, hseq, case_001009_support,
    checkTranslationConstraintSource, case_001009_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001009_rows :
    OppOneMinusVarFirstRows case_001009_support case_001009_rank.val case_001009_mask := by
  intro hlt
  have hrank : (⟨case_001009_rank.val, hlt⟩ : Fin numPairWords) = case_001009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001009_rank.val, hlt⟩ case_001009_mask =
        case_001009_seq := by
    simpa [hrank] using case_001009_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001009_rank.val, hlt⟩ case_001009_mask =
        case_001009_b := by
    simpa [hrank] using case_001009_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001009_support case_001009_rank.val hlt
          case_001009_mask = case_001009_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001009_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001009_support case_001009_rank.val hlt
          case_001009_mask = case_001009_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001009_secondLine_eq]
  have case_001009_rowFirst :
      OppPosRow (FirstLineAt case_001009_support case_001009_rank.val hlt case_001009_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001009_firstLine, OppPosRow]
  have case_001009_fixedSecond :
      FixedRow (SecondLineAt case_001009_support case_001009_rank.val hlt case_001009_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001009_secondLine, FixedRow]
  exact ⟨case_001009_rowFirst, case_001009_fixedSecond⟩

private theorem case_001009_existsRows :
    ExistsOppOneMinusVarFirstRows case_001009_rank.val case_001009_mask :=
  ⟨case_001009_support, case_001009_sourceAgrees, case_001009_rows⟩

private theorem case_001009_covered :
    RowPropertyParametricCovered case_001009_rank.val case_001009_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001009_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001010_rank : Fin numPairWords := ⟨748, by decide⟩
private def case_001010_mask : SignMask := ⟨31, by decide⟩
private def case_001010_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001010_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001010_b : Vec3 Rat := { x := (-836/81), y := (260/81), z := (580/81) }
private def case_001010_firstLine : StrictLin2 := { a := (-209/129), b := (209/129), c := (-529/129) }
private def case_001010_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001010_rankWord :
    rankPairWord? case_001010_word = some case_001010_rank := by
  decide

private theorem case_001010_unrank :
    unrankPairWord case_001010_rank = case_001010_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001010_word case_001010_rank).1
    case_001010_rankWord |>.symm

private theorem case_001010_seqChoice :
    translationChoiceSeq case_001010_word case_001010_mask = case_001010_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001010_seqAtRank :
    translationSeqAtRankMask case_001010_rank case_001010_mask = case_001010_seq := by
  rw [translationSeqAtRankMask, case_001010_unrank]
  exact case_001010_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001010_bAtRank :
    translationBAtRankMask case_001010_rank case_001010_mask = case_001010_b := by
  rw [translationBAtRankMask, case_001010_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001010_b, case_001010_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001010_firstLine_eq :
    case_001010_support.firstLine case_001010_seq case_001010_b = case_001010_firstLine := by
  norm_num [case_001010_firstLine, case_001010_support, case_001010_seq, case_001010_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001010_secondLine_eq :
    case_001010_support.secondLine case_001010_seq case_001010_b = case_001010_secondLine := by
  norm_num [case_001010_secondLine, case_001010_support, case_001010_seq, case_001010_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001010_sourceAgrees :
    SourceAgrees case_001010_support case_001010_rank.val case_001010_mask := by
  intro hlt
  have hrank : (⟨case_001010_rank.val, hlt⟩ : Fin numPairWords) = case_001010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001010_rank.val, hlt⟩ case_001010_mask =
        case_001010_seq := by
    simpa [hrank] using case_001010_seqAtRank
  simp [SourceChecks, hseq, case_001010_support,
    checkTranslationConstraintSource, case_001010_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001010_rows :
    OppOneMinusVarFirstRows case_001010_support case_001010_rank.val case_001010_mask := by
  intro hlt
  have hrank : (⟨case_001010_rank.val, hlt⟩ : Fin numPairWords) = case_001010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001010_rank.val, hlt⟩ case_001010_mask =
        case_001010_seq := by
    simpa [hrank] using case_001010_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001010_rank.val, hlt⟩ case_001010_mask =
        case_001010_b := by
    simpa [hrank] using case_001010_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001010_support case_001010_rank.val hlt
          case_001010_mask = case_001010_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001010_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001010_support case_001010_rank.val hlt
          case_001010_mask = case_001010_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001010_secondLine_eq]
  have case_001010_rowFirst :
      OppPosRow (FirstLineAt case_001010_support case_001010_rank.val hlt case_001010_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001010_firstLine, OppPosRow]
  have case_001010_fixedSecond :
      FixedRow (SecondLineAt case_001010_support case_001010_rank.val hlt case_001010_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001010_secondLine, FixedRow]
  exact ⟨case_001010_rowFirst, case_001010_fixedSecond⟩

private theorem case_001010_existsRows :
    ExistsOppOneMinusVarFirstRows case_001010_rank.val case_001010_mask :=
  ⟨case_001010_support, case_001010_sourceAgrees, case_001010_rows⟩

private theorem case_001010_covered :
    RowPropertyParametricCovered case_001010_rank.val case_001010_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001010_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001011_rank : Fin numPairWords := ⟨748, by decide⟩
private def case_001011_mask : SignMask := ⟨47, by decide⟩
private def case_001011_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001011_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001011_b : Vec3 Rat := { x := (-388/81), y := (964/81), z := (356/81) }
private def case_001011_firstLine : StrictLin2 := { a := 1, b := -1, c := (-207/97) }
private def case_001011_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001011_rankWord :
    rankPairWord? case_001011_word = some case_001011_rank := by
  decide

private theorem case_001011_unrank :
    unrankPairWord case_001011_rank = case_001011_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001011_word case_001011_rank).1
    case_001011_rankWord |>.symm

private theorem case_001011_seqChoice :
    translationChoiceSeq case_001011_word case_001011_mask = case_001011_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001011_seqAtRank :
    translationSeqAtRankMask case_001011_rank case_001011_mask = case_001011_seq := by
  rw [translationSeqAtRankMask, case_001011_unrank]
  exact case_001011_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001011_bAtRank :
    translationBAtRankMask case_001011_rank case_001011_mask = case_001011_b := by
  rw [translationBAtRankMask, case_001011_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001011_b, case_001011_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001011_firstLine_eq :
    case_001011_support.firstLine case_001011_seq case_001011_b = case_001011_firstLine := by
  norm_num [case_001011_firstLine, case_001011_support, case_001011_seq, case_001011_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001011_secondLine_eq :
    case_001011_support.secondLine case_001011_seq case_001011_b = case_001011_secondLine := by
  norm_num [case_001011_secondLine, case_001011_support, case_001011_seq, case_001011_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001011_sourceAgrees :
    SourceAgrees case_001011_support case_001011_rank.val case_001011_mask := by
  intro hlt
  have hrank : (⟨case_001011_rank.val, hlt⟩ : Fin numPairWords) = case_001011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001011_rank.val, hlt⟩ case_001011_mask =
        case_001011_seq := by
    simpa [hrank] using case_001011_seqAtRank
  simp [SourceChecks, hseq, case_001011_support,
    checkTranslationConstraintSource, case_001011_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001011_rows :
    OppMinusOneVarFirstRows case_001011_support case_001011_rank.val case_001011_mask := by
  intro hlt
  have hrank : (⟨case_001011_rank.val, hlt⟩ : Fin numPairWords) = case_001011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001011_rank.val, hlt⟩ case_001011_mask =
        case_001011_seq := by
    simpa [hrank] using case_001011_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001011_rank.val, hlt⟩ case_001011_mask =
        case_001011_b := by
    simpa [hrank] using case_001011_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001011_support case_001011_rank.val hlt
          case_001011_mask = case_001011_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001011_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001011_support case_001011_rank.val hlt
          case_001011_mask = case_001011_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001011_secondLine_eq]
  have case_001011_rowFirst :
      OppNegRow (FirstLineAt case_001011_support case_001011_rank.val hlt case_001011_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001011_firstLine, OppNegRow]
  have case_001011_fixedSecond :
      FixedRow (SecondLineAt case_001011_support case_001011_rank.val hlt case_001011_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001011_secondLine, FixedRow]
  exact ⟨case_001011_rowFirst, case_001011_fixedSecond⟩

private theorem case_001011_existsRows :
    ExistsOppMinusOneVarFirstRows case_001011_rank.val case_001011_mask :=
  ⟨case_001011_support, case_001011_sourceAgrees, case_001011_rows⟩

private theorem case_001011_covered :
    RowPropertyParametricCovered case_001011_rank.val case_001011_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001011_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001012_rank : Fin numPairWords := ⟨748, by decide⟩
private def case_001012_mask : SignMask := ⟨56, by decide⟩
private def case_001012_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001012_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001012_b : Vec3 Rat := { x := (-868/81), y := (-68/81), z := (-1348/81) }
private def case_001012_firstLine : StrictLin2 := { a := -1, b := -1, c := (-491/217) }
private def case_001012_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001012_rankWord :
    rankPairWord? case_001012_word = some case_001012_rank := by
  decide

private theorem case_001012_unrank :
    unrankPairWord case_001012_rank = case_001012_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001012_word case_001012_rank).1
    case_001012_rankWord |>.symm

private theorem case_001012_seqChoice :
    translationChoiceSeq case_001012_word case_001012_mask = case_001012_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001012_seqAtRank :
    translationSeqAtRankMask case_001012_rank case_001012_mask = case_001012_seq := by
  rw [translationSeqAtRankMask, case_001012_unrank]
  exact case_001012_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001012_bAtRank :
    translationBAtRankMask case_001012_rank case_001012_mask = case_001012_b := by
  rw [translationBAtRankMask, case_001012_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001012_b, case_001012_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001012_firstLine_eq :
    case_001012_support.firstLine case_001012_seq case_001012_b = case_001012_firstLine := by
  norm_num [case_001012_firstLine, case_001012_support, case_001012_seq, case_001012_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001012_secondLine_eq :
    case_001012_support.secondLine case_001012_seq case_001012_b = case_001012_secondLine := by
  norm_num [case_001012_secondLine, case_001012_support, case_001012_seq, case_001012_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001012_sourceAgrees :
    SourceAgrees case_001012_support case_001012_rank.val case_001012_mask := by
  intro hlt
  have hrank : (⟨case_001012_rank.val, hlt⟩ : Fin numPairWords) = case_001012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001012_rank.val, hlt⟩ case_001012_mask =
        case_001012_seq := by
    simpa [hrank] using case_001012_seqAtRank
  simp [SourceChecks, hseq, case_001012_support,
    checkTranslationConstraintSource, case_001012_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001012_rows :
    EqEqPosVarFirstRows case_001012_support case_001012_rank.val case_001012_mask := by
  intro hlt
  have hrank : (⟨case_001012_rank.val, hlt⟩ : Fin numPairWords) = case_001012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001012_rank.val, hlt⟩ case_001012_mask =
        case_001012_seq := by
    simpa [hrank] using case_001012_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001012_rank.val, hlt⟩ case_001012_mask =
        case_001012_b := by
    simpa [hrank] using case_001012_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001012_support case_001012_rank.val hlt
          case_001012_mask = case_001012_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001012_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001012_support case_001012_rank.val hlt
          case_001012_mask = case_001012_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001012_secondLine_eq]
  have case_001012_rowFirst :
      EqEqPosRow (FirstLineAt case_001012_support case_001012_rank.val hlt case_001012_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001012_firstLine, EqEqPosRow]
  have case_001012_fixedSecond :
      FixedRow (SecondLineAt case_001012_support case_001012_rank.val hlt case_001012_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001012_secondLine, FixedRow]
  exact ⟨case_001012_rowFirst, case_001012_fixedSecond⟩

private theorem case_001012_existsRows :
    ExistsEqEqPosVarFirstRows case_001012_rank.val case_001012_mask :=
  ⟨case_001012_support, case_001012_sourceAgrees, case_001012_rows⟩

private theorem case_001012_covered :
    RowPropertyParametricCovered case_001012_rank.val case_001012_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001012_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001013_rank : Fin numPairWords := ⟨748, by decide⟩
private def case_001013_mask : SignMask := ⟨57, by decide⟩
private def case_001013_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001013_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001013_b : Vec3 Rat := { x := (-868/81), y := (580/81), z := (-1348/81) }
private def case_001013_firstLine : StrictLin2 := { a := 1, b := -1, c := (-747/217) }
private def case_001013_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001013_rankWord :
    rankPairWord? case_001013_word = some case_001013_rank := by
  decide

private theorem case_001013_unrank :
    unrankPairWord case_001013_rank = case_001013_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001013_word case_001013_rank).1
    case_001013_rankWord |>.symm

private theorem case_001013_seqChoice :
    translationChoiceSeq case_001013_word case_001013_mask = case_001013_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001013_seqAtRank :
    translationSeqAtRankMask case_001013_rank case_001013_mask = case_001013_seq := by
  rw [translationSeqAtRankMask, case_001013_unrank]
  exact case_001013_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001013_bAtRank :
    translationBAtRankMask case_001013_rank case_001013_mask = case_001013_b := by
  rw [translationBAtRankMask, case_001013_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001013_b, case_001013_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001013_firstLine_eq :
    case_001013_support.firstLine case_001013_seq case_001013_b = case_001013_firstLine := by
  norm_num [case_001013_firstLine, case_001013_support, case_001013_seq, case_001013_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001013_secondLine_eq :
    case_001013_support.secondLine case_001013_seq case_001013_b = case_001013_secondLine := by
  norm_num [case_001013_secondLine, case_001013_support, case_001013_seq, case_001013_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001013_sourceAgrees :
    SourceAgrees case_001013_support case_001013_rank.val case_001013_mask := by
  intro hlt
  have hrank : (⟨case_001013_rank.val, hlt⟩ : Fin numPairWords) = case_001013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001013_rank.val, hlt⟩ case_001013_mask =
        case_001013_seq := by
    simpa [hrank] using case_001013_seqAtRank
  simp [SourceChecks, hseq, case_001013_support,
    checkTranslationConstraintSource, case_001013_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001013_rows :
    OppMinusOneVarFirstRows case_001013_support case_001013_rank.val case_001013_mask := by
  intro hlt
  have hrank : (⟨case_001013_rank.val, hlt⟩ : Fin numPairWords) = case_001013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001013_rank.val, hlt⟩ case_001013_mask =
        case_001013_seq := by
    simpa [hrank] using case_001013_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001013_rank.val, hlt⟩ case_001013_mask =
        case_001013_b := by
    simpa [hrank] using case_001013_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001013_support case_001013_rank.val hlt
          case_001013_mask = case_001013_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001013_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001013_support case_001013_rank.val hlt
          case_001013_mask = case_001013_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001013_secondLine_eq]
  have case_001013_rowFirst :
      OppNegRow (FirstLineAt case_001013_support case_001013_rank.val hlt case_001013_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001013_firstLine, OppNegRow]
  have case_001013_fixedSecond :
      FixedRow (SecondLineAt case_001013_support case_001013_rank.val hlt case_001013_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001013_secondLine, FixedRow]
  exact ⟨case_001013_rowFirst, case_001013_fixedSecond⟩

private theorem case_001013_existsRows :
    ExistsOppMinusOneVarFirstRows case_001013_rank.val case_001013_mask :=
  ⟨case_001013_support, case_001013_sourceAgrees, case_001013_rows⟩

private theorem case_001013_covered :
    RowPropertyParametricCovered case_001013_rank.val case_001013_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001013_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=99f0182e8e5325302f13d261b30a448ebe459a6be20e38295401a040d484dc96`. -/
private def case_001014_rank : Fin numPairWords := ⟨748, by decide⟩
private def case_001014_mask : SignMask := ⟨63, by decide⟩
private def case_001014_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_001014_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001014_b : Vec3 Rat := { x := (-1012/81), y := (724/81), z := (20/81) }
private def case_001014_firstLine : StrictLin2 := { a := (-253/181), b := 0, c := (-35/181) }
private def case_001014_secondLine : StrictLin2 := { a := (81/724), b := 0, c := (-8829/183172) }

private theorem case_001014_rankWord :
    rankPairWord? case_001014_word = some case_001014_rank := by
  decide

private theorem case_001014_unrank :
    unrankPairWord case_001014_rank = case_001014_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001014_word case_001014_rank).1
    case_001014_rankWord |>.symm

private theorem case_001014_seqChoice :
    translationChoiceSeq case_001014_word case_001014_mask = case_001014_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001014_seqAtRank :
    translationSeqAtRankMask case_001014_rank case_001014_mask = case_001014_seq := by
  rw [translationSeqAtRankMask, case_001014_unrank]
  exact case_001014_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001014_bAtRank :
    translationBAtRankMask case_001014_rank case_001014_mask = case_001014_b := by
  rw [translationBAtRankMask, case_001014_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001014_b, case_001014_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001014_firstLine_eq :
    case_001014_support.firstLine case_001014_seq case_001014_b = case_001014_firstLine := by
  norm_num [case_001014_firstLine, case_001014_support, case_001014_seq, case_001014_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001014_secondLine_eq :
    case_001014_support.secondLine case_001014_seq case_001014_b = case_001014_secondLine := by
  norm_num [case_001014_secondLine, case_001014_support, case_001014_seq, case_001014_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001014_sourceAgrees :
    SourceAgrees case_001014_support case_001014_rank.val case_001014_mask := by
  intro hlt
  have hrank : (⟨case_001014_rank.val, hlt⟩ : Fin numPairWords) = case_001014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001014_rank.val, hlt⟩ case_001014_mask =
        case_001014_seq := by
    simpa [hrank] using case_001014_seqAtRank
  simp [SourceChecks, hseq, case_001014_support,
    checkTranslationConstraintSource, case_001014_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001014_rows :
    AxisAOnlyRows case_001014_support case_001014_rank.val case_001014_mask := by
  intro hlt
  have hrank : (⟨case_001014_rank.val, hlt⟩ : Fin numPairWords) = case_001014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001014_rank.val, hlt⟩ case_001014_mask =
        case_001014_seq := by
    simpa [hrank] using case_001014_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001014_rank.val, hlt⟩ case_001014_mask =
        case_001014_b := by
    simpa [hrank] using case_001014_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001014_support case_001014_rank.val hlt
          case_001014_mask = case_001014_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001014_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001014_support case_001014_rank.val hlt
          case_001014_mask = case_001014_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001014_secondLine_eq]
  have case_001014_firstBZero :
      (FirstLineAt case_001014_support case_001014_rank.val hlt case_001014_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001014_firstLine]
  have case_001014_secondBZero :
      (SecondLineAt case_001014_support case_001014_rank.val hlt case_001014_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001014_secondLine]
  have case_001014_aProductNeg :
      (FirstLineAt case_001014_support case_001014_rank.val hlt case_001014_mask).a *
          (SecondLineAt case_001014_support case_001014_rank.val hlt case_001014_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_001014_firstLine, case_001014_secondLine]
  have case_001014_weightedCNonpos :
      (SupportPair.multipliersAt case_001014_support
          case_001014_rank.val hlt case_001014_mask).1 *
          (FirstLineAt case_001014_support case_001014_rank.val hlt case_001014_mask).c +
        (SupportPair.multipliersAt case_001014_support
          case_001014_rank.val hlt case_001014_mask).2 *
          (SecondLineAt case_001014_support case_001014_rank.val hlt case_001014_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_001014_firstLine_eq,
      case_001014_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_001014_firstLine, case_001014_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_001014_firstBZero, case_001014_secondBZero,
    case_001014_aProductNeg, case_001014_weightedCNonpos⟩

private theorem case_001014_existsRows :
    ExistsAxisAOnlyRows case_001014_rank.val case_001014_mask :=
  ⟨case_001014_support, case_001014_sourceAgrees, case_001014_rows⟩

private theorem case_001014_covered :
    RowPropertyParametricCovered case_001014_rank.val case_001014_mask :=
  RowPropertyParametricCovered.axisAOnly case_001014_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001015_rank : Fin numPairWords := ⟨790, by decide⟩
private def case_001015_mask : SignMask := ⟨6, by decide⟩
private def case_001015_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001015_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppm
private def case_001015_b : Vec3 Rat := { x := (-68/81), y := (-868/81), z := (1348/81) }
private def case_001015_firstLine : StrictLin2 := { a := -1, b := 1, c := (-1091/17) }
private def case_001015_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001015_rankWord :
    rankPairWord? case_001015_word = some case_001015_rank := by
  decide

private theorem case_001015_unrank :
    unrankPairWord case_001015_rank = case_001015_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001015_word case_001015_rank).1
    case_001015_rankWord |>.symm

private theorem case_001015_seqChoice :
    translationChoiceSeq case_001015_word case_001015_mask = case_001015_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001015_seqAtRank :
    translationSeqAtRankMask case_001015_rank case_001015_mask = case_001015_seq := by
  rw [translationSeqAtRankMask, case_001015_unrank]
  exact case_001015_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001015_bAtRank :
    translationBAtRankMask case_001015_rank case_001015_mask = case_001015_b := by
  rw [translationBAtRankMask, case_001015_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001015_b, case_001015_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001015_firstLine_eq :
    case_001015_support.firstLine case_001015_seq case_001015_b = case_001015_firstLine := by
  norm_num [case_001015_firstLine, case_001015_support, case_001015_seq, case_001015_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001015_secondLine_eq :
    case_001015_support.secondLine case_001015_seq case_001015_b = case_001015_secondLine := by
  norm_num [case_001015_secondLine, case_001015_support, case_001015_seq, case_001015_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001015_sourceAgrees :
    SourceAgrees case_001015_support case_001015_rank.val case_001015_mask := by
  intro hlt
  have hrank : (⟨case_001015_rank.val, hlt⟩ : Fin numPairWords) = case_001015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001015_rank.val, hlt⟩ case_001015_mask =
        case_001015_seq := by
    simpa [hrank] using case_001015_seqAtRank
  simp [SourceChecks, hseq, case_001015_support,
    checkTranslationConstraintSource, case_001015_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001015_rows :
    OppOneMinusVarFirstRows case_001015_support case_001015_rank.val case_001015_mask := by
  intro hlt
  have hrank : (⟨case_001015_rank.val, hlt⟩ : Fin numPairWords) = case_001015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001015_rank.val, hlt⟩ case_001015_mask =
        case_001015_seq := by
    simpa [hrank] using case_001015_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001015_rank.val, hlt⟩ case_001015_mask =
        case_001015_b := by
    simpa [hrank] using case_001015_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001015_support case_001015_rank.val hlt
          case_001015_mask = case_001015_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001015_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001015_support case_001015_rank.val hlt
          case_001015_mask = case_001015_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001015_secondLine_eq]
  have case_001015_rowFirst :
      OppPosRow (FirstLineAt case_001015_support case_001015_rank.val hlt case_001015_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001015_firstLine, OppPosRow]
  have case_001015_fixedSecond :
      FixedRow (SecondLineAt case_001015_support case_001015_rank.val hlt case_001015_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001015_secondLine, FixedRow]
  exact ⟨case_001015_rowFirst, case_001015_fixedSecond⟩

private theorem case_001015_existsRows :
    ExistsOppOneMinusVarFirstRows case_001015_rank.val case_001015_mask :=
  ⟨case_001015_support, case_001015_sourceAgrees, case_001015_rows⟩

private theorem case_001015_covered :
    RowPropertyParametricCovered case_001015_rank.val case_001015_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001015_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001016_rank : Fin numPairWords := ⟨790, by decide⟩
private def case_001016_mask : SignMask := ⟨24, by decide⟩
private def case_001016_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001016_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001016_b : Vec3 Rat := { x := (-820/81), y := (-404/81), z := (-1012/81) }
private def case_001016_firstLine : StrictLin2 := { a := -1, b := -1, c := (-503/205) }
private def case_001016_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001016_rankWord :
    rankPairWord? case_001016_word = some case_001016_rank := by
  decide

private theorem case_001016_unrank :
    unrankPairWord case_001016_rank = case_001016_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001016_word case_001016_rank).1
    case_001016_rankWord |>.symm

private theorem case_001016_seqChoice :
    translationChoiceSeq case_001016_word case_001016_mask = case_001016_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001016_seqAtRank :
    translationSeqAtRankMask case_001016_rank case_001016_mask = case_001016_seq := by
  rw [translationSeqAtRankMask, case_001016_unrank]
  exact case_001016_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001016_bAtRank :
    translationBAtRankMask case_001016_rank case_001016_mask = case_001016_b := by
  rw [translationBAtRankMask, case_001016_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001016_b, case_001016_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001016_firstLine_eq :
    case_001016_support.firstLine case_001016_seq case_001016_b = case_001016_firstLine := by
  norm_num [case_001016_firstLine, case_001016_support, case_001016_seq, case_001016_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001016_secondLine_eq :
    case_001016_support.secondLine case_001016_seq case_001016_b = case_001016_secondLine := by
  norm_num [case_001016_secondLine, case_001016_support, case_001016_seq, case_001016_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001016_sourceAgrees :
    SourceAgrees case_001016_support case_001016_rank.val case_001016_mask := by
  intro hlt
  have hrank : (⟨case_001016_rank.val, hlt⟩ : Fin numPairWords) = case_001016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001016_rank.val, hlt⟩ case_001016_mask =
        case_001016_seq := by
    simpa [hrank] using case_001016_seqAtRank
  simp [SourceChecks, hseq, case_001016_support,
    checkTranslationConstraintSource, case_001016_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001016_rows :
    EqEqPosVarFirstRows case_001016_support case_001016_rank.val case_001016_mask := by
  intro hlt
  have hrank : (⟨case_001016_rank.val, hlt⟩ : Fin numPairWords) = case_001016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001016_rank.val, hlt⟩ case_001016_mask =
        case_001016_seq := by
    simpa [hrank] using case_001016_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001016_rank.val, hlt⟩ case_001016_mask =
        case_001016_b := by
    simpa [hrank] using case_001016_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001016_support case_001016_rank.val hlt
          case_001016_mask = case_001016_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001016_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001016_support case_001016_rank.val hlt
          case_001016_mask = case_001016_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001016_secondLine_eq]
  have case_001016_rowFirst :
      EqEqPosRow (FirstLineAt case_001016_support case_001016_rank.val hlt case_001016_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001016_firstLine, EqEqPosRow]
  have case_001016_fixedSecond :
      FixedRow (SecondLineAt case_001016_support case_001016_rank.val hlt case_001016_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001016_secondLine, FixedRow]
  exact ⟨case_001016_rowFirst, case_001016_fixedSecond⟩

private theorem case_001016_existsRows :
    ExistsEqEqPosVarFirstRows case_001016_rank.val case_001016_mask :=
  ⟨case_001016_support, case_001016_sourceAgrees, case_001016_rows⟩

private theorem case_001016_covered :
    RowPropertyParametricCovered case_001016_rank.val case_001016_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001016_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001017_rank : Fin numPairWords := ⟨790, by decide⟩
private def case_001017_mask : SignMask := ⟨30, by decide⟩
private def case_001017_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001017_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001017_b : Vec3 Rat := { x := (-964/81), y := (-260/81), z := (356/81) }
private def case_001017_firstLine : StrictLin2 := { a := (241/87), b := (-241/87), c := (-299/29) }
private def case_001017_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001017_rankWord :
    rankPairWord? case_001017_word = some case_001017_rank := by
  decide

private theorem case_001017_unrank :
    unrankPairWord case_001017_rank = case_001017_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001017_word case_001017_rank).1
    case_001017_rankWord |>.symm

private theorem case_001017_seqChoice :
    translationChoiceSeq case_001017_word case_001017_mask = case_001017_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001017_seqAtRank :
    translationSeqAtRankMask case_001017_rank case_001017_mask = case_001017_seq := by
  rw [translationSeqAtRankMask, case_001017_unrank]
  exact case_001017_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001017_bAtRank :
    translationBAtRankMask case_001017_rank case_001017_mask = case_001017_b := by
  rw [translationBAtRankMask, case_001017_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001017_b, case_001017_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001017_firstLine_eq :
    case_001017_support.firstLine case_001017_seq case_001017_b = case_001017_firstLine := by
  norm_num [case_001017_firstLine, case_001017_support, case_001017_seq, case_001017_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001017_secondLine_eq :
    case_001017_support.secondLine case_001017_seq case_001017_b = case_001017_secondLine := by
  norm_num [case_001017_secondLine, case_001017_support, case_001017_seq, case_001017_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001017_sourceAgrees :
    SourceAgrees case_001017_support case_001017_rank.val case_001017_mask := by
  intro hlt
  have hrank : (⟨case_001017_rank.val, hlt⟩ : Fin numPairWords) = case_001017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001017_rank.val, hlt⟩ case_001017_mask =
        case_001017_seq := by
    simpa [hrank] using case_001017_seqAtRank
  simp [SourceChecks, hseq, case_001017_support,
    checkTranslationConstraintSource, case_001017_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001017_rows :
    OppMinusOneVarFirstRows case_001017_support case_001017_rank.val case_001017_mask := by
  intro hlt
  have hrank : (⟨case_001017_rank.val, hlt⟩ : Fin numPairWords) = case_001017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001017_rank.val, hlt⟩ case_001017_mask =
        case_001017_seq := by
    simpa [hrank] using case_001017_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001017_rank.val, hlt⟩ case_001017_mask =
        case_001017_b := by
    simpa [hrank] using case_001017_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001017_support case_001017_rank.val hlt
          case_001017_mask = case_001017_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001017_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001017_support case_001017_rank.val hlt
          case_001017_mask = case_001017_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001017_secondLine_eq]
  have case_001017_rowFirst :
      OppNegRow (FirstLineAt case_001017_support case_001017_rank.val hlt case_001017_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001017_firstLine, OppNegRow]
  have case_001017_fixedSecond :
      FixedRow (SecondLineAt case_001017_support case_001017_rank.val hlt case_001017_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001017_secondLine, FixedRow]
  exact ⟨case_001017_rowFirst, case_001017_fixedSecond⟩

private theorem case_001017_existsRows :
    ExistsOppMinusOneVarFirstRows case_001017_rank.val case_001017_mask :=
  ⟨case_001017_support, case_001017_sourceAgrees, case_001017_rows⟩

private theorem case_001017_covered :
    RowPropertyParametricCovered case_001017_rank.val case_001017_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001017_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=f4b1c7cd7e6e1ebda46e9b2c6906006966949d1a40e2e8d9f378220f6b6981ee`. -/
private def case_001018_rank : Fin numPairWords := ⟨790, by decide⟩
private def case_001018_mask : SignMask := ⟨31, by decide⟩
private def case_001018_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_001018_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001018_b : Vec3 Rat := { x := (-964/81), y := (388/81), z := (356/81) }
private def case_001018_firstLine : StrictLin2 := { a := (-241/97), b := 0, c := (-335/97) }
private def case_001018_secondLine : StrictLin2 := { a := (81/388), b := 0, c := (3807/93508) }

private theorem case_001018_rankWord :
    rankPairWord? case_001018_word = some case_001018_rank := by
  decide

private theorem case_001018_unrank :
    unrankPairWord case_001018_rank = case_001018_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001018_word case_001018_rank).1
    case_001018_rankWord |>.symm

private theorem case_001018_seqChoice :
    translationChoiceSeq case_001018_word case_001018_mask = case_001018_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001018_seqAtRank :
    translationSeqAtRankMask case_001018_rank case_001018_mask = case_001018_seq := by
  rw [translationSeqAtRankMask, case_001018_unrank]
  exact case_001018_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001018_bAtRank :
    translationBAtRankMask case_001018_rank case_001018_mask = case_001018_b := by
  rw [translationBAtRankMask, case_001018_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001018_b, case_001018_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001018_firstLine_eq :
    case_001018_support.firstLine case_001018_seq case_001018_b = case_001018_firstLine := by
  norm_num [case_001018_firstLine, case_001018_support, case_001018_seq, case_001018_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001018_secondLine_eq :
    case_001018_support.secondLine case_001018_seq case_001018_b = case_001018_secondLine := by
  norm_num [case_001018_secondLine, case_001018_support, case_001018_seq, case_001018_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001018_sourceAgrees :
    SourceAgrees case_001018_support case_001018_rank.val case_001018_mask := by
  intro hlt
  have hrank : (⟨case_001018_rank.val, hlt⟩ : Fin numPairWords) = case_001018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001018_rank.val, hlt⟩ case_001018_mask =
        case_001018_seq := by
    simpa [hrank] using case_001018_seqAtRank
  simp [SourceChecks, hseq, case_001018_support,
    checkTranslationConstraintSource, case_001018_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001018_rows :
    AxisAOnlyRows case_001018_support case_001018_rank.val case_001018_mask := by
  intro hlt
  have hrank : (⟨case_001018_rank.val, hlt⟩ : Fin numPairWords) = case_001018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001018_rank.val, hlt⟩ case_001018_mask =
        case_001018_seq := by
    simpa [hrank] using case_001018_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001018_rank.val, hlt⟩ case_001018_mask =
        case_001018_b := by
    simpa [hrank] using case_001018_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001018_support case_001018_rank.val hlt
          case_001018_mask = case_001018_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001018_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001018_support case_001018_rank.val hlt
          case_001018_mask = case_001018_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001018_secondLine_eq]
  have case_001018_firstBZero :
      (FirstLineAt case_001018_support case_001018_rank.val hlt case_001018_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001018_firstLine]
  have case_001018_secondBZero :
      (SecondLineAt case_001018_support case_001018_rank.val hlt case_001018_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001018_secondLine]
  have case_001018_aProductNeg :
      (FirstLineAt case_001018_support case_001018_rank.val hlt case_001018_mask).a *
          (SecondLineAt case_001018_support case_001018_rank.val hlt case_001018_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_001018_firstLine, case_001018_secondLine]
  have case_001018_weightedCNonpos :
      (SupportPair.multipliersAt case_001018_support
          case_001018_rank.val hlt case_001018_mask).1 *
          (FirstLineAt case_001018_support case_001018_rank.val hlt case_001018_mask).c +
        (SupportPair.multipliersAt case_001018_support
          case_001018_rank.val hlt case_001018_mask).2 *
          (SecondLineAt case_001018_support case_001018_rank.val hlt case_001018_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_001018_firstLine_eq,
      case_001018_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_001018_firstLine, case_001018_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_001018_firstBZero, case_001018_secondBZero,
    case_001018_aProductNeg, case_001018_weightedCNonpos⟩

private theorem case_001018_existsRows :
    ExistsAxisAOnlyRows case_001018_rank.val case_001018_mask :=
  ⟨case_001018_support, case_001018_sourceAgrees, case_001018_rows⟩

private theorem case_001018_covered :
    RowPropertyParametricCovered case_001018_rank.val case_001018_mask :=
  RowPropertyParametricCovered.axisAOnly case_001018_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_001019_rank : Fin numPairWords := ⟨790, by decide⟩
private def case_001019_mask : SignMask := ⟨47, by decide⟩
private def case_001019_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_001019_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001019_b : Vec3 Rat := { x := (-260/81), y := (836/81), z := (580/81) }
private def case_001019_firstLine : StrictLin2 := { a := 1, b := 1, c := (-643/65) }
private def case_001019_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_001019_rankWord :
    rankPairWord? case_001019_word = some case_001019_rank := by
  decide

private theorem case_001019_unrank :
    unrankPairWord case_001019_rank = case_001019_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001019_word case_001019_rank).1
    case_001019_rankWord |>.symm

private theorem case_001019_seqChoice :
    translationChoiceSeq case_001019_word case_001019_mask = case_001019_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001019_seqAtRank :
    translationSeqAtRankMask case_001019_rank case_001019_mask = case_001019_seq := by
  rw [translationSeqAtRankMask, case_001019_unrank]
  exact case_001019_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001019_bAtRank :
    translationBAtRankMask case_001019_rank case_001019_mask = case_001019_b := by
  rw [translationBAtRankMask, case_001019_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001019_b, case_001019_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001019_firstLine_eq :
    case_001019_support.firstLine case_001019_seq case_001019_b = case_001019_firstLine := by
  norm_num [case_001019_firstLine, case_001019_support, case_001019_seq, case_001019_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001019_secondLine_eq :
    case_001019_support.secondLine case_001019_seq case_001019_b = case_001019_secondLine := by
  norm_num [case_001019_secondLine, case_001019_support, case_001019_seq, case_001019_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001019_sourceAgrees :
    SourceAgrees case_001019_support case_001019_rank.val case_001019_mask := by
  intro hlt
  have hrank : (⟨case_001019_rank.val, hlt⟩ : Fin numPairWords) = case_001019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001019_rank.val, hlt⟩ case_001019_mask =
        case_001019_seq := by
    simpa [hrank] using case_001019_seqAtRank
  simp [SourceChecks, hseq, case_001019_support,
    checkTranslationConstraintSource, case_001019_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001019_rows :
    EqEqNegVarFirstRows case_001019_support case_001019_rank.val case_001019_mask := by
  intro hlt
  have hrank : (⟨case_001019_rank.val, hlt⟩ : Fin numPairWords) = case_001019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001019_rank.val, hlt⟩ case_001019_mask =
        case_001019_seq := by
    simpa [hrank] using case_001019_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001019_rank.val, hlt⟩ case_001019_mask =
        case_001019_b := by
    simpa [hrank] using case_001019_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001019_support case_001019_rank.val hlt
          case_001019_mask = case_001019_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001019_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001019_support case_001019_rank.val hlt
          case_001019_mask = case_001019_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001019_secondLine_eq]
  have case_001019_rowFirst :
      EqEqNegRow (FirstLineAt case_001019_support case_001019_rank.val hlt case_001019_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001019_firstLine, EqEqNegRow]
  have case_001019_fixedSecond :
      FixedRow (SecondLineAt case_001019_support case_001019_rank.val hlt case_001019_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001019_secondLine, FixedRow]
  exact ⟨case_001019_rowFirst, case_001019_fixedSecond⟩

private theorem case_001019_existsRows :
    ExistsEqEqNegVarFirstRows case_001019_rank.val case_001019_mask :=
  ⟨case_001019_support, case_001019_sourceAgrees, case_001019_rows⟩

private theorem case_001019_covered :
    RowPropertyParametricCovered case_001019_rank.val case_001019_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_001019_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001020_rank : Fin numPairWords := ⟨790, by decide⟩
private def case_001020_mask : SignMask := ⟨57, by decide⟩
private def case_001020_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001020_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001020_b : Vec3 Rat := { x := (-580/81), y := (868/81), z := (-1348/81) }
private def case_001020_firstLine : StrictLin2 := { a := (-290/699), b := (290/699), c := (-176/233) }
private def case_001020_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001020_rankWord :
    rankPairWord? case_001020_word = some case_001020_rank := by
  decide

private theorem case_001020_unrank :
    unrankPairWord case_001020_rank = case_001020_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001020_word case_001020_rank).1
    case_001020_rankWord |>.symm

private theorem case_001020_seqChoice :
    translationChoiceSeq case_001020_word case_001020_mask = case_001020_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001020_seqAtRank :
    translationSeqAtRankMask case_001020_rank case_001020_mask = case_001020_seq := by
  rw [translationSeqAtRankMask, case_001020_unrank]
  exact case_001020_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001020_bAtRank :
    translationBAtRankMask case_001020_rank case_001020_mask = case_001020_b := by
  rw [translationBAtRankMask, case_001020_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001020_b, case_001020_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001020_firstLine_eq :
    case_001020_support.firstLine case_001020_seq case_001020_b = case_001020_firstLine := by
  norm_num [case_001020_firstLine, case_001020_support, case_001020_seq, case_001020_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001020_secondLine_eq :
    case_001020_support.secondLine case_001020_seq case_001020_b = case_001020_secondLine := by
  norm_num [case_001020_secondLine, case_001020_support, case_001020_seq, case_001020_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001020_sourceAgrees :
    SourceAgrees case_001020_support case_001020_rank.val case_001020_mask := by
  intro hlt
  have hrank : (⟨case_001020_rank.val, hlt⟩ : Fin numPairWords) = case_001020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001020_rank.val, hlt⟩ case_001020_mask =
        case_001020_seq := by
    simpa [hrank] using case_001020_seqAtRank
  simp [SourceChecks, hseq, case_001020_support,
    checkTranslationConstraintSource, case_001020_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001020_rows :
    OppOneMinusVarFirstRows case_001020_support case_001020_rank.val case_001020_mask := by
  intro hlt
  have hrank : (⟨case_001020_rank.val, hlt⟩ : Fin numPairWords) = case_001020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001020_rank.val, hlt⟩ case_001020_mask =
        case_001020_seq := by
    simpa [hrank] using case_001020_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001020_rank.val, hlt⟩ case_001020_mask =
        case_001020_b := by
    simpa [hrank] using case_001020_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001020_support case_001020_rank.val hlt
          case_001020_mask = case_001020_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001020_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001020_support case_001020_rank.val hlt
          case_001020_mask = case_001020_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001020_secondLine_eq]
  have case_001020_rowFirst :
      OppPosRow (FirstLineAt case_001020_support case_001020_rank.val hlt case_001020_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001020_firstLine, OppPosRow]
  have case_001020_fixedSecond :
      FixedRow (SecondLineAt case_001020_support case_001020_rank.val hlt case_001020_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001020_secondLine, FixedRow]
  exact ⟨case_001020_rowFirst, case_001020_fixedSecond⟩

private theorem case_001020_existsRows :
    ExistsOppOneMinusVarFirstRows case_001020_rank.val case_001020_mask :=
  ⟨case_001020_support, case_001020_sourceAgrees, case_001020_rows⟩

private theorem case_001020_covered :
    RowPropertyParametricCovered case_001020_rank.val case_001020_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001020_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001021_rank : Fin numPairWords := ⟨790, by decide⟩
private def case_001021_mask : SignMask := ⟨63, by decide⟩
private def case_001021_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩
private def case_001021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001021_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001021_b : Vec3 Rat := { x := (-724/81), y := (1012/81), z := (20/81) }
private def case_001021_firstLine : StrictLin2 := { a := 1, b := -1, c := (-315/181) }
private def case_001021_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001021_rankWord :
    rankPairWord? case_001021_word = some case_001021_rank := by
  decide

private theorem case_001021_unrank :
    unrankPairWord case_001021_rank = case_001021_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001021_word case_001021_rank).1
    case_001021_rankWord |>.symm

private theorem case_001021_seqChoice :
    translationChoiceSeq case_001021_word case_001021_mask = case_001021_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001021_seqAtRank :
    translationSeqAtRankMask case_001021_rank case_001021_mask = case_001021_seq := by
  rw [translationSeqAtRankMask, case_001021_unrank]
  exact case_001021_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001021_bAtRank :
    translationBAtRankMask case_001021_rank case_001021_mask = case_001021_b := by
  rw [translationBAtRankMask, case_001021_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001021_b, case_001021_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001021_firstLine_eq :
    case_001021_support.firstLine case_001021_seq case_001021_b = case_001021_firstLine := by
  norm_num [case_001021_firstLine, case_001021_support, case_001021_seq, case_001021_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001021_secondLine_eq :
    case_001021_support.secondLine case_001021_seq case_001021_b = case_001021_secondLine := by
  norm_num [case_001021_secondLine, case_001021_support, case_001021_seq, case_001021_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001021_sourceAgrees :
    SourceAgrees case_001021_support case_001021_rank.val case_001021_mask := by
  intro hlt
  have hrank : (⟨case_001021_rank.val, hlt⟩ : Fin numPairWords) = case_001021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001021_rank.val, hlt⟩ case_001021_mask =
        case_001021_seq := by
    simpa [hrank] using case_001021_seqAtRank
  simp [SourceChecks, hseq, case_001021_support,
    checkTranslationConstraintSource, case_001021_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001021_rows :
    OppMinusOneVarFirstRows case_001021_support case_001021_rank.val case_001021_mask := by
  intro hlt
  have hrank : (⟨case_001021_rank.val, hlt⟩ : Fin numPairWords) = case_001021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001021_rank.val, hlt⟩ case_001021_mask =
        case_001021_seq := by
    simpa [hrank] using case_001021_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001021_rank.val, hlt⟩ case_001021_mask =
        case_001021_b := by
    simpa [hrank] using case_001021_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001021_support case_001021_rank.val hlt
          case_001021_mask = case_001021_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001021_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001021_support case_001021_rank.val hlt
          case_001021_mask = case_001021_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001021_secondLine_eq]
  have case_001021_rowFirst :
      OppNegRow (FirstLineAt case_001021_support case_001021_rank.val hlt case_001021_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001021_firstLine, OppNegRow]
  have case_001021_fixedSecond :
      FixedRow (SecondLineAt case_001021_support case_001021_rank.val hlt case_001021_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001021_secondLine, FixedRow]
  exact ⟨case_001021_rowFirst, case_001021_fixedSecond⟩

private theorem case_001021_existsRows :
    ExistsOppMinusOneVarFirstRows case_001021_rank.val case_001021_mask :=
  ⟨case_001021_support, case_001021_sourceAgrees, case_001021_rows⟩

private theorem case_001021_covered :
    RowPropertyParametricCovered case_001021_rank.val case_001021_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001021_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001022_rank : Fin numPairWords := ⟨798, by decide⟩
private def case_001022_mask : SignMask := ⟨16, by decide⟩
private def case_001022_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001022_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001022_b : Vec3 Rat := { x := (-124/27), y := (-380/27), z := (-28/27) }
private def case_001022_firstLine : StrictLin2 := { a := -1, b := -1, c := (-173/31) }
private def case_001022_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001022_rankWord :
    rankPairWord? case_001022_word = some case_001022_rank := by
  decide

private theorem case_001022_unrank :
    unrankPairWord case_001022_rank = case_001022_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001022_word case_001022_rank).1
    case_001022_rankWord |>.symm

private theorem case_001022_seqChoice :
    translationChoiceSeq case_001022_word case_001022_mask = case_001022_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001022_seqAtRank :
    translationSeqAtRankMask case_001022_rank case_001022_mask = case_001022_seq := by
  rw [translationSeqAtRankMask, case_001022_unrank]
  exact case_001022_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001022_bAtRank :
    translationBAtRankMask case_001022_rank case_001022_mask = case_001022_b := by
  rw [translationBAtRankMask, case_001022_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001022_b, case_001022_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001022_firstLine_eq :
    case_001022_support.firstLine case_001022_seq case_001022_b = case_001022_firstLine := by
  norm_num [case_001022_firstLine, case_001022_support, case_001022_seq, case_001022_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001022_secondLine_eq :
    case_001022_support.secondLine case_001022_seq case_001022_b = case_001022_secondLine := by
  norm_num [case_001022_secondLine, case_001022_support, case_001022_seq, case_001022_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001022_sourceAgrees :
    SourceAgrees case_001022_support case_001022_rank.val case_001022_mask := by
  intro hlt
  have hrank : (⟨case_001022_rank.val, hlt⟩ : Fin numPairWords) = case_001022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001022_rank.val, hlt⟩ case_001022_mask =
        case_001022_seq := by
    simpa [hrank] using case_001022_seqAtRank
  simp [SourceChecks, hseq, case_001022_support,
    checkTranslationConstraintSource, case_001022_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001022_rows :
    EqEqPosVarFirstRows case_001022_support case_001022_rank.val case_001022_mask := by
  intro hlt
  have hrank : (⟨case_001022_rank.val, hlt⟩ : Fin numPairWords) = case_001022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001022_rank.val, hlt⟩ case_001022_mask =
        case_001022_seq := by
    simpa [hrank] using case_001022_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001022_rank.val, hlt⟩ case_001022_mask =
        case_001022_b := by
    simpa [hrank] using case_001022_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001022_support case_001022_rank.val hlt
          case_001022_mask = case_001022_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001022_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001022_support case_001022_rank.val hlt
          case_001022_mask = case_001022_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001022_secondLine_eq]
  have case_001022_rowFirst :
      EqEqPosRow (FirstLineAt case_001022_support case_001022_rank.val hlt case_001022_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001022_firstLine, EqEqPosRow]
  have case_001022_fixedSecond :
      FixedRow (SecondLineAt case_001022_support case_001022_rank.val hlt case_001022_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001022_secondLine, FixedRow]
  exact ⟨case_001022_rowFirst, case_001022_fixedSecond⟩

private theorem case_001022_existsRows :
    ExistsEqEqPosVarFirstRows case_001022_rank.val case_001022_mask :=
  ⟨case_001022_support, case_001022_sourceAgrees, case_001022_rows⟩

private theorem case_001022_covered :
    RowPropertyParametricCovered case_001022_rank.val case_001022_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001022_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001023_rank : Fin numPairWords := ⟨798, by decide⟩
private def case_001023_mask : SignMask := ⟨22, by decide⟩
private def case_001023_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001023_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001023_b : Vec3 Rat := { x := (-172/27), y := (-332/27), z := (428/27) }
private def case_001023_firstLine : StrictLin2 := { a := -1, b := 1, c := (-337/43) }
private def case_001023_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001023_rankWord :
    rankPairWord? case_001023_word = some case_001023_rank := by
  decide

private theorem case_001023_unrank :
    unrankPairWord case_001023_rank = case_001023_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001023_word case_001023_rank).1
    case_001023_rankWord |>.symm

private theorem case_001023_seqChoice :
    translationChoiceSeq case_001023_word case_001023_mask = case_001023_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001023_seqAtRank :
    translationSeqAtRankMask case_001023_rank case_001023_mask = case_001023_seq := by
  rw [translationSeqAtRankMask, case_001023_unrank]
  exact case_001023_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001023_bAtRank :
    translationBAtRankMask case_001023_rank case_001023_mask = case_001023_b := by
  rw [translationBAtRankMask, case_001023_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001023_b, case_001023_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001023_firstLine_eq :
    case_001023_support.firstLine case_001023_seq case_001023_b = case_001023_firstLine := by
  norm_num [case_001023_firstLine, case_001023_support, case_001023_seq, case_001023_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001023_secondLine_eq :
    case_001023_support.secondLine case_001023_seq case_001023_b = case_001023_secondLine := by
  norm_num [case_001023_secondLine, case_001023_support, case_001023_seq, case_001023_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001023_sourceAgrees :
    SourceAgrees case_001023_support case_001023_rank.val case_001023_mask := by
  intro hlt
  have hrank : (⟨case_001023_rank.val, hlt⟩ : Fin numPairWords) = case_001023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001023_rank.val, hlt⟩ case_001023_mask =
        case_001023_seq := by
    simpa [hrank] using case_001023_seqAtRank
  simp [SourceChecks, hseq, case_001023_support,
    checkTranslationConstraintSource, case_001023_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001023_rows :
    OppOneMinusVarFirstRows case_001023_support case_001023_rank.val case_001023_mask := by
  intro hlt
  have hrank : (⟨case_001023_rank.val, hlt⟩ : Fin numPairWords) = case_001023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001023_rank.val, hlt⟩ case_001023_mask =
        case_001023_seq := by
    simpa [hrank] using case_001023_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001023_rank.val, hlt⟩ case_001023_mask =
        case_001023_b := by
    simpa [hrank] using case_001023_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001023_support case_001023_rank.val hlt
          case_001023_mask = case_001023_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001023_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001023_support case_001023_rank.val hlt
          case_001023_mask = case_001023_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001023_secondLine_eq]
  have case_001023_rowFirst :
      OppPosRow (FirstLineAt case_001023_support case_001023_rank.val hlt case_001023_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001023_firstLine, OppPosRow]
  have case_001023_fixedSecond :
      FixedRow (SecondLineAt case_001023_support case_001023_rank.val hlt case_001023_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001023_secondLine, FixedRow]
  exact ⟨case_001023_rowFirst, case_001023_fixedSecond⟩

private theorem case_001023_existsRows :
    ExistsOppOneMinusVarFirstRows case_001023_rank.val case_001023_mask :=
  ⟨case_001023_support, case_001023_sourceAgrees, case_001023_rows⟩

private theorem case_001023_covered :
    RowPropertyParametricCovered case_001023_rank.val case_001023_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001023_existsRows

inductive Group031Covered : Nat -> SignMask -> Prop
  | case_000992 : Group031Covered case_000992_rank.val case_000992_mask
  | case_000993 : Group031Covered case_000993_rank.val case_000993_mask
  | case_000994 : Group031Covered case_000994_rank.val case_000994_mask
  | case_000995 : Group031Covered case_000995_rank.val case_000995_mask
  | case_000996 : Group031Covered case_000996_rank.val case_000996_mask
  | case_000997 : Group031Covered case_000997_rank.val case_000997_mask
  | case_000998 : Group031Covered case_000998_rank.val case_000998_mask
  | case_000999 : Group031Covered case_000999_rank.val case_000999_mask
  | case_001000 : Group031Covered case_001000_rank.val case_001000_mask
  | case_001001 : Group031Covered case_001001_rank.val case_001001_mask
  | case_001002 : Group031Covered case_001002_rank.val case_001002_mask
  | case_001003 : Group031Covered case_001003_rank.val case_001003_mask
  | case_001004 : Group031Covered case_001004_rank.val case_001004_mask
  | case_001005 : Group031Covered case_001005_rank.val case_001005_mask
  | case_001006 : Group031Covered case_001006_rank.val case_001006_mask
  | case_001007 : Group031Covered case_001007_rank.val case_001007_mask
  | case_001008 : Group031Covered case_001008_rank.val case_001008_mask
  | case_001009 : Group031Covered case_001009_rank.val case_001009_mask
  | case_001010 : Group031Covered case_001010_rank.val case_001010_mask
  | case_001011 : Group031Covered case_001011_rank.val case_001011_mask
  | case_001012 : Group031Covered case_001012_rank.val case_001012_mask
  | case_001013 : Group031Covered case_001013_rank.val case_001013_mask
  | case_001014 : Group031Covered case_001014_rank.val case_001014_mask
  | case_001015 : Group031Covered case_001015_rank.val case_001015_mask
  | case_001016 : Group031Covered case_001016_rank.val case_001016_mask
  | case_001017 : Group031Covered case_001017_rank.val case_001017_mask
  | case_001018 : Group031Covered case_001018_rank.val case_001018_mask
  | case_001019 : Group031Covered case_001019_rank.val case_001019_mask
  | case_001020 : Group031Covered case_001020_rank.val case_001020_mask
  | case_001021 : Group031Covered case_001021_rank.val case_001021_mask
  | case_001022 : Group031Covered case_001022_rank.val case_001022_mask
  | case_001023 : Group031Covered case_001023_rank.val case_001023_mask

theorem Group031GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group031Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000992 =>
      exact RowPropertyParametricCovered.kills case_000992_covered
  | case_000993 =>
      exact RowPropertyParametricCovered.kills case_000993_covered
  | case_000994 =>
      exact RowPropertyParametricCovered.kills case_000994_covered
  | case_000995 =>
      exact RowPropertyParametricCovered.kills case_000995_covered
  | case_000996 =>
      exact RowPropertyParametricCovered.kills case_000996_covered
  | case_000997 =>
      exact RowPropertyParametricCovered.kills case_000997_covered
  | case_000998 =>
      exact RowPropertyParametricCovered.kills case_000998_covered
  | case_000999 =>
      exact RowPropertyParametricCovered.kills case_000999_covered
  | case_001000 =>
      exact RowPropertyParametricCovered.kills case_001000_covered
  | case_001001 =>
      exact RowPropertyParametricCovered.kills case_001001_covered
  | case_001002 =>
      exact RowPropertyParametricCovered.kills case_001002_covered
  | case_001003 =>
      exact RowPropertyParametricCovered.kills case_001003_covered
  | case_001004 =>
      exact RowPropertyParametricCovered.kills case_001004_covered
  | case_001005 =>
      exact RowPropertyParametricCovered.kills case_001005_covered
  | case_001006 =>
      exact RowPropertyParametricCovered.kills case_001006_covered
  | case_001007 =>
      exact RowPropertyParametricCovered.kills case_001007_covered
  | case_001008 =>
      exact RowPropertyParametricCovered.kills case_001008_covered
  | case_001009 =>
      exact RowPropertyParametricCovered.kills case_001009_covered
  | case_001010 =>
      exact RowPropertyParametricCovered.kills case_001010_covered
  | case_001011 =>
      exact RowPropertyParametricCovered.kills case_001011_covered
  | case_001012 =>
      exact RowPropertyParametricCovered.kills case_001012_covered
  | case_001013 =>
      exact RowPropertyParametricCovered.kills case_001013_covered
  | case_001014 =>
      exact RowPropertyParametricCovered.kills case_001014_covered
  | case_001015 =>
      exact RowPropertyParametricCovered.kills case_001015_covered
  | case_001016 =>
      exact RowPropertyParametricCovered.kills case_001016_covered
  | case_001017 =>
      exact RowPropertyParametricCovered.kills case_001017_covered
  | case_001018 =>
      exact RowPropertyParametricCovered.kills case_001018_covered
  | case_001019 =>
      exact RowPropertyParametricCovered.kills case_001019_covered
  | case_001020 =>
      exact RowPropertyParametricCovered.kills case_001020_covered
  | case_001021 =>
      exact RowPropertyParametricCovered.kills case_001021_covered
  | case_001022 =>
      exact RowPropertyParametricCovered.kills case_001022_covered
  | case_001023 =>
      exact RowPropertyParametricCovered.kills case_001023_covered

theorem Group031_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group031
