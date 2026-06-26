import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group028

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
private def case_000896_rank : Fin numPairWords := ⟨632, by decide⟩
private def case_000896_mask : SignMask := ⟨63, by decide⟩
private def case_000896_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000896_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000896_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000896_b : Vec3 Rat := { x := (-28/3), y := (52/9), z := (116/9) }
private def case_000896_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000896_secondLine : StrictLin2 := { a := (-189/370), b := (189/370), c := (-451/185) }

private theorem case_000896_rankWord :
    rankPairWord? case_000896_word = some case_000896_rank := by
  decide

private theorem case_000896_unrank :
    unrankPairWord case_000896_rank = case_000896_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000896_word case_000896_rank).1
    case_000896_rankWord |>.symm

private theorem case_000896_seqChoice :
    translationChoiceSeq case_000896_word case_000896_mask = case_000896_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000896_seqAtRank :
    translationSeqAtRankMask case_000896_rank case_000896_mask = case_000896_seq := by
  rw [translationSeqAtRankMask, case_000896_unrank]
  exact case_000896_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000896_bAtRank :
    translationBAtRankMask case_000896_rank case_000896_mask = case_000896_b := by
  rw [translationBAtRankMask, case_000896_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000896_b, case_000896_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000896_firstLine_eq :
    case_000896_support.firstLine case_000896_seq case_000896_b = case_000896_firstLine := by
  norm_num [case_000896_firstLine, case_000896_support, case_000896_seq, case_000896_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000896_secondLine_eq :
    case_000896_support.secondLine case_000896_seq case_000896_b = case_000896_secondLine := by
  norm_num [case_000896_secondLine, case_000896_support, case_000896_seq, case_000896_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000896_sourceAgrees :
    SourceAgrees case_000896_support case_000896_rank.val case_000896_mask := by
  intro hlt
  have hrank : (⟨case_000896_rank.val, hlt⟩ : Fin numPairWords) = case_000896_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000896_rank.val, hlt⟩ case_000896_mask =
        case_000896_seq := by
    simpa [hrank] using case_000896_seqAtRank
  simp [SourceChecks, hseq, case_000896_support,
    checkTranslationConstraintSource, case_000896_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000896_rows :
    OppOneMinusVarSecondRows case_000896_support case_000896_rank.val case_000896_mask := by
  intro hlt
  have hrank : (⟨case_000896_rank.val, hlt⟩ : Fin numPairWords) = case_000896_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000896_rank.val, hlt⟩ case_000896_mask =
        case_000896_seq := by
    simpa [hrank] using case_000896_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000896_rank.val, hlt⟩ case_000896_mask =
        case_000896_b := by
    simpa [hrank] using case_000896_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000896_support case_000896_rank.val hlt
          case_000896_mask = case_000896_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000896_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000896_support case_000896_rank.val hlt
          case_000896_mask = case_000896_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000896_secondLine_eq]
  have case_000896_fixedFirst :
      FixedRow (FirstLineAt case_000896_support case_000896_rank.val hlt case_000896_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000896_firstLine, FixedRow]
  have case_000896_rowSecond :
      OppPosRow (SecondLineAt case_000896_support case_000896_rank.val hlt case_000896_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000896_secondLine, OppPosRow]
  exact ⟨case_000896_fixedFirst, case_000896_rowSecond⟩

private theorem case_000896_existsRows :
    ExistsOppOneMinusVarSecondRows case_000896_rank.val case_000896_mask :=
  ⟨case_000896_support, case_000896_sourceAgrees, case_000896_rows⟩

private theorem case_000896_covered :
    RowPropertyParametricCovered case_000896_rank.val case_000896_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000896_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000897_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000897_mask : SignMask := ⟨8, by decide⟩
private def case_000897_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000897_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000897_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000897_b : Vec3 Rat := { x := (-68/9), y := -4, z := (-164/9) }
private def case_000897_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000897_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000897_rankWord :
    rankPairWord? case_000897_word = some case_000897_rank := by
  decide

private theorem case_000897_unrank :
    unrankPairWord case_000897_rank = case_000897_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000897_word case_000897_rank).1
    case_000897_rankWord |>.symm

private theorem case_000897_seqChoice :
    translationChoiceSeq case_000897_word case_000897_mask = case_000897_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000897_seqAtRank :
    translationSeqAtRankMask case_000897_rank case_000897_mask = case_000897_seq := by
  rw [translationSeqAtRankMask, case_000897_unrank]
  exact case_000897_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000897_bAtRank :
    translationBAtRankMask case_000897_rank case_000897_mask = case_000897_b := by
  rw [translationBAtRankMask, case_000897_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000897_b, case_000897_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000897_firstLine_eq :
    case_000897_support.firstLine case_000897_seq case_000897_b = case_000897_firstLine := by
  norm_num [case_000897_firstLine, case_000897_support, case_000897_seq, case_000897_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000897_secondLine_eq :
    case_000897_support.secondLine case_000897_seq case_000897_b = case_000897_secondLine := by
  norm_num [case_000897_secondLine, case_000897_support, case_000897_seq, case_000897_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000897_sourceAgrees :
    SourceAgrees case_000897_support case_000897_rank.val case_000897_mask := by
  intro hlt
  have hrank : (⟨case_000897_rank.val, hlt⟩ : Fin numPairWords) = case_000897_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000897_rank.val, hlt⟩ case_000897_mask =
        case_000897_seq := by
    simpa [hrank] using case_000897_seqAtRank
  simp [SourceChecks, hseq, case_000897_support,
    checkTranslationConstraintSource, case_000897_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000897_rows :
    EqEqPosVarFirstRows case_000897_support case_000897_rank.val case_000897_mask := by
  intro hlt
  have hrank : (⟨case_000897_rank.val, hlt⟩ : Fin numPairWords) = case_000897_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000897_rank.val, hlt⟩ case_000897_mask =
        case_000897_seq := by
    simpa [hrank] using case_000897_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000897_rank.val, hlt⟩ case_000897_mask =
        case_000897_b := by
    simpa [hrank] using case_000897_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000897_support case_000897_rank.val hlt
          case_000897_mask = case_000897_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000897_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000897_support case_000897_rank.val hlt
          case_000897_mask = case_000897_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000897_secondLine_eq]
  have case_000897_rowFirst :
      EqEqPosRow (FirstLineAt case_000897_support case_000897_rank.val hlt case_000897_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000897_firstLine, EqEqPosRow]
  have case_000897_fixedSecond :
      FixedRow (SecondLineAt case_000897_support case_000897_rank.val hlt case_000897_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000897_secondLine, FixedRow]
  exact ⟨case_000897_rowFirst, case_000897_fixedSecond⟩

private theorem case_000897_existsRows :
    ExistsEqEqPosVarFirstRows case_000897_rank.val case_000897_mask :=
  ⟨case_000897_support, case_000897_sourceAgrees, case_000897_rows⟩

private theorem case_000897_covered :
    RowPropertyParametricCovered case_000897_rank.val case_000897_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000897_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000898_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000898_mask : SignMask := ⟨9, by decide⟩
private def case_000898_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000898_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000898_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000898_b : Vec3 Rat := { x := (-68/9), y := 4, z := (-164/9) }
private def case_000898_firstLine : StrictLin2 := { a := -1, b := -1, c := (-47/17) }
private def case_000898_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000898_rankWord :
    rankPairWord? case_000898_word = some case_000898_rank := by
  decide

private theorem case_000898_unrank :
    unrankPairWord case_000898_rank = case_000898_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000898_word case_000898_rank).1
    case_000898_rankWord |>.symm

private theorem case_000898_seqChoice :
    translationChoiceSeq case_000898_word case_000898_mask = case_000898_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000898_seqAtRank :
    translationSeqAtRankMask case_000898_rank case_000898_mask = case_000898_seq := by
  rw [translationSeqAtRankMask, case_000898_unrank]
  exact case_000898_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000898_bAtRank :
    translationBAtRankMask case_000898_rank case_000898_mask = case_000898_b := by
  rw [translationBAtRankMask, case_000898_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000898_b, case_000898_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000898_firstLine_eq :
    case_000898_support.firstLine case_000898_seq case_000898_b = case_000898_firstLine := by
  norm_num [case_000898_firstLine, case_000898_support, case_000898_seq, case_000898_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000898_secondLine_eq :
    case_000898_support.secondLine case_000898_seq case_000898_b = case_000898_secondLine := by
  norm_num [case_000898_secondLine, case_000898_support, case_000898_seq, case_000898_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000898_sourceAgrees :
    SourceAgrees case_000898_support case_000898_rank.val case_000898_mask := by
  intro hlt
  have hrank : (⟨case_000898_rank.val, hlt⟩ : Fin numPairWords) = case_000898_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000898_rank.val, hlt⟩ case_000898_mask =
        case_000898_seq := by
    simpa [hrank] using case_000898_seqAtRank
  simp [SourceChecks, hseq, case_000898_support,
    checkTranslationConstraintSource, case_000898_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000898_rows :
    EqEqPosVarFirstRows case_000898_support case_000898_rank.val case_000898_mask := by
  intro hlt
  have hrank : (⟨case_000898_rank.val, hlt⟩ : Fin numPairWords) = case_000898_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000898_rank.val, hlt⟩ case_000898_mask =
        case_000898_seq := by
    simpa [hrank] using case_000898_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000898_rank.val, hlt⟩ case_000898_mask =
        case_000898_b := by
    simpa [hrank] using case_000898_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000898_support case_000898_rank.val hlt
          case_000898_mask = case_000898_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000898_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000898_support case_000898_rank.val hlt
          case_000898_mask = case_000898_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000898_secondLine_eq]
  have case_000898_rowFirst :
      EqEqPosRow (FirstLineAt case_000898_support case_000898_rank.val hlt case_000898_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000898_firstLine, EqEqPosRow]
  have case_000898_fixedSecond :
      FixedRow (SecondLineAt case_000898_support case_000898_rank.val hlt case_000898_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000898_secondLine, FixedRow]
  exact ⟨case_000898_rowFirst, case_000898_fixedSecond⟩

private theorem case_000898_existsRows :
    ExistsEqEqPosVarFirstRows case_000898_rank.val case_000898_mask :=
  ⟨case_000898_support, case_000898_sourceAgrees, case_000898_rows⟩

private theorem case_000898_covered :
    RowPropertyParametricCovered case_000898_rank.val case_000898_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000898_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000899_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000899_mask : SignMask := ⟨22, by decide⟩
private def case_000899_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000899_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000899_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000899_b : Vec3 Rat := { x := (-52/9), y := (-28/3), z := (116/9) }
private def case_000899_firstLine : StrictLin2 := { a := (-13/5), b := (-13/5), c := (-257/45) }
private def case_000899_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000899_rankWord :
    rankPairWord? case_000899_word = some case_000899_rank := by
  decide

private theorem case_000899_unrank :
    unrankPairWord case_000899_rank = case_000899_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000899_word case_000899_rank).1
    case_000899_rankWord |>.symm

private theorem case_000899_seqChoice :
    translationChoiceSeq case_000899_word case_000899_mask = case_000899_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000899_seqAtRank :
    translationSeqAtRankMask case_000899_rank case_000899_mask = case_000899_seq := by
  rw [translationSeqAtRankMask, case_000899_unrank]
  exact case_000899_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000899_bAtRank :
    translationBAtRankMask case_000899_rank case_000899_mask = case_000899_b := by
  rw [translationBAtRankMask, case_000899_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000899_b, case_000899_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000899_firstLine_eq :
    case_000899_support.firstLine case_000899_seq case_000899_b = case_000899_firstLine := by
  norm_num [case_000899_firstLine, case_000899_support, case_000899_seq, case_000899_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000899_secondLine_eq :
    case_000899_support.secondLine case_000899_seq case_000899_b = case_000899_secondLine := by
  norm_num [case_000899_secondLine, case_000899_support, case_000899_seq, case_000899_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000899_sourceAgrees :
    SourceAgrees case_000899_support case_000899_rank.val case_000899_mask := by
  intro hlt
  have hrank : (⟨case_000899_rank.val, hlt⟩ : Fin numPairWords) = case_000899_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000899_rank.val, hlt⟩ case_000899_mask =
        case_000899_seq := by
    simpa [hrank] using case_000899_seqAtRank
  simp [SourceChecks, hseq, case_000899_support,
    checkTranslationConstraintSource, case_000899_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000899_rows :
    EqEqPosVarFirstRows case_000899_support case_000899_rank.val case_000899_mask := by
  intro hlt
  have hrank : (⟨case_000899_rank.val, hlt⟩ : Fin numPairWords) = case_000899_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000899_rank.val, hlt⟩ case_000899_mask =
        case_000899_seq := by
    simpa [hrank] using case_000899_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000899_rank.val, hlt⟩ case_000899_mask =
        case_000899_b := by
    simpa [hrank] using case_000899_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000899_support case_000899_rank.val hlt
          case_000899_mask = case_000899_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000899_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000899_support case_000899_rank.val hlt
          case_000899_mask = case_000899_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000899_secondLine_eq]
  have case_000899_rowFirst :
      EqEqPosRow (FirstLineAt case_000899_support case_000899_rank.val hlt case_000899_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000899_firstLine, EqEqPosRow]
  have case_000899_fixedSecond :
      FixedRow (SecondLineAt case_000899_support case_000899_rank.val hlt case_000899_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000899_secondLine, FixedRow]
  exact ⟨case_000899_rowFirst, case_000899_fixedSecond⟩

private theorem case_000899_existsRows :
    ExistsEqEqPosVarFirstRows case_000899_rank.val case_000899_mask :=
  ⟨case_000899_support, case_000899_sourceAgrees, case_000899_rows⟩

private theorem case_000899_covered :
    RowPropertyParametricCovered case_000899_rank.val case_000899_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000899_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000900_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000900_mask : SignMask := ⟨28, by decide⟩
private def case_000900_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000900_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000900_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000900_b : Vec3 Rat := { x := (-100/9), y := -4, z := (-4/9) }
private def case_000900_firstLine : StrictLin2 := { a := (-25/17), b := (25/17), c := (-57/17) }
private def case_000900_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000900_rankWord :
    rankPairWord? case_000900_word = some case_000900_rank := by
  decide

private theorem case_000900_unrank :
    unrankPairWord case_000900_rank = case_000900_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000900_word case_000900_rank).1
    case_000900_rankWord |>.symm

private theorem case_000900_seqChoice :
    translationChoiceSeq case_000900_word case_000900_mask = case_000900_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000900_seqAtRank :
    translationSeqAtRankMask case_000900_rank case_000900_mask = case_000900_seq := by
  rw [translationSeqAtRankMask, case_000900_unrank]
  exact case_000900_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000900_bAtRank :
    translationBAtRankMask case_000900_rank case_000900_mask = case_000900_b := by
  rw [translationBAtRankMask, case_000900_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000900_b, case_000900_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000900_firstLine_eq :
    case_000900_support.firstLine case_000900_seq case_000900_b = case_000900_firstLine := by
  norm_num [case_000900_firstLine, case_000900_support, case_000900_seq, case_000900_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000900_secondLine_eq :
    case_000900_support.secondLine case_000900_seq case_000900_b = case_000900_secondLine := by
  norm_num [case_000900_secondLine, case_000900_support, case_000900_seq, case_000900_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000900_sourceAgrees :
    SourceAgrees case_000900_support case_000900_rank.val case_000900_mask := by
  intro hlt
  have hrank : (⟨case_000900_rank.val, hlt⟩ : Fin numPairWords) = case_000900_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000900_rank.val, hlt⟩ case_000900_mask =
        case_000900_seq := by
    simpa [hrank] using case_000900_seqAtRank
  simp [SourceChecks, hseq, case_000900_support,
    checkTranslationConstraintSource, case_000900_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000900_rows :
    OppOneMinusVarFirstRows case_000900_support case_000900_rank.val case_000900_mask := by
  intro hlt
  have hrank : (⟨case_000900_rank.val, hlt⟩ : Fin numPairWords) = case_000900_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000900_rank.val, hlt⟩ case_000900_mask =
        case_000900_seq := by
    simpa [hrank] using case_000900_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000900_rank.val, hlt⟩ case_000900_mask =
        case_000900_b := by
    simpa [hrank] using case_000900_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000900_support case_000900_rank.val hlt
          case_000900_mask = case_000900_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000900_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000900_support case_000900_rank.val hlt
          case_000900_mask = case_000900_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000900_secondLine_eq]
  have case_000900_rowFirst :
      OppPosRow (FirstLineAt case_000900_support case_000900_rank.val hlt case_000900_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000900_firstLine, OppPosRow]
  have case_000900_fixedSecond :
      FixedRow (SecondLineAt case_000900_support case_000900_rank.val hlt case_000900_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000900_secondLine, FixedRow]
  exact ⟨case_000900_rowFirst, case_000900_fixedSecond⟩

private theorem case_000900_existsRows :
    ExistsOppOneMinusVarFirstRows case_000900_rank.val case_000900_mask :=
  ⟨case_000900_support, case_000900_sourceAgrees, case_000900_rows⟩

private theorem case_000900_covered :
    RowPropertyParametricCovered case_000900_rank.val case_000900_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000900_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000901_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000901_mask : SignMask := ⟨29, by decide⟩
private def case_000901_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000901_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000901_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000901_b : Vec3 Rat := { x := (-100/9), y := 4, z := (-4/9) }
private def case_000901_firstLine : StrictLin2 := { a := (-50/17), b := (-50/17), c := (-556/153) }
private def case_000901_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000901_rankWord :
    rankPairWord? case_000901_word = some case_000901_rank := by
  decide

private theorem case_000901_unrank :
    unrankPairWord case_000901_rank = case_000901_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000901_word case_000901_rank).1
    case_000901_rankWord |>.symm

private theorem case_000901_seqChoice :
    translationChoiceSeq case_000901_word case_000901_mask = case_000901_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000901_seqAtRank :
    translationSeqAtRankMask case_000901_rank case_000901_mask = case_000901_seq := by
  rw [translationSeqAtRankMask, case_000901_unrank]
  exact case_000901_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000901_bAtRank :
    translationBAtRankMask case_000901_rank case_000901_mask = case_000901_b := by
  rw [translationBAtRankMask, case_000901_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000901_b, case_000901_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000901_firstLine_eq :
    case_000901_support.firstLine case_000901_seq case_000901_b = case_000901_firstLine := by
  norm_num [case_000901_firstLine, case_000901_support, case_000901_seq, case_000901_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000901_secondLine_eq :
    case_000901_support.secondLine case_000901_seq case_000901_b = case_000901_secondLine := by
  norm_num [case_000901_secondLine, case_000901_support, case_000901_seq, case_000901_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000901_sourceAgrees :
    SourceAgrees case_000901_support case_000901_rank.val case_000901_mask := by
  intro hlt
  have hrank : (⟨case_000901_rank.val, hlt⟩ : Fin numPairWords) = case_000901_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000901_rank.val, hlt⟩ case_000901_mask =
        case_000901_seq := by
    simpa [hrank] using case_000901_seqAtRank
  simp [SourceChecks, hseq, case_000901_support,
    checkTranslationConstraintSource, case_000901_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000901_rows :
    EqEqPosVarFirstRows case_000901_support case_000901_rank.val case_000901_mask := by
  intro hlt
  have hrank : (⟨case_000901_rank.val, hlt⟩ : Fin numPairWords) = case_000901_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000901_rank.val, hlt⟩ case_000901_mask =
        case_000901_seq := by
    simpa [hrank] using case_000901_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000901_rank.val, hlt⟩ case_000901_mask =
        case_000901_b := by
    simpa [hrank] using case_000901_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000901_support case_000901_rank.val hlt
          case_000901_mask = case_000901_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000901_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000901_support case_000901_rank.val hlt
          case_000901_mask = case_000901_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000901_secondLine_eq]
  have case_000901_rowFirst :
      EqEqPosRow (FirstLineAt case_000901_support case_000901_rank.val hlt case_000901_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000901_firstLine, EqEqPosRow]
  have case_000901_fixedSecond :
      FixedRow (SecondLineAt case_000901_support case_000901_rank.val hlt case_000901_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000901_secondLine, FixedRow]
  exact ⟨case_000901_rowFirst, case_000901_fixedSecond⟩

private theorem case_000901_existsRows :
    ExistsEqEqPosVarFirstRows case_000901_rank.val case_000901_mask :=
  ⟨case_000901_support, case_000901_sourceAgrees, case_000901_rows⟩

private theorem case_000901_covered :
    RowPropertyParametricCovered case_000901_rank.val case_000901_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000901_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000902_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000902_mask : SignMask := ⟨54, by decide⟩
private def case_000902_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000902_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000902_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000902_b : Vec3 Rat := { x := (-4/9), y := -4, z := (164/9) }
private def case_000902_firstLine : StrictLin2 := { a := -1, b := 1, c := -99 }
private def case_000902_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000902_rankWord :
    rankPairWord? case_000902_word = some case_000902_rank := by
  decide

private theorem case_000902_unrank :
    unrankPairWord case_000902_rank = case_000902_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000902_word case_000902_rank).1
    case_000902_rankWord |>.symm

private theorem case_000902_seqChoice :
    translationChoiceSeq case_000902_word case_000902_mask = case_000902_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000902_seqAtRank :
    translationSeqAtRankMask case_000902_rank case_000902_mask = case_000902_seq := by
  rw [translationSeqAtRankMask, case_000902_unrank]
  exact case_000902_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000902_bAtRank :
    translationBAtRankMask case_000902_rank case_000902_mask = case_000902_b := by
  rw [translationBAtRankMask, case_000902_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000902_b, case_000902_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000902_firstLine_eq :
    case_000902_support.firstLine case_000902_seq case_000902_b = case_000902_firstLine := by
  norm_num [case_000902_firstLine, case_000902_support, case_000902_seq, case_000902_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000902_secondLine_eq :
    case_000902_support.secondLine case_000902_seq case_000902_b = case_000902_secondLine := by
  norm_num [case_000902_secondLine, case_000902_support, case_000902_seq, case_000902_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000902_sourceAgrees :
    SourceAgrees case_000902_support case_000902_rank.val case_000902_mask := by
  intro hlt
  have hrank : (⟨case_000902_rank.val, hlt⟩ : Fin numPairWords) = case_000902_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000902_rank.val, hlt⟩ case_000902_mask =
        case_000902_seq := by
    simpa [hrank] using case_000902_seqAtRank
  simp [SourceChecks, hseq, case_000902_support,
    checkTranslationConstraintSource, case_000902_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000902_rows :
    OppOneMinusVarFirstRows case_000902_support case_000902_rank.val case_000902_mask := by
  intro hlt
  have hrank : (⟨case_000902_rank.val, hlt⟩ : Fin numPairWords) = case_000902_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000902_rank.val, hlt⟩ case_000902_mask =
        case_000902_seq := by
    simpa [hrank] using case_000902_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000902_rank.val, hlt⟩ case_000902_mask =
        case_000902_b := by
    simpa [hrank] using case_000902_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000902_support case_000902_rank.val hlt
          case_000902_mask = case_000902_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000902_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000902_support case_000902_rank.val hlt
          case_000902_mask = case_000902_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000902_secondLine_eq]
  have case_000902_rowFirst :
      OppPosRow (FirstLineAt case_000902_support case_000902_rank.val hlt case_000902_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000902_firstLine, OppPosRow]
  have case_000902_fixedSecond :
      FixedRow (SecondLineAt case_000902_support case_000902_rank.val hlt case_000902_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000902_secondLine, FixedRow]
  exact ⟨case_000902_rowFirst, case_000902_fixedSecond⟩

private theorem case_000902_existsRows :
    ExistsOppOneMinusVarFirstRows case_000902_rank.val case_000902_mask :=
  ⟨case_000902_support, case_000902_sourceAgrees, case_000902_rows⟩

private theorem case_000902_covered :
    RowPropertyParametricCovered case_000902_rank.val case_000902_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000902_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000903_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000903_mask : SignMask := ⟨55, by decide⟩
private def case_000903_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000903_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000903_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000903_b : Vec3 Rat := { x := (-4/9), y := 4, z := (164/9) }
private def case_000903_firstLine : StrictLin2 := { a := -1, b := 1, c := -63 }
private def case_000903_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000903_rankWord :
    rankPairWord? case_000903_word = some case_000903_rank := by
  decide

private theorem case_000903_unrank :
    unrankPairWord case_000903_rank = case_000903_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000903_word case_000903_rank).1
    case_000903_rankWord |>.symm

private theorem case_000903_seqChoice :
    translationChoiceSeq case_000903_word case_000903_mask = case_000903_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000903_seqAtRank :
    translationSeqAtRankMask case_000903_rank case_000903_mask = case_000903_seq := by
  rw [translationSeqAtRankMask, case_000903_unrank]
  exact case_000903_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000903_bAtRank :
    translationBAtRankMask case_000903_rank case_000903_mask = case_000903_b := by
  rw [translationBAtRankMask, case_000903_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000903_b, case_000903_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000903_firstLine_eq :
    case_000903_support.firstLine case_000903_seq case_000903_b = case_000903_firstLine := by
  norm_num [case_000903_firstLine, case_000903_support, case_000903_seq, case_000903_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000903_secondLine_eq :
    case_000903_support.secondLine case_000903_seq case_000903_b = case_000903_secondLine := by
  norm_num [case_000903_secondLine, case_000903_support, case_000903_seq, case_000903_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000903_sourceAgrees :
    SourceAgrees case_000903_support case_000903_rank.val case_000903_mask := by
  intro hlt
  have hrank : (⟨case_000903_rank.val, hlt⟩ : Fin numPairWords) = case_000903_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000903_rank.val, hlt⟩ case_000903_mask =
        case_000903_seq := by
    simpa [hrank] using case_000903_seqAtRank
  simp [SourceChecks, hseq, case_000903_support,
    checkTranslationConstraintSource, case_000903_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000903_rows :
    OppOneMinusVarFirstRows case_000903_support case_000903_rank.val case_000903_mask := by
  intro hlt
  have hrank : (⟨case_000903_rank.val, hlt⟩ : Fin numPairWords) = case_000903_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000903_rank.val, hlt⟩ case_000903_mask =
        case_000903_seq := by
    simpa [hrank] using case_000903_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000903_rank.val, hlt⟩ case_000903_mask =
        case_000903_b := by
    simpa [hrank] using case_000903_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000903_support case_000903_rank.val hlt
          case_000903_mask = case_000903_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000903_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000903_support case_000903_rank.val hlt
          case_000903_mask = case_000903_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000903_secondLine_eq]
  have case_000903_rowFirst :
      OppPosRow (FirstLineAt case_000903_support case_000903_rank.val hlt case_000903_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000903_firstLine, OppPosRow]
  have case_000903_fixedSecond :
      FixedRow (SecondLineAt case_000903_support case_000903_rank.val hlt case_000903_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000903_secondLine, FixedRow]
  exact ⟨case_000903_rowFirst, case_000903_fixedSecond⟩

private theorem case_000903_existsRows :
    ExistsOppOneMinusVarFirstRows case_000903_rank.val case_000903_mask :=
  ⟨case_000903_support, case_000903_sourceAgrees, case_000903_rows⟩

private theorem case_000903_covered :
    RowPropertyParametricCovered case_000903_rank.val case_000903_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000903_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000904_rank : Fin numPairWords := ⟨633, by decide⟩
private def case_000904_mask : SignMask := ⟨63, by decide⟩
private def case_000904_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000904_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000904_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000904_b : Vec3 Rat := { x := (-52/9), y := (28/3), z := (116/9) }
private def case_000904_firstLine : StrictLin2 := { a := (-13/5), b := (13/5), c := -9 }
private def case_000904_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000904_rankWord :
    rankPairWord? case_000904_word = some case_000904_rank := by
  decide

private theorem case_000904_unrank :
    unrankPairWord case_000904_rank = case_000904_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000904_word case_000904_rank).1
    case_000904_rankWord |>.symm

private theorem case_000904_seqChoice :
    translationChoiceSeq case_000904_word case_000904_mask = case_000904_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000904_seqAtRank :
    translationSeqAtRankMask case_000904_rank case_000904_mask = case_000904_seq := by
  rw [translationSeqAtRankMask, case_000904_unrank]
  exact case_000904_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000904_bAtRank :
    translationBAtRankMask case_000904_rank case_000904_mask = case_000904_b := by
  rw [translationBAtRankMask, case_000904_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000904_b, case_000904_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000904_firstLine_eq :
    case_000904_support.firstLine case_000904_seq case_000904_b = case_000904_firstLine := by
  norm_num [case_000904_firstLine, case_000904_support, case_000904_seq, case_000904_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000904_secondLine_eq :
    case_000904_support.secondLine case_000904_seq case_000904_b = case_000904_secondLine := by
  norm_num [case_000904_secondLine, case_000904_support, case_000904_seq, case_000904_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000904_sourceAgrees :
    SourceAgrees case_000904_support case_000904_rank.val case_000904_mask := by
  intro hlt
  have hrank : (⟨case_000904_rank.val, hlt⟩ : Fin numPairWords) = case_000904_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000904_rank.val, hlt⟩ case_000904_mask =
        case_000904_seq := by
    simpa [hrank] using case_000904_seqAtRank
  simp [SourceChecks, hseq, case_000904_support,
    checkTranslationConstraintSource, case_000904_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000904_rows :
    OppOneMinusVarFirstRows case_000904_support case_000904_rank.val case_000904_mask := by
  intro hlt
  have hrank : (⟨case_000904_rank.val, hlt⟩ : Fin numPairWords) = case_000904_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000904_rank.val, hlt⟩ case_000904_mask =
        case_000904_seq := by
    simpa [hrank] using case_000904_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000904_rank.val, hlt⟩ case_000904_mask =
        case_000904_b := by
    simpa [hrank] using case_000904_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000904_support case_000904_rank.val hlt
          case_000904_mask = case_000904_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000904_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000904_support case_000904_rank.val hlt
          case_000904_mask = case_000904_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000904_secondLine_eq]
  have case_000904_rowFirst :
      OppPosRow (FirstLineAt case_000904_support case_000904_rank.val hlt case_000904_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000904_firstLine, OppPosRow]
  have case_000904_fixedSecond :
      FixedRow (SecondLineAt case_000904_support case_000904_rank.val hlt case_000904_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000904_secondLine, FixedRow]
  exact ⟨case_000904_rowFirst, case_000904_fixedSecond⟩

private theorem case_000904_existsRows :
    ExistsOppOneMinusVarFirstRows case_000904_rank.val case_000904_mask :=
  ⟨case_000904_support, case_000904_sourceAgrees, case_000904_rows⟩

private theorem case_000904_covered :
    RowPropertyParametricCovered case_000904_rank.val case_000904_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000904_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000905_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000905_mask : SignMask := ⟨8, by decide⟩
private def case_000905_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000905_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000905_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000905_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-148/9) }
private def case_000905_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000905_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000905_rankWord :
    rankPairWord? case_000905_word = some case_000905_rank := by
  decide

private theorem case_000905_unrank :
    unrankPairWord case_000905_rank = case_000905_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000905_word case_000905_rank).1
    case_000905_rankWord |>.symm

private theorem case_000905_seqChoice :
    translationChoiceSeq case_000905_word case_000905_mask = case_000905_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000905_seqAtRank :
    translationSeqAtRankMask case_000905_rank case_000905_mask = case_000905_seq := by
  rw [translationSeqAtRankMask, case_000905_unrank]
  exact case_000905_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000905_bAtRank :
    translationBAtRankMask case_000905_rank case_000905_mask = case_000905_b := by
  rw [translationBAtRankMask, case_000905_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000905_b, case_000905_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000905_firstLine_eq :
    case_000905_support.firstLine case_000905_seq case_000905_b = case_000905_firstLine := by
  norm_num [case_000905_firstLine, case_000905_support, case_000905_seq, case_000905_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000905_secondLine_eq :
    case_000905_support.secondLine case_000905_seq case_000905_b = case_000905_secondLine := by
  norm_num [case_000905_secondLine, case_000905_support, case_000905_seq, case_000905_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000905_sourceAgrees :
    SourceAgrees case_000905_support case_000905_rank.val case_000905_mask := by
  intro hlt
  have hrank : (⟨case_000905_rank.val, hlt⟩ : Fin numPairWords) = case_000905_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000905_rank.val, hlt⟩ case_000905_mask =
        case_000905_seq := by
    simpa [hrank] using case_000905_seqAtRank
  simp [SourceChecks, hseq, case_000905_support,
    checkTranslationConstraintSource, case_000905_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000905_rows :
    EqEqPosVarFirstRows case_000905_support case_000905_rank.val case_000905_mask := by
  intro hlt
  have hrank : (⟨case_000905_rank.val, hlt⟩ : Fin numPairWords) = case_000905_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000905_rank.val, hlt⟩ case_000905_mask =
        case_000905_seq := by
    simpa [hrank] using case_000905_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000905_rank.val, hlt⟩ case_000905_mask =
        case_000905_b := by
    simpa [hrank] using case_000905_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000905_support case_000905_rank.val hlt
          case_000905_mask = case_000905_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000905_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000905_support case_000905_rank.val hlt
          case_000905_mask = case_000905_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000905_secondLine_eq]
  have case_000905_rowFirst :
      EqEqPosRow (FirstLineAt case_000905_support case_000905_rank.val hlt case_000905_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000905_firstLine, EqEqPosRow]
  have case_000905_fixedSecond :
      FixedRow (SecondLineAt case_000905_support case_000905_rank.val hlt case_000905_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000905_secondLine, FixedRow]
  exact ⟨case_000905_rowFirst, case_000905_fixedSecond⟩

private theorem case_000905_existsRows :
    ExistsEqEqPosVarFirstRows case_000905_rank.val case_000905_mask :=
  ⟨case_000905_support, case_000905_sourceAgrees, case_000905_rows⟩

private theorem case_000905_covered :
    RowPropertyParametricCovered case_000905_rank.val case_000905_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000905_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000906_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000906_mask : SignMask := ⟨9, by decide⟩
private def case_000906_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000906_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000906_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000906_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-148/9) }
private def case_000906_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000906_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000906_rankWord :
    rankPairWord? case_000906_word = some case_000906_rank := by
  decide

private theorem case_000906_unrank :
    unrankPairWord case_000906_rank = case_000906_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000906_word case_000906_rank).1
    case_000906_rankWord |>.symm

private theorem case_000906_seqChoice :
    translationChoiceSeq case_000906_word case_000906_mask = case_000906_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000906_seqAtRank :
    translationSeqAtRankMask case_000906_rank case_000906_mask = case_000906_seq := by
  rw [translationSeqAtRankMask, case_000906_unrank]
  exact case_000906_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000906_bAtRank :
    translationBAtRankMask case_000906_rank case_000906_mask = case_000906_b := by
  rw [translationBAtRankMask, case_000906_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000906_b, case_000906_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000906_firstLine_eq :
    case_000906_support.firstLine case_000906_seq case_000906_b = case_000906_firstLine := by
  norm_num [case_000906_firstLine, case_000906_support, case_000906_seq, case_000906_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000906_secondLine_eq :
    case_000906_support.secondLine case_000906_seq case_000906_b = case_000906_secondLine := by
  norm_num [case_000906_secondLine, case_000906_support, case_000906_seq, case_000906_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000906_sourceAgrees :
    SourceAgrees case_000906_support case_000906_rank.val case_000906_mask := by
  intro hlt
  have hrank : (⟨case_000906_rank.val, hlt⟩ : Fin numPairWords) = case_000906_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000906_rank.val, hlt⟩ case_000906_mask =
        case_000906_seq := by
    simpa [hrank] using case_000906_seqAtRank
  simp [SourceChecks, hseq, case_000906_support,
    checkTranslationConstraintSource, case_000906_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000906_rows :
    EqEqPosVarFirstRows case_000906_support case_000906_rank.val case_000906_mask := by
  intro hlt
  have hrank : (⟨case_000906_rank.val, hlt⟩ : Fin numPairWords) = case_000906_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000906_rank.val, hlt⟩ case_000906_mask =
        case_000906_seq := by
    simpa [hrank] using case_000906_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000906_rank.val, hlt⟩ case_000906_mask =
        case_000906_b := by
    simpa [hrank] using case_000906_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000906_support case_000906_rank.val hlt
          case_000906_mask = case_000906_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000906_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000906_support case_000906_rank.val hlt
          case_000906_mask = case_000906_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000906_secondLine_eq]
  have case_000906_rowFirst :
      EqEqPosRow (FirstLineAt case_000906_support case_000906_rank.val hlt case_000906_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000906_firstLine, EqEqPosRow]
  have case_000906_fixedSecond :
      FixedRow (SecondLineAt case_000906_support case_000906_rank.val hlt case_000906_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000906_secondLine, FixedRow]
  exact ⟨case_000906_rowFirst, case_000906_fixedSecond⟩

private theorem case_000906_existsRows :
    ExistsEqEqPosVarFirstRows case_000906_rank.val case_000906_mask :=
  ⟨case_000906_support, case_000906_sourceAgrees, case_000906_rows⟩

private theorem case_000906_covered :
    RowPropertyParametricCovered case_000906_rank.val case_000906_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000906_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000907_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000907_mask : SignMask := ⟨16, by decide⟩
private def case_000907_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000907_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000907_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000907_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000907_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000907_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000907_rankWord :
    rankPairWord? case_000907_word = some case_000907_rank := by
  decide

private theorem case_000907_unrank :
    unrankPairWord case_000907_rank = case_000907_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000907_word case_000907_rank).1
    case_000907_rankWord |>.symm

private theorem case_000907_seqChoice :
    translationChoiceSeq case_000907_word case_000907_mask = case_000907_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000907_seqAtRank :
    translationSeqAtRankMask case_000907_rank case_000907_mask = case_000907_seq := by
  rw [translationSeqAtRankMask, case_000907_unrank]
  exact case_000907_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000907_bAtRank :
    translationBAtRankMask case_000907_rank case_000907_mask = case_000907_b := by
  rw [translationBAtRankMask, case_000907_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000907_b, case_000907_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000907_firstLine_eq :
    case_000907_support.firstLine case_000907_seq case_000907_b = case_000907_firstLine := by
  norm_num [case_000907_firstLine, case_000907_support, case_000907_seq, case_000907_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000907_secondLine_eq :
    case_000907_support.secondLine case_000907_seq case_000907_b = case_000907_secondLine := by
  norm_num [case_000907_secondLine, case_000907_support, case_000907_seq, case_000907_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000907_sourceAgrees :
    SourceAgrees case_000907_support case_000907_rank.val case_000907_mask := by
  intro hlt
  have hrank : (⟨case_000907_rank.val, hlt⟩ : Fin numPairWords) = case_000907_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000907_rank.val, hlt⟩ case_000907_mask =
        case_000907_seq := by
    simpa [hrank] using case_000907_seqAtRank
  simp [SourceChecks, hseq, case_000907_support,
    checkTranslationConstraintSource, case_000907_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000907_rows :
    EqEqPosVarFirstRows case_000907_support case_000907_rank.val case_000907_mask := by
  intro hlt
  have hrank : (⟨case_000907_rank.val, hlt⟩ : Fin numPairWords) = case_000907_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000907_rank.val, hlt⟩ case_000907_mask =
        case_000907_seq := by
    simpa [hrank] using case_000907_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000907_rank.val, hlt⟩ case_000907_mask =
        case_000907_b := by
    simpa [hrank] using case_000907_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000907_support case_000907_rank.val hlt
          case_000907_mask = case_000907_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000907_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000907_support case_000907_rank.val hlt
          case_000907_mask = case_000907_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000907_secondLine_eq]
  have case_000907_rowFirst :
      EqEqPosRow (FirstLineAt case_000907_support case_000907_rank.val hlt case_000907_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000907_firstLine, EqEqPosRow]
  have case_000907_fixedSecond :
      FixedRow (SecondLineAt case_000907_support case_000907_rank.val hlt case_000907_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000907_secondLine, FixedRow]
  exact ⟨case_000907_rowFirst, case_000907_fixedSecond⟩

private theorem case_000907_existsRows :
    ExistsEqEqPosVarFirstRows case_000907_rank.val case_000907_mask :=
  ⟨case_000907_support, case_000907_sourceAgrees, case_000907_rows⟩

private theorem case_000907_covered :
    RowPropertyParametricCovered case_000907_rank.val case_000907_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000907_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000908_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000908_mask : SignMask := ⟨22, by decide⟩
private def case_000908_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000908_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000908_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000908_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_000908_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000908_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000908_rankWord :
    rankPairWord? case_000908_word = some case_000908_rank := by
  decide

private theorem case_000908_unrank :
    unrankPairWord case_000908_rank = case_000908_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000908_word case_000908_rank).1
    case_000908_rankWord |>.symm

private theorem case_000908_seqChoice :
    translationChoiceSeq case_000908_word case_000908_mask = case_000908_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000908_seqAtRank :
    translationSeqAtRankMask case_000908_rank case_000908_mask = case_000908_seq := by
  rw [translationSeqAtRankMask, case_000908_unrank]
  exact case_000908_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000908_bAtRank :
    translationBAtRankMask case_000908_rank case_000908_mask = case_000908_b := by
  rw [translationBAtRankMask, case_000908_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000908_b, case_000908_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000908_firstLine_eq :
    case_000908_support.firstLine case_000908_seq case_000908_b = case_000908_firstLine := by
  norm_num [case_000908_firstLine, case_000908_support, case_000908_seq, case_000908_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000908_secondLine_eq :
    case_000908_support.secondLine case_000908_seq case_000908_b = case_000908_secondLine := by
  norm_num [case_000908_secondLine, case_000908_support, case_000908_seq, case_000908_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000908_sourceAgrees :
    SourceAgrees case_000908_support case_000908_rank.val case_000908_mask := by
  intro hlt
  have hrank : (⟨case_000908_rank.val, hlt⟩ : Fin numPairWords) = case_000908_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000908_rank.val, hlt⟩ case_000908_mask =
        case_000908_seq := by
    simpa [hrank] using case_000908_seqAtRank
  simp [SourceChecks, hseq, case_000908_support,
    checkTranslationConstraintSource, case_000908_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000908_rows :
    EqEqPosVarFirstRows case_000908_support case_000908_rank.val case_000908_mask := by
  intro hlt
  have hrank : (⟨case_000908_rank.val, hlt⟩ : Fin numPairWords) = case_000908_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000908_rank.val, hlt⟩ case_000908_mask =
        case_000908_seq := by
    simpa [hrank] using case_000908_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000908_rank.val, hlt⟩ case_000908_mask =
        case_000908_b := by
    simpa [hrank] using case_000908_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000908_support case_000908_rank.val hlt
          case_000908_mask = case_000908_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000908_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000908_support case_000908_rank.val hlt
          case_000908_mask = case_000908_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000908_secondLine_eq]
  have case_000908_rowFirst :
      EqEqPosRow (FirstLineAt case_000908_support case_000908_rank.val hlt case_000908_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000908_firstLine, EqEqPosRow]
  have case_000908_fixedSecond :
      FixedRow (SecondLineAt case_000908_support case_000908_rank.val hlt case_000908_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000908_secondLine, FixedRow]
  exact ⟨case_000908_rowFirst, case_000908_fixedSecond⟩

private theorem case_000908_existsRows :
    ExistsEqEqPosVarFirstRows case_000908_rank.val case_000908_mask :=
  ⟨case_000908_support, case_000908_sourceAgrees, case_000908_rows⟩

private theorem case_000908_covered :
    RowPropertyParametricCovered case_000908_rank.val case_000908_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000908_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000909_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000909_mask : SignMask := ⟨24, by decide⟩
private def case_000909_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000909_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000909_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000909_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000909_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000909_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000909_rankWord :
    rankPairWord? case_000909_word = some case_000909_rank := by
  decide

private theorem case_000909_unrank :
    unrankPairWord case_000909_rank = case_000909_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000909_word case_000909_rank).1
    case_000909_rankWord |>.symm

private theorem case_000909_seqChoice :
    translationChoiceSeq case_000909_word case_000909_mask = case_000909_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000909_seqAtRank :
    translationSeqAtRankMask case_000909_rank case_000909_mask = case_000909_seq := by
  rw [translationSeqAtRankMask, case_000909_unrank]
  exact case_000909_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000909_bAtRank :
    translationBAtRankMask case_000909_rank case_000909_mask = case_000909_b := by
  rw [translationBAtRankMask, case_000909_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000909_b, case_000909_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000909_firstLine_eq :
    case_000909_support.firstLine case_000909_seq case_000909_b = case_000909_firstLine := by
  norm_num [case_000909_firstLine, case_000909_support, case_000909_seq, case_000909_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000909_secondLine_eq :
    case_000909_support.secondLine case_000909_seq case_000909_b = case_000909_secondLine := by
  norm_num [case_000909_secondLine, case_000909_support, case_000909_seq, case_000909_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000909_sourceAgrees :
    SourceAgrees case_000909_support case_000909_rank.val case_000909_mask := by
  intro hlt
  have hrank : (⟨case_000909_rank.val, hlt⟩ : Fin numPairWords) = case_000909_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000909_rank.val, hlt⟩ case_000909_mask =
        case_000909_seq := by
    simpa [hrank] using case_000909_seqAtRank
  simp [SourceChecks, hseq, case_000909_support,
    checkTranslationConstraintSource, case_000909_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000909_rows :
    EqEqPosVarFirstRows case_000909_support case_000909_rank.val case_000909_mask := by
  intro hlt
  have hrank : (⟨case_000909_rank.val, hlt⟩ : Fin numPairWords) = case_000909_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000909_rank.val, hlt⟩ case_000909_mask =
        case_000909_seq := by
    simpa [hrank] using case_000909_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000909_rank.val, hlt⟩ case_000909_mask =
        case_000909_b := by
    simpa [hrank] using case_000909_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000909_support case_000909_rank.val hlt
          case_000909_mask = case_000909_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000909_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000909_support case_000909_rank.val hlt
          case_000909_mask = case_000909_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000909_secondLine_eq]
  have case_000909_rowFirst :
      EqEqPosRow (FirstLineAt case_000909_support case_000909_rank.val hlt case_000909_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000909_firstLine, EqEqPosRow]
  have case_000909_fixedSecond :
      FixedRow (SecondLineAt case_000909_support case_000909_rank.val hlt case_000909_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000909_secondLine, FixedRow]
  exact ⟨case_000909_rowFirst, case_000909_fixedSecond⟩

private theorem case_000909_existsRows :
    ExistsEqEqPosVarFirstRows case_000909_rank.val case_000909_mask :=
  ⟨case_000909_support, case_000909_sourceAgrees, case_000909_rows⟩

private theorem case_000909_covered :
    RowPropertyParametricCovered case_000909_rank.val case_000909_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000909_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000910_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000910_mask : SignMask := ⟨29, by decide⟩
private def case_000910_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000910_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000910_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000910_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_000910_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000910_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000910_rankWord :
    rankPairWord? case_000910_word = some case_000910_rank := by
  decide

private theorem case_000910_unrank :
    unrankPairWord case_000910_rank = case_000910_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000910_word case_000910_rank).1
    case_000910_rankWord |>.symm

private theorem case_000910_seqChoice :
    translationChoiceSeq case_000910_word case_000910_mask = case_000910_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000910_seqAtRank :
    translationSeqAtRankMask case_000910_rank case_000910_mask = case_000910_seq := by
  rw [translationSeqAtRankMask, case_000910_unrank]
  exact case_000910_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000910_bAtRank :
    translationBAtRankMask case_000910_rank case_000910_mask = case_000910_b := by
  rw [translationBAtRankMask, case_000910_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000910_b, case_000910_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000910_firstLine_eq :
    case_000910_support.firstLine case_000910_seq case_000910_b = case_000910_firstLine := by
  norm_num [case_000910_firstLine, case_000910_support, case_000910_seq, case_000910_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000910_secondLine_eq :
    case_000910_support.secondLine case_000910_seq case_000910_b = case_000910_secondLine := by
  norm_num [case_000910_secondLine, case_000910_support, case_000910_seq, case_000910_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000910_sourceAgrees :
    SourceAgrees case_000910_support case_000910_rank.val case_000910_mask := by
  intro hlt
  have hrank : (⟨case_000910_rank.val, hlt⟩ : Fin numPairWords) = case_000910_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000910_rank.val, hlt⟩ case_000910_mask =
        case_000910_seq := by
    simpa [hrank] using case_000910_seqAtRank
  simp [SourceChecks, hseq, case_000910_support,
    checkTranslationConstraintSource, case_000910_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000910_rows :
    EqEqPosVarSecondRows case_000910_support case_000910_rank.val case_000910_mask := by
  intro hlt
  have hrank : (⟨case_000910_rank.val, hlt⟩ : Fin numPairWords) = case_000910_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000910_rank.val, hlt⟩ case_000910_mask =
        case_000910_seq := by
    simpa [hrank] using case_000910_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000910_rank.val, hlt⟩ case_000910_mask =
        case_000910_b := by
    simpa [hrank] using case_000910_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000910_support case_000910_rank.val hlt
          case_000910_mask = case_000910_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000910_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000910_support case_000910_rank.val hlt
          case_000910_mask = case_000910_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000910_secondLine_eq]
  have case_000910_fixedFirst :
      FixedRow (FirstLineAt case_000910_support case_000910_rank.val hlt case_000910_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000910_firstLine, FixedRow]
  have case_000910_rowSecond :
      EqEqPosRow (SecondLineAt case_000910_support case_000910_rank.val hlt case_000910_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000910_secondLine, EqEqPosRow]
  exact ⟨case_000910_fixedFirst, case_000910_rowSecond⟩

private theorem case_000910_existsRows :
    ExistsEqEqPosVarSecondRows case_000910_rank.val case_000910_mask :=
  ⟨case_000910_support, case_000910_sourceAgrees, case_000910_rows⟩

private theorem case_000910_covered :
    RowPropertyParametricCovered case_000910_rank.val case_000910_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000910_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000911_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000911_mask : SignMask := ⟨30, by decide⟩
private def case_000911_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000911_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000911_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000911_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_000911_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000911_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000911_rankWord :
    rankPairWord? case_000911_word = some case_000911_rank := by
  decide

private theorem case_000911_unrank :
    unrankPairWord case_000911_rank = case_000911_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000911_word case_000911_rank).1
    case_000911_rankWord |>.symm

private theorem case_000911_seqChoice :
    translationChoiceSeq case_000911_word case_000911_mask = case_000911_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000911_seqAtRank :
    translationSeqAtRankMask case_000911_rank case_000911_mask = case_000911_seq := by
  rw [translationSeqAtRankMask, case_000911_unrank]
  exact case_000911_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000911_bAtRank :
    translationBAtRankMask case_000911_rank case_000911_mask = case_000911_b := by
  rw [translationBAtRankMask, case_000911_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000911_b, case_000911_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000911_firstLine_eq :
    case_000911_support.firstLine case_000911_seq case_000911_b = case_000911_firstLine := by
  norm_num [case_000911_firstLine, case_000911_support, case_000911_seq, case_000911_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000911_secondLine_eq :
    case_000911_support.secondLine case_000911_seq case_000911_b = case_000911_secondLine := by
  norm_num [case_000911_secondLine, case_000911_support, case_000911_seq, case_000911_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000911_sourceAgrees :
    SourceAgrees case_000911_support case_000911_rank.val case_000911_mask := by
  intro hlt
  have hrank : (⟨case_000911_rank.val, hlt⟩ : Fin numPairWords) = case_000911_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000911_rank.val, hlt⟩ case_000911_mask =
        case_000911_seq := by
    simpa [hrank] using case_000911_seqAtRank
  simp [SourceChecks, hseq, case_000911_support,
    checkTranslationConstraintSource, case_000911_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000911_rows :
    EqEqPosVarFirstRows case_000911_support case_000911_rank.val case_000911_mask := by
  intro hlt
  have hrank : (⟨case_000911_rank.val, hlt⟩ : Fin numPairWords) = case_000911_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000911_rank.val, hlt⟩ case_000911_mask =
        case_000911_seq := by
    simpa [hrank] using case_000911_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000911_rank.val, hlt⟩ case_000911_mask =
        case_000911_b := by
    simpa [hrank] using case_000911_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000911_support case_000911_rank.val hlt
          case_000911_mask = case_000911_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000911_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000911_support case_000911_rank.val hlt
          case_000911_mask = case_000911_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000911_secondLine_eq]
  have case_000911_rowFirst :
      EqEqPosRow (FirstLineAt case_000911_support case_000911_rank.val hlt case_000911_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000911_firstLine, EqEqPosRow]
  have case_000911_fixedSecond :
      FixedRow (SecondLineAt case_000911_support case_000911_rank.val hlt case_000911_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000911_secondLine, FixedRow]
  exact ⟨case_000911_rowFirst, case_000911_fixedSecond⟩

private theorem case_000911_existsRows :
    ExistsEqEqPosVarFirstRows case_000911_rank.val case_000911_mask :=
  ⟨case_000911_support, case_000911_sourceAgrees, case_000911_rows⟩

private theorem case_000911_covered :
    RowPropertyParametricCovered case_000911_rank.val case_000911_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000911_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000912_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000912_mask : SignMask := ⟨31, by decide⟩
private def case_000912_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000912_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000912_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000912_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (52/9) }
private def case_000912_firstLine : StrictLin2 := { a := (-29/11), b := (-29/11), c := (-599/33) }
private def case_000912_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000912_rankWord :
    rankPairWord? case_000912_word = some case_000912_rank := by
  decide

private theorem case_000912_unrank :
    unrankPairWord case_000912_rank = case_000912_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000912_word case_000912_rank).1
    case_000912_rankWord |>.symm

private theorem case_000912_seqChoice :
    translationChoiceSeq case_000912_word case_000912_mask = case_000912_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000912_seqAtRank :
    translationSeqAtRankMask case_000912_rank case_000912_mask = case_000912_seq := by
  rw [translationSeqAtRankMask, case_000912_unrank]
  exact case_000912_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000912_bAtRank :
    translationBAtRankMask case_000912_rank case_000912_mask = case_000912_b := by
  rw [translationBAtRankMask, case_000912_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000912_b, case_000912_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000912_firstLine_eq :
    case_000912_support.firstLine case_000912_seq case_000912_b = case_000912_firstLine := by
  norm_num [case_000912_firstLine, case_000912_support, case_000912_seq, case_000912_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000912_secondLine_eq :
    case_000912_support.secondLine case_000912_seq case_000912_b = case_000912_secondLine := by
  norm_num [case_000912_secondLine, case_000912_support, case_000912_seq, case_000912_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000912_sourceAgrees :
    SourceAgrees case_000912_support case_000912_rank.val case_000912_mask := by
  intro hlt
  have hrank : (⟨case_000912_rank.val, hlt⟩ : Fin numPairWords) = case_000912_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000912_rank.val, hlt⟩ case_000912_mask =
        case_000912_seq := by
    simpa [hrank] using case_000912_seqAtRank
  simp [SourceChecks, hseq, case_000912_support,
    checkTranslationConstraintSource, case_000912_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000912_rows :
    EqEqPosVarFirstRows case_000912_support case_000912_rank.val case_000912_mask := by
  intro hlt
  have hrank : (⟨case_000912_rank.val, hlt⟩ : Fin numPairWords) = case_000912_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000912_rank.val, hlt⟩ case_000912_mask =
        case_000912_seq := by
    simpa [hrank] using case_000912_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000912_rank.val, hlt⟩ case_000912_mask =
        case_000912_b := by
    simpa [hrank] using case_000912_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000912_support case_000912_rank.val hlt
          case_000912_mask = case_000912_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000912_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000912_support case_000912_rank.val hlt
          case_000912_mask = case_000912_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000912_secondLine_eq]
  have case_000912_rowFirst :
      EqEqPosRow (FirstLineAt case_000912_support case_000912_rank.val hlt case_000912_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000912_firstLine, EqEqPosRow]
  have case_000912_fixedSecond :
      FixedRow (SecondLineAt case_000912_support case_000912_rank.val hlt case_000912_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000912_secondLine, FixedRow]
  exact ⟨case_000912_rowFirst, case_000912_fixedSecond⟩

private theorem case_000912_existsRows :
    ExistsEqEqPosVarFirstRows case_000912_rank.val case_000912_mask :=
  ⟨case_000912_support, case_000912_sourceAgrees, case_000912_rows⟩

private theorem case_000912_covered :
    RowPropertyParametricCovered case_000912_rank.val case_000912_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000912_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000913_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000913_mask : SignMask := ⟨45, by decide⟩
private def case_000913_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000913_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000913_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000913_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000913_firstLine : StrictLin2 := { a := 1, b := -1, c := (-63/5) }
private def case_000913_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000913_rankWord :
    rankPairWord? case_000913_word = some case_000913_rank := by
  decide

private theorem case_000913_unrank :
    unrankPairWord case_000913_rank = case_000913_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000913_word case_000913_rank).1
    case_000913_rankWord |>.symm

private theorem case_000913_seqChoice :
    translationChoiceSeq case_000913_word case_000913_mask = case_000913_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000913_seqAtRank :
    translationSeqAtRankMask case_000913_rank case_000913_mask = case_000913_seq := by
  rw [translationSeqAtRankMask, case_000913_unrank]
  exact case_000913_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000913_bAtRank :
    translationBAtRankMask case_000913_rank case_000913_mask = case_000913_b := by
  rw [translationBAtRankMask, case_000913_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000913_b, case_000913_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000913_firstLine_eq :
    case_000913_support.firstLine case_000913_seq case_000913_b = case_000913_firstLine := by
  norm_num [case_000913_firstLine, case_000913_support, case_000913_seq, case_000913_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000913_secondLine_eq :
    case_000913_support.secondLine case_000913_seq case_000913_b = case_000913_secondLine := by
  norm_num [case_000913_secondLine, case_000913_support, case_000913_seq, case_000913_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000913_sourceAgrees :
    SourceAgrees case_000913_support case_000913_rank.val case_000913_mask := by
  intro hlt
  have hrank : (⟨case_000913_rank.val, hlt⟩ : Fin numPairWords) = case_000913_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000913_rank.val, hlt⟩ case_000913_mask =
        case_000913_seq := by
    simpa [hrank] using case_000913_seqAtRank
  simp [SourceChecks, hseq, case_000913_support,
    checkTranslationConstraintSource, case_000913_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000913_rows :
    OppMinusOneVarFirstRows case_000913_support case_000913_rank.val case_000913_mask := by
  intro hlt
  have hrank : (⟨case_000913_rank.val, hlt⟩ : Fin numPairWords) = case_000913_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000913_rank.val, hlt⟩ case_000913_mask =
        case_000913_seq := by
    simpa [hrank] using case_000913_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000913_rank.val, hlt⟩ case_000913_mask =
        case_000913_b := by
    simpa [hrank] using case_000913_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000913_support case_000913_rank.val hlt
          case_000913_mask = case_000913_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000913_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000913_support case_000913_rank.val hlt
          case_000913_mask = case_000913_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000913_secondLine_eq]
  have case_000913_rowFirst :
      OppNegRow (FirstLineAt case_000913_support case_000913_rank.val hlt case_000913_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000913_firstLine, OppNegRow]
  have case_000913_fixedSecond :
      FixedRow (SecondLineAt case_000913_support case_000913_rank.val hlt case_000913_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000913_secondLine, FixedRow]
  exact ⟨case_000913_rowFirst, case_000913_fixedSecond⟩

private theorem case_000913_existsRows :
    ExistsOppMinusOneVarFirstRows case_000913_rank.val case_000913_mask :=
  ⟨case_000913_support, case_000913_sourceAgrees, case_000913_rows⟩

private theorem case_000913_covered :
    RowPropertyParametricCovered case_000913_rank.val case_000913_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000913_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000914_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000914_mask : SignMask := ⟨47, by decide⟩
private def case_000914_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000914_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000914_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000914_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (52/9) }
private def case_000914_firstLine : StrictLin2 := { a := 1, b := -1, c := (-27/5) }
private def case_000914_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000914_rankWord :
    rankPairWord? case_000914_word = some case_000914_rank := by
  decide

private theorem case_000914_unrank :
    unrankPairWord case_000914_rank = case_000914_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000914_word case_000914_rank).1
    case_000914_rankWord |>.symm

private theorem case_000914_seqChoice :
    translationChoiceSeq case_000914_word case_000914_mask = case_000914_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000914_seqAtRank :
    translationSeqAtRankMask case_000914_rank case_000914_mask = case_000914_seq := by
  rw [translationSeqAtRankMask, case_000914_unrank]
  exact case_000914_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000914_bAtRank :
    translationBAtRankMask case_000914_rank case_000914_mask = case_000914_b := by
  rw [translationBAtRankMask, case_000914_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000914_b, case_000914_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000914_firstLine_eq :
    case_000914_support.firstLine case_000914_seq case_000914_b = case_000914_firstLine := by
  norm_num [case_000914_firstLine, case_000914_support, case_000914_seq, case_000914_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000914_secondLine_eq :
    case_000914_support.secondLine case_000914_seq case_000914_b = case_000914_secondLine := by
  norm_num [case_000914_secondLine, case_000914_support, case_000914_seq, case_000914_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000914_sourceAgrees :
    SourceAgrees case_000914_support case_000914_rank.val case_000914_mask := by
  intro hlt
  have hrank : (⟨case_000914_rank.val, hlt⟩ : Fin numPairWords) = case_000914_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000914_rank.val, hlt⟩ case_000914_mask =
        case_000914_seq := by
    simpa [hrank] using case_000914_seqAtRank
  simp [SourceChecks, hseq, case_000914_support,
    checkTranslationConstraintSource, case_000914_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000914_rows :
    OppMinusOneVarFirstRows case_000914_support case_000914_rank.val case_000914_mask := by
  intro hlt
  have hrank : (⟨case_000914_rank.val, hlt⟩ : Fin numPairWords) = case_000914_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000914_rank.val, hlt⟩ case_000914_mask =
        case_000914_seq := by
    simpa [hrank] using case_000914_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000914_rank.val, hlt⟩ case_000914_mask =
        case_000914_b := by
    simpa [hrank] using case_000914_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000914_support case_000914_rank.val hlt
          case_000914_mask = case_000914_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000914_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000914_support case_000914_rank.val hlt
          case_000914_mask = case_000914_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000914_secondLine_eq]
  have case_000914_rowFirst :
      OppNegRow (FirstLineAt case_000914_support case_000914_rank.val hlt case_000914_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000914_firstLine, OppNegRow]
  have case_000914_fixedSecond :
      FixedRow (SecondLineAt case_000914_support case_000914_rank.val hlt case_000914_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000914_secondLine, FixedRow]
  exact ⟨case_000914_rowFirst, case_000914_fixedSecond⟩

private theorem case_000914_existsRows :
    ExistsOppMinusOneVarFirstRows case_000914_rank.val case_000914_mask :=
  ⟨case_000914_support, case_000914_sourceAgrees, case_000914_rows⟩

private theorem case_000914_covered :
    RowPropertyParametricCovered case_000914_rank.val case_000914_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000914_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000915_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000915_mask : SignMask := ⟨54, by decide⟩
private def case_000915_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000915_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000915_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000915_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (148/9) }
private def case_000915_firstLine : StrictLin2 := { a := (-10/19), b := (-10/19), c := (-44/57) }
private def case_000915_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000915_rankWord :
    rankPairWord? case_000915_word = some case_000915_rank := by
  decide

private theorem case_000915_unrank :
    unrankPairWord case_000915_rank = case_000915_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000915_word case_000915_rank).1
    case_000915_rankWord |>.symm

private theorem case_000915_seqChoice :
    translationChoiceSeq case_000915_word case_000915_mask = case_000915_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000915_seqAtRank :
    translationSeqAtRankMask case_000915_rank case_000915_mask = case_000915_seq := by
  rw [translationSeqAtRankMask, case_000915_unrank]
  exact case_000915_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000915_bAtRank :
    translationBAtRankMask case_000915_rank case_000915_mask = case_000915_b := by
  rw [translationBAtRankMask, case_000915_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000915_b, case_000915_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000915_firstLine_eq :
    case_000915_support.firstLine case_000915_seq case_000915_b = case_000915_firstLine := by
  norm_num [case_000915_firstLine, case_000915_support, case_000915_seq, case_000915_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000915_secondLine_eq :
    case_000915_support.secondLine case_000915_seq case_000915_b = case_000915_secondLine := by
  norm_num [case_000915_secondLine, case_000915_support, case_000915_seq, case_000915_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000915_sourceAgrees :
    SourceAgrees case_000915_support case_000915_rank.val case_000915_mask := by
  intro hlt
  have hrank : (⟨case_000915_rank.val, hlt⟩ : Fin numPairWords) = case_000915_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000915_rank.val, hlt⟩ case_000915_mask =
        case_000915_seq := by
    simpa [hrank] using case_000915_seqAtRank
  simp [SourceChecks, hseq, case_000915_support,
    checkTranslationConstraintSource, case_000915_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000915_rows :
    EqEqPosVarFirstRows case_000915_support case_000915_rank.val case_000915_mask := by
  intro hlt
  have hrank : (⟨case_000915_rank.val, hlt⟩ : Fin numPairWords) = case_000915_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000915_rank.val, hlt⟩ case_000915_mask =
        case_000915_seq := by
    simpa [hrank] using case_000915_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000915_rank.val, hlt⟩ case_000915_mask =
        case_000915_b := by
    simpa [hrank] using case_000915_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000915_support case_000915_rank.val hlt
          case_000915_mask = case_000915_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000915_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000915_support case_000915_rank.val hlt
          case_000915_mask = case_000915_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000915_secondLine_eq]
  have case_000915_rowFirst :
      EqEqPosRow (FirstLineAt case_000915_support case_000915_rank.val hlt case_000915_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000915_firstLine, EqEqPosRow]
  have case_000915_fixedSecond :
      FixedRow (SecondLineAt case_000915_support case_000915_rank.val hlt case_000915_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000915_secondLine, FixedRow]
  exact ⟨case_000915_rowFirst, case_000915_fixedSecond⟩

private theorem case_000915_existsRows :
    ExistsEqEqPosVarFirstRows case_000915_rank.val case_000915_mask :=
  ⟨case_000915_support, case_000915_sourceAgrees, case_000915_rows⟩

private theorem case_000915_covered :
    RowPropertyParametricCovered case_000915_rank.val case_000915_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000915_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000916_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000916_mask : SignMask := ⟨55, by decide⟩
private def case_000916_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000916_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000916_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000916_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (148/9) }
private def case_000916_firstLine : StrictLin2 := { a := (-10/37), b := (-10/37), c := (-152/111) }
private def case_000916_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000916_rankWord :
    rankPairWord? case_000916_word = some case_000916_rank := by
  decide

private theorem case_000916_unrank :
    unrankPairWord case_000916_rank = case_000916_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000916_word case_000916_rank).1
    case_000916_rankWord |>.symm

private theorem case_000916_seqChoice :
    translationChoiceSeq case_000916_word case_000916_mask = case_000916_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000916_seqAtRank :
    translationSeqAtRankMask case_000916_rank case_000916_mask = case_000916_seq := by
  rw [translationSeqAtRankMask, case_000916_unrank]
  exact case_000916_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000916_bAtRank :
    translationBAtRankMask case_000916_rank case_000916_mask = case_000916_b := by
  rw [translationBAtRankMask, case_000916_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000916_b, case_000916_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000916_firstLine_eq :
    case_000916_support.firstLine case_000916_seq case_000916_b = case_000916_firstLine := by
  norm_num [case_000916_firstLine, case_000916_support, case_000916_seq, case_000916_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000916_secondLine_eq :
    case_000916_support.secondLine case_000916_seq case_000916_b = case_000916_secondLine := by
  norm_num [case_000916_secondLine, case_000916_support, case_000916_seq, case_000916_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000916_sourceAgrees :
    SourceAgrees case_000916_support case_000916_rank.val case_000916_mask := by
  intro hlt
  have hrank : (⟨case_000916_rank.val, hlt⟩ : Fin numPairWords) = case_000916_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000916_rank.val, hlt⟩ case_000916_mask =
        case_000916_seq := by
    simpa [hrank] using case_000916_seqAtRank
  simp [SourceChecks, hseq, case_000916_support,
    checkTranslationConstraintSource, case_000916_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000916_rows :
    EqEqPosVarFirstRows case_000916_support case_000916_rank.val case_000916_mask := by
  intro hlt
  have hrank : (⟨case_000916_rank.val, hlt⟩ : Fin numPairWords) = case_000916_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000916_rank.val, hlt⟩ case_000916_mask =
        case_000916_seq := by
    simpa [hrank] using case_000916_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000916_rank.val, hlt⟩ case_000916_mask =
        case_000916_b := by
    simpa [hrank] using case_000916_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000916_support case_000916_rank.val hlt
          case_000916_mask = case_000916_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000916_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000916_support case_000916_rank.val hlt
          case_000916_mask = case_000916_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000916_secondLine_eq]
  have case_000916_rowFirst :
      EqEqPosRow (FirstLineAt case_000916_support case_000916_rank.val hlt case_000916_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000916_firstLine, EqEqPosRow]
  have case_000916_fixedSecond :
      FixedRow (SecondLineAt case_000916_support case_000916_rank.val hlt case_000916_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000916_secondLine, FixedRow]
  exact ⟨case_000916_rowFirst, case_000916_fixedSecond⟩

private theorem case_000916_existsRows :
    ExistsEqEqPosVarFirstRows case_000916_rank.val case_000916_mask :=
  ⟨case_000916_support, case_000916_sourceAgrees, case_000916_rows⟩

private theorem case_000916_covered :
    RowPropertyParametricCovered case_000916_rank.val case_000916_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000916_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000917_rank : Fin numPairWords := ⟨635, by decide⟩
private def case_000917_mask : SignMask := ⟨63, by decide⟩
private def case_000917_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000917_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000917_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000917_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (100/9) }
private def case_000917_firstLine : StrictLin2 := { a := (-17/25), b := (-17/25), c := (-19/5) }
private def case_000917_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000917_rankWord :
    rankPairWord? case_000917_word = some case_000917_rank := by
  decide

private theorem case_000917_unrank :
    unrankPairWord case_000917_rank = case_000917_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000917_word case_000917_rank).1
    case_000917_rankWord |>.symm

private theorem case_000917_seqChoice :
    translationChoiceSeq case_000917_word case_000917_mask = case_000917_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000917_seqAtRank :
    translationSeqAtRankMask case_000917_rank case_000917_mask = case_000917_seq := by
  rw [translationSeqAtRankMask, case_000917_unrank]
  exact case_000917_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000917_bAtRank :
    translationBAtRankMask case_000917_rank case_000917_mask = case_000917_b := by
  rw [translationBAtRankMask, case_000917_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000917_b, case_000917_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000917_firstLine_eq :
    case_000917_support.firstLine case_000917_seq case_000917_b = case_000917_firstLine := by
  norm_num [case_000917_firstLine, case_000917_support, case_000917_seq, case_000917_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000917_secondLine_eq :
    case_000917_support.secondLine case_000917_seq case_000917_b = case_000917_secondLine := by
  norm_num [case_000917_secondLine, case_000917_support, case_000917_seq, case_000917_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000917_sourceAgrees :
    SourceAgrees case_000917_support case_000917_rank.val case_000917_mask := by
  intro hlt
  have hrank : (⟨case_000917_rank.val, hlt⟩ : Fin numPairWords) = case_000917_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000917_rank.val, hlt⟩ case_000917_mask =
        case_000917_seq := by
    simpa [hrank] using case_000917_seqAtRank
  simp [SourceChecks, hseq, case_000917_support,
    checkTranslationConstraintSource, case_000917_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000917_rows :
    EqEqPosVarFirstRows case_000917_support case_000917_rank.val case_000917_mask := by
  intro hlt
  have hrank : (⟨case_000917_rank.val, hlt⟩ : Fin numPairWords) = case_000917_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000917_rank.val, hlt⟩ case_000917_mask =
        case_000917_seq := by
    simpa [hrank] using case_000917_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000917_rank.val, hlt⟩ case_000917_mask =
        case_000917_b := by
    simpa [hrank] using case_000917_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000917_support case_000917_rank.val hlt
          case_000917_mask = case_000917_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000917_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000917_support case_000917_rank.val hlt
          case_000917_mask = case_000917_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000917_secondLine_eq]
  have case_000917_rowFirst :
      EqEqPosRow (FirstLineAt case_000917_support case_000917_rank.val hlt case_000917_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000917_firstLine, EqEqPosRow]
  have case_000917_fixedSecond :
      FixedRow (SecondLineAt case_000917_support case_000917_rank.val hlt case_000917_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000917_secondLine, FixedRow]
  exact ⟨case_000917_rowFirst, case_000917_fixedSecond⟩

private theorem case_000917_existsRows :
    ExistsEqEqPosVarFirstRows case_000917_rank.val case_000917_mask :=
  ⟨case_000917_support, case_000917_sourceAgrees, case_000917_rows⟩

private theorem case_000917_covered :
    RowPropertyParametricCovered case_000917_rank.val case_000917_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000917_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000918_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000918_mask : SignMask := ⟨18, by decide⟩
private def case_000918_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000918_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000918_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000918_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (4/9) }
private def case_000918_firstLine : StrictLin2 := { a := -1, b := -1, c := (-31/17) }
private def case_000918_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000918_rankWord :
    rankPairWord? case_000918_word = some case_000918_rank := by
  decide

private theorem case_000918_unrank :
    unrankPairWord case_000918_rank = case_000918_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000918_word case_000918_rank).1
    case_000918_rankWord |>.symm

private theorem case_000918_seqChoice :
    translationChoiceSeq case_000918_word case_000918_mask = case_000918_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000918_seqAtRank :
    translationSeqAtRankMask case_000918_rank case_000918_mask = case_000918_seq := by
  rw [translationSeqAtRankMask, case_000918_unrank]
  exact case_000918_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000918_bAtRank :
    translationBAtRankMask case_000918_rank case_000918_mask = case_000918_b := by
  rw [translationBAtRankMask, case_000918_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000918_b, case_000918_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000918_firstLine_eq :
    case_000918_support.firstLine case_000918_seq case_000918_b = case_000918_firstLine := by
  norm_num [case_000918_firstLine, case_000918_support, case_000918_seq, case_000918_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000918_secondLine_eq :
    case_000918_support.secondLine case_000918_seq case_000918_b = case_000918_secondLine := by
  norm_num [case_000918_secondLine, case_000918_support, case_000918_seq, case_000918_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000918_sourceAgrees :
    SourceAgrees case_000918_support case_000918_rank.val case_000918_mask := by
  intro hlt
  have hrank : (⟨case_000918_rank.val, hlt⟩ : Fin numPairWords) = case_000918_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000918_rank.val, hlt⟩ case_000918_mask =
        case_000918_seq := by
    simpa [hrank] using case_000918_seqAtRank
  simp [SourceChecks, hseq, case_000918_support,
    checkTranslationConstraintSource, case_000918_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000918_rows :
    EqEqPosVarFirstRows case_000918_support case_000918_rank.val case_000918_mask := by
  intro hlt
  have hrank : (⟨case_000918_rank.val, hlt⟩ : Fin numPairWords) = case_000918_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000918_rank.val, hlt⟩ case_000918_mask =
        case_000918_seq := by
    simpa [hrank] using case_000918_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000918_rank.val, hlt⟩ case_000918_mask =
        case_000918_b := by
    simpa [hrank] using case_000918_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000918_support case_000918_rank.val hlt
          case_000918_mask = case_000918_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000918_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000918_support case_000918_rank.val hlt
          case_000918_mask = case_000918_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000918_secondLine_eq]
  have case_000918_rowFirst :
      EqEqPosRow (FirstLineAt case_000918_support case_000918_rank.val hlt case_000918_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000918_firstLine, EqEqPosRow]
  have case_000918_fixedSecond :
      FixedRow (SecondLineAt case_000918_support case_000918_rank.val hlt case_000918_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000918_secondLine, FixedRow]
  exact ⟨case_000918_rowFirst, case_000918_fixedSecond⟩

private theorem case_000918_existsRows :
    ExistsEqEqPosVarFirstRows case_000918_rank.val case_000918_mask :=
  ⟨case_000918_support, case_000918_sourceAgrees, case_000918_rows⟩

private theorem case_000918_covered :
    RowPropertyParametricCovered case_000918_rank.val case_000918_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000918_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000919_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000919_mask : SignMask := ⟨22, by decide⟩
private def case_000919_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000919_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000919_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000919_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000919_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000919_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000919_rankWord :
    rankPairWord? case_000919_word = some case_000919_rank := by
  decide

private theorem case_000919_unrank :
    unrankPairWord case_000919_rank = case_000919_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000919_word case_000919_rank).1
    case_000919_rankWord |>.symm

private theorem case_000919_seqChoice :
    translationChoiceSeq case_000919_word case_000919_mask = case_000919_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000919_seqAtRank :
    translationSeqAtRankMask case_000919_rank case_000919_mask = case_000919_seq := by
  rw [translationSeqAtRankMask, case_000919_unrank]
  exact case_000919_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000919_bAtRank :
    translationBAtRankMask case_000919_rank case_000919_mask = case_000919_b := by
  rw [translationBAtRankMask, case_000919_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000919_b, case_000919_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000919_firstLine_eq :
    case_000919_support.firstLine case_000919_seq case_000919_b = case_000919_firstLine := by
  norm_num [case_000919_firstLine, case_000919_support, case_000919_seq, case_000919_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000919_secondLine_eq :
    case_000919_support.secondLine case_000919_seq case_000919_b = case_000919_secondLine := by
  norm_num [case_000919_secondLine, case_000919_support, case_000919_seq, case_000919_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000919_sourceAgrees :
    SourceAgrees case_000919_support case_000919_rank.val case_000919_mask := by
  intro hlt
  have hrank : (⟨case_000919_rank.val, hlt⟩ : Fin numPairWords) = case_000919_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000919_rank.val, hlt⟩ case_000919_mask =
        case_000919_seq := by
    simpa [hrank] using case_000919_seqAtRank
  simp [SourceChecks, hseq, case_000919_support,
    checkTranslationConstraintSource, case_000919_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000919_rows :
    EqEqPosVarFirstRows case_000919_support case_000919_rank.val case_000919_mask := by
  intro hlt
  have hrank : (⟨case_000919_rank.val, hlt⟩ : Fin numPairWords) = case_000919_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000919_rank.val, hlt⟩ case_000919_mask =
        case_000919_seq := by
    simpa [hrank] using case_000919_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000919_rank.val, hlt⟩ case_000919_mask =
        case_000919_b := by
    simpa [hrank] using case_000919_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000919_support case_000919_rank.val hlt
          case_000919_mask = case_000919_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000919_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000919_support case_000919_rank.val hlt
          case_000919_mask = case_000919_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000919_secondLine_eq]
  have case_000919_rowFirst :
      EqEqPosRow (FirstLineAt case_000919_support case_000919_rank.val hlt case_000919_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000919_firstLine, EqEqPosRow]
  have case_000919_fixedSecond :
      FixedRow (SecondLineAt case_000919_support case_000919_rank.val hlt case_000919_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000919_secondLine, FixedRow]
  exact ⟨case_000919_rowFirst, case_000919_fixedSecond⟩

private theorem case_000919_existsRows :
    ExistsEqEqPosVarFirstRows case_000919_rank.val case_000919_mask :=
  ⟨case_000919_support, case_000919_sourceAgrees, case_000919_rows⟩

private theorem case_000919_covered :
    RowPropertyParametricCovered case_000919_rank.val case_000919_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000919_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000920_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000920_mask : SignMask := ⟨24, by decide⟩
private def case_000920_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000920_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000920_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000920_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-116/9) }
private def case_000920_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/29) }
private def case_000920_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000920_rankWord :
    rankPairWord? case_000920_word = some case_000920_rank := by
  decide

private theorem case_000920_unrank :
    unrankPairWord case_000920_rank = case_000920_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000920_word case_000920_rank).1
    case_000920_rankWord |>.symm

private theorem case_000920_seqChoice :
    translationChoiceSeq case_000920_word case_000920_mask = case_000920_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000920_seqAtRank :
    translationSeqAtRankMask case_000920_rank case_000920_mask = case_000920_seq := by
  rw [translationSeqAtRankMask, case_000920_unrank]
  exact case_000920_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000920_bAtRank :
    translationBAtRankMask case_000920_rank case_000920_mask = case_000920_b := by
  rw [translationBAtRankMask, case_000920_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000920_b, case_000920_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000920_firstLine_eq :
    case_000920_support.firstLine case_000920_seq case_000920_b = case_000920_firstLine := by
  norm_num [case_000920_firstLine, case_000920_support, case_000920_seq, case_000920_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000920_secondLine_eq :
    case_000920_support.secondLine case_000920_seq case_000920_b = case_000920_secondLine := by
  norm_num [case_000920_secondLine, case_000920_support, case_000920_seq, case_000920_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000920_sourceAgrees :
    SourceAgrees case_000920_support case_000920_rank.val case_000920_mask := by
  intro hlt
  have hrank : (⟨case_000920_rank.val, hlt⟩ : Fin numPairWords) = case_000920_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000920_rank.val, hlt⟩ case_000920_mask =
        case_000920_seq := by
    simpa [hrank] using case_000920_seqAtRank
  simp [SourceChecks, hseq, case_000920_support,
    checkTranslationConstraintSource, case_000920_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000920_rows :
    EqEqPosVarFirstRows case_000920_support case_000920_rank.val case_000920_mask := by
  intro hlt
  have hrank : (⟨case_000920_rank.val, hlt⟩ : Fin numPairWords) = case_000920_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000920_rank.val, hlt⟩ case_000920_mask =
        case_000920_seq := by
    simpa [hrank] using case_000920_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000920_rank.val, hlt⟩ case_000920_mask =
        case_000920_b := by
    simpa [hrank] using case_000920_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000920_support case_000920_rank.val hlt
          case_000920_mask = case_000920_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000920_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000920_support case_000920_rank.val hlt
          case_000920_mask = case_000920_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000920_secondLine_eq]
  have case_000920_rowFirst :
      EqEqPosRow (FirstLineAt case_000920_support case_000920_rank.val hlt case_000920_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000920_firstLine, EqEqPosRow]
  have case_000920_fixedSecond :
      FixedRow (SecondLineAt case_000920_support case_000920_rank.val hlt case_000920_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000920_secondLine, FixedRow]
  exact ⟨case_000920_rowFirst, case_000920_fixedSecond⟩

private theorem case_000920_existsRows :
    ExistsEqEqPosVarFirstRows case_000920_rank.val case_000920_mask :=
  ⟨case_000920_support, case_000920_sourceAgrees, case_000920_rows⟩

private theorem case_000920_covered :
    RowPropertyParametricCovered case_000920_rank.val case_000920_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000920_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000921_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000921_mask : SignMask := ⟨25, by decide⟩
private def case_000921_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000921_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000921_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000921_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-116/9) }
private def case_000921_firstLine : StrictLin2 := { a := (-29/63), b := (29/63), c := (-125/63) }
private def case_000921_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000921_rankWord :
    rankPairWord? case_000921_word = some case_000921_rank := by
  decide

private theorem case_000921_unrank :
    unrankPairWord case_000921_rank = case_000921_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000921_word case_000921_rank).1
    case_000921_rankWord |>.symm

private theorem case_000921_seqChoice :
    translationChoiceSeq case_000921_word case_000921_mask = case_000921_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000921_seqAtRank :
    translationSeqAtRankMask case_000921_rank case_000921_mask = case_000921_seq := by
  rw [translationSeqAtRankMask, case_000921_unrank]
  exact case_000921_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000921_bAtRank :
    translationBAtRankMask case_000921_rank case_000921_mask = case_000921_b := by
  rw [translationBAtRankMask, case_000921_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000921_b, case_000921_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000921_firstLine_eq :
    case_000921_support.firstLine case_000921_seq case_000921_b = case_000921_firstLine := by
  norm_num [case_000921_firstLine, case_000921_support, case_000921_seq, case_000921_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000921_secondLine_eq :
    case_000921_support.secondLine case_000921_seq case_000921_b = case_000921_secondLine := by
  norm_num [case_000921_secondLine, case_000921_support, case_000921_seq, case_000921_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000921_sourceAgrees :
    SourceAgrees case_000921_support case_000921_rank.val case_000921_mask := by
  intro hlt
  have hrank : (⟨case_000921_rank.val, hlt⟩ : Fin numPairWords) = case_000921_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000921_rank.val, hlt⟩ case_000921_mask =
        case_000921_seq := by
    simpa [hrank] using case_000921_seqAtRank
  simp [SourceChecks, hseq, case_000921_support,
    checkTranslationConstraintSource, case_000921_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000921_rows :
    OppOneMinusVarFirstRows case_000921_support case_000921_rank.val case_000921_mask := by
  intro hlt
  have hrank : (⟨case_000921_rank.val, hlt⟩ : Fin numPairWords) = case_000921_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000921_rank.val, hlt⟩ case_000921_mask =
        case_000921_seq := by
    simpa [hrank] using case_000921_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000921_rank.val, hlt⟩ case_000921_mask =
        case_000921_b := by
    simpa [hrank] using case_000921_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000921_support case_000921_rank.val hlt
          case_000921_mask = case_000921_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000921_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000921_support case_000921_rank.val hlt
          case_000921_mask = case_000921_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000921_secondLine_eq]
  have case_000921_rowFirst :
      OppPosRow (FirstLineAt case_000921_support case_000921_rank.val hlt case_000921_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000921_firstLine, OppPosRow]
  have case_000921_fixedSecond :
      FixedRow (SecondLineAt case_000921_support case_000921_rank.val hlt case_000921_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000921_secondLine, FixedRow]
  exact ⟨case_000921_rowFirst, case_000921_fixedSecond⟩

private theorem case_000921_existsRows :
    ExistsOppOneMinusVarFirstRows case_000921_rank.val case_000921_mask :=
  ⟨case_000921_support, case_000921_sourceAgrees, case_000921_rows⟩

private theorem case_000921_covered :
    RowPropertyParametricCovered case_000921_rank.val case_000921_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000921_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000922_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000922_mask : SignMask := ⟨30, by decide⟩
private def case_000922_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000922_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000922_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000922_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000922_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000922_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000922_rankWord :
    rankPairWord? case_000922_word = some case_000922_rank := by
  decide

private theorem case_000922_unrank :
    unrankPairWord case_000922_rank = case_000922_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000922_word case_000922_rank).1
    case_000922_rankWord |>.symm

private theorem case_000922_seqChoice :
    translationChoiceSeq case_000922_word case_000922_mask = case_000922_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000922_seqAtRank :
    translationSeqAtRankMask case_000922_rank case_000922_mask = case_000922_seq := by
  rw [translationSeqAtRankMask, case_000922_unrank]
  exact case_000922_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000922_bAtRank :
    translationBAtRankMask case_000922_rank case_000922_mask = case_000922_b := by
  rw [translationBAtRankMask, case_000922_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000922_b, case_000922_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000922_firstLine_eq :
    case_000922_support.firstLine case_000922_seq case_000922_b = case_000922_firstLine := by
  norm_num [case_000922_firstLine, case_000922_support, case_000922_seq, case_000922_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000922_secondLine_eq :
    case_000922_support.secondLine case_000922_seq case_000922_b = case_000922_secondLine := by
  norm_num [case_000922_secondLine, case_000922_support, case_000922_seq, case_000922_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000922_sourceAgrees :
    SourceAgrees case_000922_support case_000922_rank.val case_000922_mask := by
  intro hlt
  have hrank : (⟨case_000922_rank.val, hlt⟩ : Fin numPairWords) = case_000922_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000922_rank.val, hlt⟩ case_000922_mask =
        case_000922_seq := by
    simpa [hrank] using case_000922_seqAtRank
  simp [SourceChecks, hseq, case_000922_support,
    checkTranslationConstraintSource, case_000922_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000922_rows :
    EqEqPosVarFirstRows case_000922_support case_000922_rank.val case_000922_mask := by
  intro hlt
  have hrank : (⟨case_000922_rank.val, hlt⟩ : Fin numPairWords) = case_000922_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000922_rank.val, hlt⟩ case_000922_mask =
        case_000922_seq := by
    simpa [hrank] using case_000922_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000922_rank.val, hlt⟩ case_000922_mask =
        case_000922_b := by
    simpa [hrank] using case_000922_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000922_support case_000922_rank.val hlt
          case_000922_mask = case_000922_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000922_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000922_support case_000922_rank.val hlt
          case_000922_mask = case_000922_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000922_secondLine_eq]
  have case_000922_rowFirst :
      EqEqPosRow (FirstLineAt case_000922_support case_000922_rank.val hlt case_000922_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000922_firstLine, EqEqPosRow]
  have case_000922_fixedSecond :
      FixedRow (SecondLineAt case_000922_support case_000922_rank.val hlt case_000922_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000922_secondLine, FixedRow]
  exact ⟨case_000922_rowFirst, case_000922_fixedSecond⟩

private theorem case_000922_existsRows :
    ExistsEqEqPosVarFirstRows case_000922_rank.val case_000922_mask :=
  ⟨case_000922_support, case_000922_sourceAgrees, case_000922_rows⟩

private theorem case_000922_covered :
    RowPropertyParametricCovered case_000922_rank.val case_000922_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000922_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000923_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000923_mask : SignMask := ⟨31, by decide⟩
private def case_000923_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000923_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000923_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000923_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000923_firstLine : StrictLin2 := { a := (-11/5), b := (-11/5), c := (-161/15) }
private def case_000923_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000923_rankWord :
    rankPairWord? case_000923_word = some case_000923_rank := by
  decide

private theorem case_000923_unrank :
    unrankPairWord case_000923_rank = case_000923_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000923_word case_000923_rank).1
    case_000923_rankWord |>.symm

private theorem case_000923_seqChoice :
    translationChoiceSeq case_000923_word case_000923_mask = case_000923_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000923_seqAtRank :
    translationSeqAtRankMask case_000923_rank case_000923_mask = case_000923_seq := by
  rw [translationSeqAtRankMask, case_000923_unrank]
  exact case_000923_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000923_bAtRank :
    translationBAtRankMask case_000923_rank case_000923_mask = case_000923_b := by
  rw [translationBAtRankMask, case_000923_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000923_b, case_000923_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000923_firstLine_eq :
    case_000923_support.firstLine case_000923_seq case_000923_b = case_000923_firstLine := by
  norm_num [case_000923_firstLine, case_000923_support, case_000923_seq, case_000923_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000923_secondLine_eq :
    case_000923_support.secondLine case_000923_seq case_000923_b = case_000923_secondLine := by
  norm_num [case_000923_secondLine, case_000923_support, case_000923_seq, case_000923_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000923_sourceAgrees :
    SourceAgrees case_000923_support case_000923_rank.val case_000923_mask := by
  intro hlt
  have hrank : (⟨case_000923_rank.val, hlt⟩ : Fin numPairWords) = case_000923_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000923_rank.val, hlt⟩ case_000923_mask =
        case_000923_seq := by
    simpa [hrank] using case_000923_seqAtRank
  simp [SourceChecks, hseq, case_000923_support,
    checkTranslationConstraintSource, case_000923_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000923_rows :
    EqEqPosVarFirstRows case_000923_support case_000923_rank.val case_000923_mask := by
  intro hlt
  have hrank : (⟨case_000923_rank.val, hlt⟩ : Fin numPairWords) = case_000923_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000923_rank.val, hlt⟩ case_000923_mask =
        case_000923_seq := by
    simpa [hrank] using case_000923_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000923_rank.val, hlt⟩ case_000923_mask =
        case_000923_b := by
    simpa [hrank] using case_000923_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000923_support case_000923_rank.val hlt
          case_000923_mask = case_000923_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000923_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000923_support case_000923_rank.val hlt
          case_000923_mask = case_000923_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000923_secondLine_eq]
  have case_000923_rowFirst :
      EqEqPosRow (FirstLineAt case_000923_support case_000923_rank.val hlt case_000923_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000923_firstLine, EqEqPosRow]
  have case_000923_fixedSecond :
      FixedRow (SecondLineAt case_000923_support case_000923_rank.val hlt case_000923_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000923_secondLine, FixedRow]
  exact ⟨case_000923_rowFirst, case_000923_fixedSecond⟩

private theorem case_000923_existsRows :
    ExistsEqEqPosVarFirstRows case_000923_rank.val case_000923_mask :=
  ⟨case_000923_support, case_000923_sourceAgrees, case_000923_rows⟩

private theorem case_000923_covered :
    RowPropertyParametricCovered case_000923_rank.val case_000923_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000923_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000924_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000924_mask : SignMask := ⟨45, by decide⟩
private def case_000924_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000924_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000924_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000924_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-4/9) }
private def case_000924_firstLine : StrictLin2 := { a := 1, b := -1, c := -51 }
private def case_000924_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000924_rankWord :
    rankPairWord? case_000924_word = some case_000924_rank := by
  decide

private theorem case_000924_unrank :
    unrankPairWord case_000924_rank = case_000924_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000924_word case_000924_rank).1
    case_000924_rankWord |>.symm

private theorem case_000924_seqChoice :
    translationChoiceSeq case_000924_word case_000924_mask = case_000924_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000924_seqAtRank :
    translationSeqAtRankMask case_000924_rank case_000924_mask = case_000924_seq := by
  rw [translationSeqAtRankMask, case_000924_unrank]
  exact case_000924_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000924_bAtRank :
    translationBAtRankMask case_000924_rank case_000924_mask = case_000924_b := by
  rw [translationBAtRankMask, case_000924_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000924_b, case_000924_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000924_firstLine_eq :
    case_000924_support.firstLine case_000924_seq case_000924_b = case_000924_firstLine := by
  norm_num [case_000924_firstLine, case_000924_support, case_000924_seq, case_000924_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000924_secondLine_eq :
    case_000924_support.secondLine case_000924_seq case_000924_b = case_000924_secondLine := by
  norm_num [case_000924_secondLine, case_000924_support, case_000924_seq, case_000924_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000924_sourceAgrees :
    SourceAgrees case_000924_support case_000924_rank.val case_000924_mask := by
  intro hlt
  have hrank : (⟨case_000924_rank.val, hlt⟩ : Fin numPairWords) = case_000924_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000924_rank.val, hlt⟩ case_000924_mask =
        case_000924_seq := by
    simpa [hrank] using case_000924_seqAtRank
  simp [SourceChecks, hseq, case_000924_support,
    checkTranslationConstraintSource, case_000924_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000924_rows :
    OppMinusOneVarFirstRows case_000924_support case_000924_rank.val case_000924_mask := by
  intro hlt
  have hrank : (⟨case_000924_rank.val, hlt⟩ : Fin numPairWords) = case_000924_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000924_rank.val, hlt⟩ case_000924_mask =
        case_000924_seq := by
    simpa [hrank] using case_000924_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000924_rank.val, hlt⟩ case_000924_mask =
        case_000924_b := by
    simpa [hrank] using case_000924_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000924_support case_000924_rank.val hlt
          case_000924_mask = case_000924_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000924_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000924_support case_000924_rank.val hlt
          case_000924_mask = case_000924_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000924_secondLine_eq]
  have case_000924_rowFirst :
      OppNegRow (FirstLineAt case_000924_support case_000924_rank.val hlt case_000924_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000924_firstLine, OppNegRow]
  have case_000924_fixedSecond :
      FixedRow (SecondLineAt case_000924_support case_000924_rank.val hlt case_000924_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000924_secondLine, FixedRow]
  exact ⟨case_000924_rowFirst, case_000924_fixedSecond⟩

private theorem case_000924_existsRows :
    ExistsOppMinusOneVarFirstRows case_000924_rank.val case_000924_mask :=
  ⟨case_000924_support, case_000924_sourceAgrees, case_000924_rows⟩

private theorem case_000924_covered :
    RowPropertyParametricCovered case_000924_rank.val case_000924_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000924_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000925_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000925_mask : SignMask := ⟨47, by decide⟩
private def case_000925_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000925_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000925_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000925_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (68/9) }
private def case_000925_firstLine : StrictLin2 := { a := 1, b := -1, c := -15 }
private def case_000925_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000925_rankWord :
    rankPairWord? case_000925_word = some case_000925_rank := by
  decide

private theorem case_000925_unrank :
    unrankPairWord case_000925_rank = case_000925_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000925_word case_000925_rank).1
    case_000925_rankWord |>.symm

private theorem case_000925_seqChoice :
    translationChoiceSeq case_000925_word case_000925_mask = case_000925_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000925_seqAtRank :
    translationSeqAtRankMask case_000925_rank case_000925_mask = case_000925_seq := by
  rw [translationSeqAtRankMask, case_000925_unrank]
  exact case_000925_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000925_bAtRank :
    translationBAtRankMask case_000925_rank case_000925_mask = case_000925_b := by
  rw [translationBAtRankMask, case_000925_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000925_b, case_000925_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000925_firstLine_eq :
    case_000925_support.firstLine case_000925_seq case_000925_b = case_000925_firstLine := by
  norm_num [case_000925_firstLine, case_000925_support, case_000925_seq, case_000925_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000925_secondLine_eq :
    case_000925_support.secondLine case_000925_seq case_000925_b = case_000925_secondLine := by
  norm_num [case_000925_secondLine, case_000925_support, case_000925_seq, case_000925_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000925_sourceAgrees :
    SourceAgrees case_000925_support case_000925_rank.val case_000925_mask := by
  intro hlt
  have hrank : (⟨case_000925_rank.val, hlt⟩ : Fin numPairWords) = case_000925_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000925_rank.val, hlt⟩ case_000925_mask =
        case_000925_seq := by
    simpa [hrank] using case_000925_seqAtRank
  simp [SourceChecks, hseq, case_000925_support,
    checkTranslationConstraintSource, case_000925_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000925_rows :
    OppMinusOneVarFirstRows case_000925_support case_000925_rank.val case_000925_mask := by
  intro hlt
  have hrank : (⟨case_000925_rank.val, hlt⟩ : Fin numPairWords) = case_000925_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000925_rank.val, hlt⟩ case_000925_mask =
        case_000925_seq := by
    simpa [hrank] using case_000925_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000925_rank.val, hlt⟩ case_000925_mask =
        case_000925_b := by
    simpa [hrank] using case_000925_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000925_support case_000925_rank.val hlt
          case_000925_mask = case_000925_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000925_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000925_support case_000925_rank.val hlt
          case_000925_mask = case_000925_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000925_secondLine_eq]
  have case_000925_rowFirst :
      OppNegRow (FirstLineAt case_000925_support case_000925_rank.val hlt case_000925_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000925_firstLine, OppNegRow]
  have case_000925_fixedSecond :
      FixedRow (SecondLineAt case_000925_support case_000925_rank.val hlt case_000925_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000925_secondLine, FixedRow]
  exact ⟨case_000925_rowFirst, case_000925_fixedSecond⟩

private theorem case_000925_existsRows :
    ExistsOppMinusOneVarFirstRows case_000925_rank.val case_000925_mask :=
  ⟨case_000925_support, case_000925_sourceAgrees, case_000925_rows⟩

private theorem case_000925_covered :
    RowPropertyParametricCovered case_000925_rank.val case_000925_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000925_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000926_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000926_mask : SignMask := ⟨54, by decide⟩
private def case_000926_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000926_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000926_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000926_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000926_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000926_secondLine : StrictLin2 := { a := (-27/638), b := (27/638), c := (-12/29) }

private theorem case_000926_rankWord :
    rankPairWord? case_000926_word = some case_000926_rank := by
  decide

private theorem case_000926_unrank :
    unrankPairWord case_000926_rank = case_000926_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000926_word case_000926_rank).1
    case_000926_rankWord |>.symm

private theorem case_000926_seqChoice :
    translationChoiceSeq case_000926_word case_000926_mask = case_000926_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000926_seqAtRank :
    translationSeqAtRankMask case_000926_rank case_000926_mask = case_000926_seq := by
  rw [translationSeqAtRankMask, case_000926_unrank]
  exact case_000926_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000926_bAtRank :
    translationBAtRankMask case_000926_rank case_000926_mask = case_000926_b := by
  rw [translationBAtRankMask, case_000926_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000926_b, case_000926_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000926_firstLine_eq :
    case_000926_support.firstLine case_000926_seq case_000926_b = case_000926_firstLine := by
  norm_num [case_000926_firstLine, case_000926_support, case_000926_seq, case_000926_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000926_secondLine_eq :
    case_000926_support.secondLine case_000926_seq case_000926_b = case_000926_secondLine := by
  norm_num [case_000926_secondLine, case_000926_support, case_000926_seq, case_000926_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000926_sourceAgrees :
    SourceAgrees case_000926_support case_000926_rank.val case_000926_mask := by
  intro hlt
  have hrank : (⟨case_000926_rank.val, hlt⟩ : Fin numPairWords) = case_000926_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000926_rank.val, hlt⟩ case_000926_mask =
        case_000926_seq := by
    simpa [hrank] using case_000926_seqAtRank
  simp [SourceChecks, hseq, case_000926_support,
    checkTranslationConstraintSource, case_000926_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000926_rows :
    OppOneMinusVarSecondRows case_000926_support case_000926_rank.val case_000926_mask := by
  intro hlt
  have hrank : (⟨case_000926_rank.val, hlt⟩ : Fin numPairWords) = case_000926_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000926_rank.val, hlt⟩ case_000926_mask =
        case_000926_seq := by
    simpa [hrank] using case_000926_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000926_rank.val, hlt⟩ case_000926_mask =
        case_000926_b := by
    simpa [hrank] using case_000926_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000926_support case_000926_rank.val hlt
          case_000926_mask = case_000926_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000926_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000926_support case_000926_rank.val hlt
          case_000926_mask = case_000926_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000926_secondLine_eq]
  have case_000926_fixedFirst :
      FixedRow (FirstLineAt case_000926_support case_000926_rank.val hlt case_000926_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000926_firstLine, FixedRow]
  have case_000926_rowSecond :
      OppPosRow (SecondLineAt case_000926_support case_000926_rank.val hlt case_000926_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000926_secondLine, OppPosRow]
  exact ⟨case_000926_fixedFirst, case_000926_rowSecond⟩

private theorem case_000926_existsRows :
    ExistsOppOneMinusVarSecondRows case_000926_rank.val case_000926_mask :=
  ⟨case_000926_support, case_000926_sourceAgrees, case_000926_rows⟩

private theorem case_000926_covered :
    RowPropertyParametricCovered case_000926_rank.val case_000926_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000926_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000927_rank : Fin numPairWords := ⟨639, by decide⟩
private def case_000927_mask : SignMask := ⟨55, by decide⟩
private def case_000927_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000927_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000927_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000927_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000927_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000927_secondLine : StrictLin2 := { a := (-27/230), b := (27/230), c := (-87/115) }

private theorem case_000927_rankWord :
    rankPairWord? case_000927_word = some case_000927_rank := by
  decide

private theorem case_000927_unrank :
    unrankPairWord case_000927_rank = case_000927_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000927_word case_000927_rank).1
    case_000927_rankWord |>.symm

private theorem case_000927_seqChoice :
    translationChoiceSeq case_000927_word case_000927_mask = case_000927_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000927_seqAtRank :
    translationSeqAtRankMask case_000927_rank case_000927_mask = case_000927_seq := by
  rw [translationSeqAtRankMask, case_000927_unrank]
  exact case_000927_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000927_bAtRank :
    translationBAtRankMask case_000927_rank case_000927_mask = case_000927_b := by
  rw [translationBAtRankMask, case_000927_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000927_b, case_000927_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000927_firstLine_eq :
    case_000927_support.firstLine case_000927_seq case_000927_b = case_000927_firstLine := by
  norm_num [case_000927_firstLine, case_000927_support, case_000927_seq, case_000927_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000927_secondLine_eq :
    case_000927_support.secondLine case_000927_seq case_000927_b = case_000927_secondLine := by
  norm_num [case_000927_secondLine, case_000927_support, case_000927_seq, case_000927_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000927_sourceAgrees :
    SourceAgrees case_000927_support case_000927_rank.val case_000927_mask := by
  intro hlt
  have hrank : (⟨case_000927_rank.val, hlt⟩ : Fin numPairWords) = case_000927_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000927_rank.val, hlt⟩ case_000927_mask =
        case_000927_seq := by
    simpa [hrank] using case_000927_seqAtRank
  simp [SourceChecks, hseq, case_000927_support,
    checkTranslationConstraintSource, case_000927_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000927_rows :
    OppOneMinusVarSecondRows case_000927_support case_000927_rank.val case_000927_mask := by
  intro hlt
  have hrank : (⟨case_000927_rank.val, hlt⟩ : Fin numPairWords) = case_000927_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000927_rank.val, hlt⟩ case_000927_mask =
        case_000927_seq := by
    simpa [hrank] using case_000927_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000927_rank.val, hlt⟩ case_000927_mask =
        case_000927_b := by
    simpa [hrank] using case_000927_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000927_support case_000927_rank.val hlt
          case_000927_mask = case_000927_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000927_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000927_support case_000927_rank.val hlt
          case_000927_mask = case_000927_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000927_secondLine_eq]
  have case_000927_fixedFirst :
      FixedRow (FirstLineAt case_000927_support case_000927_rank.val hlt case_000927_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000927_firstLine, FixedRow]
  have case_000927_rowSecond :
      OppPosRow (SecondLineAt case_000927_support case_000927_rank.val hlt case_000927_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000927_secondLine, OppPosRow]
  exact ⟨case_000927_fixedFirst, case_000927_rowSecond⟩

private theorem case_000927_existsRows :
    ExistsOppOneMinusVarSecondRows case_000927_rank.val case_000927_mask :=
  ⟨case_000927_support, case_000927_sourceAgrees, case_000927_rows⟩

private theorem case_000927_covered :
    RowPropertyParametricCovered case_000927_rank.val case_000927_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000927_existsRows

inductive Group028Covered : Nat -> SignMask -> Prop
  | case_000896 : Group028Covered case_000896_rank.val case_000896_mask
  | case_000897 : Group028Covered case_000897_rank.val case_000897_mask
  | case_000898 : Group028Covered case_000898_rank.val case_000898_mask
  | case_000899 : Group028Covered case_000899_rank.val case_000899_mask
  | case_000900 : Group028Covered case_000900_rank.val case_000900_mask
  | case_000901 : Group028Covered case_000901_rank.val case_000901_mask
  | case_000902 : Group028Covered case_000902_rank.val case_000902_mask
  | case_000903 : Group028Covered case_000903_rank.val case_000903_mask
  | case_000904 : Group028Covered case_000904_rank.val case_000904_mask
  | case_000905 : Group028Covered case_000905_rank.val case_000905_mask
  | case_000906 : Group028Covered case_000906_rank.val case_000906_mask
  | case_000907 : Group028Covered case_000907_rank.val case_000907_mask
  | case_000908 : Group028Covered case_000908_rank.val case_000908_mask
  | case_000909 : Group028Covered case_000909_rank.val case_000909_mask
  | case_000910 : Group028Covered case_000910_rank.val case_000910_mask
  | case_000911 : Group028Covered case_000911_rank.val case_000911_mask
  | case_000912 : Group028Covered case_000912_rank.val case_000912_mask
  | case_000913 : Group028Covered case_000913_rank.val case_000913_mask
  | case_000914 : Group028Covered case_000914_rank.val case_000914_mask
  | case_000915 : Group028Covered case_000915_rank.val case_000915_mask
  | case_000916 : Group028Covered case_000916_rank.val case_000916_mask
  | case_000917 : Group028Covered case_000917_rank.val case_000917_mask
  | case_000918 : Group028Covered case_000918_rank.val case_000918_mask
  | case_000919 : Group028Covered case_000919_rank.val case_000919_mask
  | case_000920 : Group028Covered case_000920_rank.val case_000920_mask
  | case_000921 : Group028Covered case_000921_rank.val case_000921_mask
  | case_000922 : Group028Covered case_000922_rank.val case_000922_mask
  | case_000923 : Group028Covered case_000923_rank.val case_000923_mask
  | case_000924 : Group028Covered case_000924_rank.val case_000924_mask
  | case_000925 : Group028Covered case_000925_rank.val case_000925_mask
  | case_000926 : Group028Covered case_000926_rank.val case_000926_mask
  | case_000927 : Group028Covered case_000927_rank.val case_000927_mask

theorem Group028GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group028Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000896 =>
      exact RowPropertyParametricCovered.kills case_000896_covered
  | case_000897 =>
      exact RowPropertyParametricCovered.kills case_000897_covered
  | case_000898 =>
      exact RowPropertyParametricCovered.kills case_000898_covered
  | case_000899 =>
      exact RowPropertyParametricCovered.kills case_000899_covered
  | case_000900 =>
      exact RowPropertyParametricCovered.kills case_000900_covered
  | case_000901 =>
      exact RowPropertyParametricCovered.kills case_000901_covered
  | case_000902 =>
      exact RowPropertyParametricCovered.kills case_000902_covered
  | case_000903 =>
      exact RowPropertyParametricCovered.kills case_000903_covered
  | case_000904 =>
      exact RowPropertyParametricCovered.kills case_000904_covered
  | case_000905 =>
      exact RowPropertyParametricCovered.kills case_000905_covered
  | case_000906 =>
      exact RowPropertyParametricCovered.kills case_000906_covered
  | case_000907 =>
      exact RowPropertyParametricCovered.kills case_000907_covered
  | case_000908 =>
      exact RowPropertyParametricCovered.kills case_000908_covered
  | case_000909 =>
      exact RowPropertyParametricCovered.kills case_000909_covered
  | case_000910 =>
      exact RowPropertyParametricCovered.kills case_000910_covered
  | case_000911 =>
      exact RowPropertyParametricCovered.kills case_000911_covered
  | case_000912 =>
      exact RowPropertyParametricCovered.kills case_000912_covered
  | case_000913 =>
      exact RowPropertyParametricCovered.kills case_000913_covered
  | case_000914 =>
      exact RowPropertyParametricCovered.kills case_000914_covered
  | case_000915 =>
      exact RowPropertyParametricCovered.kills case_000915_covered
  | case_000916 =>
      exact RowPropertyParametricCovered.kills case_000916_covered
  | case_000917 =>
      exact RowPropertyParametricCovered.kills case_000917_covered
  | case_000918 =>
      exact RowPropertyParametricCovered.kills case_000918_covered
  | case_000919 =>
      exact RowPropertyParametricCovered.kills case_000919_covered
  | case_000920 =>
      exact RowPropertyParametricCovered.kills case_000920_covered
  | case_000921 =>
      exact RowPropertyParametricCovered.kills case_000921_covered
  | case_000922 =>
      exact RowPropertyParametricCovered.kills case_000922_covered
  | case_000923 =>
      exact RowPropertyParametricCovered.kills case_000923_covered
  | case_000924 =>
      exact RowPropertyParametricCovered.kills case_000924_covered
  | case_000925 =>
      exact RowPropertyParametricCovered.kills case_000925_covered
  | case_000926 =>
      exact RowPropertyParametricCovered.kills case_000926_covered
  | case_000927 =>
      exact RowPropertyParametricCovered.kills case_000927_covered

theorem Group028_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group028
