import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group018

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
private def case_000576_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000576_mask : SignMask := ⟨54, by decide⟩
private def case_000576_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000576_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000576_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000576_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (116/9) }
private def case_000576_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_000576_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000576_rankWord :
    rankPairWord? case_000576_word = some case_000576_rank := by
  decide

private theorem case_000576_unrank :
    unrankPairWord case_000576_rank = case_000576_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000576_word case_000576_rank).1
    case_000576_rankWord |>.symm

private theorem case_000576_seqChoice :
    translationChoiceSeq case_000576_word case_000576_mask = case_000576_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000576_seqAtRank :
    translationSeqAtRankMask case_000576_rank case_000576_mask = case_000576_seq := by
  rw [translationSeqAtRankMask, case_000576_unrank]
  exact case_000576_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000576_bAtRank :
    translationBAtRankMask case_000576_rank case_000576_mask = case_000576_b := by
  rw [translationBAtRankMask, case_000576_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000576_b, case_000576_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000576_firstLine_eq :
    case_000576_support.firstLine case_000576_seq case_000576_b = case_000576_firstLine := by
  norm_num [case_000576_firstLine, case_000576_support, case_000576_seq, case_000576_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000576_secondLine_eq :
    case_000576_support.secondLine case_000576_seq case_000576_b = case_000576_secondLine := by
  norm_num [case_000576_secondLine, case_000576_support, case_000576_seq, case_000576_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000576_sourceAgrees :
    SourceAgrees case_000576_support case_000576_rank.val case_000576_mask := by
  intro hlt
  have hrank : (⟨case_000576_rank.val, hlt⟩ : Fin numPairWords) = case_000576_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000576_rank.val, hlt⟩ case_000576_mask =
        case_000576_seq := by
    simpa [hrank] using case_000576_seqAtRank
  simp [SourceChecks, hseq, case_000576_support,
    checkTranslationConstraintSource, case_000576_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000576_rows :
    OppOneMinusVarFirstRows case_000576_support case_000576_rank.val case_000576_mask := by
  intro hlt
  have hrank : (⟨case_000576_rank.val, hlt⟩ : Fin numPairWords) = case_000576_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000576_rank.val, hlt⟩ case_000576_mask =
        case_000576_seq := by
    simpa [hrank] using case_000576_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000576_rank.val, hlt⟩ case_000576_mask =
        case_000576_b := by
    simpa [hrank] using case_000576_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000576_support case_000576_rank.val hlt
          case_000576_mask = case_000576_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000576_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000576_support case_000576_rank.val hlt
          case_000576_mask = case_000576_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000576_secondLine_eq]
  have case_000576_rowFirst :
      OppPosRow (FirstLineAt case_000576_support case_000576_rank.val hlt case_000576_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000576_firstLine, OppPosRow]
  have case_000576_fixedSecond :
      FixedRow (SecondLineAt case_000576_support case_000576_rank.val hlt case_000576_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000576_secondLine, FixedRow]
  exact ⟨case_000576_rowFirst, case_000576_fixedSecond⟩

private theorem case_000576_existsRows :
    ExistsOppOneMinusVarFirstRows case_000576_rank.val case_000576_mask :=
  ⟨case_000576_support, case_000576_sourceAgrees, case_000576_rows⟩

private theorem case_000576_covered :
    RowPropertyParametricCovered case_000576_rank.val case_000576_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000576_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000577_rank : Fin numPairWords := ⟨360, by decide⟩
private def case_000577_mask : SignMask := ⟨55, by decide⟩
private def case_000577_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000577_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000577_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000577_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000577_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_000577_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000577_rankWord :
    rankPairWord? case_000577_word = some case_000577_rank := by
  decide

private theorem case_000577_unrank :
    unrankPairWord case_000577_rank = case_000577_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000577_word case_000577_rank).1
    case_000577_rankWord |>.symm

private theorem case_000577_seqChoice :
    translationChoiceSeq case_000577_word case_000577_mask = case_000577_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000577_seqAtRank :
    translationSeqAtRankMask case_000577_rank case_000577_mask = case_000577_seq := by
  rw [translationSeqAtRankMask, case_000577_unrank]
  exact case_000577_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000577_bAtRank :
    translationBAtRankMask case_000577_rank case_000577_mask = case_000577_b := by
  rw [translationBAtRankMask, case_000577_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000577_b, case_000577_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000577_firstLine_eq :
    case_000577_support.firstLine case_000577_seq case_000577_b = case_000577_firstLine := by
  norm_num [case_000577_firstLine, case_000577_support, case_000577_seq, case_000577_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000577_secondLine_eq :
    case_000577_support.secondLine case_000577_seq case_000577_b = case_000577_secondLine := by
  norm_num [case_000577_secondLine, case_000577_support, case_000577_seq, case_000577_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000577_sourceAgrees :
    SourceAgrees case_000577_support case_000577_rank.val case_000577_mask := by
  intro hlt
  have hrank : (⟨case_000577_rank.val, hlt⟩ : Fin numPairWords) = case_000577_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000577_rank.val, hlt⟩ case_000577_mask =
        case_000577_seq := by
    simpa [hrank] using case_000577_seqAtRank
  simp [SourceChecks, hseq, case_000577_support,
    checkTranslationConstraintSource, case_000577_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000577_rows :
    OppOneMinusVarFirstRows case_000577_support case_000577_rank.val case_000577_mask := by
  intro hlt
  have hrank : (⟨case_000577_rank.val, hlt⟩ : Fin numPairWords) = case_000577_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000577_rank.val, hlt⟩ case_000577_mask =
        case_000577_seq := by
    simpa [hrank] using case_000577_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000577_rank.val, hlt⟩ case_000577_mask =
        case_000577_b := by
    simpa [hrank] using case_000577_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000577_support case_000577_rank.val hlt
          case_000577_mask = case_000577_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000577_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000577_support case_000577_rank.val hlt
          case_000577_mask = case_000577_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000577_secondLine_eq]
  have case_000577_rowFirst :
      OppPosRow (FirstLineAt case_000577_support case_000577_rank.val hlt case_000577_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000577_firstLine, OppPosRow]
  have case_000577_fixedSecond :
      FixedRow (SecondLineAt case_000577_support case_000577_rank.val hlt case_000577_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000577_secondLine, FixedRow]
  exact ⟨case_000577_rowFirst, case_000577_fixedSecond⟩

private theorem case_000577_existsRows :
    ExistsOppOneMinusVarFirstRows case_000577_rank.val case_000577_mask :=
  ⟨case_000577_support, case_000577_sourceAgrees, case_000577_rows⟩

private theorem case_000577_covered :
    RowPropertyParametricCovered case_000577_rank.val case_000577_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000577_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000578_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000578_mask : SignMask := ⟨16, by decide⟩
private def case_000578_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000578_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000578_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000578_b : Vec3 Rat := { x := (-4/9), y := (-164/9), z := -4 }
private def case_000578_firstLine : StrictLin2 := { a := -1, b := -1, c := -99 }
private def case_000578_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000578_rankWord :
    rankPairWord? case_000578_word = some case_000578_rank := by
  decide

private theorem case_000578_unrank :
    unrankPairWord case_000578_rank = case_000578_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000578_word case_000578_rank).1
    case_000578_rankWord |>.symm

private theorem case_000578_seqChoice :
    translationChoiceSeq case_000578_word case_000578_mask = case_000578_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000578_seqAtRank :
    translationSeqAtRankMask case_000578_rank case_000578_mask = case_000578_seq := by
  rw [translationSeqAtRankMask, case_000578_unrank]
  exact case_000578_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000578_bAtRank :
    translationBAtRankMask case_000578_rank case_000578_mask = case_000578_b := by
  rw [translationBAtRankMask, case_000578_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000578_b, case_000578_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000578_firstLine_eq :
    case_000578_support.firstLine case_000578_seq case_000578_b = case_000578_firstLine := by
  norm_num [case_000578_firstLine, case_000578_support, case_000578_seq, case_000578_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000578_secondLine_eq :
    case_000578_support.secondLine case_000578_seq case_000578_b = case_000578_secondLine := by
  norm_num [case_000578_secondLine, case_000578_support, case_000578_seq, case_000578_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000578_sourceAgrees :
    SourceAgrees case_000578_support case_000578_rank.val case_000578_mask := by
  intro hlt
  have hrank : (⟨case_000578_rank.val, hlt⟩ : Fin numPairWords) = case_000578_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000578_rank.val, hlt⟩ case_000578_mask =
        case_000578_seq := by
    simpa [hrank] using case_000578_seqAtRank
  simp [SourceChecks, hseq, case_000578_support,
    checkTranslationConstraintSource, case_000578_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000578_rows :
    EqEqPosVarFirstRows case_000578_support case_000578_rank.val case_000578_mask := by
  intro hlt
  have hrank : (⟨case_000578_rank.val, hlt⟩ : Fin numPairWords) = case_000578_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000578_rank.val, hlt⟩ case_000578_mask =
        case_000578_seq := by
    simpa [hrank] using case_000578_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000578_rank.val, hlt⟩ case_000578_mask =
        case_000578_b := by
    simpa [hrank] using case_000578_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000578_support case_000578_rank.val hlt
          case_000578_mask = case_000578_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000578_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000578_support case_000578_rank.val hlt
          case_000578_mask = case_000578_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000578_secondLine_eq]
  have case_000578_rowFirst :
      EqEqPosRow (FirstLineAt case_000578_support case_000578_rank.val hlt case_000578_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000578_firstLine, EqEqPosRow]
  have case_000578_fixedSecond :
      FixedRow (SecondLineAt case_000578_support case_000578_rank.val hlt case_000578_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000578_secondLine, FixedRow]
  exact ⟨case_000578_rowFirst, case_000578_fixedSecond⟩

private theorem case_000578_existsRows :
    ExistsEqEqPosVarFirstRows case_000578_rank.val case_000578_mask :=
  ⟨case_000578_support, case_000578_sourceAgrees, case_000578_rows⟩

private theorem case_000578_covered :
    RowPropertyParametricCovered case_000578_rank.val case_000578_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000578_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000579_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000579_mask : SignMask := ⟨18, by decide⟩
private def case_000579_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000579_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000579_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000579_b : Vec3 Rat := { x := (-4/9), y := (-164/9), z := 4 }
private def case_000579_firstLine : StrictLin2 := { a := -1, b := -1, c := -63 }
private def case_000579_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000579_rankWord :
    rankPairWord? case_000579_word = some case_000579_rank := by
  decide

private theorem case_000579_unrank :
    unrankPairWord case_000579_rank = case_000579_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000579_word case_000579_rank).1
    case_000579_rankWord |>.symm

private theorem case_000579_seqChoice :
    translationChoiceSeq case_000579_word case_000579_mask = case_000579_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000579_seqAtRank :
    translationSeqAtRankMask case_000579_rank case_000579_mask = case_000579_seq := by
  rw [translationSeqAtRankMask, case_000579_unrank]
  exact case_000579_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000579_bAtRank :
    translationBAtRankMask case_000579_rank case_000579_mask = case_000579_b := by
  rw [translationBAtRankMask, case_000579_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000579_b, case_000579_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000579_firstLine_eq :
    case_000579_support.firstLine case_000579_seq case_000579_b = case_000579_firstLine := by
  norm_num [case_000579_firstLine, case_000579_support, case_000579_seq, case_000579_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000579_secondLine_eq :
    case_000579_support.secondLine case_000579_seq case_000579_b = case_000579_secondLine := by
  norm_num [case_000579_secondLine, case_000579_support, case_000579_seq, case_000579_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000579_sourceAgrees :
    SourceAgrees case_000579_support case_000579_rank.val case_000579_mask := by
  intro hlt
  have hrank : (⟨case_000579_rank.val, hlt⟩ : Fin numPairWords) = case_000579_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000579_rank.val, hlt⟩ case_000579_mask =
        case_000579_seq := by
    simpa [hrank] using case_000579_seqAtRank
  simp [SourceChecks, hseq, case_000579_support,
    checkTranslationConstraintSource, case_000579_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000579_rows :
    EqEqPosVarFirstRows case_000579_support case_000579_rank.val case_000579_mask := by
  intro hlt
  have hrank : (⟨case_000579_rank.val, hlt⟩ : Fin numPairWords) = case_000579_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000579_rank.val, hlt⟩ case_000579_mask =
        case_000579_seq := by
    simpa [hrank] using case_000579_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000579_rank.val, hlt⟩ case_000579_mask =
        case_000579_b := by
    simpa [hrank] using case_000579_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000579_support case_000579_rank.val hlt
          case_000579_mask = case_000579_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000579_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000579_support case_000579_rank.val hlt
          case_000579_mask = case_000579_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000579_secondLine_eq]
  have case_000579_rowFirst :
      EqEqPosRow (FirstLineAt case_000579_support case_000579_rank.val hlt case_000579_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000579_firstLine, EqEqPosRow]
  have case_000579_fixedSecond :
      FixedRow (SecondLineAt case_000579_support case_000579_rank.val hlt case_000579_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000579_secondLine, FixedRow]
  exact ⟨case_000579_rowFirst, case_000579_fixedSecond⟩

private theorem case_000579_existsRows :
    ExistsEqEqPosVarFirstRows case_000579_rank.val case_000579_mask :=
  ⟨case_000579_support, case_000579_sourceAgrees, case_000579_rows⟩

private theorem case_000579_covered :
    RowPropertyParametricCovered case_000579_rank.val case_000579_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000579_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000580_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000580_mask : SignMask := ⟨22, by decide⟩
private def case_000580_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000580_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000580_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000580_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (28/3) }
private def case_000580_firstLine : StrictLin2 := { a := (-13/5), b := (-13/5), c := -9 }
private def case_000580_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000580_rankWord :
    rankPairWord? case_000580_word = some case_000580_rank := by
  decide

private theorem case_000580_unrank :
    unrankPairWord case_000580_rank = case_000580_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000580_word case_000580_rank).1
    case_000580_rankWord |>.symm

private theorem case_000580_seqChoice :
    translationChoiceSeq case_000580_word case_000580_mask = case_000580_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000580_seqAtRank :
    translationSeqAtRankMask case_000580_rank case_000580_mask = case_000580_seq := by
  rw [translationSeqAtRankMask, case_000580_unrank]
  exact case_000580_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000580_bAtRank :
    translationBAtRankMask case_000580_rank case_000580_mask = case_000580_b := by
  rw [translationBAtRankMask, case_000580_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000580_b, case_000580_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000580_firstLine_eq :
    case_000580_support.firstLine case_000580_seq case_000580_b = case_000580_firstLine := by
  norm_num [case_000580_firstLine, case_000580_support, case_000580_seq, case_000580_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000580_secondLine_eq :
    case_000580_support.secondLine case_000580_seq case_000580_b = case_000580_secondLine := by
  norm_num [case_000580_secondLine, case_000580_support, case_000580_seq, case_000580_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000580_sourceAgrees :
    SourceAgrees case_000580_support case_000580_rank.val case_000580_mask := by
  intro hlt
  have hrank : (⟨case_000580_rank.val, hlt⟩ : Fin numPairWords) = case_000580_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000580_rank.val, hlt⟩ case_000580_mask =
        case_000580_seq := by
    simpa [hrank] using case_000580_seqAtRank
  simp [SourceChecks, hseq, case_000580_support,
    checkTranslationConstraintSource, case_000580_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000580_rows :
    EqEqPosVarFirstRows case_000580_support case_000580_rank.val case_000580_mask := by
  intro hlt
  have hrank : (⟨case_000580_rank.val, hlt⟩ : Fin numPairWords) = case_000580_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000580_rank.val, hlt⟩ case_000580_mask =
        case_000580_seq := by
    simpa [hrank] using case_000580_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000580_rank.val, hlt⟩ case_000580_mask =
        case_000580_b := by
    simpa [hrank] using case_000580_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000580_support case_000580_rank.val hlt
          case_000580_mask = case_000580_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000580_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000580_support case_000580_rank.val hlt
          case_000580_mask = case_000580_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000580_secondLine_eq]
  have case_000580_rowFirst :
      EqEqPosRow (FirstLineAt case_000580_support case_000580_rank.val hlt case_000580_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000580_firstLine, EqEqPosRow]
  have case_000580_fixedSecond :
      FixedRow (SecondLineAt case_000580_support case_000580_rank.val hlt case_000580_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000580_secondLine, FixedRow]
  exact ⟨case_000580_rowFirst, case_000580_fixedSecond⟩

private theorem case_000580_existsRows :
    ExistsEqEqPosVarFirstRows case_000580_rank.val case_000580_mask :=
  ⟨case_000580_support, case_000580_sourceAgrees, case_000580_rows⟩

private theorem case_000580_covered :
    RowPropertyParametricCovered case_000580_rank.val case_000580_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000580_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000581_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000581_mask : SignMask := ⟨24, by decide⟩
private def case_000581_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000581_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000581_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000581_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-28/3) }
private def case_000581_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_000581_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000581_rankWord :
    rankPairWord? case_000581_word = some case_000581_rank := by
  decide

private theorem case_000581_unrank :
    unrankPairWord case_000581_rank = case_000581_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000581_word case_000581_rank).1
    case_000581_rankWord |>.symm

private theorem case_000581_seqChoice :
    translationChoiceSeq case_000581_word case_000581_mask = case_000581_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000581_seqAtRank :
    translationSeqAtRankMask case_000581_rank case_000581_mask = case_000581_seq := by
  rw [translationSeqAtRankMask, case_000581_unrank]
  exact case_000581_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000581_bAtRank :
    translationBAtRankMask case_000581_rank case_000581_mask = case_000581_b := by
  rw [translationBAtRankMask, case_000581_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000581_b, case_000581_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000581_firstLine_eq :
    case_000581_support.firstLine case_000581_seq case_000581_b = case_000581_firstLine := by
  norm_num [case_000581_firstLine, case_000581_support, case_000581_seq, case_000581_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000581_secondLine_eq :
    case_000581_support.secondLine case_000581_seq case_000581_b = case_000581_secondLine := by
  norm_num [case_000581_secondLine, case_000581_support, case_000581_seq, case_000581_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000581_sourceAgrees :
    SourceAgrees case_000581_support case_000581_rank.val case_000581_mask := by
  intro hlt
  have hrank : (⟨case_000581_rank.val, hlt⟩ : Fin numPairWords) = case_000581_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000581_rank.val, hlt⟩ case_000581_mask =
        case_000581_seq := by
    simpa [hrank] using case_000581_seqAtRank
  simp [SourceChecks, hseq, case_000581_support,
    checkTranslationConstraintSource, case_000581_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000581_rows :
    EqEqPosVarFirstRows case_000581_support case_000581_rank.val case_000581_mask := by
  intro hlt
  have hrank : (⟨case_000581_rank.val, hlt⟩ : Fin numPairWords) = case_000581_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000581_rank.val, hlt⟩ case_000581_mask =
        case_000581_seq := by
    simpa [hrank] using case_000581_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000581_rank.val, hlt⟩ case_000581_mask =
        case_000581_b := by
    simpa [hrank] using case_000581_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000581_support case_000581_rank.val hlt
          case_000581_mask = case_000581_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000581_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000581_support case_000581_rank.val hlt
          case_000581_mask = case_000581_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000581_secondLine_eq]
  have case_000581_rowFirst :
      EqEqPosRow (FirstLineAt case_000581_support case_000581_rank.val hlt case_000581_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000581_firstLine, EqEqPosRow]
  have case_000581_fixedSecond :
      FixedRow (SecondLineAt case_000581_support case_000581_rank.val hlt case_000581_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000581_secondLine, FixedRow]
  exact ⟨case_000581_rowFirst, case_000581_fixedSecond⟩

private theorem case_000581_existsRows :
    ExistsEqEqPosVarFirstRows case_000581_rank.val case_000581_mask :=
  ⟨case_000581_support, case_000581_sourceAgrees, case_000581_rows⟩

private theorem case_000581_covered :
    RowPropertyParametricCovered case_000581_rank.val case_000581_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000581_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000582_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000582_mask : SignMask := ⟨29, by decide⟩
private def case_000582_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000582_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000582_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000582_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := -4 }
private def case_000582_firstLine : StrictLin2 := { a := (-25/17), b := (-25/17), c := (-57/17) }
private def case_000582_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000582_rankWord :
    rankPairWord? case_000582_word = some case_000582_rank := by
  decide

private theorem case_000582_unrank :
    unrankPairWord case_000582_rank = case_000582_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000582_word case_000582_rank).1
    case_000582_rankWord |>.symm

private theorem case_000582_seqChoice :
    translationChoiceSeq case_000582_word case_000582_mask = case_000582_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000582_seqAtRank :
    translationSeqAtRankMask case_000582_rank case_000582_mask = case_000582_seq := by
  rw [translationSeqAtRankMask, case_000582_unrank]
  exact case_000582_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000582_bAtRank :
    translationBAtRankMask case_000582_rank case_000582_mask = case_000582_b := by
  rw [translationBAtRankMask, case_000582_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000582_b, case_000582_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000582_firstLine_eq :
    case_000582_support.firstLine case_000582_seq case_000582_b = case_000582_firstLine := by
  norm_num [case_000582_firstLine, case_000582_support, case_000582_seq, case_000582_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000582_secondLine_eq :
    case_000582_support.secondLine case_000582_seq case_000582_b = case_000582_secondLine := by
  norm_num [case_000582_secondLine, case_000582_support, case_000582_seq, case_000582_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000582_sourceAgrees :
    SourceAgrees case_000582_support case_000582_rank.val case_000582_mask := by
  intro hlt
  have hrank : (⟨case_000582_rank.val, hlt⟩ : Fin numPairWords) = case_000582_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000582_rank.val, hlt⟩ case_000582_mask =
        case_000582_seq := by
    simpa [hrank] using case_000582_seqAtRank
  simp [SourceChecks, hseq, case_000582_support,
    checkTranslationConstraintSource, case_000582_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000582_rows :
    EqEqPosVarFirstRows case_000582_support case_000582_rank.val case_000582_mask := by
  intro hlt
  have hrank : (⟨case_000582_rank.val, hlt⟩ : Fin numPairWords) = case_000582_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000582_rank.val, hlt⟩ case_000582_mask =
        case_000582_seq := by
    simpa [hrank] using case_000582_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000582_rank.val, hlt⟩ case_000582_mask =
        case_000582_b := by
    simpa [hrank] using case_000582_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000582_support case_000582_rank.val hlt
          case_000582_mask = case_000582_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000582_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000582_support case_000582_rank.val hlt
          case_000582_mask = case_000582_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000582_secondLine_eq]
  have case_000582_rowFirst :
      EqEqPosRow (FirstLineAt case_000582_support case_000582_rank.val hlt case_000582_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000582_firstLine, EqEqPosRow]
  have case_000582_fixedSecond :
      FixedRow (SecondLineAt case_000582_support case_000582_rank.val hlt case_000582_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000582_secondLine, FixedRow]
  exact ⟨case_000582_rowFirst, case_000582_fixedSecond⟩

private theorem case_000582_existsRows :
    ExistsEqEqPosVarFirstRows case_000582_rank.val case_000582_mask :=
  ⟨case_000582_support, case_000582_sourceAgrees, case_000582_rows⟩

private theorem case_000582_covered :
    RowPropertyParametricCovered case_000582_rank.val case_000582_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000582_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000583_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000583_mask : SignMask := ⟨31, by decide⟩
private def case_000583_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000583_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000583_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000583_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := 4 }
private def case_000583_firstLine : StrictLin2 := { a := (-5/7), b := (-5/7), c := (-37/7) }
private def case_000583_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000583_rankWord :
    rankPairWord? case_000583_word = some case_000583_rank := by
  decide

private theorem case_000583_unrank :
    unrankPairWord case_000583_rank = case_000583_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000583_word case_000583_rank).1
    case_000583_rankWord |>.symm

private theorem case_000583_seqChoice :
    translationChoiceSeq case_000583_word case_000583_mask = case_000583_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000583_seqAtRank :
    translationSeqAtRankMask case_000583_rank case_000583_mask = case_000583_seq := by
  rw [translationSeqAtRankMask, case_000583_unrank]
  exact case_000583_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000583_bAtRank :
    translationBAtRankMask case_000583_rank case_000583_mask = case_000583_b := by
  rw [translationBAtRankMask, case_000583_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000583_b, case_000583_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000583_firstLine_eq :
    case_000583_support.firstLine case_000583_seq case_000583_b = case_000583_firstLine := by
  norm_num [case_000583_firstLine, case_000583_support, case_000583_seq, case_000583_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000583_secondLine_eq :
    case_000583_support.secondLine case_000583_seq case_000583_b = case_000583_secondLine := by
  norm_num [case_000583_secondLine, case_000583_support, case_000583_seq, case_000583_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000583_sourceAgrees :
    SourceAgrees case_000583_support case_000583_rank.val case_000583_mask := by
  intro hlt
  have hrank : (⟨case_000583_rank.val, hlt⟩ : Fin numPairWords) = case_000583_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000583_rank.val, hlt⟩ case_000583_mask =
        case_000583_seq := by
    simpa [hrank] using case_000583_seqAtRank
  simp [SourceChecks, hseq, case_000583_support,
    checkTranslationConstraintSource, case_000583_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000583_rows :
    EqEqPosVarFirstRows case_000583_support case_000583_rank.val case_000583_mask := by
  intro hlt
  have hrank : (⟨case_000583_rank.val, hlt⟩ : Fin numPairWords) = case_000583_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000583_rank.val, hlt⟩ case_000583_mask =
        case_000583_seq := by
    simpa [hrank] using case_000583_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000583_rank.val, hlt⟩ case_000583_mask =
        case_000583_b := by
    simpa [hrank] using case_000583_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000583_support case_000583_rank.val hlt
          case_000583_mask = case_000583_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000583_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000583_support case_000583_rank.val hlt
          case_000583_mask = case_000583_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000583_secondLine_eq]
  have case_000583_rowFirst :
      EqEqPosRow (FirstLineAt case_000583_support case_000583_rank.val hlt case_000583_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000583_firstLine, EqEqPosRow]
  have case_000583_fixedSecond :
      FixedRow (SecondLineAt case_000583_support case_000583_rank.val hlt case_000583_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000583_secondLine, FixedRow]
  exact ⟨case_000583_rowFirst, case_000583_fixedSecond⟩

private theorem case_000583_existsRows :
    ExistsEqEqPosVarFirstRows case_000583_rank.val case_000583_mask :=
  ⟨case_000583_support, case_000583_sourceAgrees, case_000583_rows⟩

private theorem case_000583_covered :
    RowPropertyParametricCovered case_000583_rank.val case_000583_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000583_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000584_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000584_mask : SignMask := ⟨45, by decide⟩
private def case_000584_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000584_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000584_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000584_b : Vec3 Rat := { x := (-68/9), y := (164/9), z := -4 }
private def case_000584_firstLine : StrictLin2 := { a := 1, b := -1, c := (-83/17) }
private def case_000584_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000584_rankWord :
    rankPairWord? case_000584_word = some case_000584_rank := by
  decide

private theorem case_000584_unrank :
    unrankPairWord case_000584_rank = case_000584_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000584_word case_000584_rank).1
    case_000584_rankWord |>.symm

private theorem case_000584_seqChoice :
    translationChoiceSeq case_000584_word case_000584_mask = case_000584_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000584_seqAtRank :
    translationSeqAtRankMask case_000584_rank case_000584_mask = case_000584_seq := by
  rw [translationSeqAtRankMask, case_000584_unrank]
  exact case_000584_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000584_bAtRank :
    translationBAtRankMask case_000584_rank case_000584_mask = case_000584_b := by
  rw [translationBAtRankMask, case_000584_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000584_b, case_000584_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000584_firstLine_eq :
    case_000584_support.firstLine case_000584_seq case_000584_b = case_000584_firstLine := by
  norm_num [case_000584_firstLine, case_000584_support, case_000584_seq, case_000584_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000584_secondLine_eq :
    case_000584_support.secondLine case_000584_seq case_000584_b = case_000584_secondLine := by
  norm_num [case_000584_secondLine, case_000584_support, case_000584_seq, case_000584_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000584_sourceAgrees :
    SourceAgrees case_000584_support case_000584_rank.val case_000584_mask := by
  intro hlt
  have hrank : (⟨case_000584_rank.val, hlt⟩ : Fin numPairWords) = case_000584_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000584_rank.val, hlt⟩ case_000584_mask =
        case_000584_seq := by
    simpa [hrank] using case_000584_seqAtRank
  simp [SourceChecks, hseq, case_000584_support,
    checkTranslationConstraintSource, case_000584_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000584_rows :
    OppMinusOneVarFirstRows case_000584_support case_000584_rank.val case_000584_mask := by
  intro hlt
  have hrank : (⟨case_000584_rank.val, hlt⟩ : Fin numPairWords) = case_000584_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000584_rank.val, hlt⟩ case_000584_mask =
        case_000584_seq := by
    simpa [hrank] using case_000584_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000584_rank.val, hlt⟩ case_000584_mask =
        case_000584_b := by
    simpa [hrank] using case_000584_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000584_support case_000584_rank.val hlt
          case_000584_mask = case_000584_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000584_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000584_support case_000584_rank.val hlt
          case_000584_mask = case_000584_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000584_secondLine_eq]
  have case_000584_rowFirst :
      OppNegRow (FirstLineAt case_000584_support case_000584_rank.val hlt case_000584_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000584_firstLine, OppNegRow]
  have case_000584_fixedSecond :
      FixedRow (SecondLineAt case_000584_support case_000584_rank.val hlt case_000584_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000584_secondLine, FixedRow]
  exact ⟨case_000584_rowFirst, case_000584_fixedSecond⟩

private theorem case_000584_existsRows :
    ExistsOppMinusOneVarFirstRows case_000584_rank.val case_000584_mask :=
  ⟨case_000584_support, case_000584_sourceAgrees, case_000584_rows⟩

private theorem case_000584_covered :
    RowPropertyParametricCovered case_000584_rank.val case_000584_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000584_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000585_rank : Fin numPairWords := ⟨362, by decide⟩
private def case_000585_mask : SignMask := ⟨47, by decide⟩
private def case_000585_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000585_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000585_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000585_b : Vec3 Rat := { x := (-68/9), y := (164/9), z := 4 }
private def case_000585_firstLine : StrictLin2 := { a := 1, b := -1, c := (-47/17) }
private def case_000585_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000585_rankWord :
    rankPairWord? case_000585_word = some case_000585_rank := by
  decide

private theorem case_000585_unrank :
    unrankPairWord case_000585_rank = case_000585_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000585_word case_000585_rank).1
    case_000585_rankWord |>.symm

private theorem case_000585_seqChoice :
    translationChoiceSeq case_000585_word case_000585_mask = case_000585_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000585_seqAtRank :
    translationSeqAtRankMask case_000585_rank case_000585_mask = case_000585_seq := by
  rw [translationSeqAtRankMask, case_000585_unrank]
  exact case_000585_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000585_bAtRank :
    translationBAtRankMask case_000585_rank case_000585_mask = case_000585_b := by
  rw [translationBAtRankMask, case_000585_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000585_b, case_000585_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000585_firstLine_eq :
    case_000585_support.firstLine case_000585_seq case_000585_b = case_000585_firstLine := by
  norm_num [case_000585_firstLine, case_000585_support, case_000585_seq, case_000585_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000585_secondLine_eq :
    case_000585_support.secondLine case_000585_seq case_000585_b = case_000585_secondLine := by
  norm_num [case_000585_secondLine, case_000585_support, case_000585_seq, case_000585_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000585_sourceAgrees :
    SourceAgrees case_000585_support case_000585_rank.val case_000585_mask := by
  intro hlt
  have hrank : (⟨case_000585_rank.val, hlt⟩ : Fin numPairWords) = case_000585_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000585_rank.val, hlt⟩ case_000585_mask =
        case_000585_seq := by
    simpa [hrank] using case_000585_seqAtRank
  simp [SourceChecks, hseq, case_000585_support,
    checkTranslationConstraintSource, case_000585_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000585_rows :
    OppMinusOneVarFirstRows case_000585_support case_000585_rank.val case_000585_mask := by
  intro hlt
  have hrank : (⟨case_000585_rank.val, hlt⟩ : Fin numPairWords) = case_000585_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000585_rank.val, hlt⟩ case_000585_mask =
        case_000585_seq := by
    simpa [hrank] using case_000585_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000585_rank.val, hlt⟩ case_000585_mask =
        case_000585_b := by
    simpa [hrank] using case_000585_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000585_support case_000585_rank.val hlt
          case_000585_mask = case_000585_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000585_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000585_support case_000585_rank.val hlt
          case_000585_mask = case_000585_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000585_secondLine_eq]
  have case_000585_rowFirst :
      OppNegRow (FirstLineAt case_000585_support case_000585_rank.val hlt case_000585_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000585_firstLine, OppNegRow]
  have case_000585_fixedSecond :
      FixedRow (SecondLineAt case_000585_support case_000585_rank.val hlt case_000585_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000585_secondLine, FixedRow]
  exact ⟨case_000585_rowFirst, case_000585_fixedSecond⟩

private theorem case_000585_existsRows :
    ExistsOppMinusOneVarFirstRows case_000585_rank.val case_000585_mask :=
  ⟨case_000585_support, case_000585_sourceAgrees, case_000585_rows⟩

private theorem case_000585_covered :
    RowPropertyParametricCovered case_000585_rank.val case_000585_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000585_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000586_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000586_mask : SignMask := ⟨8, by decide⟩
private def case_000586_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000586_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000586_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000586_b : Vec3 Rat := { x := -4, y := (-4/9), z := (-100/9) }
private def case_000586_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/9) }
private def case_000586_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000586_rankWord :
    rankPairWord? case_000586_word = some case_000586_rank := by
  decide

private theorem case_000586_unrank :
    unrankPairWord case_000586_rank = case_000586_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000586_word case_000586_rank).1
    case_000586_rankWord |>.symm

private theorem case_000586_seqChoice :
    translationChoiceSeq case_000586_word case_000586_mask = case_000586_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000586_seqAtRank :
    translationSeqAtRankMask case_000586_rank case_000586_mask = case_000586_seq := by
  rw [translationSeqAtRankMask, case_000586_unrank]
  exact case_000586_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000586_bAtRank :
    translationBAtRankMask case_000586_rank case_000586_mask = case_000586_b := by
  rw [translationBAtRankMask, case_000586_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000586_b, case_000586_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000586_firstLine_eq :
    case_000586_support.firstLine case_000586_seq case_000586_b = case_000586_firstLine := by
  norm_num [case_000586_firstLine, case_000586_support, case_000586_seq, case_000586_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000586_secondLine_eq :
    case_000586_support.secondLine case_000586_seq case_000586_b = case_000586_secondLine := by
  norm_num [case_000586_secondLine, case_000586_support, case_000586_seq, case_000586_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000586_sourceAgrees :
    SourceAgrees case_000586_support case_000586_rank.val case_000586_mask := by
  intro hlt
  have hrank : (⟨case_000586_rank.val, hlt⟩ : Fin numPairWords) = case_000586_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000586_rank.val, hlt⟩ case_000586_mask =
        case_000586_seq := by
    simpa [hrank] using case_000586_seqAtRank
  simp [SourceChecks, hseq, case_000586_support,
    checkTranslationConstraintSource, case_000586_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000586_rows :
    EqEqPosVarFirstRows case_000586_support case_000586_rank.val case_000586_mask := by
  intro hlt
  have hrank : (⟨case_000586_rank.val, hlt⟩ : Fin numPairWords) = case_000586_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000586_rank.val, hlt⟩ case_000586_mask =
        case_000586_seq := by
    simpa [hrank] using case_000586_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000586_rank.val, hlt⟩ case_000586_mask =
        case_000586_b := by
    simpa [hrank] using case_000586_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000586_support case_000586_rank.val hlt
          case_000586_mask = case_000586_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000586_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000586_support case_000586_rank.val hlt
          case_000586_mask = case_000586_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000586_secondLine_eq]
  have case_000586_rowFirst :
      EqEqPosRow (FirstLineAt case_000586_support case_000586_rank.val hlt case_000586_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000586_firstLine, EqEqPosRow]
  have case_000586_fixedSecond :
      FixedRow (SecondLineAt case_000586_support case_000586_rank.val hlt case_000586_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000586_secondLine, FixedRow]
  exact ⟨case_000586_rowFirst, case_000586_fixedSecond⟩

private theorem case_000586_existsRows :
    ExistsEqEqPosVarFirstRows case_000586_rank.val case_000586_mask :=
  ⟨case_000586_support, case_000586_sourceAgrees, case_000586_rows⟩

private theorem case_000586_covered :
    RowPropertyParametricCovered case_000586_rank.val case_000586_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000586_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000587_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000587_mask : SignMask := ⟨13, by decide⟩
private def case_000587_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000587_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000587_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000587_b : Vec3 Rat := { x := (-28/3), y := (116/9), z := (-52/9) }
private def case_000587_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000587_secondLine : StrictLin2 := { a := (-189/370), b := (-189/370), c := (-307/185) }

private theorem case_000587_rankWord :
    rankPairWord? case_000587_word = some case_000587_rank := by
  decide

private theorem case_000587_unrank :
    unrankPairWord case_000587_rank = case_000587_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000587_word case_000587_rank).1
    case_000587_rankWord |>.symm

private theorem case_000587_seqChoice :
    translationChoiceSeq case_000587_word case_000587_mask = case_000587_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000587_seqAtRank :
    translationSeqAtRankMask case_000587_rank case_000587_mask = case_000587_seq := by
  rw [translationSeqAtRankMask, case_000587_unrank]
  exact case_000587_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000587_bAtRank :
    translationBAtRankMask case_000587_rank case_000587_mask = case_000587_b := by
  rw [translationBAtRankMask, case_000587_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000587_b, case_000587_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000587_firstLine_eq :
    case_000587_support.firstLine case_000587_seq case_000587_b = case_000587_firstLine := by
  norm_num [case_000587_firstLine, case_000587_support, case_000587_seq, case_000587_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000587_secondLine_eq :
    case_000587_support.secondLine case_000587_seq case_000587_b = case_000587_secondLine := by
  norm_num [case_000587_secondLine, case_000587_support, case_000587_seq, case_000587_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000587_sourceAgrees :
    SourceAgrees case_000587_support case_000587_rank.val case_000587_mask := by
  intro hlt
  have hrank : (⟨case_000587_rank.val, hlt⟩ : Fin numPairWords) = case_000587_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000587_rank.val, hlt⟩ case_000587_mask =
        case_000587_seq := by
    simpa [hrank] using case_000587_seqAtRank
  simp [SourceChecks, hseq, case_000587_support,
    checkTranslationConstraintSource, case_000587_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000587_rows :
    EqEqPosVarSecondRows case_000587_support case_000587_rank.val case_000587_mask := by
  intro hlt
  have hrank : (⟨case_000587_rank.val, hlt⟩ : Fin numPairWords) = case_000587_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000587_rank.val, hlt⟩ case_000587_mask =
        case_000587_seq := by
    simpa [hrank] using case_000587_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000587_rank.val, hlt⟩ case_000587_mask =
        case_000587_b := by
    simpa [hrank] using case_000587_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000587_support case_000587_rank.val hlt
          case_000587_mask = case_000587_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000587_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000587_support case_000587_rank.val hlt
          case_000587_mask = case_000587_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000587_secondLine_eq]
  have case_000587_fixedFirst :
      FixedRow (FirstLineAt case_000587_support case_000587_rank.val hlt case_000587_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000587_firstLine, FixedRow]
  have case_000587_rowSecond :
      EqEqPosRow (SecondLineAt case_000587_support case_000587_rank.val hlt case_000587_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000587_secondLine, EqEqPosRow]
  exact ⟨case_000587_fixedFirst, case_000587_rowSecond⟩

private theorem case_000587_existsRows :
    ExistsEqEqPosVarSecondRows case_000587_rank.val case_000587_mask :=
  ⟨case_000587_support, case_000587_sourceAgrees, case_000587_rows⟩

private theorem case_000587_covered :
    RowPropertyParametricCovered case_000587_rank.val case_000587_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000587_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000588_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000588_mask : SignMask := ⟨16, by decide⟩
private def case_000588_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000588_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000588_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000588_b : Vec3 Rat := { x := -4, y := (-164/9), z := (-68/9) }
private def case_000588_firstLine : StrictLin2 := { a := -1, b := -1, c := (-107/9) }
private def case_000588_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000588_rankWord :
    rankPairWord? case_000588_word = some case_000588_rank := by
  decide

private theorem case_000588_unrank :
    unrankPairWord case_000588_rank = case_000588_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000588_word case_000588_rank).1
    case_000588_rankWord |>.symm

private theorem case_000588_seqChoice :
    translationChoiceSeq case_000588_word case_000588_mask = case_000588_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000588_seqAtRank :
    translationSeqAtRankMask case_000588_rank case_000588_mask = case_000588_seq := by
  rw [translationSeqAtRankMask, case_000588_unrank]
  exact case_000588_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000588_bAtRank :
    translationBAtRankMask case_000588_rank case_000588_mask = case_000588_b := by
  rw [translationBAtRankMask, case_000588_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000588_b, case_000588_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000588_firstLine_eq :
    case_000588_support.firstLine case_000588_seq case_000588_b = case_000588_firstLine := by
  norm_num [case_000588_firstLine, case_000588_support, case_000588_seq, case_000588_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000588_secondLine_eq :
    case_000588_support.secondLine case_000588_seq case_000588_b = case_000588_secondLine := by
  norm_num [case_000588_secondLine, case_000588_support, case_000588_seq, case_000588_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000588_sourceAgrees :
    SourceAgrees case_000588_support case_000588_rank.val case_000588_mask := by
  intro hlt
  have hrank : (⟨case_000588_rank.val, hlt⟩ : Fin numPairWords) = case_000588_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000588_rank.val, hlt⟩ case_000588_mask =
        case_000588_seq := by
    simpa [hrank] using case_000588_seqAtRank
  simp [SourceChecks, hseq, case_000588_support,
    checkTranslationConstraintSource, case_000588_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000588_rows :
    EqEqPosVarFirstRows case_000588_support case_000588_rank.val case_000588_mask := by
  intro hlt
  have hrank : (⟨case_000588_rank.val, hlt⟩ : Fin numPairWords) = case_000588_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000588_rank.val, hlt⟩ case_000588_mask =
        case_000588_seq := by
    simpa [hrank] using case_000588_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000588_rank.val, hlt⟩ case_000588_mask =
        case_000588_b := by
    simpa [hrank] using case_000588_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000588_support case_000588_rank.val hlt
          case_000588_mask = case_000588_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000588_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000588_support case_000588_rank.val hlt
          case_000588_mask = case_000588_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000588_secondLine_eq]
  have case_000588_rowFirst :
      EqEqPosRow (FirstLineAt case_000588_support case_000588_rank.val hlt case_000588_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000588_firstLine, EqEqPosRow]
  have case_000588_fixedSecond :
      FixedRow (SecondLineAt case_000588_support case_000588_rank.val hlt case_000588_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000588_secondLine, FixedRow]
  exact ⟨case_000588_rowFirst, case_000588_fixedSecond⟩

private theorem case_000588_existsRows :
    ExistsEqEqPosVarFirstRows case_000588_rank.val case_000588_mask :=
  ⟨case_000588_support, case_000588_sourceAgrees, case_000588_rows⟩

private theorem case_000588_covered :
    RowPropertyParametricCovered case_000588_rank.val case_000588_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000588_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000589_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000589_mask : SignMask := ⟨18, by decide⟩
private def case_000589_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000589_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000589_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000589_b : Vec3 Rat := { x := -4, y := (-164/9), z := (4/9) }
private def case_000589_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/9) }
private def case_000589_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000589_rankWord :
    rankPairWord? case_000589_word = some case_000589_rank := by
  decide

private theorem case_000589_unrank :
    unrankPairWord case_000589_rank = case_000589_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000589_word case_000589_rank).1
    case_000589_rankWord |>.symm

private theorem case_000589_seqChoice :
    translationChoiceSeq case_000589_word case_000589_mask = case_000589_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000589_seqAtRank :
    translationSeqAtRankMask case_000589_rank case_000589_mask = case_000589_seq := by
  rw [translationSeqAtRankMask, case_000589_unrank]
  exact case_000589_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000589_bAtRank :
    translationBAtRankMask case_000589_rank case_000589_mask = case_000589_b := by
  rw [translationBAtRankMask, case_000589_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000589_b, case_000589_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000589_firstLine_eq :
    case_000589_support.firstLine case_000589_seq case_000589_b = case_000589_firstLine := by
  norm_num [case_000589_firstLine, case_000589_support, case_000589_seq, case_000589_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000589_secondLine_eq :
    case_000589_support.secondLine case_000589_seq case_000589_b = case_000589_secondLine := by
  norm_num [case_000589_secondLine, case_000589_support, case_000589_seq, case_000589_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000589_sourceAgrees :
    SourceAgrees case_000589_support case_000589_rank.val case_000589_mask := by
  intro hlt
  have hrank : (⟨case_000589_rank.val, hlt⟩ : Fin numPairWords) = case_000589_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000589_rank.val, hlt⟩ case_000589_mask =
        case_000589_seq := by
    simpa [hrank] using case_000589_seqAtRank
  simp [SourceChecks, hseq, case_000589_support,
    checkTranslationConstraintSource, case_000589_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000589_rows :
    EqEqPosVarFirstRows case_000589_support case_000589_rank.val case_000589_mask := by
  intro hlt
  have hrank : (⟨case_000589_rank.val, hlt⟩ : Fin numPairWords) = case_000589_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000589_rank.val, hlt⟩ case_000589_mask =
        case_000589_seq := by
    simpa [hrank] using case_000589_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000589_rank.val, hlt⟩ case_000589_mask =
        case_000589_b := by
    simpa [hrank] using case_000589_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000589_support case_000589_rank.val hlt
          case_000589_mask = case_000589_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000589_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000589_support case_000589_rank.val hlt
          case_000589_mask = case_000589_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000589_secondLine_eq]
  have case_000589_rowFirst :
      EqEqPosRow (FirstLineAt case_000589_support case_000589_rank.val hlt case_000589_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000589_firstLine, EqEqPosRow]
  have case_000589_fixedSecond :
      FixedRow (SecondLineAt case_000589_support case_000589_rank.val hlt case_000589_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000589_secondLine, FixedRow]
  exact ⟨case_000589_rowFirst, case_000589_fixedSecond⟩

private theorem case_000589_existsRows :
    ExistsEqEqPosVarFirstRows case_000589_rank.val case_000589_mask :=
  ⟨case_000589_support, case_000589_sourceAgrees, case_000589_rows⟩

private theorem case_000589_covered :
    RowPropertyParametricCovered case_000589_rank.val case_000589_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000589_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000590_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000590_mask : SignMask := ⟨22, by decide⟩
private def case_000590_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000590_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000590_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000590_b : Vec3 Rat := { x := (-28/3), y := (-116/9), z := (52/9) }
private def case_000590_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000590_secondLine : StrictLin2 := { a := (-189/370), b := (-189/370), c := (-451/185) }

private theorem case_000590_rankWord :
    rankPairWord? case_000590_word = some case_000590_rank := by
  decide

private theorem case_000590_unrank :
    unrankPairWord case_000590_rank = case_000590_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000590_word case_000590_rank).1
    case_000590_rankWord |>.symm

private theorem case_000590_seqChoice :
    translationChoiceSeq case_000590_word case_000590_mask = case_000590_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000590_seqAtRank :
    translationSeqAtRankMask case_000590_rank case_000590_mask = case_000590_seq := by
  rw [translationSeqAtRankMask, case_000590_unrank]
  exact case_000590_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000590_bAtRank :
    translationBAtRankMask case_000590_rank case_000590_mask = case_000590_b := by
  rw [translationBAtRankMask, case_000590_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000590_b, case_000590_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000590_firstLine_eq :
    case_000590_support.firstLine case_000590_seq case_000590_b = case_000590_firstLine := by
  norm_num [case_000590_firstLine, case_000590_support, case_000590_seq, case_000590_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000590_secondLine_eq :
    case_000590_support.secondLine case_000590_seq case_000590_b = case_000590_secondLine := by
  norm_num [case_000590_secondLine, case_000590_support, case_000590_seq, case_000590_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000590_sourceAgrees :
    SourceAgrees case_000590_support case_000590_rank.val case_000590_mask := by
  intro hlt
  have hrank : (⟨case_000590_rank.val, hlt⟩ : Fin numPairWords) = case_000590_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000590_rank.val, hlt⟩ case_000590_mask =
        case_000590_seq := by
    simpa [hrank] using case_000590_seqAtRank
  simp [SourceChecks, hseq, case_000590_support,
    checkTranslationConstraintSource, case_000590_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000590_rows :
    EqEqPosVarSecondRows case_000590_support case_000590_rank.val case_000590_mask := by
  intro hlt
  have hrank : (⟨case_000590_rank.val, hlt⟩ : Fin numPairWords) = case_000590_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000590_rank.val, hlt⟩ case_000590_mask =
        case_000590_seq := by
    simpa [hrank] using case_000590_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000590_rank.val, hlt⟩ case_000590_mask =
        case_000590_b := by
    simpa [hrank] using case_000590_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000590_support case_000590_rank.val hlt
          case_000590_mask = case_000590_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000590_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000590_support case_000590_rank.val hlt
          case_000590_mask = case_000590_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000590_secondLine_eq]
  have case_000590_fixedFirst :
      FixedRow (FirstLineAt case_000590_support case_000590_rank.val hlt case_000590_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000590_firstLine, FixedRow]
  have case_000590_rowSecond :
      EqEqPosRow (SecondLineAt case_000590_support case_000590_rank.val hlt case_000590_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000590_secondLine, EqEqPosRow]
  exact ⟨case_000590_fixedFirst, case_000590_rowSecond⟩

private theorem case_000590_existsRows :
    ExistsEqEqPosVarSecondRows case_000590_rank.val case_000590_mask :=
  ⟨case_000590_support, case_000590_sourceAgrees, case_000590_rows⟩

private theorem case_000590_covered :
    RowPropertyParametricCovered case_000590_rank.val case_000590_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000590_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000591_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000591_mask : SignMask := ⟨45, by decide⟩
private def case_000591_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000591_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000591_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000591_b : Vec3 Rat := { x := -4, y := (164/9), z := (-4/9) }
private def case_000591_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000591_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000591_rankWord :
    rankPairWord? case_000591_word = some case_000591_rank := by
  decide

private theorem case_000591_unrank :
    unrankPairWord case_000591_rank = case_000591_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000591_word case_000591_rank).1
    case_000591_rankWord |>.symm

private theorem case_000591_seqChoice :
    translationChoiceSeq case_000591_word case_000591_mask = case_000591_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000591_seqAtRank :
    translationSeqAtRankMask case_000591_rank case_000591_mask = case_000591_seq := by
  rw [translationSeqAtRankMask, case_000591_unrank]
  exact case_000591_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000591_bAtRank :
    translationBAtRankMask case_000591_rank case_000591_mask = case_000591_b := by
  rw [translationBAtRankMask, case_000591_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000591_b, case_000591_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000591_firstLine_eq :
    case_000591_support.firstLine case_000591_seq case_000591_b = case_000591_firstLine := by
  norm_num [case_000591_firstLine, case_000591_support, case_000591_seq, case_000591_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000591_secondLine_eq :
    case_000591_support.secondLine case_000591_seq case_000591_b = case_000591_secondLine := by
  norm_num [case_000591_secondLine, case_000591_support, case_000591_seq, case_000591_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000591_sourceAgrees :
    SourceAgrees case_000591_support case_000591_rank.val case_000591_mask := by
  intro hlt
  have hrank : (⟨case_000591_rank.val, hlt⟩ : Fin numPairWords) = case_000591_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000591_rank.val, hlt⟩ case_000591_mask =
        case_000591_seq := by
    simpa [hrank] using case_000591_seqAtRank
  simp [SourceChecks, hseq, case_000591_support,
    checkTranslationConstraintSource, case_000591_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000591_rows :
    OppMinusOneVarFirstRows case_000591_support case_000591_rank.val case_000591_mask := by
  intro hlt
  have hrank : (⟨case_000591_rank.val, hlt⟩ : Fin numPairWords) = case_000591_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000591_rank.val, hlt⟩ case_000591_mask =
        case_000591_seq := by
    simpa [hrank] using case_000591_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000591_rank.val, hlt⟩ case_000591_mask =
        case_000591_b := by
    simpa [hrank] using case_000591_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000591_support case_000591_rank.val hlt
          case_000591_mask = case_000591_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000591_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000591_support case_000591_rank.val hlt
          case_000591_mask = case_000591_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000591_secondLine_eq]
  have case_000591_rowFirst :
      OppNegRow (FirstLineAt case_000591_support case_000591_rank.val hlt case_000591_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000591_firstLine, OppNegRow]
  have case_000591_fixedSecond :
      FixedRow (SecondLineAt case_000591_support case_000591_rank.val hlt case_000591_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000591_secondLine, FixedRow]
  exact ⟨case_000591_rowFirst, case_000591_fixedSecond⟩

private theorem case_000591_existsRows :
    ExistsOppMinusOneVarFirstRows case_000591_rank.val case_000591_mask :=
  ⟨case_000591_support, case_000591_sourceAgrees, case_000591_rows⟩

private theorem case_000591_covered :
    RowPropertyParametricCovered case_000591_rank.val case_000591_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000591_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000592_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000592_mask : SignMask := ⟨47, by decide⟩
private def case_000592_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000592_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000592_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000592_b : Vec3 Rat := { x := -4, y := (164/9), z := (68/9) }
private def case_000592_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_000592_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000592_rankWord :
    rankPairWord? case_000592_word = some case_000592_rank := by
  decide

private theorem case_000592_unrank :
    unrankPairWord case_000592_rank = case_000592_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000592_word case_000592_rank).1
    case_000592_rankWord |>.symm

private theorem case_000592_seqChoice :
    translationChoiceSeq case_000592_word case_000592_mask = case_000592_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000592_seqAtRank :
    translationSeqAtRankMask case_000592_rank case_000592_mask = case_000592_seq := by
  rw [translationSeqAtRankMask, case_000592_unrank]
  exact case_000592_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000592_bAtRank :
    translationBAtRankMask case_000592_rank case_000592_mask = case_000592_b := by
  rw [translationBAtRankMask, case_000592_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000592_b, case_000592_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000592_firstLine_eq :
    case_000592_support.firstLine case_000592_seq case_000592_b = case_000592_firstLine := by
  norm_num [case_000592_firstLine, case_000592_support, case_000592_seq, case_000592_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000592_secondLine_eq :
    case_000592_support.secondLine case_000592_seq case_000592_b = case_000592_secondLine := by
  norm_num [case_000592_secondLine, case_000592_support, case_000592_seq, case_000592_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000592_sourceAgrees :
    SourceAgrees case_000592_support case_000592_rank.val case_000592_mask := by
  intro hlt
  have hrank : (⟨case_000592_rank.val, hlt⟩ : Fin numPairWords) = case_000592_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000592_rank.val, hlt⟩ case_000592_mask =
        case_000592_seq := by
    simpa [hrank] using case_000592_seqAtRank
  simp [SourceChecks, hseq, case_000592_support,
    checkTranslationConstraintSource, case_000592_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000592_rows :
    OppMinusOneVarFirstRows case_000592_support case_000592_rank.val case_000592_mask := by
  intro hlt
  have hrank : (⟨case_000592_rank.val, hlt⟩ : Fin numPairWords) = case_000592_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000592_rank.val, hlt⟩ case_000592_mask =
        case_000592_seq := by
    simpa [hrank] using case_000592_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000592_rank.val, hlt⟩ case_000592_mask =
        case_000592_b := by
    simpa [hrank] using case_000592_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000592_support case_000592_rank.val hlt
          case_000592_mask = case_000592_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000592_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000592_support case_000592_rank.val hlt
          case_000592_mask = case_000592_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000592_secondLine_eq]
  have case_000592_rowFirst :
      OppNegRow (FirstLineAt case_000592_support case_000592_rank.val hlt case_000592_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000592_firstLine, OppNegRow]
  have case_000592_fixedSecond :
      FixedRow (SecondLineAt case_000592_support case_000592_rank.val hlt case_000592_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000592_secondLine, FixedRow]
  exact ⟨case_000592_rowFirst, case_000592_fixedSecond⟩

private theorem case_000592_existsRows :
    ExistsOppMinusOneVarFirstRows case_000592_rank.val case_000592_mask :=
  ⟨case_000592_support, case_000592_sourceAgrees, case_000592_rows⟩

private theorem case_000592_covered :
    RowPropertyParametricCovered case_000592_rank.val case_000592_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000592_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000593_rank : Fin numPairWords := ⟨363, by decide⟩
private def case_000593_mask : SignMask := ⟨55, by decide⟩
private def case_000593_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000593_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000593_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def case_000593_b : Vec3 Rat := { x := -4, y := (4/9), z := (100/9) }
private def case_000593_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000593_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000593_rankWord :
    rankPairWord? case_000593_word = some case_000593_rank := by
  decide

private theorem case_000593_unrank :
    unrankPairWord case_000593_rank = case_000593_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000593_word case_000593_rank).1
    case_000593_rankWord |>.symm

private theorem case_000593_seqChoice :
    translationChoiceSeq case_000593_word case_000593_mask = case_000593_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000593_seqAtRank :
    translationSeqAtRankMask case_000593_rank case_000593_mask = case_000593_seq := by
  rw [translationSeqAtRankMask, case_000593_unrank]
  exact case_000593_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000593_bAtRank :
    translationBAtRankMask case_000593_rank case_000593_mask = case_000593_b := by
  rw [translationBAtRankMask, case_000593_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000593_b, case_000593_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000593_firstLine_eq :
    case_000593_support.firstLine case_000593_seq case_000593_b = case_000593_firstLine := by
  norm_num [case_000593_firstLine, case_000593_support, case_000593_seq, case_000593_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000593_secondLine_eq :
    case_000593_support.secondLine case_000593_seq case_000593_b = case_000593_secondLine := by
  norm_num [case_000593_secondLine, case_000593_support, case_000593_seq, case_000593_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000593_sourceAgrees :
    SourceAgrees case_000593_support case_000593_rank.val case_000593_mask := by
  intro hlt
  have hrank : (⟨case_000593_rank.val, hlt⟩ : Fin numPairWords) = case_000593_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000593_rank.val, hlt⟩ case_000593_mask =
        case_000593_seq := by
    simpa [hrank] using case_000593_seqAtRank
  simp [SourceChecks, hseq, case_000593_support,
    checkTranslationConstraintSource, case_000593_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000593_rows :
    OppOneMinusVarFirstRows case_000593_support case_000593_rank.val case_000593_mask := by
  intro hlt
  have hrank : (⟨case_000593_rank.val, hlt⟩ : Fin numPairWords) = case_000593_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000593_rank.val, hlt⟩ case_000593_mask =
        case_000593_seq := by
    simpa [hrank] using case_000593_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000593_rank.val, hlt⟩ case_000593_mask =
        case_000593_b := by
    simpa [hrank] using case_000593_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000593_support case_000593_rank.val hlt
          case_000593_mask = case_000593_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000593_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000593_support case_000593_rank.val hlt
          case_000593_mask = case_000593_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000593_secondLine_eq]
  have case_000593_rowFirst :
      OppPosRow (FirstLineAt case_000593_support case_000593_rank.val hlt case_000593_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000593_firstLine, OppPosRow]
  have case_000593_fixedSecond :
      FixedRow (SecondLineAt case_000593_support case_000593_rank.val hlt case_000593_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000593_secondLine, FixedRow]
  exact ⟨case_000593_rowFirst, case_000593_fixedSecond⟩

private theorem case_000593_existsRows :
    ExistsOppOneMinusVarFirstRows case_000593_rank.val case_000593_mask :=
  ⟨case_000593_support, case_000593_sourceAgrees, case_000593_rows⟩

private theorem case_000593_covered :
    RowPropertyParametricCovered case_000593_rank.val case_000593_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000593_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000594_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000594_mask : SignMask := ⟨9, by decide⟩
private def case_000594_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000594_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000594_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000594_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000594_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000594_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000594_rankWord :
    rankPairWord? case_000594_word = some case_000594_rank := by
  decide

private theorem case_000594_unrank :
    unrankPairWord case_000594_rank = case_000594_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000594_word case_000594_rank).1
    case_000594_rankWord |>.symm

private theorem case_000594_seqChoice :
    translationChoiceSeq case_000594_word case_000594_mask = case_000594_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000594_seqAtRank :
    translationSeqAtRankMask case_000594_rank case_000594_mask = case_000594_seq := by
  rw [translationSeqAtRankMask, case_000594_unrank]
  exact case_000594_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000594_bAtRank :
    translationBAtRankMask case_000594_rank case_000594_mask = case_000594_b := by
  rw [translationBAtRankMask, case_000594_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000594_b, case_000594_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000594_firstLine_eq :
    case_000594_support.firstLine case_000594_seq case_000594_b = case_000594_firstLine := by
  norm_num [case_000594_firstLine, case_000594_support, case_000594_seq, case_000594_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000594_secondLine_eq :
    case_000594_support.secondLine case_000594_seq case_000594_b = case_000594_secondLine := by
  norm_num [case_000594_secondLine, case_000594_support, case_000594_seq, case_000594_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000594_sourceAgrees :
    SourceAgrees case_000594_support case_000594_rank.val case_000594_mask := by
  intro hlt
  have hrank : (⟨case_000594_rank.val, hlt⟩ : Fin numPairWords) = case_000594_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000594_rank.val, hlt⟩ case_000594_mask =
        case_000594_seq := by
    simpa [hrank] using case_000594_seqAtRank
  simp [SourceChecks, hseq, case_000594_support,
    checkTranslationConstraintSource, case_000594_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000594_rows :
    EqEqPosVarFirstRows case_000594_support case_000594_rank.val case_000594_mask := by
  intro hlt
  have hrank : (⟨case_000594_rank.val, hlt⟩ : Fin numPairWords) = case_000594_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000594_rank.val, hlt⟩ case_000594_mask =
        case_000594_seq := by
    simpa [hrank] using case_000594_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000594_rank.val, hlt⟩ case_000594_mask =
        case_000594_b := by
    simpa [hrank] using case_000594_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000594_support case_000594_rank.val hlt
          case_000594_mask = case_000594_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000594_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000594_support case_000594_rank.val hlt
          case_000594_mask = case_000594_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000594_secondLine_eq]
  have case_000594_rowFirst :
      EqEqPosRow (FirstLineAt case_000594_support case_000594_rank.val hlt case_000594_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000594_firstLine, EqEqPosRow]
  have case_000594_fixedSecond :
      FixedRow (SecondLineAt case_000594_support case_000594_rank.val hlt case_000594_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000594_secondLine, FixedRow]
  exact ⟨case_000594_rowFirst, case_000594_fixedSecond⟩

private theorem case_000594_existsRows :
    ExistsEqEqPosVarFirstRows case_000594_rank.val case_000594_mask :=
  ⟨case_000594_support, case_000594_sourceAgrees, case_000594_rows⟩

private theorem case_000594_covered :
    RowPropertyParametricCovered case_000594_rank.val case_000594_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000594_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000595_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000595_mask : SignMask := ⟨13, by decide⟩
private def case_000595_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000595_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000595_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000595_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000595_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000595_secondLine : StrictLin2 := { a := (-75/374), b := (-75/374), c := (-201/187) }

private theorem case_000595_rankWord :
    rankPairWord? case_000595_word = some case_000595_rank := by
  decide

private theorem case_000595_unrank :
    unrankPairWord case_000595_rank = case_000595_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000595_word case_000595_rank).1
    case_000595_rankWord |>.symm

private theorem case_000595_seqChoice :
    translationChoiceSeq case_000595_word case_000595_mask = case_000595_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000595_seqAtRank :
    translationSeqAtRankMask case_000595_rank case_000595_mask = case_000595_seq := by
  rw [translationSeqAtRankMask, case_000595_unrank]
  exact case_000595_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000595_bAtRank :
    translationBAtRankMask case_000595_rank case_000595_mask = case_000595_b := by
  rw [translationBAtRankMask, case_000595_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000595_b, case_000595_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000595_firstLine_eq :
    case_000595_support.firstLine case_000595_seq case_000595_b = case_000595_firstLine := by
  norm_num [case_000595_firstLine, case_000595_support, case_000595_seq, case_000595_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000595_secondLine_eq :
    case_000595_support.secondLine case_000595_seq case_000595_b = case_000595_secondLine := by
  norm_num [case_000595_secondLine, case_000595_support, case_000595_seq, case_000595_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000595_sourceAgrees :
    SourceAgrees case_000595_support case_000595_rank.val case_000595_mask := by
  intro hlt
  have hrank : (⟨case_000595_rank.val, hlt⟩ : Fin numPairWords) = case_000595_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000595_rank.val, hlt⟩ case_000595_mask =
        case_000595_seq := by
    simpa [hrank] using case_000595_seqAtRank
  simp [SourceChecks, hseq, case_000595_support,
    checkTranslationConstraintSource, case_000595_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000595_rows :
    EqEqPosVarSecondRows case_000595_support case_000595_rank.val case_000595_mask := by
  intro hlt
  have hrank : (⟨case_000595_rank.val, hlt⟩ : Fin numPairWords) = case_000595_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000595_rank.val, hlt⟩ case_000595_mask =
        case_000595_seq := by
    simpa [hrank] using case_000595_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000595_rank.val, hlt⟩ case_000595_mask =
        case_000595_b := by
    simpa [hrank] using case_000595_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000595_support case_000595_rank.val hlt
          case_000595_mask = case_000595_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000595_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000595_support case_000595_rank.val hlt
          case_000595_mask = case_000595_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000595_secondLine_eq]
  have case_000595_fixedFirst :
      FixedRow (FirstLineAt case_000595_support case_000595_rank.val hlt case_000595_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000595_firstLine, FixedRow]
  have case_000595_rowSecond :
      EqEqPosRow (SecondLineAt case_000595_support case_000595_rank.val hlt case_000595_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000595_secondLine, EqEqPosRow]
  exact ⟨case_000595_fixedFirst, case_000595_rowSecond⟩

private theorem case_000595_existsRows :
    ExistsEqEqPosVarSecondRows case_000595_rank.val case_000595_mask :=
  ⟨case_000595_support, case_000595_sourceAgrees, case_000595_rows⟩

private theorem case_000595_covered :
    RowPropertyParametricCovered case_000595_rank.val case_000595_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000595_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000596_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000596_mask : SignMask := ⟨16, by decide⟩
private def case_000596_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000596_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000596_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000596_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (-52/9) }
private def case_000596_firstLine : StrictLin2 := { a := -1, b := -1, c := -19 }
private def case_000596_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000596_rankWord :
    rankPairWord? case_000596_word = some case_000596_rank := by
  decide

private theorem case_000596_unrank :
    unrankPairWord case_000596_rank = case_000596_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000596_word case_000596_rank).1
    case_000596_rankWord |>.symm

private theorem case_000596_seqChoice :
    translationChoiceSeq case_000596_word case_000596_mask = case_000596_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000596_seqAtRank :
    translationSeqAtRankMask case_000596_rank case_000596_mask = case_000596_seq := by
  rw [translationSeqAtRankMask, case_000596_unrank]
  exact case_000596_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000596_bAtRank :
    translationBAtRankMask case_000596_rank case_000596_mask = case_000596_b := by
  rw [translationBAtRankMask, case_000596_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000596_b, case_000596_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000596_firstLine_eq :
    case_000596_support.firstLine case_000596_seq case_000596_b = case_000596_firstLine := by
  norm_num [case_000596_firstLine, case_000596_support, case_000596_seq, case_000596_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000596_secondLine_eq :
    case_000596_support.secondLine case_000596_seq case_000596_b = case_000596_secondLine := by
  norm_num [case_000596_secondLine, case_000596_support, case_000596_seq, case_000596_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000596_sourceAgrees :
    SourceAgrees case_000596_support case_000596_rank.val case_000596_mask := by
  intro hlt
  have hrank : (⟨case_000596_rank.val, hlt⟩ : Fin numPairWords) = case_000596_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000596_rank.val, hlt⟩ case_000596_mask =
        case_000596_seq := by
    simpa [hrank] using case_000596_seqAtRank
  simp [SourceChecks, hseq, case_000596_support,
    checkTranslationConstraintSource, case_000596_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000596_rows :
    EqEqPosVarFirstRows case_000596_support case_000596_rank.val case_000596_mask := by
  intro hlt
  have hrank : (⟨case_000596_rank.val, hlt⟩ : Fin numPairWords) = case_000596_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000596_rank.val, hlt⟩ case_000596_mask =
        case_000596_seq := by
    simpa [hrank] using case_000596_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000596_rank.val, hlt⟩ case_000596_mask =
        case_000596_b := by
    simpa [hrank] using case_000596_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000596_support case_000596_rank.val hlt
          case_000596_mask = case_000596_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000596_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000596_support case_000596_rank.val hlt
          case_000596_mask = case_000596_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000596_secondLine_eq]
  have case_000596_rowFirst :
      EqEqPosRow (FirstLineAt case_000596_support case_000596_rank.val hlt case_000596_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000596_firstLine, EqEqPosRow]
  have case_000596_fixedSecond :
      FixedRow (SecondLineAt case_000596_support case_000596_rank.val hlt case_000596_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000596_secondLine, FixedRow]
  exact ⟨case_000596_rowFirst, case_000596_fixedSecond⟩

private theorem case_000596_existsRows :
    ExistsEqEqPosVarFirstRows case_000596_rank.val case_000596_mask :=
  ⟨case_000596_support, case_000596_sourceAgrees, case_000596_rows⟩

private theorem case_000596_covered :
    RowPropertyParametricCovered case_000596_rank.val case_000596_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000596_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000597_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000597_mask : SignMask := ⟨18, by decide⟩
private def case_000597_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000597_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000597_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000597_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (20/9) }
private def case_000597_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/5) }
private def case_000597_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000597_rankWord :
    rankPairWord? case_000597_word = some case_000597_rank := by
  decide

private theorem case_000597_unrank :
    unrankPairWord case_000597_rank = case_000597_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000597_word case_000597_rank).1
    case_000597_rankWord |>.symm

private theorem case_000597_seqChoice :
    translationChoiceSeq case_000597_word case_000597_mask = case_000597_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000597_seqAtRank :
    translationSeqAtRankMask case_000597_rank case_000597_mask = case_000597_seq := by
  rw [translationSeqAtRankMask, case_000597_unrank]
  exact case_000597_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000597_bAtRank :
    translationBAtRankMask case_000597_rank case_000597_mask = case_000597_b := by
  rw [translationBAtRankMask, case_000597_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000597_b, case_000597_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000597_firstLine_eq :
    case_000597_support.firstLine case_000597_seq case_000597_b = case_000597_firstLine := by
  norm_num [case_000597_firstLine, case_000597_support, case_000597_seq, case_000597_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000597_secondLine_eq :
    case_000597_support.secondLine case_000597_seq case_000597_b = case_000597_secondLine := by
  norm_num [case_000597_secondLine, case_000597_support, case_000597_seq, case_000597_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000597_sourceAgrees :
    SourceAgrees case_000597_support case_000597_rank.val case_000597_mask := by
  intro hlt
  have hrank : (⟨case_000597_rank.val, hlt⟩ : Fin numPairWords) = case_000597_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000597_rank.val, hlt⟩ case_000597_mask =
        case_000597_seq := by
    simpa [hrank] using case_000597_seqAtRank
  simp [SourceChecks, hseq, case_000597_support,
    checkTranslationConstraintSource, case_000597_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000597_rows :
    EqEqPosVarFirstRows case_000597_support case_000597_rank.val case_000597_mask := by
  intro hlt
  have hrank : (⟨case_000597_rank.val, hlt⟩ : Fin numPairWords) = case_000597_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000597_rank.val, hlt⟩ case_000597_mask =
        case_000597_seq := by
    simpa [hrank] using case_000597_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000597_rank.val, hlt⟩ case_000597_mask =
        case_000597_b := by
    simpa [hrank] using case_000597_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000597_support case_000597_rank.val hlt
          case_000597_mask = case_000597_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000597_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000597_support case_000597_rank.val hlt
          case_000597_mask = case_000597_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000597_secondLine_eq]
  have case_000597_rowFirst :
      EqEqPosRow (FirstLineAt case_000597_support case_000597_rank.val hlt case_000597_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000597_firstLine, EqEqPosRow]
  have case_000597_fixedSecond :
      FixedRow (SecondLineAt case_000597_support case_000597_rank.val hlt case_000597_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000597_secondLine, FixedRow]
  exact ⟨case_000597_rowFirst, case_000597_fixedSecond⟩

private theorem case_000597_existsRows :
    ExistsEqEqPosVarFirstRows case_000597_rank.val case_000597_mask :=
  ⟨case_000597_support, case_000597_sourceAgrees, case_000597_rows⟩

private theorem case_000597_covered :
    RowPropertyParametricCovered case_000597_rank.val case_000597_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000597_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000598_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000598_mask : SignMask := ⟨22, by decide⟩
private def case_000598_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000598_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000598_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000598_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (68/9) }
private def case_000598_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000598_secondLine : StrictLin2 := { a := (-17/50), b := (-17/50), c := (-73/75) }

private theorem case_000598_rankWord :
    rankPairWord? case_000598_word = some case_000598_rank := by
  decide

private theorem case_000598_unrank :
    unrankPairWord case_000598_rank = case_000598_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000598_word case_000598_rank).1
    case_000598_rankWord |>.symm

private theorem case_000598_seqChoice :
    translationChoiceSeq case_000598_word case_000598_mask = case_000598_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000598_seqAtRank :
    translationSeqAtRankMask case_000598_rank case_000598_mask = case_000598_seq := by
  rw [translationSeqAtRankMask, case_000598_unrank]
  exact case_000598_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000598_bAtRank :
    translationBAtRankMask case_000598_rank case_000598_mask = case_000598_b := by
  rw [translationBAtRankMask, case_000598_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000598_b, case_000598_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000598_firstLine_eq :
    case_000598_support.firstLine case_000598_seq case_000598_b = case_000598_firstLine := by
  norm_num [case_000598_firstLine, case_000598_support, case_000598_seq, case_000598_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000598_secondLine_eq :
    case_000598_support.secondLine case_000598_seq case_000598_b = case_000598_secondLine := by
  norm_num [case_000598_secondLine, case_000598_support, case_000598_seq, case_000598_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000598_sourceAgrees :
    SourceAgrees case_000598_support case_000598_rank.val case_000598_mask := by
  intro hlt
  have hrank : (⟨case_000598_rank.val, hlt⟩ : Fin numPairWords) = case_000598_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000598_rank.val, hlt⟩ case_000598_mask =
        case_000598_seq := by
    simpa [hrank] using case_000598_seqAtRank
  simp [SourceChecks, hseq, case_000598_support,
    checkTranslationConstraintSource, case_000598_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000598_rows :
    EqEqPosVarSecondRows case_000598_support case_000598_rank.val case_000598_mask := by
  intro hlt
  have hrank : (⟨case_000598_rank.val, hlt⟩ : Fin numPairWords) = case_000598_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000598_rank.val, hlt⟩ case_000598_mask =
        case_000598_seq := by
    simpa [hrank] using case_000598_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000598_rank.val, hlt⟩ case_000598_mask =
        case_000598_b := by
    simpa [hrank] using case_000598_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000598_support case_000598_rank.val hlt
          case_000598_mask = case_000598_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000598_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000598_support case_000598_rank.val hlt
          case_000598_mask = case_000598_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000598_secondLine_eq]
  have case_000598_fixedFirst :
      FixedRow (FirstLineAt case_000598_support case_000598_rank.val hlt case_000598_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000598_firstLine, FixedRow]
  have case_000598_rowSecond :
      EqEqPosRow (SecondLineAt case_000598_support case_000598_rank.val hlt case_000598_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000598_secondLine, EqEqPosRow]
  exact ⟨case_000598_fixedFirst, case_000598_rowSecond⟩

private theorem case_000598_existsRows :
    ExistsEqEqPosVarSecondRows case_000598_rank.val case_000598_mask :=
  ⟨case_000598_support, case_000598_sourceAgrees, case_000598_rows⟩

private theorem case_000598_covered :
    RowPropertyParametricCovered case_000598_rank.val case_000598_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000598_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000599_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000599_mask : SignMask := ⟨24, by decide⟩
private def case_000599_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000599_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000599_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000599_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000599_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000599_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000599_rankWord :
    rankPairWord? case_000599_word = some case_000599_rank := by
  decide

private theorem case_000599_unrank :
    unrankPairWord case_000599_rank = case_000599_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000599_word case_000599_rank).1
    case_000599_rankWord |>.symm

private theorem case_000599_seqChoice :
    translationChoiceSeq case_000599_word case_000599_mask = case_000599_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000599_seqAtRank :
    translationSeqAtRankMask case_000599_rank case_000599_mask = case_000599_seq := by
  rw [translationSeqAtRankMask, case_000599_unrank]
  exact case_000599_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000599_bAtRank :
    translationBAtRankMask case_000599_rank case_000599_mask = case_000599_b := by
  rw [translationBAtRankMask, case_000599_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000599_b, case_000599_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000599_firstLine_eq :
    case_000599_support.firstLine case_000599_seq case_000599_b = case_000599_firstLine := by
  norm_num [case_000599_firstLine, case_000599_support, case_000599_seq, case_000599_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000599_secondLine_eq :
    case_000599_support.secondLine case_000599_seq case_000599_b = case_000599_secondLine := by
  norm_num [case_000599_secondLine, case_000599_support, case_000599_seq, case_000599_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000599_sourceAgrees :
    SourceAgrees case_000599_support case_000599_rank.val case_000599_mask := by
  intro hlt
  have hrank : (⟨case_000599_rank.val, hlt⟩ : Fin numPairWords) = case_000599_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000599_rank.val, hlt⟩ case_000599_mask =
        case_000599_seq := by
    simpa [hrank] using case_000599_seqAtRank
  simp [SourceChecks, hseq, case_000599_support,
    checkTranslationConstraintSource, case_000599_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000599_rows :
    EqEqPosVarFirstRows case_000599_support case_000599_rank.val case_000599_mask := by
  intro hlt
  have hrank : (⟨case_000599_rank.val, hlt⟩ : Fin numPairWords) = case_000599_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000599_rank.val, hlt⟩ case_000599_mask =
        case_000599_seq := by
    simpa [hrank] using case_000599_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000599_rank.val, hlt⟩ case_000599_mask =
        case_000599_b := by
    simpa [hrank] using case_000599_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000599_support case_000599_rank.val hlt
          case_000599_mask = case_000599_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000599_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000599_support case_000599_rank.val hlt
          case_000599_mask = case_000599_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000599_secondLine_eq]
  have case_000599_rowFirst :
      EqEqPosRow (FirstLineAt case_000599_support case_000599_rank.val hlt case_000599_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000599_firstLine, EqEqPosRow]
  have case_000599_fixedSecond :
      FixedRow (SecondLineAt case_000599_support case_000599_rank.val hlt case_000599_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000599_secondLine, FixedRow]
  exact ⟨case_000599_rowFirst, case_000599_fixedSecond⟩

private theorem case_000599_existsRows :
    ExistsEqEqPosVarFirstRows case_000599_rank.val case_000599_mask :=
  ⟨case_000599_support, case_000599_sourceAgrees, case_000599_rows⟩

private theorem case_000599_covered :
    RowPropertyParametricCovered case_000599_rank.val case_000599_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000599_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000600_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000600_mask : SignMask := ⟨28, by decide⟩
private def case_000600_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000600_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000600_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000600_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000600_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000600_secondLine : StrictLin2 := { a := (9/52), b := (-9/52), c := (-9/26) }

private theorem case_000600_rankWord :
    rankPairWord? case_000600_word = some case_000600_rank := by
  decide

private theorem case_000600_unrank :
    unrankPairWord case_000600_rank = case_000600_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000600_word case_000600_rank).1
    case_000600_rankWord |>.symm

private theorem case_000600_seqChoice :
    translationChoiceSeq case_000600_word case_000600_mask = case_000600_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000600_seqAtRank :
    translationSeqAtRankMask case_000600_rank case_000600_mask = case_000600_seq := by
  rw [translationSeqAtRankMask, case_000600_unrank]
  exact case_000600_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000600_bAtRank :
    translationBAtRankMask case_000600_rank case_000600_mask = case_000600_b := by
  rw [translationBAtRankMask, case_000600_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000600_b, case_000600_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000600_firstLine_eq :
    case_000600_support.firstLine case_000600_seq case_000600_b = case_000600_firstLine := by
  norm_num [case_000600_firstLine, case_000600_support, case_000600_seq, case_000600_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000600_secondLine_eq :
    case_000600_support.secondLine case_000600_seq case_000600_b = case_000600_secondLine := by
  norm_num [case_000600_secondLine, case_000600_support, case_000600_seq, case_000600_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000600_sourceAgrees :
    SourceAgrees case_000600_support case_000600_rank.val case_000600_mask := by
  intro hlt
  have hrank : (⟨case_000600_rank.val, hlt⟩ : Fin numPairWords) = case_000600_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000600_rank.val, hlt⟩ case_000600_mask =
        case_000600_seq := by
    simpa [hrank] using case_000600_seqAtRank
  simp [SourceChecks, hseq, case_000600_support,
    checkTranslationConstraintSource, case_000600_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000600_rows :
    OppMinusOneVarSecondRows case_000600_support case_000600_rank.val case_000600_mask := by
  intro hlt
  have hrank : (⟨case_000600_rank.val, hlt⟩ : Fin numPairWords) = case_000600_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000600_rank.val, hlt⟩ case_000600_mask =
        case_000600_seq := by
    simpa [hrank] using case_000600_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000600_rank.val, hlt⟩ case_000600_mask =
        case_000600_b := by
    simpa [hrank] using case_000600_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000600_support case_000600_rank.val hlt
          case_000600_mask = case_000600_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000600_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000600_support case_000600_rank.val hlt
          case_000600_mask = case_000600_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000600_secondLine_eq]
  have case_000600_fixedFirst :
      FixedRow (FirstLineAt case_000600_support case_000600_rank.val hlt case_000600_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000600_firstLine, FixedRow]
  have case_000600_rowSecond :
      OppNegRow (SecondLineAt case_000600_support case_000600_rank.val hlt case_000600_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000600_secondLine, OppNegRow]
  exact ⟨case_000600_fixedFirst, case_000600_rowSecond⟩

private theorem case_000600_existsRows :
    ExistsOppMinusOneVarSecondRows case_000600_rank.val case_000600_mask :=
  ⟨case_000600_support, case_000600_sourceAgrees, case_000600_rows⟩

private theorem case_000600_covered :
    RowPropertyParametricCovered case_000600_rank.val case_000600_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000600_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000601_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000601_mask : SignMask := ⟨30, by decide⟩
private def case_000601_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000601_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000601_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000601_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (20/9) }
private def case_000601_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000601_secondLine : StrictLin2 := { a := (-87/518), b := (-87/518), c := (-69/259) }

private theorem case_000601_rankWord :
    rankPairWord? case_000601_word = some case_000601_rank := by
  decide

private theorem case_000601_unrank :
    unrankPairWord case_000601_rank = case_000601_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000601_word case_000601_rank).1
    case_000601_rankWord |>.symm

private theorem case_000601_seqChoice :
    translationChoiceSeq case_000601_word case_000601_mask = case_000601_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000601_seqAtRank :
    translationSeqAtRankMask case_000601_rank case_000601_mask = case_000601_seq := by
  rw [translationSeqAtRankMask, case_000601_unrank]
  exact case_000601_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000601_bAtRank :
    translationBAtRankMask case_000601_rank case_000601_mask = case_000601_b := by
  rw [translationBAtRankMask, case_000601_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000601_b, case_000601_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000601_firstLine_eq :
    case_000601_support.firstLine case_000601_seq case_000601_b = case_000601_firstLine := by
  norm_num [case_000601_firstLine, case_000601_support, case_000601_seq, case_000601_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000601_secondLine_eq :
    case_000601_support.secondLine case_000601_seq case_000601_b = case_000601_secondLine := by
  norm_num [case_000601_secondLine, case_000601_support, case_000601_seq, case_000601_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000601_sourceAgrees :
    SourceAgrees case_000601_support case_000601_rank.val case_000601_mask := by
  intro hlt
  have hrank : (⟨case_000601_rank.val, hlt⟩ : Fin numPairWords) = case_000601_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000601_rank.val, hlt⟩ case_000601_mask =
        case_000601_seq := by
    simpa [hrank] using case_000601_seqAtRank
  simp [SourceChecks, hseq, case_000601_support,
    checkTranslationConstraintSource, case_000601_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000601_rows :
    EqEqPosVarSecondRows case_000601_support case_000601_rank.val case_000601_mask := by
  intro hlt
  have hrank : (⟨case_000601_rank.val, hlt⟩ : Fin numPairWords) = case_000601_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000601_rank.val, hlt⟩ case_000601_mask =
        case_000601_seq := by
    simpa [hrank] using case_000601_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000601_rank.val, hlt⟩ case_000601_mask =
        case_000601_b := by
    simpa [hrank] using case_000601_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000601_support case_000601_rank.val hlt
          case_000601_mask = case_000601_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000601_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000601_support case_000601_rank.val hlt
          case_000601_mask = case_000601_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000601_secondLine_eq]
  have case_000601_fixedFirst :
      FixedRow (FirstLineAt case_000601_support case_000601_rank.val hlt case_000601_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000601_firstLine, FixedRow]
  have case_000601_rowSecond :
      EqEqPosRow (SecondLineAt case_000601_support case_000601_rank.val hlt case_000601_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000601_secondLine, EqEqPosRow]
  exact ⟨case_000601_fixedFirst, case_000601_rowSecond⟩

private theorem case_000601_existsRows :
    ExistsEqEqPosVarSecondRows case_000601_rank.val case_000601_mask :=
  ⟨case_000601_support, case_000601_sourceAgrees, case_000601_rows⟩

private theorem case_000601_covered :
    RowPropertyParametricCovered case_000601_rank.val case_000601_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000601_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000602_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000602_mask : SignMask := ⟨31, by decide⟩
private def case_000602_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000602_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000602_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000602_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000602_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000602_secondLine : StrictLin2 := { a := (-87/494), b := (-87/494), c := (-240/247) }

private theorem case_000602_rankWord :
    rankPairWord? case_000602_word = some case_000602_rank := by
  decide

private theorem case_000602_unrank :
    unrankPairWord case_000602_rank = case_000602_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000602_word case_000602_rank).1
    case_000602_rankWord |>.symm

private theorem case_000602_seqChoice :
    translationChoiceSeq case_000602_word case_000602_mask = case_000602_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000602_seqAtRank :
    translationSeqAtRankMask case_000602_rank case_000602_mask = case_000602_seq := by
  rw [translationSeqAtRankMask, case_000602_unrank]
  exact case_000602_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000602_bAtRank :
    translationBAtRankMask case_000602_rank case_000602_mask = case_000602_b := by
  rw [translationBAtRankMask, case_000602_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000602_b, case_000602_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000602_firstLine_eq :
    case_000602_support.firstLine case_000602_seq case_000602_b = case_000602_firstLine := by
  norm_num [case_000602_firstLine, case_000602_support, case_000602_seq, case_000602_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000602_secondLine_eq :
    case_000602_support.secondLine case_000602_seq case_000602_b = case_000602_secondLine := by
  norm_num [case_000602_secondLine, case_000602_support, case_000602_seq, case_000602_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000602_sourceAgrees :
    SourceAgrees case_000602_support case_000602_rank.val case_000602_mask := by
  intro hlt
  have hrank : (⟨case_000602_rank.val, hlt⟩ : Fin numPairWords) = case_000602_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000602_rank.val, hlt⟩ case_000602_mask =
        case_000602_seq := by
    simpa [hrank] using case_000602_seqAtRank
  simp [SourceChecks, hseq, case_000602_support,
    checkTranslationConstraintSource, case_000602_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000602_rows :
    EqEqPosVarSecondRows case_000602_support case_000602_rank.val case_000602_mask := by
  intro hlt
  have hrank : (⟨case_000602_rank.val, hlt⟩ : Fin numPairWords) = case_000602_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000602_rank.val, hlt⟩ case_000602_mask =
        case_000602_seq := by
    simpa [hrank] using case_000602_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000602_rank.val, hlt⟩ case_000602_mask =
        case_000602_b := by
    simpa [hrank] using case_000602_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000602_support case_000602_rank.val hlt
          case_000602_mask = case_000602_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000602_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000602_support case_000602_rank.val hlt
          case_000602_mask = case_000602_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000602_secondLine_eq]
  have case_000602_fixedFirst :
      FixedRow (FirstLineAt case_000602_support case_000602_rank.val hlt case_000602_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000602_firstLine, FixedRow]
  have case_000602_rowSecond :
      EqEqPosRow (SecondLineAt case_000602_support case_000602_rank.val hlt case_000602_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000602_secondLine, EqEqPosRow]
  exact ⟨case_000602_fixedFirst, case_000602_rowSecond⟩

private theorem case_000602_existsRows :
    ExistsEqEqPosVarSecondRows case_000602_rank.val case_000602_mask :=
  ⟨case_000602_support, case_000602_sourceAgrees, case_000602_rows⟩

private theorem case_000602_covered :
    RowPropertyParametricCovered case_000602_rank.val case_000602_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000602_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000603_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000603_mask : SignMask := ⟨45, by decide⟩
private def case_000603_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000603_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000603_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000603_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (-20/9) }
private def case_000603_firstLine : StrictLin2 := { a := (-13/19), b := (-13/19), c := (-217/57) }
private def case_000603_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000603_rankWord :
    rankPairWord? case_000603_word = some case_000603_rank := by
  decide

private theorem case_000603_unrank :
    unrankPairWord case_000603_rank = case_000603_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000603_word case_000603_rank).1
    case_000603_rankWord |>.symm

private theorem case_000603_seqChoice :
    translationChoiceSeq case_000603_word case_000603_mask = case_000603_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000603_seqAtRank :
    translationSeqAtRankMask case_000603_rank case_000603_mask = case_000603_seq := by
  rw [translationSeqAtRankMask, case_000603_unrank]
  exact case_000603_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000603_bAtRank :
    translationBAtRankMask case_000603_rank case_000603_mask = case_000603_b := by
  rw [translationBAtRankMask, case_000603_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000603_b, case_000603_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000603_firstLine_eq :
    case_000603_support.firstLine case_000603_seq case_000603_b = case_000603_firstLine := by
  norm_num [case_000603_firstLine, case_000603_support, case_000603_seq, case_000603_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000603_secondLine_eq :
    case_000603_support.secondLine case_000603_seq case_000603_b = case_000603_secondLine := by
  norm_num [case_000603_secondLine, case_000603_support, case_000603_seq, case_000603_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000603_sourceAgrees :
    SourceAgrees case_000603_support case_000603_rank.val case_000603_mask := by
  intro hlt
  have hrank : (⟨case_000603_rank.val, hlt⟩ : Fin numPairWords) = case_000603_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000603_rank.val, hlt⟩ case_000603_mask =
        case_000603_seq := by
    simpa [hrank] using case_000603_seqAtRank
  simp [SourceChecks, hseq, case_000603_support,
    checkTranslationConstraintSource, case_000603_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000603_rows :
    EqEqPosVarFirstRows case_000603_support case_000603_rank.val case_000603_mask := by
  intro hlt
  have hrank : (⟨case_000603_rank.val, hlt⟩ : Fin numPairWords) = case_000603_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000603_rank.val, hlt⟩ case_000603_mask =
        case_000603_seq := by
    simpa [hrank] using case_000603_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000603_rank.val, hlt⟩ case_000603_mask =
        case_000603_b := by
    simpa [hrank] using case_000603_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000603_support case_000603_rank.val hlt
          case_000603_mask = case_000603_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000603_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000603_support case_000603_rank.val hlt
          case_000603_mask = case_000603_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000603_secondLine_eq]
  have case_000603_rowFirst :
      EqEqPosRow (FirstLineAt case_000603_support case_000603_rank.val hlt case_000603_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000603_firstLine, EqEqPosRow]
  have case_000603_fixedSecond :
      FixedRow (SecondLineAt case_000603_support case_000603_rank.val hlt case_000603_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000603_secondLine, FixedRow]
  exact ⟨case_000603_rowFirst, case_000603_fixedSecond⟩

private theorem case_000603_existsRows :
    ExistsEqEqPosVarFirstRows case_000603_rank.val case_000603_mask :=
  ⟨case_000603_support, case_000603_sourceAgrees, case_000603_rows⟩

private theorem case_000603_covered :
    RowPropertyParametricCovered case_000603_rank.val case_000603_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000603_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000604_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000604_mask : SignMask := ⟨47, by decide⟩
private def case_000604_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000604_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000604_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000604_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (52/9) }
private def case_000604_firstLine : StrictLin2 := { a := (-13/37), b := (-13/37), c := (-361/111) }
private def case_000604_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000604_rankWord :
    rankPairWord? case_000604_word = some case_000604_rank := by
  decide

private theorem case_000604_unrank :
    unrankPairWord case_000604_rank = case_000604_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000604_word case_000604_rank).1
    case_000604_rankWord |>.symm

private theorem case_000604_seqChoice :
    translationChoiceSeq case_000604_word case_000604_mask = case_000604_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000604_seqAtRank :
    translationSeqAtRankMask case_000604_rank case_000604_mask = case_000604_seq := by
  rw [translationSeqAtRankMask, case_000604_unrank]
  exact case_000604_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000604_bAtRank :
    translationBAtRankMask case_000604_rank case_000604_mask = case_000604_b := by
  rw [translationBAtRankMask, case_000604_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000604_b, case_000604_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000604_firstLine_eq :
    case_000604_support.firstLine case_000604_seq case_000604_b = case_000604_firstLine := by
  norm_num [case_000604_firstLine, case_000604_support, case_000604_seq, case_000604_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000604_secondLine_eq :
    case_000604_support.secondLine case_000604_seq case_000604_b = case_000604_secondLine := by
  norm_num [case_000604_secondLine, case_000604_support, case_000604_seq, case_000604_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000604_sourceAgrees :
    SourceAgrees case_000604_support case_000604_rank.val case_000604_mask := by
  intro hlt
  have hrank : (⟨case_000604_rank.val, hlt⟩ : Fin numPairWords) = case_000604_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000604_rank.val, hlt⟩ case_000604_mask =
        case_000604_seq := by
    simpa [hrank] using case_000604_seqAtRank
  simp [SourceChecks, hseq, case_000604_support,
    checkTranslationConstraintSource, case_000604_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000604_rows :
    EqEqPosVarFirstRows case_000604_support case_000604_rank.val case_000604_mask := by
  intro hlt
  have hrank : (⟨case_000604_rank.val, hlt⟩ : Fin numPairWords) = case_000604_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000604_rank.val, hlt⟩ case_000604_mask =
        case_000604_seq := by
    simpa [hrank] using case_000604_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000604_rank.val, hlt⟩ case_000604_mask =
        case_000604_b := by
    simpa [hrank] using case_000604_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000604_support case_000604_rank.val hlt
          case_000604_mask = case_000604_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000604_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000604_support case_000604_rank.val hlt
          case_000604_mask = case_000604_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000604_secondLine_eq]
  have case_000604_rowFirst :
      EqEqPosRow (FirstLineAt case_000604_support case_000604_rank.val hlt case_000604_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000604_firstLine, EqEqPosRow]
  have case_000604_fixedSecond :
      FixedRow (SecondLineAt case_000604_support case_000604_rank.val hlt case_000604_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000604_secondLine, FixedRow]
  exact ⟨case_000604_rowFirst, case_000604_fixedSecond⟩

private theorem case_000604_existsRows :
    ExistsEqEqPosVarFirstRows case_000604_rank.val case_000604_mask :=
  ⟨case_000604_support, case_000604_sourceAgrees, case_000604_rows⟩

private theorem case_000604_covered :
    RowPropertyParametricCovered case_000604_rank.val case_000604_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000604_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000605_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000605_mask : SignMask := ⟨54, by decide⟩
private def case_000605_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000605_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000605_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000605_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (116/9) }
private def case_000605_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_000605_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000605_rankWord :
    rankPairWord? case_000605_word = some case_000605_rank := by
  decide

private theorem case_000605_unrank :
    unrankPairWord case_000605_rank = case_000605_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000605_word case_000605_rank).1
    case_000605_rankWord |>.symm

private theorem case_000605_seqChoice :
    translationChoiceSeq case_000605_word case_000605_mask = case_000605_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000605_seqAtRank :
    translationSeqAtRankMask case_000605_rank case_000605_mask = case_000605_seq := by
  rw [translationSeqAtRankMask, case_000605_unrank]
  exact case_000605_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000605_bAtRank :
    translationBAtRankMask case_000605_rank case_000605_mask = case_000605_b := by
  rw [translationBAtRankMask, case_000605_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000605_b, case_000605_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000605_firstLine_eq :
    case_000605_support.firstLine case_000605_seq case_000605_b = case_000605_firstLine := by
  norm_num [case_000605_firstLine, case_000605_support, case_000605_seq, case_000605_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000605_secondLine_eq :
    case_000605_support.secondLine case_000605_seq case_000605_b = case_000605_secondLine := by
  norm_num [case_000605_secondLine, case_000605_support, case_000605_seq, case_000605_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000605_sourceAgrees :
    SourceAgrees case_000605_support case_000605_rank.val case_000605_mask := by
  intro hlt
  have hrank : (⟨case_000605_rank.val, hlt⟩ : Fin numPairWords) = case_000605_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000605_rank.val, hlt⟩ case_000605_mask =
        case_000605_seq := by
    simpa [hrank] using case_000605_seqAtRank
  simp [SourceChecks, hseq, case_000605_support,
    checkTranslationConstraintSource, case_000605_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000605_rows :
    OppOneMinusVarFirstRows case_000605_support case_000605_rank.val case_000605_mask := by
  intro hlt
  have hrank : (⟨case_000605_rank.val, hlt⟩ : Fin numPairWords) = case_000605_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000605_rank.val, hlt⟩ case_000605_mask =
        case_000605_seq := by
    simpa [hrank] using case_000605_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000605_rank.val, hlt⟩ case_000605_mask =
        case_000605_b := by
    simpa [hrank] using case_000605_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000605_support case_000605_rank.val hlt
          case_000605_mask = case_000605_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000605_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000605_support case_000605_rank.val hlt
          case_000605_mask = case_000605_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000605_secondLine_eq]
  have case_000605_rowFirst :
      OppPosRow (FirstLineAt case_000605_support case_000605_rank.val hlt case_000605_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000605_firstLine, OppPosRow]
  have case_000605_fixedSecond :
      FixedRow (SecondLineAt case_000605_support case_000605_rank.val hlt case_000605_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000605_secondLine, FixedRow]
  exact ⟨case_000605_rowFirst, case_000605_fixedSecond⟩

private theorem case_000605_existsRows :
    ExistsOppOneMinusVarFirstRows case_000605_rank.val case_000605_mask :=
  ⟨case_000605_support, case_000605_sourceAgrees, case_000605_rows⟩

private theorem case_000605_covered :
    RowPropertyParametricCovered case_000605_rank.val case_000605_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000605_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000606_rank : Fin numPairWords := ⟨365, by decide⟩
private def case_000606_mask : SignMask := ⟨55, by decide⟩
private def case_000606_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000606_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000606_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000606_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000606_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_000606_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000606_rankWord :
    rankPairWord? case_000606_word = some case_000606_rank := by
  decide

private theorem case_000606_unrank :
    unrankPairWord case_000606_rank = case_000606_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000606_word case_000606_rank).1
    case_000606_rankWord |>.symm

private theorem case_000606_seqChoice :
    translationChoiceSeq case_000606_word case_000606_mask = case_000606_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000606_seqAtRank :
    translationSeqAtRankMask case_000606_rank case_000606_mask = case_000606_seq := by
  rw [translationSeqAtRankMask, case_000606_unrank]
  exact case_000606_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000606_bAtRank :
    translationBAtRankMask case_000606_rank case_000606_mask = case_000606_b := by
  rw [translationBAtRankMask, case_000606_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000606_b, case_000606_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000606_firstLine_eq :
    case_000606_support.firstLine case_000606_seq case_000606_b = case_000606_firstLine := by
  norm_num [case_000606_firstLine, case_000606_support, case_000606_seq, case_000606_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000606_secondLine_eq :
    case_000606_support.secondLine case_000606_seq case_000606_b = case_000606_secondLine := by
  norm_num [case_000606_secondLine, case_000606_support, case_000606_seq, case_000606_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000606_sourceAgrees :
    SourceAgrees case_000606_support case_000606_rank.val case_000606_mask := by
  intro hlt
  have hrank : (⟨case_000606_rank.val, hlt⟩ : Fin numPairWords) = case_000606_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000606_rank.val, hlt⟩ case_000606_mask =
        case_000606_seq := by
    simpa [hrank] using case_000606_seqAtRank
  simp [SourceChecks, hseq, case_000606_support,
    checkTranslationConstraintSource, case_000606_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000606_rows :
    OppOneMinusVarFirstRows case_000606_support case_000606_rank.val case_000606_mask := by
  intro hlt
  have hrank : (⟨case_000606_rank.val, hlt⟩ : Fin numPairWords) = case_000606_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000606_rank.val, hlt⟩ case_000606_mask =
        case_000606_seq := by
    simpa [hrank] using case_000606_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000606_rank.val, hlt⟩ case_000606_mask =
        case_000606_b := by
    simpa [hrank] using case_000606_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000606_support case_000606_rank.val hlt
          case_000606_mask = case_000606_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000606_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000606_support case_000606_rank.val hlt
          case_000606_mask = case_000606_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000606_secondLine_eq]
  have case_000606_rowFirst :
      OppPosRow (FirstLineAt case_000606_support case_000606_rank.val hlt case_000606_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000606_firstLine, OppPosRow]
  have case_000606_fixedSecond :
      FixedRow (SecondLineAt case_000606_support case_000606_rank.val hlt case_000606_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000606_secondLine, FixedRow]
  exact ⟨case_000606_rowFirst, case_000606_fixedSecond⟩

private theorem case_000606_existsRows :
    ExistsOppOneMinusVarFirstRows case_000606_rank.val case_000606_mask :=
  ⟨case_000606_support, case_000606_sourceAgrees, case_000606_rows⟩

private theorem case_000606_covered :
    RowPropertyParametricCovered case_000606_rank.val case_000606_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000606_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000607_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000607_mask : SignMask := ⟨9, by decide⟩
private def case_000607_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000607_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000607_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000607_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000607_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000607_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000607_rankWord :
    rankPairWord? case_000607_word = some case_000607_rank := by
  decide

private theorem case_000607_unrank :
    unrankPairWord case_000607_rank = case_000607_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000607_word case_000607_rank).1
    case_000607_rankWord |>.symm

private theorem case_000607_seqChoice :
    translationChoiceSeq case_000607_word case_000607_mask = case_000607_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000607_seqAtRank :
    translationSeqAtRankMask case_000607_rank case_000607_mask = case_000607_seq := by
  rw [translationSeqAtRankMask, case_000607_unrank]
  exact case_000607_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000607_bAtRank :
    translationBAtRankMask case_000607_rank case_000607_mask = case_000607_b := by
  rw [translationBAtRankMask, case_000607_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000607_b, case_000607_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000607_firstLine_eq :
    case_000607_support.firstLine case_000607_seq case_000607_b = case_000607_firstLine := by
  norm_num [case_000607_firstLine, case_000607_support, case_000607_seq, case_000607_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000607_secondLine_eq :
    case_000607_support.secondLine case_000607_seq case_000607_b = case_000607_secondLine := by
  norm_num [case_000607_secondLine, case_000607_support, case_000607_seq, case_000607_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000607_sourceAgrees :
    SourceAgrees case_000607_support case_000607_rank.val case_000607_mask := by
  intro hlt
  have hrank : (⟨case_000607_rank.val, hlt⟩ : Fin numPairWords) = case_000607_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000607_rank.val, hlt⟩ case_000607_mask =
        case_000607_seq := by
    simpa [hrank] using case_000607_seqAtRank
  simp [SourceChecks, hseq, case_000607_support,
    checkTranslationConstraintSource, case_000607_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000607_rows :
    EqEqPosVarFirstRows case_000607_support case_000607_rank.val case_000607_mask := by
  intro hlt
  have hrank : (⟨case_000607_rank.val, hlt⟩ : Fin numPairWords) = case_000607_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000607_rank.val, hlt⟩ case_000607_mask =
        case_000607_seq := by
    simpa [hrank] using case_000607_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000607_rank.val, hlt⟩ case_000607_mask =
        case_000607_b := by
    simpa [hrank] using case_000607_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000607_support case_000607_rank.val hlt
          case_000607_mask = case_000607_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000607_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000607_support case_000607_rank.val hlt
          case_000607_mask = case_000607_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000607_secondLine_eq]
  have case_000607_rowFirst :
      EqEqPosRow (FirstLineAt case_000607_support case_000607_rank.val hlt case_000607_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000607_firstLine, EqEqPosRow]
  have case_000607_fixedSecond :
      FixedRow (SecondLineAt case_000607_support case_000607_rank.val hlt case_000607_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000607_secondLine, FixedRow]
  exact ⟨case_000607_rowFirst, case_000607_fixedSecond⟩

private theorem case_000607_existsRows :
    ExistsEqEqPosVarFirstRows case_000607_rank.val case_000607_mask :=
  ⟨case_000607_support, case_000607_sourceAgrees, case_000607_rows⟩

private theorem case_000607_covered :
    RowPropertyParametricCovered case_000607_rank.val case_000607_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000607_existsRows

inductive Group018Covered : Nat -> SignMask -> Prop
  | case_000576 : Group018Covered case_000576_rank.val case_000576_mask
  | case_000577 : Group018Covered case_000577_rank.val case_000577_mask
  | case_000578 : Group018Covered case_000578_rank.val case_000578_mask
  | case_000579 : Group018Covered case_000579_rank.val case_000579_mask
  | case_000580 : Group018Covered case_000580_rank.val case_000580_mask
  | case_000581 : Group018Covered case_000581_rank.val case_000581_mask
  | case_000582 : Group018Covered case_000582_rank.val case_000582_mask
  | case_000583 : Group018Covered case_000583_rank.val case_000583_mask
  | case_000584 : Group018Covered case_000584_rank.val case_000584_mask
  | case_000585 : Group018Covered case_000585_rank.val case_000585_mask
  | case_000586 : Group018Covered case_000586_rank.val case_000586_mask
  | case_000587 : Group018Covered case_000587_rank.val case_000587_mask
  | case_000588 : Group018Covered case_000588_rank.val case_000588_mask
  | case_000589 : Group018Covered case_000589_rank.val case_000589_mask
  | case_000590 : Group018Covered case_000590_rank.val case_000590_mask
  | case_000591 : Group018Covered case_000591_rank.val case_000591_mask
  | case_000592 : Group018Covered case_000592_rank.val case_000592_mask
  | case_000593 : Group018Covered case_000593_rank.val case_000593_mask
  | case_000594 : Group018Covered case_000594_rank.val case_000594_mask
  | case_000595 : Group018Covered case_000595_rank.val case_000595_mask
  | case_000596 : Group018Covered case_000596_rank.val case_000596_mask
  | case_000597 : Group018Covered case_000597_rank.val case_000597_mask
  | case_000598 : Group018Covered case_000598_rank.val case_000598_mask
  | case_000599 : Group018Covered case_000599_rank.val case_000599_mask
  | case_000600 : Group018Covered case_000600_rank.val case_000600_mask
  | case_000601 : Group018Covered case_000601_rank.val case_000601_mask
  | case_000602 : Group018Covered case_000602_rank.val case_000602_mask
  | case_000603 : Group018Covered case_000603_rank.val case_000603_mask
  | case_000604 : Group018Covered case_000604_rank.val case_000604_mask
  | case_000605 : Group018Covered case_000605_rank.val case_000605_mask
  | case_000606 : Group018Covered case_000606_rank.val case_000606_mask
  | case_000607 : Group018Covered case_000607_rank.val case_000607_mask

theorem Group018GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group018Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000576 =>
      exact RowPropertyParametricCovered.kills case_000576_covered
  | case_000577 =>
      exact RowPropertyParametricCovered.kills case_000577_covered
  | case_000578 =>
      exact RowPropertyParametricCovered.kills case_000578_covered
  | case_000579 =>
      exact RowPropertyParametricCovered.kills case_000579_covered
  | case_000580 =>
      exact RowPropertyParametricCovered.kills case_000580_covered
  | case_000581 =>
      exact RowPropertyParametricCovered.kills case_000581_covered
  | case_000582 =>
      exact RowPropertyParametricCovered.kills case_000582_covered
  | case_000583 =>
      exact RowPropertyParametricCovered.kills case_000583_covered
  | case_000584 =>
      exact RowPropertyParametricCovered.kills case_000584_covered
  | case_000585 =>
      exact RowPropertyParametricCovered.kills case_000585_covered
  | case_000586 =>
      exact RowPropertyParametricCovered.kills case_000586_covered
  | case_000587 =>
      exact RowPropertyParametricCovered.kills case_000587_covered
  | case_000588 =>
      exact RowPropertyParametricCovered.kills case_000588_covered
  | case_000589 =>
      exact RowPropertyParametricCovered.kills case_000589_covered
  | case_000590 =>
      exact RowPropertyParametricCovered.kills case_000590_covered
  | case_000591 =>
      exact RowPropertyParametricCovered.kills case_000591_covered
  | case_000592 =>
      exact RowPropertyParametricCovered.kills case_000592_covered
  | case_000593 =>
      exact RowPropertyParametricCovered.kills case_000593_covered
  | case_000594 =>
      exact RowPropertyParametricCovered.kills case_000594_covered
  | case_000595 =>
      exact RowPropertyParametricCovered.kills case_000595_covered
  | case_000596 =>
      exact RowPropertyParametricCovered.kills case_000596_covered
  | case_000597 =>
      exact RowPropertyParametricCovered.kills case_000597_covered
  | case_000598 =>
      exact RowPropertyParametricCovered.kills case_000598_covered
  | case_000599 =>
      exact RowPropertyParametricCovered.kills case_000599_covered
  | case_000600 =>
      exact RowPropertyParametricCovered.kills case_000600_covered
  | case_000601 =>
      exact RowPropertyParametricCovered.kills case_000601_covered
  | case_000602 =>
      exact RowPropertyParametricCovered.kills case_000602_covered
  | case_000603 =>
      exact RowPropertyParametricCovered.kills case_000603_covered
  | case_000604 =>
      exact RowPropertyParametricCovered.kills case_000604_covered
  | case_000605 =>
      exact RowPropertyParametricCovered.kills case_000605_covered
  | case_000606 =>
      exact RowPropertyParametricCovered.kills case_000606_covered
  | case_000607 =>
      exact RowPropertyParametricCovered.kills case_000607_covered

theorem Group018_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group018
