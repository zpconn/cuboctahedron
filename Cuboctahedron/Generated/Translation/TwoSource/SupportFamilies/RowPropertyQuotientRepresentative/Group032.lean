import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group032

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
private def case_001024_rank : Fin numPairWords := ⟨798, by decide⟩
private def case_001024_mask : SignMask := ⟨24, by decide⟩
private def case_001024_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001024_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001024_b : Vec3 Rat := { x := (-268/27), y := (-236/27), z := (-172/27) }
private def case_001024_firstLine : StrictLin2 := { a := -1, b := -1, c := (-137/67) }
private def case_001024_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001024_rankWord :
    rankPairWord? case_001024_word = some case_001024_rank := by
  decide

private theorem case_001024_unrank :
    unrankPairWord case_001024_rank = case_001024_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001024_word case_001024_rank).1
    case_001024_rankWord |>.symm

private theorem case_001024_seqChoice :
    translationChoiceSeq case_001024_word case_001024_mask = case_001024_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001024_seqAtRank :
    translationSeqAtRankMask case_001024_rank case_001024_mask = case_001024_seq := by
  rw [translationSeqAtRankMask, case_001024_unrank]
  exact case_001024_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001024_bAtRank :
    translationBAtRankMask case_001024_rank case_001024_mask = case_001024_b := by
  rw [translationBAtRankMask, case_001024_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001024_b, case_001024_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001024_firstLine_eq :
    case_001024_support.firstLine case_001024_seq case_001024_b = case_001024_firstLine := by
  norm_num [case_001024_firstLine, case_001024_support, case_001024_seq, case_001024_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001024_secondLine_eq :
    case_001024_support.secondLine case_001024_seq case_001024_b = case_001024_secondLine := by
  norm_num [case_001024_secondLine, case_001024_support, case_001024_seq, case_001024_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001024_sourceAgrees :
    SourceAgrees case_001024_support case_001024_rank.val case_001024_mask := by
  intro hlt
  have hrank : (⟨case_001024_rank.val, hlt⟩ : Fin numPairWords) = case_001024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001024_rank.val, hlt⟩ case_001024_mask =
        case_001024_seq := by
    simpa [hrank] using case_001024_seqAtRank
  simp [SourceChecks, hseq, case_001024_support,
    checkTranslationConstraintSource, case_001024_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001024_rows :
    EqEqPosVarFirstRows case_001024_support case_001024_rank.val case_001024_mask := by
  intro hlt
  have hrank : (⟨case_001024_rank.val, hlt⟩ : Fin numPairWords) = case_001024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001024_rank.val, hlt⟩ case_001024_mask =
        case_001024_seq := by
    simpa [hrank] using case_001024_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001024_rank.val, hlt⟩ case_001024_mask =
        case_001024_b := by
    simpa [hrank] using case_001024_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001024_support case_001024_rank.val hlt
          case_001024_mask = case_001024_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001024_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001024_support case_001024_rank.val hlt
          case_001024_mask = case_001024_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001024_secondLine_eq]
  have case_001024_rowFirst :
      EqEqPosRow (FirstLineAt case_001024_support case_001024_rank.val hlt case_001024_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001024_firstLine, EqEqPosRow]
  have case_001024_fixedSecond :
      FixedRow (SecondLineAt case_001024_support case_001024_rank.val hlt case_001024_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001024_secondLine, FixedRow]
  exact ⟨case_001024_rowFirst, case_001024_fixedSecond⟩

private theorem case_001024_existsRows :
    ExistsEqEqPosVarFirstRows case_001024_rank.val case_001024_mask :=
  ⟨case_001024_support, case_001024_sourceAgrees, case_001024_rows⟩

private theorem case_001024_covered :
    RowPropertyParametricCovered case_001024_rank.val case_001024_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001024_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001025_rank : Fin numPairWords := ⟨798, by decide⟩
private def case_001025_mask : SignMask := ⟨31, by decide⟩
private def case_001025_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001025_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001025_b : Vec3 Rat := { x := (-316/27), y := (28/27), z := (284/27) }
private def case_001025_firstLine : StrictLin2 := { a := (-79/15), b := (79/15), c := (-67/3) }
private def case_001025_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001025_rankWord :
    rankPairWord? case_001025_word = some case_001025_rank := by
  decide

private theorem case_001025_unrank :
    unrankPairWord case_001025_rank = case_001025_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001025_word case_001025_rank).1
    case_001025_rankWord |>.symm

private theorem case_001025_seqChoice :
    translationChoiceSeq case_001025_word case_001025_mask = case_001025_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001025_seqAtRank :
    translationSeqAtRankMask case_001025_rank case_001025_mask = case_001025_seq := by
  rw [translationSeqAtRankMask, case_001025_unrank]
  exact case_001025_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001025_bAtRank :
    translationBAtRankMask case_001025_rank case_001025_mask = case_001025_b := by
  rw [translationBAtRankMask, case_001025_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001025_b, case_001025_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001025_firstLine_eq :
    case_001025_support.firstLine case_001025_seq case_001025_b = case_001025_firstLine := by
  norm_num [case_001025_firstLine, case_001025_support, case_001025_seq, case_001025_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001025_secondLine_eq :
    case_001025_support.secondLine case_001025_seq case_001025_b = case_001025_secondLine := by
  norm_num [case_001025_secondLine, case_001025_support, case_001025_seq, case_001025_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001025_sourceAgrees :
    SourceAgrees case_001025_support case_001025_rank.val case_001025_mask := by
  intro hlt
  have hrank : (⟨case_001025_rank.val, hlt⟩ : Fin numPairWords) = case_001025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001025_rank.val, hlt⟩ case_001025_mask =
        case_001025_seq := by
    simpa [hrank] using case_001025_seqAtRank
  simp [SourceChecks, hseq, case_001025_support,
    checkTranslationConstraintSource, case_001025_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001025_rows :
    OppOneMinusVarFirstRows case_001025_support case_001025_rank.val case_001025_mask := by
  intro hlt
  have hrank : (⟨case_001025_rank.val, hlt⟩ : Fin numPairWords) = case_001025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001025_rank.val, hlt⟩ case_001025_mask =
        case_001025_seq := by
    simpa [hrank] using case_001025_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001025_rank.val, hlt⟩ case_001025_mask =
        case_001025_b := by
    simpa [hrank] using case_001025_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001025_support case_001025_rank.val hlt
          case_001025_mask = case_001025_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001025_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001025_support case_001025_rank.val hlt
          case_001025_mask = case_001025_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001025_secondLine_eq]
  have case_001025_rowFirst :
      OppPosRow (FirstLineAt case_001025_support case_001025_rank.val hlt case_001025_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001025_firstLine, OppPosRow]
  have case_001025_fixedSecond :
      FixedRow (SecondLineAt case_001025_support case_001025_rank.val hlt case_001025_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001025_secondLine, FixedRow]
  exact ⟨case_001025_rowFirst, case_001025_fixedSecond⟩

private theorem case_001025_existsRows :
    ExistsOppOneMinusVarFirstRows case_001025_rank.val case_001025_mask :=
  ⟨case_001025_support, case_001025_sourceAgrees, case_001025_rows⟩

private theorem case_001025_covered :
    RowPropertyParametricCovered case_001025_rank.val case_001025_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001025_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001026_rank : Fin numPairWords := ⟨798, by decide⟩
private def case_001026_mask : SignMask := ⟨41, by decide⟩
private def case_001026_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001026_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001026_b : Vec3 Rat := { x := (-44/27), y := (332/27), z := (-428/27) }
private def case_001026_firstLine : StrictLin2 := { a := -1, b := -1, c := (-37/11) }
private def case_001026_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001026_rankWord :
    rankPairWord? case_001026_word = some case_001026_rank := by
  decide

private theorem case_001026_unrank :
    unrankPairWord case_001026_rank = case_001026_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001026_word case_001026_rank).1
    case_001026_rankWord |>.symm

private theorem case_001026_seqChoice :
    translationChoiceSeq case_001026_word case_001026_mask = case_001026_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001026_seqAtRank :
    translationSeqAtRankMask case_001026_rank case_001026_mask = case_001026_seq := by
  rw [translationSeqAtRankMask, case_001026_unrank]
  exact case_001026_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001026_bAtRank :
    translationBAtRankMask case_001026_rank case_001026_mask = case_001026_b := by
  rw [translationBAtRankMask, case_001026_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001026_b, case_001026_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001026_firstLine_eq :
    case_001026_support.firstLine case_001026_seq case_001026_b = case_001026_firstLine := by
  norm_num [case_001026_firstLine, case_001026_support, case_001026_seq, case_001026_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001026_secondLine_eq :
    case_001026_support.secondLine case_001026_seq case_001026_b = case_001026_secondLine := by
  norm_num [case_001026_secondLine, case_001026_support, case_001026_seq, case_001026_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001026_sourceAgrees :
    SourceAgrees case_001026_support case_001026_rank.val case_001026_mask := by
  intro hlt
  have hrank : (⟨case_001026_rank.val, hlt⟩ : Fin numPairWords) = case_001026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001026_rank.val, hlt⟩ case_001026_mask =
        case_001026_seq := by
    simpa [hrank] using case_001026_seqAtRank
  simp [SourceChecks, hseq, case_001026_support,
    checkTranslationConstraintSource, case_001026_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001026_rows :
    EqEqPosVarFirstRows case_001026_support case_001026_rank.val case_001026_mask := by
  intro hlt
  have hrank : (⟨case_001026_rank.val, hlt⟩ : Fin numPairWords) = case_001026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001026_rank.val, hlt⟩ case_001026_mask =
        case_001026_seq := by
    simpa [hrank] using case_001026_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001026_rank.val, hlt⟩ case_001026_mask =
        case_001026_b := by
    simpa [hrank] using case_001026_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001026_support case_001026_rank.val hlt
          case_001026_mask = case_001026_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001026_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001026_support case_001026_rank.val hlt
          case_001026_mask = case_001026_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001026_secondLine_eq]
  have case_001026_rowFirst :
      EqEqPosRow (FirstLineAt case_001026_support case_001026_rank.val hlt case_001026_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001026_firstLine, EqEqPosRow]
  have case_001026_fixedSecond :
      FixedRow (SecondLineAt case_001026_support case_001026_rank.val hlt case_001026_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001026_secondLine, FixedRow]
  exact ⟨case_001026_rowFirst, case_001026_fixedSecond⟩

private theorem case_001026_existsRows :
    ExistsEqEqPosVarFirstRows case_001026_rank.val case_001026_mask :=
  ⟨case_001026_support, case_001026_sourceAgrees, case_001026_rows⟩

private theorem case_001026_covered :
    RowPropertyParametricCovered case_001026_rank.val case_001026_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001026_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001027_rank : Fin numPairWords := ⟨798, by decide⟩
private def case_001027_mask : SignMask := ⟨47, by decide⟩
private def case_001027_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001027_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001027_b : Vec3 Rat := { x := (-92/27), y := (380/27), z := (28/27) }
private def case_001027_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001027_secondLine : StrictLin2 := { a := (207/4810), b := (-207/4810), c := (-84/481) }

private theorem case_001027_rankWord :
    rankPairWord? case_001027_word = some case_001027_rank := by
  decide

private theorem case_001027_unrank :
    unrankPairWord case_001027_rank = case_001027_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001027_word case_001027_rank).1
    case_001027_rankWord |>.symm

private theorem case_001027_seqChoice :
    translationChoiceSeq case_001027_word case_001027_mask = case_001027_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001027_seqAtRank :
    translationSeqAtRankMask case_001027_rank case_001027_mask = case_001027_seq := by
  rw [translationSeqAtRankMask, case_001027_unrank]
  exact case_001027_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001027_bAtRank :
    translationBAtRankMask case_001027_rank case_001027_mask = case_001027_b := by
  rw [translationBAtRankMask, case_001027_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001027_b, case_001027_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001027_firstLine_eq :
    case_001027_support.firstLine case_001027_seq case_001027_b = case_001027_firstLine := by
  norm_num [case_001027_firstLine, case_001027_support, case_001027_seq, case_001027_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001027_secondLine_eq :
    case_001027_support.secondLine case_001027_seq case_001027_b = case_001027_secondLine := by
  norm_num [case_001027_secondLine, case_001027_support, case_001027_seq, case_001027_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001027_sourceAgrees :
    SourceAgrees case_001027_support case_001027_rank.val case_001027_mask := by
  intro hlt
  have hrank : (⟨case_001027_rank.val, hlt⟩ : Fin numPairWords) = case_001027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001027_rank.val, hlt⟩ case_001027_mask =
        case_001027_seq := by
    simpa [hrank] using case_001027_seqAtRank
  simp [SourceChecks, hseq, case_001027_support,
    checkTranslationConstraintSource, case_001027_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001027_rows :
    OppMinusOneVarSecondRows case_001027_support case_001027_rank.val case_001027_mask := by
  intro hlt
  have hrank : (⟨case_001027_rank.val, hlt⟩ : Fin numPairWords) = case_001027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001027_rank.val, hlt⟩ case_001027_mask =
        case_001027_seq := by
    simpa [hrank] using case_001027_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001027_rank.val, hlt⟩ case_001027_mask =
        case_001027_b := by
    simpa [hrank] using case_001027_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001027_support case_001027_rank.val hlt
          case_001027_mask = case_001027_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001027_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001027_support case_001027_rank.val hlt
          case_001027_mask = case_001027_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001027_secondLine_eq]
  have case_001027_fixedFirst :
      FixedRow (FirstLineAt case_001027_support case_001027_rank.val hlt case_001027_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001027_firstLine, FixedRow]
  have case_001027_rowSecond :
      OppNegRow (SecondLineAt case_001027_support case_001027_rank.val hlt case_001027_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001027_secondLine, OppNegRow]
  exact ⟨case_001027_fixedFirst, case_001027_rowSecond⟩

private theorem case_001027_existsRows :
    ExistsOppMinusOneVarSecondRows case_001027_rank.val case_001027_mask :=
  ⟨case_001027_support, case_001027_sourceAgrees, case_001027_rows⟩

private theorem case_001027_covered :
    RowPropertyParametricCovered case_001027_rank.val case_001027_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001027_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001028_rank : Fin numPairWords := ⟨798, by decide⟩
private def case_001028_mask : SignMask := ⟨63, by decide⟩
private def case_001028_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001028_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001028_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (172/27) }
private def case_001028_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001028_secondLine : StrictLin2 := { a := (-531/2150), b := (531/2150), c := (-1149/1075) }

private theorem case_001028_rankWord :
    rankPairWord? case_001028_word = some case_001028_rank := by
  decide

private theorem case_001028_unrank :
    unrankPairWord case_001028_rank = case_001028_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001028_word case_001028_rank).1
    case_001028_rankWord |>.symm

private theorem case_001028_seqChoice :
    translationChoiceSeq case_001028_word case_001028_mask = case_001028_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001028_seqAtRank :
    translationSeqAtRankMask case_001028_rank case_001028_mask = case_001028_seq := by
  rw [translationSeqAtRankMask, case_001028_unrank]
  exact case_001028_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001028_bAtRank :
    translationBAtRankMask case_001028_rank case_001028_mask = case_001028_b := by
  rw [translationBAtRankMask, case_001028_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001028_b, case_001028_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001028_firstLine_eq :
    case_001028_support.firstLine case_001028_seq case_001028_b = case_001028_firstLine := by
  norm_num [case_001028_firstLine, case_001028_support, case_001028_seq, case_001028_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001028_secondLine_eq :
    case_001028_support.secondLine case_001028_seq case_001028_b = case_001028_secondLine := by
  norm_num [case_001028_secondLine, case_001028_support, case_001028_seq, case_001028_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001028_sourceAgrees :
    SourceAgrees case_001028_support case_001028_rank.val case_001028_mask := by
  intro hlt
  have hrank : (⟨case_001028_rank.val, hlt⟩ : Fin numPairWords) = case_001028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001028_rank.val, hlt⟩ case_001028_mask =
        case_001028_seq := by
    simpa [hrank] using case_001028_seqAtRank
  simp [SourceChecks, hseq, case_001028_support,
    checkTranslationConstraintSource, case_001028_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001028_rows :
    OppOneMinusVarSecondRows case_001028_support case_001028_rank.val case_001028_mask := by
  intro hlt
  have hrank : (⟨case_001028_rank.val, hlt⟩ : Fin numPairWords) = case_001028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001028_rank.val, hlt⟩ case_001028_mask =
        case_001028_seq := by
    simpa [hrank] using case_001028_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001028_rank.val, hlt⟩ case_001028_mask =
        case_001028_b := by
    simpa [hrank] using case_001028_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001028_support case_001028_rank.val hlt
          case_001028_mask = case_001028_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001028_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001028_support case_001028_rank.val hlt
          case_001028_mask = case_001028_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001028_secondLine_eq]
  have case_001028_fixedFirst :
      FixedRow (FirstLineAt case_001028_support case_001028_rank.val hlt case_001028_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001028_firstLine, FixedRow]
  have case_001028_rowSecond :
      OppPosRow (SecondLineAt case_001028_support case_001028_rank.val hlt case_001028_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001028_secondLine, OppPosRow]
  exact ⟨case_001028_fixedFirst, case_001028_rowSecond⟩

private theorem case_001028_existsRows :
    ExistsOppOneMinusVarSecondRows case_001028_rank.val case_001028_mask :=
  ⟨case_001028_support, case_001028_sourceAgrees, case_001028_rows⟩

private theorem case_001028_covered :
    RowPropertyParametricCovered case_001028_rank.val case_001028_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001028_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001029_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001029_mask : SignMask := ⟨16, by decide⟩
private def case_001029_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001029_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001029_b : Vec3 Rat := { x := (-172/27), y := (-332/27), z := (-76/27) }
private def case_001029_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/43) }
private def case_001029_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001029_rankWord :
    rankPairWord? case_001029_word = some case_001029_rank := by
  decide

private theorem case_001029_unrank :
    unrankPairWord case_001029_rank = case_001029_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001029_word case_001029_rank).1
    case_001029_rankWord |>.symm

private theorem case_001029_seqChoice :
    translationChoiceSeq case_001029_word case_001029_mask = case_001029_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001029_seqAtRank :
    translationSeqAtRankMask case_001029_rank case_001029_mask = case_001029_seq := by
  rw [translationSeqAtRankMask, case_001029_unrank]
  exact case_001029_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001029_bAtRank :
    translationBAtRankMask case_001029_rank case_001029_mask = case_001029_b := by
  rw [translationBAtRankMask, case_001029_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001029_b, case_001029_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001029_firstLine_eq :
    case_001029_support.firstLine case_001029_seq case_001029_b = case_001029_firstLine := by
  norm_num [case_001029_firstLine, case_001029_support, case_001029_seq, case_001029_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001029_secondLine_eq :
    case_001029_support.secondLine case_001029_seq case_001029_b = case_001029_secondLine := by
  norm_num [case_001029_secondLine, case_001029_support, case_001029_seq, case_001029_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001029_sourceAgrees :
    SourceAgrees case_001029_support case_001029_rank.val case_001029_mask := by
  intro hlt
  have hrank : (⟨case_001029_rank.val, hlt⟩ : Fin numPairWords) = case_001029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001029_rank.val, hlt⟩ case_001029_mask =
        case_001029_seq := by
    simpa [hrank] using case_001029_seqAtRank
  simp [SourceChecks, hseq, case_001029_support,
    checkTranslationConstraintSource, case_001029_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001029_rows :
    EqEqPosVarFirstRows case_001029_support case_001029_rank.val case_001029_mask := by
  intro hlt
  have hrank : (⟨case_001029_rank.val, hlt⟩ : Fin numPairWords) = case_001029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001029_rank.val, hlt⟩ case_001029_mask =
        case_001029_seq := by
    simpa [hrank] using case_001029_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001029_rank.val, hlt⟩ case_001029_mask =
        case_001029_b := by
    simpa [hrank] using case_001029_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001029_support case_001029_rank.val hlt
          case_001029_mask = case_001029_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001029_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001029_support case_001029_rank.val hlt
          case_001029_mask = case_001029_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001029_secondLine_eq]
  have case_001029_rowFirst :
      EqEqPosRow (FirstLineAt case_001029_support case_001029_rank.val hlt case_001029_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001029_firstLine, EqEqPosRow]
  have case_001029_fixedSecond :
      FixedRow (SecondLineAt case_001029_support case_001029_rank.val hlt case_001029_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001029_secondLine, FixedRow]
  exact ⟨case_001029_rowFirst, case_001029_fixedSecond⟩

private theorem case_001029_existsRows :
    ExistsEqEqPosVarFirstRows case_001029_rank.val case_001029_mask :=
  ⟨case_001029_support, case_001029_sourceAgrees, case_001029_rows⟩

private theorem case_001029_covered :
    RowPropertyParametricCovered case_001029_rank.val case_001029_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001029_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001030_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001030_mask : SignMask := ⟨22, by decide⟩
private def case_001030_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001030_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001030_b : Vec3 Rat := { x := (-220/27), y := (-284/27), z := (380/27) }
private def case_001030_firstLine : StrictLin2 := { a := -1, b := 1, c := (-277/55) }
private def case_001030_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001030_rankWord :
    rankPairWord? case_001030_word = some case_001030_rank := by
  decide

private theorem case_001030_unrank :
    unrankPairWord case_001030_rank = case_001030_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001030_word case_001030_rank).1
    case_001030_rankWord |>.symm

private theorem case_001030_seqChoice :
    translationChoiceSeq case_001030_word case_001030_mask = case_001030_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001030_seqAtRank :
    translationSeqAtRankMask case_001030_rank case_001030_mask = case_001030_seq := by
  rw [translationSeqAtRankMask, case_001030_unrank]
  exact case_001030_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001030_bAtRank :
    translationBAtRankMask case_001030_rank case_001030_mask = case_001030_b := by
  rw [translationBAtRankMask, case_001030_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001030_b, case_001030_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001030_firstLine_eq :
    case_001030_support.firstLine case_001030_seq case_001030_b = case_001030_firstLine := by
  norm_num [case_001030_firstLine, case_001030_support, case_001030_seq, case_001030_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001030_secondLine_eq :
    case_001030_support.secondLine case_001030_seq case_001030_b = case_001030_secondLine := by
  norm_num [case_001030_secondLine, case_001030_support, case_001030_seq, case_001030_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001030_sourceAgrees :
    SourceAgrees case_001030_support case_001030_rank.val case_001030_mask := by
  intro hlt
  have hrank : (⟨case_001030_rank.val, hlt⟩ : Fin numPairWords) = case_001030_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001030_rank.val, hlt⟩ case_001030_mask =
        case_001030_seq := by
    simpa [hrank] using case_001030_seqAtRank
  simp [SourceChecks, hseq, case_001030_support,
    checkTranslationConstraintSource, case_001030_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001030_rows :
    OppOneMinusVarFirstRows case_001030_support case_001030_rank.val case_001030_mask := by
  intro hlt
  have hrank : (⟨case_001030_rank.val, hlt⟩ : Fin numPairWords) = case_001030_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001030_rank.val, hlt⟩ case_001030_mask =
        case_001030_seq := by
    simpa [hrank] using case_001030_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001030_rank.val, hlt⟩ case_001030_mask =
        case_001030_b := by
    simpa [hrank] using case_001030_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001030_support case_001030_rank.val hlt
          case_001030_mask = case_001030_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001030_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001030_support case_001030_rank.val hlt
          case_001030_mask = case_001030_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001030_secondLine_eq]
  have case_001030_rowFirst :
      OppPosRow (FirstLineAt case_001030_support case_001030_rank.val hlt case_001030_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001030_firstLine, OppPosRow]
  have case_001030_fixedSecond :
      FixedRow (SecondLineAt case_001030_support case_001030_rank.val hlt case_001030_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001030_secondLine, FixedRow]
  exact ⟨case_001030_rowFirst, case_001030_fixedSecond⟩

private theorem case_001030_existsRows :
    ExistsOppOneMinusVarFirstRows case_001030_rank.val case_001030_mask :=
  ⟨case_001030_support, case_001030_sourceAgrees, case_001030_rows⟩

private theorem case_001030_covered :
    RowPropertyParametricCovered case_001030_rank.val case_001030_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001030_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001031_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001031_mask : SignMask := ⟨24, by decide⟩
private def case_001031_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001031_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001031_b : Vec3 Rat := { x := (-316/27), y := (-188/27), z := (-220/27) }
private def case_001031_firstLine : StrictLin2 := { a := -1, b := -1, c := (-125/79) }
private def case_001031_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001031_rankWord :
    rankPairWord? case_001031_word = some case_001031_rank := by
  decide

private theorem case_001031_unrank :
    unrankPairWord case_001031_rank = case_001031_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001031_word case_001031_rank).1
    case_001031_rankWord |>.symm

private theorem case_001031_seqChoice :
    translationChoiceSeq case_001031_word case_001031_mask = case_001031_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001031_seqAtRank :
    translationSeqAtRankMask case_001031_rank case_001031_mask = case_001031_seq := by
  rw [translationSeqAtRankMask, case_001031_unrank]
  exact case_001031_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001031_bAtRank :
    translationBAtRankMask case_001031_rank case_001031_mask = case_001031_b := by
  rw [translationBAtRankMask, case_001031_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001031_b, case_001031_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001031_firstLine_eq :
    case_001031_support.firstLine case_001031_seq case_001031_b = case_001031_firstLine := by
  norm_num [case_001031_firstLine, case_001031_support, case_001031_seq, case_001031_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001031_secondLine_eq :
    case_001031_support.secondLine case_001031_seq case_001031_b = case_001031_secondLine := by
  norm_num [case_001031_secondLine, case_001031_support, case_001031_seq, case_001031_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001031_sourceAgrees :
    SourceAgrees case_001031_support case_001031_rank.val case_001031_mask := by
  intro hlt
  have hrank : (⟨case_001031_rank.val, hlt⟩ : Fin numPairWords) = case_001031_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001031_rank.val, hlt⟩ case_001031_mask =
        case_001031_seq := by
    simpa [hrank] using case_001031_seqAtRank
  simp [SourceChecks, hseq, case_001031_support,
    checkTranslationConstraintSource, case_001031_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001031_rows :
    EqEqPosVarFirstRows case_001031_support case_001031_rank.val case_001031_mask := by
  intro hlt
  have hrank : (⟨case_001031_rank.val, hlt⟩ : Fin numPairWords) = case_001031_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001031_rank.val, hlt⟩ case_001031_mask =
        case_001031_seq := by
    simpa [hrank] using case_001031_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001031_rank.val, hlt⟩ case_001031_mask =
        case_001031_b := by
    simpa [hrank] using case_001031_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001031_support case_001031_rank.val hlt
          case_001031_mask = case_001031_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001031_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001031_support case_001031_rank.val hlt
          case_001031_mask = case_001031_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001031_secondLine_eq]
  have case_001031_rowFirst :
      EqEqPosRow (FirstLineAt case_001031_support case_001031_rank.val hlt case_001031_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001031_firstLine, EqEqPosRow]
  have case_001031_fixedSecond :
      FixedRow (SecondLineAt case_001031_support case_001031_rank.val hlt case_001031_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001031_secondLine, FixedRow]
  exact ⟨case_001031_rowFirst, case_001031_fixedSecond⟩

private theorem case_001031_existsRows :
    ExistsEqEqPosVarFirstRows case_001031_rank.val case_001031_mask :=
  ⟨case_001031_support, case_001031_sourceAgrees, case_001031_rows⟩

private theorem case_001031_covered :
    RowPropertyParametricCovered case_001031_rank.val case_001031_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001031_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001032_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001032_mask : SignMask := ⟨31, by decide⟩
private def case_001032_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001032_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001032_b : Vec3 Rat := { x := (-364/27), y := (76/27), z := (236/27) }
private def case_001032_firstLine : StrictLin2 := { a := (-91/51), b := (91/51), c := (-251/51) }
private def case_001032_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001032_rankWord :
    rankPairWord? case_001032_word = some case_001032_rank := by
  decide

private theorem case_001032_unrank :
    unrankPairWord case_001032_rank = case_001032_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001032_word case_001032_rank).1
    case_001032_rankWord |>.symm

private theorem case_001032_seqChoice :
    translationChoiceSeq case_001032_word case_001032_mask = case_001032_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001032_seqAtRank :
    translationSeqAtRankMask case_001032_rank case_001032_mask = case_001032_seq := by
  rw [translationSeqAtRankMask, case_001032_unrank]
  exact case_001032_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001032_bAtRank :
    translationBAtRankMask case_001032_rank case_001032_mask = case_001032_b := by
  rw [translationBAtRankMask, case_001032_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001032_b, case_001032_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001032_firstLine_eq :
    case_001032_support.firstLine case_001032_seq case_001032_b = case_001032_firstLine := by
  norm_num [case_001032_firstLine, case_001032_support, case_001032_seq, case_001032_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001032_secondLine_eq :
    case_001032_support.secondLine case_001032_seq case_001032_b = case_001032_secondLine := by
  norm_num [case_001032_secondLine, case_001032_support, case_001032_seq, case_001032_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001032_sourceAgrees :
    SourceAgrees case_001032_support case_001032_rank.val case_001032_mask := by
  intro hlt
  have hrank : (⟨case_001032_rank.val, hlt⟩ : Fin numPairWords) = case_001032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001032_rank.val, hlt⟩ case_001032_mask =
        case_001032_seq := by
    simpa [hrank] using case_001032_seqAtRank
  simp [SourceChecks, hseq, case_001032_support,
    checkTranslationConstraintSource, case_001032_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001032_rows :
    OppOneMinusVarFirstRows case_001032_support case_001032_rank.val case_001032_mask := by
  intro hlt
  have hrank : (⟨case_001032_rank.val, hlt⟩ : Fin numPairWords) = case_001032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001032_rank.val, hlt⟩ case_001032_mask =
        case_001032_seq := by
    simpa [hrank] using case_001032_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001032_rank.val, hlt⟩ case_001032_mask =
        case_001032_b := by
    simpa [hrank] using case_001032_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001032_support case_001032_rank.val hlt
          case_001032_mask = case_001032_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001032_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001032_support case_001032_rank.val hlt
          case_001032_mask = case_001032_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001032_secondLine_eq]
  have case_001032_rowFirst :
      OppPosRow (FirstLineAt case_001032_support case_001032_rank.val hlt case_001032_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001032_firstLine, OppPosRow]
  have case_001032_fixedSecond :
      FixedRow (SecondLineAt case_001032_support case_001032_rank.val hlt case_001032_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001032_secondLine, FixedRow]
  exact ⟨case_001032_rowFirst, case_001032_fixedSecond⟩

private theorem case_001032_existsRows :
    ExistsOppOneMinusVarFirstRows case_001032_rank.val case_001032_mask :=
  ⟨case_001032_support, case_001032_sourceAgrees, case_001032_rows⟩

private theorem case_001032_covered :
    RowPropertyParametricCovered case_001032_rank.val case_001032_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001032_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001033_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001033_mask : SignMask := ⟨47, by decide⟩
private def case_001033_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_001033_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_001033_b : Vec3 Rat := { x := (-44/27), y := (332/27), z := (76/27) }
private def case_001033_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001033_secondLine : StrictLin2 := { a := (-33/50), b := (33/50), c := (-63/25) }

private theorem case_001033_rankWord :
    rankPairWord? case_001033_word = some case_001033_rank := by
  decide

private theorem case_001033_unrank :
    unrankPairWord case_001033_rank = case_001033_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001033_word case_001033_rank).1
    case_001033_rankWord |>.symm

private theorem case_001033_seqChoice :
    translationChoiceSeq case_001033_word case_001033_mask = case_001033_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001033_seqAtRank :
    translationSeqAtRankMask case_001033_rank case_001033_mask = case_001033_seq := by
  rw [translationSeqAtRankMask, case_001033_unrank]
  exact case_001033_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001033_bAtRank :
    translationBAtRankMask case_001033_rank case_001033_mask = case_001033_b := by
  rw [translationBAtRankMask, case_001033_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001033_b, case_001033_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001033_firstLine_eq :
    case_001033_support.firstLine case_001033_seq case_001033_b = case_001033_firstLine := by
  norm_num [case_001033_firstLine, case_001033_support, case_001033_seq, case_001033_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001033_secondLine_eq :
    case_001033_support.secondLine case_001033_seq case_001033_b = case_001033_secondLine := by
  norm_num [case_001033_secondLine, case_001033_support, case_001033_seq, case_001033_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001033_sourceAgrees :
    SourceAgrees case_001033_support case_001033_rank.val case_001033_mask := by
  intro hlt
  have hrank : (⟨case_001033_rank.val, hlt⟩ : Fin numPairWords) = case_001033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001033_rank.val, hlt⟩ case_001033_mask =
        case_001033_seq := by
    simpa [hrank] using case_001033_seqAtRank
  simp [SourceChecks, hseq, case_001033_support,
    checkTranslationConstraintSource, case_001033_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001033_rows :
    OppOneMinusVarSecondRows case_001033_support case_001033_rank.val case_001033_mask := by
  intro hlt
  have hrank : (⟨case_001033_rank.val, hlt⟩ : Fin numPairWords) = case_001033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001033_rank.val, hlt⟩ case_001033_mask =
        case_001033_seq := by
    simpa [hrank] using case_001033_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001033_rank.val, hlt⟩ case_001033_mask =
        case_001033_b := by
    simpa [hrank] using case_001033_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001033_support case_001033_rank.val hlt
          case_001033_mask = case_001033_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001033_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001033_support case_001033_rank.val hlt
          case_001033_mask = case_001033_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001033_secondLine_eq]
  have case_001033_fixedFirst :
      FixedRow (FirstLineAt case_001033_support case_001033_rank.val hlt case_001033_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001033_firstLine, FixedRow]
  have case_001033_rowSecond :
      OppPosRow (SecondLineAt case_001033_support case_001033_rank.val hlt case_001033_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001033_secondLine, OppPosRow]
  exact ⟨case_001033_fixedFirst, case_001033_rowSecond⟩

private theorem case_001033_existsRows :
    ExistsOppOneMinusVarSecondRows case_001033_rank.val case_001033_mask :=
  ⟨case_001033_support, case_001033_sourceAgrees, case_001033_rows⟩

private theorem case_001033_covered :
    RowPropertyParametricCovered case_001033_rank.val case_001033_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001033_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001034_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001034_mask : SignMask := ⟨57, by decide⟩
private def case_001034_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001034_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001034_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (-332/27) }
private def case_001034_firstLine : StrictLin2 := { a := (-59/51), b := (59/51), c := (-709/51) }
private def case_001034_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001034_rankWord :
    rankPairWord? case_001034_word = some case_001034_rank := by
  decide

private theorem case_001034_unrank :
    unrankPairWord case_001034_rank = case_001034_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001034_word case_001034_rank).1
    case_001034_rankWord |>.symm

private theorem case_001034_seqChoice :
    translationChoiceSeq case_001034_word case_001034_mask = case_001034_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001034_seqAtRank :
    translationSeqAtRankMask case_001034_rank case_001034_mask = case_001034_seq := by
  rw [translationSeqAtRankMask, case_001034_unrank]
  exact case_001034_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001034_bAtRank :
    translationBAtRankMask case_001034_rank case_001034_mask = case_001034_b := by
  rw [translationBAtRankMask, case_001034_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001034_b, case_001034_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001034_firstLine_eq :
    case_001034_support.firstLine case_001034_seq case_001034_b = case_001034_firstLine := by
  norm_num [case_001034_firstLine, case_001034_support, case_001034_seq, case_001034_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001034_secondLine_eq :
    case_001034_support.secondLine case_001034_seq case_001034_b = case_001034_secondLine := by
  norm_num [case_001034_secondLine, case_001034_support, case_001034_seq, case_001034_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001034_sourceAgrees :
    SourceAgrees case_001034_support case_001034_rank.val case_001034_mask := by
  intro hlt
  have hrank : (⟨case_001034_rank.val, hlt⟩ : Fin numPairWords) = case_001034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001034_rank.val, hlt⟩ case_001034_mask =
        case_001034_seq := by
    simpa [hrank] using case_001034_seqAtRank
  simp [SourceChecks, hseq, case_001034_support,
    checkTranslationConstraintSource, case_001034_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001034_rows :
    OppOneMinusVarFirstRows case_001034_support case_001034_rank.val case_001034_mask := by
  intro hlt
  have hrank : (⟨case_001034_rank.val, hlt⟩ : Fin numPairWords) = case_001034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001034_rank.val, hlt⟩ case_001034_mask =
        case_001034_seq := by
    simpa [hrank] using case_001034_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001034_rank.val, hlt⟩ case_001034_mask =
        case_001034_b := by
    simpa [hrank] using case_001034_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001034_support case_001034_rank.val hlt
          case_001034_mask = case_001034_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001034_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001034_support case_001034_rank.val hlt
          case_001034_mask = case_001034_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001034_secondLine_eq]
  have case_001034_rowFirst :
      OppPosRow (FirstLineAt case_001034_support case_001034_rank.val hlt case_001034_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001034_firstLine, OppPosRow]
  have case_001034_fixedSecond :
      FixedRow (SecondLineAt case_001034_support case_001034_rank.val hlt case_001034_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001034_secondLine, FixedRow]
  exact ⟨case_001034_rowFirst, case_001034_fixedSecond⟩

private theorem case_001034_existsRows :
    ExistsOppOneMinusVarFirstRows case_001034_rank.val case_001034_mask :=
  ⟨case_001034_support, case_001034_sourceAgrees, case_001034_rows⟩

private theorem case_001034_covered :
    RowPropertyParametricCovered case_001034_rank.val case_001034_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001034_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001035_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001035_mask : SignMask := ⟨61, by decide⟩
private def case_001035_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001035_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001035_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (-92/27) }
private def case_001035_firstLine : StrictLin2 := { a := (-71/165), b := (71/165), c := (-263/165) }
private def case_001035_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001035_rankWord :
    rankPairWord? case_001035_word = some case_001035_rank := by
  decide

private theorem case_001035_unrank :
    unrankPairWord case_001035_rank = case_001035_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001035_word case_001035_rank).1
    case_001035_rankWord |>.symm

private theorem case_001035_seqChoice :
    translationChoiceSeq case_001035_word case_001035_mask = case_001035_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001035_seqAtRank :
    translationSeqAtRankMask case_001035_rank case_001035_mask = case_001035_seq := by
  rw [translationSeqAtRankMask, case_001035_unrank]
  exact case_001035_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001035_bAtRank :
    translationBAtRankMask case_001035_rank case_001035_mask = case_001035_b := by
  rw [translationBAtRankMask, case_001035_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001035_b, case_001035_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001035_firstLine_eq :
    case_001035_support.firstLine case_001035_seq case_001035_b = case_001035_firstLine := by
  norm_num [case_001035_firstLine, case_001035_support, case_001035_seq, case_001035_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001035_secondLine_eq :
    case_001035_support.secondLine case_001035_seq case_001035_b = case_001035_secondLine := by
  norm_num [case_001035_secondLine, case_001035_support, case_001035_seq, case_001035_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001035_sourceAgrees :
    SourceAgrees case_001035_support case_001035_rank.val case_001035_mask := by
  intro hlt
  have hrank : (⟨case_001035_rank.val, hlt⟩ : Fin numPairWords) = case_001035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001035_rank.val, hlt⟩ case_001035_mask =
        case_001035_seq := by
    simpa [hrank] using case_001035_seqAtRank
  simp [SourceChecks, hseq, case_001035_support,
    checkTranslationConstraintSource, case_001035_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001035_rows :
    OppOneMinusVarFirstRows case_001035_support case_001035_rank.val case_001035_mask := by
  intro hlt
  have hrank : (⟨case_001035_rank.val, hlt⟩ : Fin numPairWords) = case_001035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001035_rank.val, hlt⟩ case_001035_mask =
        case_001035_seq := by
    simpa [hrank] using case_001035_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001035_rank.val, hlt⟩ case_001035_mask =
        case_001035_b := by
    simpa [hrank] using case_001035_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001035_support case_001035_rank.val hlt
          case_001035_mask = case_001035_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001035_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001035_support case_001035_rank.val hlt
          case_001035_mask = case_001035_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001035_secondLine_eq]
  have case_001035_rowFirst :
      OppPosRow (FirstLineAt case_001035_support case_001035_rank.val hlt case_001035_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001035_firstLine, OppPosRow]
  have case_001035_fixedSecond :
      FixedRow (SecondLineAt case_001035_support case_001035_rank.val hlt case_001035_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001035_secondLine, FixedRow]
  exact ⟨case_001035_rowFirst, case_001035_fixedSecond⟩

private theorem case_001035_existsRows :
    ExistsOppOneMinusVarFirstRows case_001035_rank.val case_001035_mask :=
  ⟨case_001035_support, case_001035_sourceAgrees, case_001035_rows⟩

private theorem case_001035_covered :
    RowPropertyParametricCovered case_001035_rank.val case_001035_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001035_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001036_rank : Fin numPairWords := ⟨800, by decide⟩
private def case_001036_mask : SignMask := ⟨63, by decide⟩
private def case_001036_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001036_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001036_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (124/27) }
private def case_001036_firstLine : StrictLin2 := { a := (-71/105), b := (71/105), c := (-97/105) }
private def case_001036_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001036_rankWord :
    rankPairWord? case_001036_word = some case_001036_rank := by
  decide

private theorem case_001036_unrank :
    unrankPairWord case_001036_rank = case_001036_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001036_word case_001036_rank).1
    case_001036_rankWord |>.symm

private theorem case_001036_seqChoice :
    translationChoiceSeq case_001036_word case_001036_mask = case_001036_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001036_seqAtRank :
    translationSeqAtRankMask case_001036_rank case_001036_mask = case_001036_seq := by
  rw [translationSeqAtRankMask, case_001036_unrank]
  exact case_001036_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001036_bAtRank :
    translationBAtRankMask case_001036_rank case_001036_mask = case_001036_b := by
  rw [translationBAtRankMask, case_001036_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001036_b, case_001036_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001036_firstLine_eq :
    case_001036_support.firstLine case_001036_seq case_001036_b = case_001036_firstLine := by
  norm_num [case_001036_firstLine, case_001036_support, case_001036_seq, case_001036_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001036_secondLine_eq :
    case_001036_support.secondLine case_001036_seq case_001036_b = case_001036_secondLine := by
  norm_num [case_001036_secondLine, case_001036_support, case_001036_seq, case_001036_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001036_sourceAgrees :
    SourceAgrees case_001036_support case_001036_rank.val case_001036_mask := by
  intro hlt
  have hrank : (⟨case_001036_rank.val, hlt⟩ : Fin numPairWords) = case_001036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001036_rank.val, hlt⟩ case_001036_mask =
        case_001036_seq := by
    simpa [hrank] using case_001036_seqAtRank
  simp [SourceChecks, hseq, case_001036_support,
    checkTranslationConstraintSource, case_001036_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001036_rows :
    OppOneMinusVarFirstRows case_001036_support case_001036_rank.val case_001036_mask := by
  intro hlt
  have hrank : (⟨case_001036_rank.val, hlt⟩ : Fin numPairWords) = case_001036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001036_rank.val, hlt⟩ case_001036_mask =
        case_001036_seq := by
    simpa [hrank] using case_001036_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001036_rank.val, hlt⟩ case_001036_mask =
        case_001036_b := by
    simpa [hrank] using case_001036_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001036_support case_001036_rank.val hlt
          case_001036_mask = case_001036_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001036_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001036_support case_001036_rank.val hlt
          case_001036_mask = case_001036_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001036_secondLine_eq]
  have case_001036_rowFirst :
      OppPosRow (FirstLineAt case_001036_support case_001036_rank.val hlt case_001036_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001036_firstLine, OppPosRow]
  have case_001036_fixedSecond :
      FixedRow (SecondLineAt case_001036_support case_001036_rank.val hlt case_001036_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001036_secondLine, FixedRow]
  exact ⟨case_001036_rowFirst, case_001036_fixedSecond⟩

private theorem case_001036_existsRows :
    ExistsOppOneMinusVarFirstRows case_001036_rank.val case_001036_mask :=
  ⟨case_001036_support, case_001036_sourceAgrees, case_001036_rows⟩

private theorem case_001036_covered :
    RowPropertyParametricCovered case_001036_rank.val case_001036_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001036_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001037_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001037_mask : SignMask := ⟨15, by decide⟩
private def case_001037_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001037_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001037_b : Vec3 Rat := { x := (-140/27), y := (140/27), z := (268/27) }
private def case_001037_firstLine : StrictLin2 := { a := (-35/3), b := (35/3), c := (-163/3) }
private def case_001037_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001037_rankWord :
    rankPairWord? case_001037_word = some case_001037_rank := by
  decide

private theorem case_001037_unrank :
    unrankPairWord case_001037_rank = case_001037_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001037_word case_001037_rank).1
    case_001037_rankWord |>.symm

private theorem case_001037_seqChoice :
    translationChoiceSeq case_001037_word case_001037_mask = case_001037_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001037_seqAtRank :
    translationSeqAtRankMask case_001037_rank case_001037_mask = case_001037_seq := by
  rw [translationSeqAtRankMask, case_001037_unrank]
  exact case_001037_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001037_bAtRank :
    translationBAtRankMask case_001037_rank case_001037_mask = case_001037_b := by
  rw [translationBAtRankMask, case_001037_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001037_b, case_001037_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001037_firstLine_eq :
    case_001037_support.firstLine case_001037_seq case_001037_b = case_001037_firstLine := by
  norm_num [case_001037_firstLine, case_001037_support, case_001037_seq, case_001037_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001037_secondLine_eq :
    case_001037_support.secondLine case_001037_seq case_001037_b = case_001037_secondLine := by
  norm_num [case_001037_secondLine, case_001037_support, case_001037_seq, case_001037_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001037_sourceAgrees :
    SourceAgrees case_001037_support case_001037_rank.val case_001037_mask := by
  intro hlt
  have hrank : (⟨case_001037_rank.val, hlt⟩ : Fin numPairWords) = case_001037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001037_rank.val, hlt⟩ case_001037_mask =
        case_001037_seq := by
    simpa [hrank] using case_001037_seqAtRank
  simp [SourceChecks, hseq, case_001037_support,
    checkTranslationConstraintSource, case_001037_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001037_rows :
    OppOneMinusVarFirstRows case_001037_support case_001037_rank.val case_001037_mask := by
  intro hlt
  have hrank : (⟨case_001037_rank.val, hlt⟩ : Fin numPairWords) = case_001037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001037_rank.val, hlt⟩ case_001037_mask =
        case_001037_seq := by
    simpa [hrank] using case_001037_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001037_rank.val, hlt⟩ case_001037_mask =
        case_001037_b := by
    simpa [hrank] using case_001037_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001037_support case_001037_rank.val hlt
          case_001037_mask = case_001037_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001037_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001037_support case_001037_rank.val hlt
          case_001037_mask = case_001037_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001037_secondLine_eq]
  have case_001037_rowFirst :
      OppPosRow (FirstLineAt case_001037_support case_001037_rank.val hlt case_001037_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001037_firstLine, OppPosRow]
  have case_001037_fixedSecond :
      FixedRow (SecondLineAt case_001037_support case_001037_rank.val hlt case_001037_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001037_secondLine, FixedRow]
  exact ⟨case_001037_rowFirst, case_001037_fixedSecond⟩

private theorem case_001037_existsRows :
    ExistsOppOneMinusVarFirstRows case_001037_rank.val case_001037_mask :=
  ⟨case_001037_support, case_001037_sourceAgrees, case_001037_rows⟩

private theorem case_001037_covered :
    RowPropertyParametricCovered case_001037_rank.val case_001037_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001037_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001038_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001038_mask : SignMask := ⟨16, by decide⟩
private def case_001038_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001038_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tppm
private def case_001038_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_001038_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_001038_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001038_rankWord :
    rankPairWord? case_001038_word = some case_001038_rank := by
  decide

private theorem case_001038_unrank :
    unrankPairWord case_001038_rank = case_001038_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001038_word case_001038_rank).1
    case_001038_rankWord |>.symm

private theorem case_001038_seqChoice :
    translationChoiceSeq case_001038_word case_001038_mask = case_001038_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001038_seqAtRank :
    translationSeqAtRankMask case_001038_rank case_001038_mask = case_001038_seq := by
  rw [translationSeqAtRankMask, case_001038_unrank]
  exact case_001038_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001038_bAtRank :
    translationBAtRankMask case_001038_rank case_001038_mask = case_001038_b := by
  rw [translationBAtRankMask, case_001038_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001038_b, case_001038_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001038_firstLine_eq :
    case_001038_support.firstLine case_001038_seq case_001038_b = case_001038_firstLine := by
  norm_num [case_001038_firstLine, case_001038_support, case_001038_seq, case_001038_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001038_secondLine_eq :
    case_001038_support.secondLine case_001038_seq case_001038_b = case_001038_secondLine := by
  norm_num [case_001038_secondLine, case_001038_support, case_001038_seq, case_001038_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001038_sourceAgrees :
    SourceAgrees case_001038_support case_001038_rank.val case_001038_mask := by
  intro hlt
  have hrank : (⟨case_001038_rank.val, hlt⟩ : Fin numPairWords) = case_001038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001038_rank.val, hlt⟩ case_001038_mask =
        case_001038_seq := by
    simpa [hrank] using case_001038_seqAtRank
  simp [SourceChecks, hseq, case_001038_support,
    checkTranslationConstraintSource, case_001038_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001038_rows :
    EqEqPosVarFirstRows case_001038_support case_001038_rank.val case_001038_mask := by
  intro hlt
  have hrank : (⟨case_001038_rank.val, hlt⟩ : Fin numPairWords) = case_001038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001038_rank.val, hlt⟩ case_001038_mask =
        case_001038_seq := by
    simpa [hrank] using case_001038_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001038_rank.val, hlt⟩ case_001038_mask =
        case_001038_b := by
    simpa [hrank] using case_001038_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001038_support case_001038_rank.val hlt
          case_001038_mask = case_001038_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001038_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001038_support case_001038_rank.val hlt
          case_001038_mask = case_001038_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001038_secondLine_eq]
  have case_001038_rowFirst :
      EqEqPosRow (FirstLineAt case_001038_support case_001038_rank.val hlt case_001038_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001038_firstLine, EqEqPosRow]
  have case_001038_fixedSecond :
      FixedRow (SecondLineAt case_001038_support case_001038_rank.val hlt case_001038_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001038_secondLine, FixedRow]
  exact ⟨case_001038_rowFirst, case_001038_fixedSecond⟩

private theorem case_001038_existsRows :
    ExistsEqEqPosVarFirstRows case_001038_rank.val case_001038_mask :=
  ⟨case_001038_support, case_001038_sourceAgrees, case_001038_rows⟩

private theorem case_001038_covered :
    RowPropertyParametricCovered case_001038_rank.val case_001038_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001038_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001039_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001039_mask : SignMask := ⟨22, by decide⟩
private def case_001039_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001039_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppm
private def case_001039_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_001039_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001039_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001039_rankWord :
    rankPairWord? case_001039_word = some case_001039_rank := by
  decide

private theorem case_001039_unrank :
    unrankPairWord case_001039_rank = case_001039_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001039_word case_001039_rank).1
    case_001039_rankWord |>.symm

private theorem case_001039_seqChoice :
    translationChoiceSeq case_001039_word case_001039_mask = case_001039_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001039_seqAtRank :
    translationSeqAtRankMask case_001039_rank case_001039_mask = case_001039_seq := by
  rw [translationSeqAtRankMask, case_001039_unrank]
  exact case_001039_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001039_bAtRank :
    translationBAtRankMask case_001039_rank case_001039_mask = case_001039_b := by
  rw [translationBAtRankMask, case_001039_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001039_b, case_001039_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001039_firstLine_eq :
    case_001039_support.firstLine case_001039_seq case_001039_b = case_001039_firstLine := by
  norm_num [case_001039_firstLine, case_001039_support, case_001039_seq, case_001039_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001039_secondLine_eq :
    case_001039_support.secondLine case_001039_seq case_001039_b = case_001039_secondLine := by
  norm_num [case_001039_secondLine, case_001039_support, case_001039_seq, case_001039_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001039_sourceAgrees :
    SourceAgrees case_001039_support case_001039_rank.val case_001039_mask := by
  intro hlt
  have hrank : (⟨case_001039_rank.val, hlt⟩ : Fin numPairWords) = case_001039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001039_rank.val, hlt⟩ case_001039_mask =
        case_001039_seq := by
    simpa [hrank] using case_001039_seqAtRank
  simp [SourceChecks, hseq, case_001039_support,
    checkTranslationConstraintSource, case_001039_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001039_rows :
    EqEqPosVarFirstRows case_001039_support case_001039_rank.val case_001039_mask := by
  intro hlt
  have hrank : (⟨case_001039_rank.val, hlt⟩ : Fin numPairWords) = case_001039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001039_rank.val, hlt⟩ case_001039_mask =
        case_001039_seq := by
    simpa [hrank] using case_001039_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001039_rank.val, hlt⟩ case_001039_mask =
        case_001039_b := by
    simpa [hrank] using case_001039_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001039_support case_001039_rank.val hlt
          case_001039_mask = case_001039_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001039_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001039_support case_001039_rank.val hlt
          case_001039_mask = case_001039_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001039_secondLine_eq]
  have case_001039_rowFirst :
      EqEqPosRow (FirstLineAt case_001039_support case_001039_rank.val hlt case_001039_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001039_firstLine, EqEqPosRow]
  have case_001039_fixedSecond :
      FixedRow (SecondLineAt case_001039_support case_001039_rank.val hlt case_001039_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001039_secondLine, FixedRow]
  exact ⟨case_001039_rowFirst, case_001039_fixedSecond⟩

private theorem case_001039_existsRows :
    ExistsEqEqPosVarFirstRows case_001039_rank.val case_001039_mask :=
  ⟨case_001039_support, case_001039_sourceAgrees, case_001039_rows⟩

private theorem case_001039_covered :
    RowPropertyParametricCovered case_001039_rank.val case_001039_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001039_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001040_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001040_mask : SignMask := ⟨24, by decide⟩
private def case_001040_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001040_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001040_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_001040_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_001040_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001040_rankWord :
    rankPairWord? case_001040_word = some case_001040_rank := by
  decide

private theorem case_001040_unrank :
    unrankPairWord case_001040_rank = case_001040_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001040_word case_001040_rank).1
    case_001040_rankWord |>.symm

private theorem case_001040_seqChoice :
    translationChoiceSeq case_001040_word case_001040_mask = case_001040_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001040_seqAtRank :
    translationSeqAtRankMask case_001040_rank case_001040_mask = case_001040_seq := by
  rw [translationSeqAtRankMask, case_001040_unrank]
  exact case_001040_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001040_bAtRank :
    translationBAtRankMask case_001040_rank case_001040_mask = case_001040_b := by
  rw [translationBAtRankMask, case_001040_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001040_b, case_001040_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001040_firstLine_eq :
    case_001040_support.firstLine case_001040_seq case_001040_b = case_001040_firstLine := by
  norm_num [case_001040_firstLine, case_001040_support, case_001040_seq, case_001040_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001040_secondLine_eq :
    case_001040_support.secondLine case_001040_seq case_001040_b = case_001040_secondLine := by
  norm_num [case_001040_secondLine, case_001040_support, case_001040_seq, case_001040_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001040_sourceAgrees :
    SourceAgrees case_001040_support case_001040_rank.val case_001040_mask := by
  intro hlt
  have hrank : (⟨case_001040_rank.val, hlt⟩ : Fin numPairWords) = case_001040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001040_rank.val, hlt⟩ case_001040_mask =
        case_001040_seq := by
    simpa [hrank] using case_001040_seqAtRank
  simp [SourceChecks, hseq, case_001040_support,
    checkTranslationConstraintSource, case_001040_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001040_rows :
    EqEqPosVarFirstRows case_001040_support case_001040_rank.val case_001040_mask := by
  intro hlt
  have hrank : (⟨case_001040_rank.val, hlt⟩ : Fin numPairWords) = case_001040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001040_rank.val, hlt⟩ case_001040_mask =
        case_001040_seq := by
    simpa [hrank] using case_001040_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001040_rank.val, hlt⟩ case_001040_mask =
        case_001040_b := by
    simpa [hrank] using case_001040_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001040_support case_001040_rank.val hlt
          case_001040_mask = case_001040_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001040_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001040_support case_001040_rank.val hlt
          case_001040_mask = case_001040_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001040_secondLine_eq]
  have case_001040_rowFirst :
      EqEqPosRow (FirstLineAt case_001040_support case_001040_rank.val hlt case_001040_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001040_firstLine, EqEqPosRow]
  have case_001040_fixedSecond :
      FixedRow (SecondLineAt case_001040_support case_001040_rank.val hlt case_001040_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001040_secondLine, FixedRow]
  exact ⟨case_001040_rowFirst, case_001040_fixedSecond⟩

private theorem case_001040_existsRows :
    ExistsEqEqPosVarFirstRows case_001040_rank.val case_001040_mask :=
  ⟨case_001040_support, case_001040_sourceAgrees, case_001040_rows⟩

private theorem case_001040_covered :
    RowPropertyParametricCovered case_001040_rank.val case_001040_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001040_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001041_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001041_mask : SignMask := ⟨29, by decide⟩
private def case_001041_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001041_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001041_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_001041_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001041_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_001041_rankWord :
    rankPairWord? case_001041_word = some case_001041_rank := by
  decide

private theorem case_001041_unrank :
    unrankPairWord case_001041_rank = case_001041_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001041_word case_001041_rank).1
    case_001041_rankWord |>.symm

private theorem case_001041_seqChoice :
    translationChoiceSeq case_001041_word case_001041_mask = case_001041_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001041_seqAtRank :
    translationSeqAtRankMask case_001041_rank case_001041_mask = case_001041_seq := by
  rw [translationSeqAtRankMask, case_001041_unrank]
  exact case_001041_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001041_bAtRank :
    translationBAtRankMask case_001041_rank case_001041_mask = case_001041_b := by
  rw [translationBAtRankMask, case_001041_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001041_b, case_001041_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001041_firstLine_eq :
    case_001041_support.firstLine case_001041_seq case_001041_b = case_001041_firstLine := by
  norm_num [case_001041_firstLine, case_001041_support, case_001041_seq, case_001041_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001041_secondLine_eq :
    case_001041_support.secondLine case_001041_seq case_001041_b = case_001041_secondLine := by
  norm_num [case_001041_secondLine, case_001041_support, case_001041_seq, case_001041_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001041_sourceAgrees :
    SourceAgrees case_001041_support case_001041_rank.val case_001041_mask := by
  intro hlt
  have hrank : (⟨case_001041_rank.val, hlt⟩ : Fin numPairWords) = case_001041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001041_rank.val, hlt⟩ case_001041_mask =
        case_001041_seq := by
    simpa [hrank] using case_001041_seqAtRank
  simp [SourceChecks, hseq, case_001041_support,
    checkTranslationConstraintSource, case_001041_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001041_rows :
    EqEqPosVarSecondRows case_001041_support case_001041_rank.val case_001041_mask := by
  intro hlt
  have hrank : (⟨case_001041_rank.val, hlt⟩ : Fin numPairWords) = case_001041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001041_rank.val, hlt⟩ case_001041_mask =
        case_001041_seq := by
    simpa [hrank] using case_001041_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001041_rank.val, hlt⟩ case_001041_mask =
        case_001041_b := by
    simpa [hrank] using case_001041_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001041_support case_001041_rank.val hlt
          case_001041_mask = case_001041_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001041_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001041_support case_001041_rank.val hlt
          case_001041_mask = case_001041_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001041_secondLine_eq]
  have case_001041_fixedFirst :
      FixedRow (FirstLineAt case_001041_support case_001041_rank.val hlt case_001041_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001041_firstLine, FixedRow]
  have case_001041_rowSecond :
      EqEqPosRow (SecondLineAt case_001041_support case_001041_rank.val hlt case_001041_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001041_secondLine, EqEqPosRow]
  exact ⟨case_001041_fixedFirst, case_001041_rowSecond⟩

private theorem case_001041_existsRows :
    ExistsEqEqPosVarSecondRows case_001041_rank.val case_001041_mask :=
  ⟨case_001041_support, case_001041_sourceAgrees, case_001041_rows⟩

private theorem case_001041_covered :
    RowPropertyParametricCovered case_001041_rank.val case_001041_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001041_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001042_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001042_mask : SignMask := ⟨30, by decide⟩
private def case_001042_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001042_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001042_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_001042_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001042_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001042_rankWord :
    rankPairWord? case_001042_word = some case_001042_rank := by
  decide

private theorem case_001042_unrank :
    unrankPairWord case_001042_rank = case_001042_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001042_word case_001042_rank).1
    case_001042_rankWord |>.symm

private theorem case_001042_seqChoice :
    translationChoiceSeq case_001042_word case_001042_mask = case_001042_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001042_seqAtRank :
    translationSeqAtRankMask case_001042_rank case_001042_mask = case_001042_seq := by
  rw [translationSeqAtRankMask, case_001042_unrank]
  exact case_001042_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001042_bAtRank :
    translationBAtRankMask case_001042_rank case_001042_mask = case_001042_b := by
  rw [translationBAtRankMask, case_001042_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001042_b, case_001042_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001042_firstLine_eq :
    case_001042_support.firstLine case_001042_seq case_001042_b = case_001042_firstLine := by
  norm_num [case_001042_firstLine, case_001042_support, case_001042_seq, case_001042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001042_secondLine_eq :
    case_001042_support.secondLine case_001042_seq case_001042_b = case_001042_secondLine := by
  norm_num [case_001042_secondLine, case_001042_support, case_001042_seq, case_001042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001042_sourceAgrees :
    SourceAgrees case_001042_support case_001042_rank.val case_001042_mask := by
  intro hlt
  have hrank : (⟨case_001042_rank.val, hlt⟩ : Fin numPairWords) = case_001042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001042_rank.val, hlt⟩ case_001042_mask =
        case_001042_seq := by
    simpa [hrank] using case_001042_seqAtRank
  simp [SourceChecks, hseq, case_001042_support,
    checkTranslationConstraintSource, case_001042_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001042_rows :
    EqEqPosVarFirstRows case_001042_support case_001042_rank.val case_001042_mask := by
  intro hlt
  have hrank : (⟨case_001042_rank.val, hlt⟩ : Fin numPairWords) = case_001042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001042_rank.val, hlt⟩ case_001042_mask =
        case_001042_seq := by
    simpa [hrank] using case_001042_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001042_rank.val, hlt⟩ case_001042_mask =
        case_001042_b := by
    simpa [hrank] using case_001042_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001042_support case_001042_rank.val hlt
          case_001042_mask = case_001042_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001042_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001042_support case_001042_rank.val hlt
          case_001042_mask = case_001042_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001042_secondLine_eq]
  have case_001042_rowFirst :
      EqEqPosRow (FirstLineAt case_001042_support case_001042_rank.val hlt case_001042_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001042_firstLine, EqEqPosRow]
  have case_001042_fixedSecond :
      FixedRow (SecondLineAt case_001042_support case_001042_rank.val hlt case_001042_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001042_secondLine, FixedRow]
  exact ⟨case_001042_rowFirst, case_001042_fixedSecond⟩

private theorem case_001042_existsRows :
    ExistsEqEqPosVarFirstRows case_001042_rank.val case_001042_mask :=
  ⟨case_001042_support, case_001042_sourceAgrees, case_001042_rows⟩

private theorem case_001042_covered :
    RowPropertyParametricCovered case_001042_rank.val case_001042_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001042_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001043_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001043_mask : SignMask := ⟨31, by decide⟩
private def case_001043_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001043_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001043_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (52/9) }
private def case_001043_firstLine : StrictLin2 := { a := (-29/21), b := (29/21), c := (-61/21) }
private def case_001043_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001043_rankWord :
    rankPairWord? case_001043_word = some case_001043_rank := by
  decide

private theorem case_001043_unrank :
    unrankPairWord case_001043_rank = case_001043_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001043_word case_001043_rank).1
    case_001043_rankWord |>.symm

private theorem case_001043_seqChoice :
    translationChoiceSeq case_001043_word case_001043_mask = case_001043_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001043_seqAtRank :
    translationSeqAtRankMask case_001043_rank case_001043_mask = case_001043_seq := by
  rw [translationSeqAtRankMask, case_001043_unrank]
  exact case_001043_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001043_bAtRank :
    translationBAtRankMask case_001043_rank case_001043_mask = case_001043_b := by
  rw [translationBAtRankMask, case_001043_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001043_b, case_001043_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001043_firstLine_eq :
    case_001043_support.firstLine case_001043_seq case_001043_b = case_001043_firstLine := by
  norm_num [case_001043_firstLine, case_001043_support, case_001043_seq, case_001043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001043_secondLine_eq :
    case_001043_support.secondLine case_001043_seq case_001043_b = case_001043_secondLine := by
  norm_num [case_001043_secondLine, case_001043_support, case_001043_seq, case_001043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001043_sourceAgrees :
    SourceAgrees case_001043_support case_001043_rank.val case_001043_mask := by
  intro hlt
  have hrank : (⟨case_001043_rank.val, hlt⟩ : Fin numPairWords) = case_001043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001043_rank.val, hlt⟩ case_001043_mask =
        case_001043_seq := by
    simpa [hrank] using case_001043_seqAtRank
  simp [SourceChecks, hseq, case_001043_support,
    checkTranslationConstraintSource, case_001043_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001043_rows :
    OppOneMinusVarFirstRows case_001043_support case_001043_rank.val case_001043_mask := by
  intro hlt
  have hrank : (⟨case_001043_rank.val, hlt⟩ : Fin numPairWords) = case_001043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001043_rank.val, hlt⟩ case_001043_mask =
        case_001043_seq := by
    simpa [hrank] using case_001043_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001043_rank.val, hlt⟩ case_001043_mask =
        case_001043_b := by
    simpa [hrank] using case_001043_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001043_support case_001043_rank.val hlt
          case_001043_mask = case_001043_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001043_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001043_support case_001043_rank.val hlt
          case_001043_mask = case_001043_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001043_secondLine_eq]
  have case_001043_rowFirst :
      OppPosRow (FirstLineAt case_001043_support case_001043_rank.val hlt case_001043_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001043_firstLine, OppPosRow]
  have case_001043_fixedSecond :
      FixedRow (SecondLineAt case_001043_support case_001043_rank.val hlt case_001043_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001043_secondLine, FixedRow]
  exact ⟨case_001043_rowFirst, case_001043_fixedSecond⟩

private theorem case_001043_existsRows :
    ExistsOppOneMinusVarFirstRows case_001043_rank.val case_001043_mask :=
  ⟨case_001043_support, case_001043_sourceAgrees, case_001043_rows⟩

private theorem case_001043_covered :
    RowPropertyParametricCovered case_001043_rank.val case_001043_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001043_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001044_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001044_mask : SignMask := ⟨45, by decide⟩
private def case_001044_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001044_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001044_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_001044_firstLine : StrictLin2 := { a := (-10/39), b := (10/39), c := (-16/13) }
private def case_001044_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001044_rankWord :
    rankPairWord? case_001044_word = some case_001044_rank := by
  decide

private theorem case_001044_unrank :
    unrankPairWord case_001044_rank = case_001044_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001044_word case_001044_rank).1
    case_001044_rankWord |>.symm

private theorem case_001044_seqChoice :
    translationChoiceSeq case_001044_word case_001044_mask = case_001044_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001044_seqAtRank :
    translationSeqAtRankMask case_001044_rank case_001044_mask = case_001044_seq := by
  rw [translationSeqAtRankMask, case_001044_unrank]
  exact case_001044_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001044_bAtRank :
    translationBAtRankMask case_001044_rank case_001044_mask = case_001044_b := by
  rw [translationBAtRankMask, case_001044_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001044_b, case_001044_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001044_firstLine_eq :
    case_001044_support.firstLine case_001044_seq case_001044_b = case_001044_firstLine := by
  norm_num [case_001044_firstLine, case_001044_support, case_001044_seq, case_001044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001044_secondLine_eq :
    case_001044_support.secondLine case_001044_seq case_001044_b = case_001044_secondLine := by
  norm_num [case_001044_secondLine, case_001044_support, case_001044_seq, case_001044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001044_sourceAgrees :
    SourceAgrees case_001044_support case_001044_rank.val case_001044_mask := by
  intro hlt
  have hrank : (⟨case_001044_rank.val, hlt⟩ : Fin numPairWords) = case_001044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001044_rank.val, hlt⟩ case_001044_mask =
        case_001044_seq := by
    simpa [hrank] using case_001044_seqAtRank
  simp [SourceChecks, hseq, case_001044_support,
    checkTranslationConstraintSource, case_001044_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001044_rows :
    OppOneMinusVarFirstRows case_001044_support case_001044_rank.val case_001044_mask := by
  intro hlt
  have hrank : (⟨case_001044_rank.val, hlt⟩ : Fin numPairWords) = case_001044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001044_rank.val, hlt⟩ case_001044_mask =
        case_001044_seq := by
    simpa [hrank] using case_001044_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001044_rank.val, hlt⟩ case_001044_mask =
        case_001044_b := by
    simpa [hrank] using case_001044_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001044_support case_001044_rank.val hlt
          case_001044_mask = case_001044_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001044_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001044_support case_001044_rank.val hlt
          case_001044_mask = case_001044_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001044_secondLine_eq]
  have case_001044_rowFirst :
      OppPosRow (FirstLineAt case_001044_support case_001044_rank.val hlt case_001044_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001044_firstLine, OppPosRow]
  have case_001044_fixedSecond :
      FixedRow (SecondLineAt case_001044_support case_001044_rank.val hlt case_001044_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001044_secondLine, FixedRow]
  exact ⟨case_001044_rowFirst, case_001044_fixedSecond⟩

private theorem case_001044_existsRows :
    ExistsOppOneMinusVarFirstRows case_001044_rank.val case_001044_mask :=
  ⟨case_001044_support, case_001044_sourceAgrees, case_001044_rows⟩

private theorem case_001044_covered :
    RowPropertyParametricCovered case_001044_rank.val case_001044_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001044_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001045_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001045_mask : SignMask := ⟨47, by decide⟩
private def case_001045_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001045_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001045_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (52/9) }
private def case_001045_firstLine : StrictLin2 := { a := (-10/21), b := (10/21), c := (-4/7) }
private def case_001045_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001045_rankWord :
    rankPairWord? case_001045_word = some case_001045_rank := by
  decide

private theorem case_001045_unrank :
    unrankPairWord case_001045_rank = case_001045_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001045_word case_001045_rank).1
    case_001045_rankWord |>.symm

private theorem case_001045_seqChoice :
    translationChoiceSeq case_001045_word case_001045_mask = case_001045_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001045_seqAtRank :
    translationSeqAtRankMask case_001045_rank case_001045_mask = case_001045_seq := by
  rw [translationSeqAtRankMask, case_001045_unrank]
  exact case_001045_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001045_bAtRank :
    translationBAtRankMask case_001045_rank case_001045_mask = case_001045_b := by
  rw [translationBAtRankMask, case_001045_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001045_b, case_001045_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001045_firstLine_eq :
    case_001045_support.firstLine case_001045_seq case_001045_b = case_001045_firstLine := by
  norm_num [case_001045_firstLine, case_001045_support, case_001045_seq, case_001045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001045_secondLine_eq :
    case_001045_support.secondLine case_001045_seq case_001045_b = case_001045_secondLine := by
  norm_num [case_001045_secondLine, case_001045_support, case_001045_seq, case_001045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001045_sourceAgrees :
    SourceAgrees case_001045_support case_001045_rank.val case_001045_mask := by
  intro hlt
  have hrank : (⟨case_001045_rank.val, hlt⟩ : Fin numPairWords) = case_001045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001045_rank.val, hlt⟩ case_001045_mask =
        case_001045_seq := by
    simpa [hrank] using case_001045_seqAtRank
  simp [SourceChecks, hseq, case_001045_support,
    checkTranslationConstraintSource, case_001045_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001045_rows :
    OppOneMinusVarFirstRows case_001045_support case_001045_rank.val case_001045_mask := by
  intro hlt
  have hrank : (⟨case_001045_rank.val, hlt⟩ : Fin numPairWords) = case_001045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001045_rank.val, hlt⟩ case_001045_mask =
        case_001045_seq := by
    simpa [hrank] using case_001045_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001045_rank.val, hlt⟩ case_001045_mask =
        case_001045_b := by
    simpa [hrank] using case_001045_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001045_support case_001045_rank.val hlt
          case_001045_mask = case_001045_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001045_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001045_support case_001045_rank.val hlt
          case_001045_mask = case_001045_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001045_secondLine_eq]
  have case_001045_rowFirst :
      OppPosRow (FirstLineAt case_001045_support case_001045_rank.val hlt case_001045_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001045_firstLine, OppPosRow]
  have case_001045_fixedSecond :
      FixedRow (SecondLineAt case_001045_support case_001045_rank.val hlt case_001045_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001045_secondLine, FixedRow]
  exact ⟨case_001045_rowFirst, case_001045_fixedSecond⟩

private theorem case_001045_existsRows :
    ExistsOppOneMinusVarFirstRows case_001045_rank.val case_001045_mask :=
  ⟨case_001045_support, case_001045_sourceAgrees, case_001045_rows⟩

private theorem case_001045_covered :
    RowPropertyParametricCovered case_001045_rank.val case_001045_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001045_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001046_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001046_mask : SignMask := ⟨57, by decide⟩
private def case_001046_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001046_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmp
private def case_001046_b : Vec3 Rat := { x := (-220/27), y := (220/27), z := (-412/27) }
private def case_001046_firstLine : StrictLin2 := { a := 1, b := -1, c := (-261/55) }
private def case_001046_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001046_rankWord :
    rankPairWord? case_001046_word = some case_001046_rank := by
  decide

private theorem case_001046_unrank :
    unrankPairWord case_001046_rank = case_001046_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001046_word case_001046_rank).1
    case_001046_rankWord |>.symm

private theorem case_001046_seqChoice :
    translationChoiceSeq case_001046_word case_001046_mask = case_001046_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001046_seqAtRank :
    translationSeqAtRankMask case_001046_rank case_001046_mask = case_001046_seq := by
  rw [translationSeqAtRankMask, case_001046_unrank]
  exact case_001046_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001046_bAtRank :
    translationBAtRankMask case_001046_rank case_001046_mask = case_001046_b := by
  rw [translationBAtRankMask, case_001046_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001046_b, case_001046_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001046_firstLine_eq :
    case_001046_support.firstLine case_001046_seq case_001046_b = case_001046_firstLine := by
  norm_num [case_001046_firstLine, case_001046_support, case_001046_seq, case_001046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001046_secondLine_eq :
    case_001046_support.secondLine case_001046_seq case_001046_b = case_001046_secondLine := by
  norm_num [case_001046_secondLine, case_001046_support, case_001046_seq, case_001046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001046_sourceAgrees :
    SourceAgrees case_001046_support case_001046_rank.val case_001046_mask := by
  intro hlt
  have hrank : (⟨case_001046_rank.val, hlt⟩ : Fin numPairWords) = case_001046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001046_rank.val, hlt⟩ case_001046_mask =
        case_001046_seq := by
    simpa [hrank] using case_001046_seqAtRank
  simp [SourceChecks, hseq, case_001046_support,
    checkTranslationConstraintSource, case_001046_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001046_rows :
    OppMinusOneVarFirstRows case_001046_support case_001046_rank.val case_001046_mask := by
  intro hlt
  have hrank : (⟨case_001046_rank.val, hlt⟩ : Fin numPairWords) = case_001046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001046_rank.val, hlt⟩ case_001046_mask =
        case_001046_seq := by
    simpa [hrank] using case_001046_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001046_rank.val, hlt⟩ case_001046_mask =
        case_001046_b := by
    simpa [hrank] using case_001046_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001046_support case_001046_rank.val hlt
          case_001046_mask = case_001046_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001046_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001046_support case_001046_rank.val hlt
          case_001046_mask = case_001046_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001046_secondLine_eq]
  have case_001046_rowFirst :
      OppNegRow (FirstLineAt case_001046_support case_001046_rank.val hlt case_001046_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001046_firstLine, OppNegRow]
  have case_001046_fixedSecond :
      FixedRow (SecondLineAt case_001046_support case_001046_rank.val hlt case_001046_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001046_secondLine, FixedRow]
  exact ⟨case_001046_rowFirst, case_001046_fixedSecond⟩

private theorem case_001046_existsRows :
    ExistsOppMinusOneVarFirstRows case_001046_rank.val case_001046_mask :=
  ⟨case_001046_support, case_001046_sourceAgrees, case_001046_rows⟩

private theorem case_001046_covered :
    RowPropertyParametricCovered case_001046_rank.val case_001046_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001046_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_001047_rank : Fin numPairWords := ⟨808, by decide⟩
private def case_001047_mask : SignMask := ⟨63, by decide⟩
private def case_001047_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩
private def case_001047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_001047_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001047_b : Vec3 Rat := { x := (-268/27), y := (268/27), z := (44/27) }
private def case_001047_firstLine : StrictLin2 := { a := 1, b := 1, c := (-89/67) }
private def case_001047_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_001047_rankWord :
    rankPairWord? case_001047_word = some case_001047_rank := by
  decide

private theorem case_001047_unrank :
    unrankPairWord case_001047_rank = case_001047_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001047_word case_001047_rank).1
    case_001047_rankWord |>.symm

private theorem case_001047_seqChoice :
    translationChoiceSeq case_001047_word case_001047_mask = case_001047_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001047_seqAtRank :
    translationSeqAtRankMask case_001047_rank case_001047_mask = case_001047_seq := by
  rw [translationSeqAtRankMask, case_001047_unrank]
  exact case_001047_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001047_bAtRank :
    translationBAtRankMask case_001047_rank case_001047_mask = case_001047_b := by
  rw [translationBAtRankMask, case_001047_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001047_b, case_001047_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001047_firstLine_eq :
    case_001047_support.firstLine case_001047_seq case_001047_b = case_001047_firstLine := by
  norm_num [case_001047_firstLine, case_001047_support, case_001047_seq, case_001047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001047_secondLine_eq :
    case_001047_support.secondLine case_001047_seq case_001047_b = case_001047_secondLine := by
  norm_num [case_001047_secondLine, case_001047_support, case_001047_seq, case_001047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001047_sourceAgrees :
    SourceAgrees case_001047_support case_001047_rank.val case_001047_mask := by
  intro hlt
  have hrank : (⟨case_001047_rank.val, hlt⟩ : Fin numPairWords) = case_001047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001047_rank.val, hlt⟩ case_001047_mask =
        case_001047_seq := by
    simpa [hrank] using case_001047_seqAtRank
  simp [SourceChecks, hseq, case_001047_support,
    checkTranslationConstraintSource, case_001047_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001047_rows :
    EqEqNegVarFirstRows case_001047_support case_001047_rank.val case_001047_mask := by
  intro hlt
  have hrank : (⟨case_001047_rank.val, hlt⟩ : Fin numPairWords) = case_001047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001047_rank.val, hlt⟩ case_001047_mask =
        case_001047_seq := by
    simpa [hrank] using case_001047_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001047_rank.val, hlt⟩ case_001047_mask =
        case_001047_b := by
    simpa [hrank] using case_001047_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001047_support case_001047_rank.val hlt
          case_001047_mask = case_001047_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001047_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001047_support case_001047_rank.val hlt
          case_001047_mask = case_001047_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001047_secondLine_eq]
  have case_001047_rowFirst :
      EqEqNegRow (FirstLineAt case_001047_support case_001047_rank.val hlt case_001047_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001047_firstLine, EqEqNegRow]
  have case_001047_fixedSecond :
      FixedRow (SecondLineAt case_001047_support case_001047_rank.val hlt case_001047_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001047_secondLine, FixedRow]
  exact ⟨case_001047_rowFirst, case_001047_fixedSecond⟩

private theorem case_001047_existsRows :
    ExistsEqEqNegVarFirstRows case_001047_rank.val case_001047_mask :=
  ⟨case_001047_support, case_001047_sourceAgrees, case_001047_rows⟩

private theorem case_001047_covered :
    RowPropertyParametricCovered case_001047_rank.val case_001047_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_001047_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001048_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001048_mask : SignMask := ⟨8, by decide⟩
private def case_001048_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001048_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001048_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001048_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001048_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001048_rankWord :
    rankPairWord? case_001048_word = some case_001048_rank := by
  decide

private theorem case_001048_unrank :
    unrankPairWord case_001048_rank = case_001048_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001048_word case_001048_rank).1
    case_001048_rankWord |>.symm

private theorem case_001048_seqChoice :
    translationChoiceSeq case_001048_word case_001048_mask = case_001048_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001048_seqAtRank :
    translationSeqAtRankMask case_001048_rank case_001048_mask = case_001048_seq := by
  rw [translationSeqAtRankMask, case_001048_unrank]
  exact case_001048_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001048_bAtRank :
    translationBAtRankMask case_001048_rank case_001048_mask = case_001048_b := by
  rw [translationBAtRankMask, case_001048_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001048_b, case_001048_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001048_firstLine_eq :
    case_001048_support.firstLine case_001048_seq case_001048_b = case_001048_firstLine := by
  norm_num [case_001048_firstLine, case_001048_support, case_001048_seq, case_001048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001048_secondLine_eq :
    case_001048_support.secondLine case_001048_seq case_001048_b = case_001048_secondLine := by
  norm_num [case_001048_secondLine, case_001048_support, case_001048_seq, case_001048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001048_sourceAgrees :
    SourceAgrees case_001048_support case_001048_rank.val case_001048_mask := by
  intro hlt
  have hrank : (⟨case_001048_rank.val, hlt⟩ : Fin numPairWords) = case_001048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001048_rank.val, hlt⟩ case_001048_mask =
        case_001048_seq := by
    simpa [hrank] using case_001048_seqAtRank
  simp [SourceChecks, hseq, case_001048_support,
    checkTranslationConstraintSource, case_001048_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001048_rows :
    EqEqPosVarFirstRows case_001048_support case_001048_rank.val case_001048_mask := by
  intro hlt
  have hrank : (⟨case_001048_rank.val, hlt⟩ : Fin numPairWords) = case_001048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001048_rank.val, hlt⟩ case_001048_mask =
        case_001048_seq := by
    simpa [hrank] using case_001048_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001048_rank.val, hlt⟩ case_001048_mask =
        case_001048_b := by
    simpa [hrank] using case_001048_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001048_support case_001048_rank.val hlt
          case_001048_mask = case_001048_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001048_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001048_support case_001048_rank.val hlt
          case_001048_mask = case_001048_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001048_secondLine_eq]
  have case_001048_rowFirst :
      EqEqPosRow (FirstLineAt case_001048_support case_001048_rank.val hlt case_001048_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001048_firstLine, EqEqPosRow]
  have case_001048_fixedSecond :
      FixedRow (SecondLineAt case_001048_support case_001048_rank.val hlt case_001048_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001048_secondLine, FixedRow]
  exact ⟨case_001048_rowFirst, case_001048_fixedSecond⟩

private theorem case_001048_existsRows :
    ExistsEqEqPosVarFirstRows case_001048_rank.val case_001048_mask :=
  ⟨case_001048_support, case_001048_sourceAgrees, case_001048_rows⟩

private theorem case_001048_covered :
    RowPropertyParametricCovered case_001048_rank.val case_001048_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001048_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001049_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001049_mask : SignMask := ⟨9, by decide⟩
private def case_001049_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001049_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001049_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_001049_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001049_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001049_rankWord :
    rankPairWord? case_001049_word = some case_001049_rank := by
  decide

private theorem case_001049_unrank :
    unrankPairWord case_001049_rank = case_001049_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001049_word case_001049_rank).1
    case_001049_rankWord |>.symm

private theorem case_001049_seqChoice :
    translationChoiceSeq case_001049_word case_001049_mask = case_001049_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001049_seqAtRank :
    translationSeqAtRankMask case_001049_rank case_001049_mask = case_001049_seq := by
  rw [translationSeqAtRankMask, case_001049_unrank]
  exact case_001049_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001049_bAtRank :
    translationBAtRankMask case_001049_rank case_001049_mask = case_001049_b := by
  rw [translationBAtRankMask, case_001049_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001049_b, case_001049_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001049_firstLine_eq :
    case_001049_support.firstLine case_001049_seq case_001049_b = case_001049_firstLine := by
  norm_num [case_001049_firstLine, case_001049_support, case_001049_seq, case_001049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001049_secondLine_eq :
    case_001049_support.secondLine case_001049_seq case_001049_b = case_001049_secondLine := by
  norm_num [case_001049_secondLine, case_001049_support, case_001049_seq, case_001049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001049_sourceAgrees :
    SourceAgrees case_001049_support case_001049_rank.val case_001049_mask := by
  intro hlt
  have hrank : (⟨case_001049_rank.val, hlt⟩ : Fin numPairWords) = case_001049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001049_rank.val, hlt⟩ case_001049_mask =
        case_001049_seq := by
    simpa [hrank] using case_001049_seqAtRank
  simp [SourceChecks, hseq, case_001049_support,
    checkTranslationConstraintSource, case_001049_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001049_rows :
    EqEqPosVarFirstRows case_001049_support case_001049_rank.val case_001049_mask := by
  intro hlt
  have hrank : (⟨case_001049_rank.val, hlt⟩ : Fin numPairWords) = case_001049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001049_rank.val, hlt⟩ case_001049_mask =
        case_001049_seq := by
    simpa [hrank] using case_001049_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001049_rank.val, hlt⟩ case_001049_mask =
        case_001049_b := by
    simpa [hrank] using case_001049_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001049_support case_001049_rank.val hlt
          case_001049_mask = case_001049_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001049_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001049_support case_001049_rank.val hlt
          case_001049_mask = case_001049_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001049_secondLine_eq]
  have case_001049_rowFirst :
      EqEqPosRow (FirstLineAt case_001049_support case_001049_rank.val hlt case_001049_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001049_firstLine, EqEqPosRow]
  have case_001049_fixedSecond :
      FixedRow (SecondLineAt case_001049_support case_001049_rank.val hlt case_001049_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001049_secondLine, FixedRow]
  exact ⟨case_001049_rowFirst, case_001049_fixedSecond⟩

private theorem case_001049_existsRows :
    ExistsEqEqPosVarFirstRows case_001049_rank.val case_001049_mask :=
  ⟨case_001049_support, case_001049_sourceAgrees, case_001049_rows⟩

private theorem case_001049_covered :
    RowPropertyParametricCovered case_001049_rank.val case_001049_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001049_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001050_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001050_mask : SignMask := ⟨13, by decide⟩
private def case_001050_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001050_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001050_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_001050_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001050_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_001050_rankWord :
    rankPairWord? case_001050_word = some case_001050_rank := by
  decide

private theorem case_001050_unrank :
    unrankPairWord case_001050_rank = case_001050_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001050_word case_001050_rank).1
    case_001050_rankWord |>.symm

private theorem case_001050_seqChoice :
    translationChoiceSeq case_001050_word case_001050_mask = case_001050_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001050_seqAtRank :
    translationSeqAtRankMask case_001050_rank case_001050_mask = case_001050_seq := by
  rw [translationSeqAtRankMask, case_001050_unrank]
  exact case_001050_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001050_bAtRank :
    translationBAtRankMask case_001050_rank case_001050_mask = case_001050_b := by
  rw [translationBAtRankMask, case_001050_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001050_b, case_001050_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001050_firstLine_eq :
    case_001050_support.firstLine case_001050_seq case_001050_b = case_001050_firstLine := by
  norm_num [case_001050_firstLine, case_001050_support, case_001050_seq, case_001050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001050_secondLine_eq :
    case_001050_support.secondLine case_001050_seq case_001050_b = case_001050_secondLine := by
  norm_num [case_001050_secondLine, case_001050_support, case_001050_seq, case_001050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001050_sourceAgrees :
    SourceAgrees case_001050_support case_001050_rank.val case_001050_mask := by
  intro hlt
  have hrank : (⟨case_001050_rank.val, hlt⟩ : Fin numPairWords) = case_001050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001050_rank.val, hlt⟩ case_001050_mask =
        case_001050_seq := by
    simpa [hrank] using case_001050_seqAtRank
  simp [SourceChecks, hseq, case_001050_support,
    checkTranslationConstraintSource, case_001050_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001050_rows :
    EqEqPosVarSecondRows case_001050_support case_001050_rank.val case_001050_mask := by
  intro hlt
  have hrank : (⟨case_001050_rank.val, hlt⟩ : Fin numPairWords) = case_001050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001050_rank.val, hlt⟩ case_001050_mask =
        case_001050_seq := by
    simpa [hrank] using case_001050_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001050_rank.val, hlt⟩ case_001050_mask =
        case_001050_b := by
    simpa [hrank] using case_001050_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001050_support case_001050_rank.val hlt
          case_001050_mask = case_001050_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001050_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001050_support case_001050_rank.val hlt
          case_001050_mask = case_001050_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001050_secondLine_eq]
  have case_001050_fixedFirst :
      FixedRow (FirstLineAt case_001050_support case_001050_rank.val hlt case_001050_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001050_firstLine, FixedRow]
  have case_001050_rowSecond :
      EqEqPosRow (SecondLineAt case_001050_support case_001050_rank.val hlt case_001050_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001050_secondLine, EqEqPosRow]
  exact ⟨case_001050_fixedFirst, case_001050_rowSecond⟩

private theorem case_001050_existsRows :
    ExistsEqEqPosVarSecondRows case_001050_rank.val case_001050_mask :=
  ⟨case_001050_support, case_001050_sourceAgrees, case_001050_rows⟩

private theorem case_001050_covered :
    RowPropertyParametricCovered case_001050_rank.val case_001050_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001050_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001051_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001051_mask : SignMask := ⟨16, by decide⟩
private def case_001051_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001051_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001051_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001051_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001051_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001051_rankWord :
    rankPairWord? case_001051_word = some case_001051_rank := by
  decide

private theorem case_001051_unrank :
    unrankPairWord case_001051_rank = case_001051_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001051_word case_001051_rank).1
    case_001051_rankWord |>.symm

private theorem case_001051_seqChoice :
    translationChoiceSeq case_001051_word case_001051_mask = case_001051_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001051_seqAtRank :
    translationSeqAtRankMask case_001051_rank case_001051_mask = case_001051_seq := by
  rw [translationSeqAtRankMask, case_001051_unrank]
  exact case_001051_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001051_bAtRank :
    translationBAtRankMask case_001051_rank case_001051_mask = case_001051_b := by
  rw [translationBAtRankMask, case_001051_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001051_b, case_001051_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001051_firstLine_eq :
    case_001051_support.firstLine case_001051_seq case_001051_b = case_001051_firstLine := by
  norm_num [case_001051_firstLine, case_001051_support, case_001051_seq, case_001051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001051_secondLine_eq :
    case_001051_support.secondLine case_001051_seq case_001051_b = case_001051_secondLine := by
  norm_num [case_001051_secondLine, case_001051_support, case_001051_seq, case_001051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001051_sourceAgrees :
    SourceAgrees case_001051_support case_001051_rank.val case_001051_mask := by
  intro hlt
  have hrank : (⟨case_001051_rank.val, hlt⟩ : Fin numPairWords) = case_001051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001051_rank.val, hlt⟩ case_001051_mask =
        case_001051_seq := by
    simpa [hrank] using case_001051_seqAtRank
  simp [SourceChecks, hseq, case_001051_support,
    checkTranslationConstraintSource, case_001051_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001051_rows :
    EqEqPosVarFirstRows case_001051_support case_001051_rank.val case_001051_mask := by
  intro hlt
  have hrank : (⟨case_001051_rank.val, hlt⟩ : Fin numPairWords) = case_001051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001051_rank.val, hlt⟩ case_001051_mask =
        case_001051_seq := by
    simpa [hrank] using case_001051_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001051_rank.val, hlt⟩ case_001051_mask =
        case_001051_b := by
    simpa [hrank] using case_001051_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001051_support case_001051_rank.val hlt
          case_001051_mask = case_001051_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001051_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001051_support case_001051_rank.val hlt
          case_001051_mask = case_001051_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001051_secondLine_eq]
  have case_001051_rowFirst :
      EqEqPosRow (FirstLineAt case_001051_support case_001051_rank.val hlt case_001051_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001051_firstLine, EqEqPosRow]
  have case_001051_fixedSecond :
      FixedRow (SecondLineAt case_001051_support case_001051_rank.val hlt case_001051_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001051_secondLine, FixedRow]
  exact ⟨case_001051_rowFirst, case_001051_fixedSecond⟩

private theorem case_001051_existsRows :
    ExistsEqEqPosVarFirstRows case_001051_rank.val case_001051_mask :=
  ⟨case_001051_support, case_001051_sourceAgrees, case_001051_rows⟩

private theorem case_001051_covered :
    RowPropertyParametricCovered case_001051_rank.val case_001051_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001051_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001052_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001052_mask : SignMask := ⟨18, by decide⟩
private def case_001052_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001052_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001052_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001052_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001052_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001052_rankWord :
    rankPairWord? case_001052_word = some case_001052_rank := by
  decide

private theorem case_001052_unrank :
    unrankPairWord case_001052_rank = case_001052_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001052_word case_001052_rank).1
    case_001052_rankWord |>.symm

private theorem case_001052_seqChoice :
    translationChoiceSeq case_001052_word case_001052_mask = case_001052_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001052_seqAtRank :
    translationSeqAtRankMask case_001052_rank case_001052_mask = case_001052_seq := by
  rw [translationSeqAtRankMask, case_001052_unrank]
  exact case_001052_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001052_bAtRank :
    translationBAtRankMask case_001052_rank case_001052_mask = case_001052_b := by
  rw [translationBAtRankMask, case_001052_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001052_b, case_001052_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001052_firstLine_eq :
    case_001052_support.firstLine case_001052_seq case_001052_b = case_001052_firstLine := by
  norm_num [case_001052_firstLine, case_001052_support, case_001052_seq, case_001052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001052_secondLine_eq :
    case_001052_support.secondLine case_001052_seq case_001052_b = case_001052_secondLine := by
  norm_num [case_001052_secondLine, case_001052_support, case_001052_seq, case_001052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001052_sourceAgrees :
    SourceAgrees case_001052_support case_001052_rank.val case_001052_mask := by
  intro hlt
  have hrank : (⟨case_001052_rank.val, hlt⟩ : Fin numPairWords) = case_001052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001052_rank.val, hlt⟩ case_001052_mask =
        case_001052_seq := by
    simpa [hrank] using case_001052_seqAtRank
  simp [SourceChecks, hseq, case_001052_support,
    checkTranslationConstraintSource, case_001052_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001052_rows :
    EqEqPosVarFirstRows case_001052_support case_001052_rank.val case_001052_mask := by
  intro hlt
  have hrank : (⟨case_001052_rank.val, hlt⟩ : Fin numPairWords) = case_001052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001052_rank.val, hlt⟩ case_001052_mask =
        case_001052_seq := by
    simpa [hrank] using case_001052_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001052_rank.val, hlt⟩ case_001052_mask =
        case_001052_b := by
    simpa [hrank] using case_001052_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001052_support case_001052_rank.val hlt
          case_001052_mask = case_001052_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001052_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001052_support case_001052_rank.val hlt
          case_001052_mask = case_001052_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001052_secondLine_eq]
  have case_001052_rowFirst :
      EqEqPosRow (FirstLineAt case_001052_support case_001052_rank.val hlt case_001052_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001052_firstLine, EqEqPosRow]
  have case_001052_fixedSecond :
      FixedRow (SecondLineAt case_001052_support case_001052_rank.val hlt case_001052_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001052_secondLine, FixedRow]
  exact ⟨case_001052_rowFirst, case_001052_fixedSecond⟩

private theorem case_001052_existsRows :
    ExistsEqEqPosVarFirstRows case_001052_rank.val case_001052_mask :=
  ⟨case_001052_support, case_001052_sourceAgrees, case_001052_rows⟩

private theorem case_001052_covered :
    RowPropertyParametricCovered case_001052_rank.val case_001052_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001052_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001053_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001053_mask : SignMask := ⟨22, by decide⟩
private def case_001053_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001053_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001053_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001053_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001053_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001053_rankWord :
    rankPairWord? case_001053_word = some case_001053_rank := by
  decide

private theorem case_001053_unrank :
    unrankPairWord case_001053_rank = case_001053_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001053_word case_001053_rank).1
    case_001053_rankWord |>.symm

private theorem case_001053_seqChoice :
    translationChoiceSeq case_001053_word case_001053_mask = case_001053_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001053_seqAtRank :
    translationSeqAtRankMask case_001053_rank case_001053_mask = case_001053_seq := by
  rw [translationSeqAtRankMask, case_001053_unrank]
  exact case_001053_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001053_bAtRank :
    translationBAtRankMask case_001053_rank case_001053_mask = case_001053_b := by
  rw [translationBAtRankMask, case_001053_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001053_b, case_001053_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001053_firstLine_eq :
    case_001053_support.firstLine case_001053_seq case_001053_b = case_001053_firstLine := by
  norm_num [case_001053_firstLine, case_001053_support, case_001053_seq, case_001053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001053_secondLine_eq :
    case_001053_support.secondLine case_001053_seq case_001053_b = case_001053_secondLine := by
  norm_num [case_001053_secondLine, case_001053_support, case_001053_seq, case_001053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001053_sourceAgrees :
    SourceAgrees case_001053_support case_001053_rank.val case_001053_mask := by
  intro hlt
  have hrank : (⟨case_001053_rank.val, hlt⟩ : Fin numPairWords) = case_001053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001053_rank.val, hlt⟩ case_001053_mask =
        case_001053_seq := by
    simpa [hrank] using case_001053_seqAtRank
  simp [SourceChecks, hseq, case_001053_support,
    checkTranslationConstraintSource, case_001053_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001053_rows :
    EqEqPosVarFirstRows case_001053_support case_001053_rank.val case_001053_mask := by
  intro hlt
  have hrank : (⟨case_001053_rank.val, hlt⟩ : Fin numPairWords) = case_001053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001053_rank.val, hlt⟩ case_001053_mask =
        case_001053_seq := by
    simpa [hrank] using case_001053_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001053_rank.val, hlt⟩ case_001053_mask =
        case_001053_b := by
    simpa [hrank] using case_001053_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001053_support case_001053_rank.val hlt
          case_001053_mask = case_001053_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001053_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001053_support case_001053_rank.val hlt
          case_001053_mask = case_001053_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001053_secondLine_eq]
  have case_001053_rowFirst :
      EqEqPosRow (FirstLineAt case_001053_support case_001053_rank.val hlt case_001053_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001053_firstLine, EqEqPosRow]
  have case_001053_fixedSecond :
      FixedRow (SecondLineAt case_001053_support case_001053_rank.val hlt case_001053_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001053_secondLine, FixedRow]
  exact ⟨case_001053_rowFirst, case_001053_fixedSecond⟩

private theorem case_001053_existsRows :
    ExistsEqEqPosVarFirstRows case_001053_rank.val case_001053_mask :=
  ⟨case_001053_support, case_001053_sourceAgrees, case_001053_rows⟩

private theorem case_001053_covered :
    RowPropertyParametricCovered case_001053_rank.val case_001053_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001053_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001054_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001054_mask : SignMask := ⟨24, by decide⟩
private def case_001054_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001054_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001054_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001054_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001054_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001054_rankWord :
    rankPairWord? case_001054_word = some case_001054_rank := by
  decide

private theorem case_001054_unrank :
    unrankPairWord case_001054_rank = case_001054_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001054_word case_001054_rank).1
    case_001054_rankWord |>.symm

private theorem case_001054_seqChoice :
    translationChoiceSeq case_001054_word case_001054_mask = case_001054_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001054_seqAtRank :
    translationSeqAtRankMask case_001054_rank case_001054_mask = case_001054_seq := by
  rw [translationSeqAtRankMask, case_001054_unrank]
  exact case_001054_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001054_bAtRank :
    translationBAtRankMask case_001054_rank case_001054_mask = case_001054_b := by
  rw [translationBAtRankMask, case_001054_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001054_b, case_001054_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001054_firstLine_eq :
    case_001054_support.firstLine case_001054_seq case_001054_b = case_001054_firstLine := by
  norm_num [case_001054_firstLine, case_001054_support, case_001054_seq, case_001054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001054_secondLine_eq :
    case_001054_support.secondLine case_001054_seq case_001054_b = case_001054_secondLine := by
  norm_num [case_001054_secondLine, case_001054_support, case_001054_seq, case_001054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001054_sourceAgrees :
    SourceAgrees case_001054_support case_001054_rank.val case_001054_mask := by
  intro hlt
  have hrank : (⟨case_001054_rank.val, hlt⟩ : Fin numPairWords) = case_001054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001054_rank.val, hlt⟩ case_001054_mask =
        case_001054_seq := by
    simpa [hrank] using case_001054_seqAtRank
  simp [SourceChecks, hseq, case_001054_support,
    checkTranslationConstraintSource, case_001054_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001054_rows :
    EqEqPosVarFirstRows case_001054_support case_001054_rank.val case_001054_mask := by
  intro hlt
  have hrank : (⟨case_001054_rank.val, hlt⟩ : Fin numPairWords) = case_001054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001054_rank.val, hlt⟩ case_001054_mask =
        case_001054_seq := by
    simpa [hrank] using case_001054_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001054_rank.val, hlt⟩ case_001054_mask =
        case_001054_b := by
    simpa [hrank] using case_001054_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001054_support case_001054_rank.val hlt
          case_001054_mask = case_001054_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001054_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001054_support case_001054_rank.val hlt
          case_001054_mask = case_001054_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001054_secondLine_eq]
  have case_001054_rowFirst :
      EqEqPosRow (FirstLineAt case_001054_support case_001054_rank.val hlt case_001054_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001054_firstLine, EqEqPosRow]
  have case_001054_fixedSecond :
      FixedRow (SecondLineAt case_001054_support case_001054_rank.val hlt case_001054_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001054_secondLine, FixedRow]
  exact ⟨case_001054_rowFirst, case_001054_fixedSecond⟩

private theorem case_001054_existsRows :
    ExistsEqEqPosVarFirstRows case_001054_rank.val case_001054_mask :=
  ⟨case_001054_support, case_001054_sourceAgrees, case_001054_rows⟩

private theorem case_001054_covered :
    RowPropertyParametricCovered case_001054_rank.val case_001054_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001054_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001055_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001055_mask : SignMask := ⟨28, by decide⟩
private def case_001055_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001055_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001055_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001055_firstLine : StrictLin2 := { a := (-22/17), b := (-22/17), c := (-88/51) }
private def case_001055_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001055_rankWord :
    rankPairWord? case_001055_word = some case_001055_rank := by
  decide

private theorem case_001055_unrank :
    unrankPairWord case_001055_rank = case_001055_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001055_word case_001055_rank).1
    case_001055_rankWord |>.symm

private theorem case_001055_seqChoice :
    translationChoiceSeq case_001055_word case_001055_mask = case_001055_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001055_seqAtRank :
    translationSeqAtRankMask case_001055_rank case_001055_mask = case_001055_seq := by
  rw [translationSeqAtRankMask, case_001055_unrank]
  exact case_001055_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001055_bAtRank :
    translationBAtRankMask case_001055_rank case_001055_mask = case_001055_b := by
  rw [translationBAtRankMask, case_001055_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001055_b, case_001055_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001055_firstLine_eq :
    case_001055_support.firstLine case_001055_seq case_001055_b = case_001055_firstLine := by
  norm_num [case_001055_firstLine, case_001055_support, case_001055_seq, case_001055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001055_secondLine_eq :
    case_001055_support.secondLine case_001055_seq case_001055_b = case_001055_secondLine := by
  norm_num [case_001055_secondLine, case_001055_support, case_001055_seq, case_001055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001055_sourceAgrees :
    SourceAgrees case_001055_support case_001055_rank.val case_001055_mask := by
  intro hlt
  have hrank : (⟨case_001055_rank.val, hlt⟩ : Fin numPairWords) = case_001055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001055_rank.val, hlt⟩ case_001055_mask =
        case_001055_seq := by
    simpa [hrank] using case_001055_seqAtRank
  simp [SourceChecks, hseq, case_001055_support,
    checkTranslationConstraintSource, case_001055_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001055_rows :
    EqEqPosVarFirstRows case_001055_support case_001055_rank.val case_001055_mask := by
  intro hlt
  have hrank : (⟨case_001055_rank.val, hlt⟩ : Fin numPairWords) = case_001055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001055_rank.val, hlt⟩ case_001055_mask =
        case_001055_seq := by
    simpa [hrank] using case_001055_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001055_rank.val, hlt⟩ case_001055_mask =
        case_001055_b := by
    simpa [hrank] using case_001055_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001055_support case_001055_rank.val hlt
          case_001055_mask = case_001055_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001055_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001055_support case_001055_rank.val hlt
          case_001055_mask = case_001055_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001055_secondLine_eq]
  have case_001055_rowFirst :
      EqEqPosRow (FirstLineAt case_001055_support case_001055_rank.val hlt case_001055_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001055_firstLine, EqEqPosRow]
  have case_001055_fixedSecond :
      FixedRow (SecondLineAt case_001055_support case_001055_rank.val hlt case_001055_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001055_secondLine, FixedRow]
  exact ⟨case_001055_rowFirst, case_001055_fixedSecond⟩

private theorem case_001055_existsRows :
    ExistsEqEqPosVarFirstRows case_001055_rank.val case_001055_mask :=
  ⟨case_001055_support, case_001055_sourceAgrees, case_001055_rows⟩

private theorem case_001055_covered :
    RowPropertyParametricCovered case_001055_rank.val case_001055_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001055_existsRows

inductive Group032Covered : Nat -> SignMask -> Prop
  | case_001024 : Group032Covered case_001024_rank.val case_001024_mask
  | case_001025 : Group032Covered case_001025_rank.val case_001025_mask
  | case_001026 : Group032Covered case_001026_rank.val case_001026_mask
  | case_001027 : Group032Covered case_001027_rank.val case_001027_mask
  | case_001028 : Group032Covered case_001028_rank.val case_001028_mask
  | case_001029 : Group032Covered case_001029_rank.val case_001029_mask
  | case_001030 : Group032Covered case_001030_rank.val case_001030_mask
  | case_001031 : Group032Covered case_001031_rank.val case_001031_mask
  | case_001032 : Group032Covered case_001032_rank.val case_001032_mask
  | case_001033 : Group032Covered case_001033_rank.val case_001033_mask
  | case_001034 : Group032Covered case_001034_rank.val case_001034_mask
  | case_001035 : Group032Covered case_001035_rank.val case_001035_mask
  | case_001036 : Group032Covered case_001036_rank.val case_001036_mask
  | case_001037 : Group032Covered case_001037_rank.val case_001037_mask
  | case_001038 : Group032Covered case_001038_rank.val case_001038_mask
  | case_001039 : Group032Covered case_001039_rank.val case_001039_mask
  | case_001040 : Group032Covered case_001040_rank.val case_001040_mask
  | case_001041 : Group032Covered case_001041_rank.val case_001041_mask
  | case_001042 : Group032Covered case_001042_rank.val case_001042_mask
  | case_001043 : Group032Covered case_001043_rank.val case_001043_mask
  | case_001044 : Group032Covered case_001044_rank.val case_001044_mask
  | case_001045 : Group032Covered case_001045_rank.val case_001045_mask
  | case_001046 : Group032Covered case_001046_rank.val case_001046_mask
  | case_001047 : Group032Covered case_001047_rank.val case_001047_mask
  | case_001048 : Group032Covered case_001048_rank.val case_001048_mask
  | case_001049 : Group032Covered case_001049_rank.val case_001049_mask
  | case_001050 : Group032Covered case_001050_rank.val case_001050_mask
  | case_001051 : Group032Covered case_001051_rank.val case_001051_mask
  | case_001052 : Group032Covered case_001052_rank.val case_001052_mask
  | case_001053 : Group032Covered case_001053_rank.val case_001053_mask
  | case_001054 : Group032Covered case_001054_rank.val case_001054_mask
  | case_001055 : Group032Covered case_001055_rank.val case_001055_mask

theorem Group032GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group032Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001024 =>
      exact RowPropertyParametricCovered.kills case_001024_covered
  | case_001025 =>
      exact RowPropertyParametricCovered.kills case_001025_covered
  | case_001026 =>
      exact RowPropertyParametricCovered.kills case_001026_covered
  | case_001027 =>
      exact RowPropertyParametricCovered.kills case_001027_covered
  | case_001028 =>
      exact RowPropertyParametricCovered.kills case_001028_covered
  | case_001029 =>
      exact RowPropertyParametricCovered.kills case_001029_covered
  | case_001030 =>
      exact RowPropertyParametricCovered.kills case_001030_covered
  | case_001031 =>
      exact RowPropertyParametricCovered.kills case_001031_covered
  | case_001032 =>
      exact RowPropertyParametricCovered.kills case_001032_covered
  | case_001033 =>
      exact RowPropertyParametricCovered.kills case_001033_covered
  | case_001034 =>
      exact RowPropertyParametricCovered.kills case_001034_covered
  | case_001035 =>
      exact RowPropertyParametricCovered.kills case_001035_covered
  | case_001036 =>
      exact RowPropertyParametricCovered.kills case_001036_covered
  | case_001037 =>
      exact RowPropertyParametricCovered.kills case_001037_covered
  | case_001038 =>
      exact RowPropertyParametricCovered.kills case_001038_covered
  | case_001039 =>
      exact RowPropertyParametricCovered.kills case_001039_covered
  | case_001040 =>
      exact RowPropertyParametricCovered.kills case_001040_covered
  | case_001041 =>
      exact RowPropertyParametricCovered.kills case_001041_covered
  | case_001042 =>
      exact RowPropertyParametricCovered.kills case_001042_covered
  | case_001043 =>
      exact RowPropertyParametricCovered.kills case_001043_covered
  | case_001044 =>
      exact RowPropertyParametricCovered.kills case_001044_covered
  | case_001045 =>
      exact RowPropertyParametricCovered.kills case_001045_covered
  | case_001046 =>
      exact RowPropertyParametricCovered.kills case_001046_covered
  | case_001047 =>
      exact RowPropertyParametricCovered.kills case_001047_covered
  | case_001048 =>
      exact RowPropertyParametricCovered.kills case_001048_covered
  | case_001049 =>
      exact RowPropertyParametricCovered.kills case_001049_covered
  | case_001050 =>
      exact RowPropertyParametricCovered.kills case_001050_covered
  | case_001051 =>
      exact RowPropertyParametricCovered.kills case_001051_covered
  | case_001052 =>
      exact RowPropertyParametricCovered.kills case_001052_covered
  | case_001053 =>
      exact RowPropertyParametricCovered.kills case_001053_covered
  | case_001054 =>
      exact RowPropertyParametricCovered.kills case_001054_covered
  | case_001055 =>
      exact RowPropertyParametricCovered.kills case_001055_covered

theorem Group032_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group032
