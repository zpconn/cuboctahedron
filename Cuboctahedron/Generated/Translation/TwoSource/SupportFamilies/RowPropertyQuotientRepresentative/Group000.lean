import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group000

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
private def case_000000_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000000_mask : SignMask := ⟨8, by decide⟩
private def case_000000_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000000_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000000_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000000_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000000_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000000_rankWord :
    rankPairWord? case_000000_word = some case_000000_rank := by
  decide

private theorem case_000000_unrank :
    unrankPairWord case_000000_rank = case_000000_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000000_word case_000000_rank).1
    case_000000_rankWord |>.symm

private theorem case_000000_seqChoice :
    translationChoiceSeq case_000000_word case_000000_mask = case_000000_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000000_seqAtRank :
    translationSeqAtRankMask case_000000_rank case_000000_mask = case_000000_seq := by
  rw [translationSeqAtRankMask, case_000000_unrank]
  exact case_000000_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000000_bAtRank :
    translationBAtRankMask case_000000_rank case_000000_mask = case_000000_b := by
  rw [translationBAtRankMask, case_000000_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000000_b, case_000000_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000000_firstLine_eq :
    case_000000_support.firstLine case_000000_seq case_000000_b = case_000000_firstLine := by
  norm_num [case_000000_firstLine, case_000000_support, case_000000_seq, case_000000_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000000_secondLine_eq :
    case_000000_support.secondLine case_000000_seq case_000000_b = case_000000_secondLine := by
  norm_num [case_000000_secondLine, case_000000_support, case_000000_seq, case_000000_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000000_sourceAgrees :
    SourceAgrees case_000000_support case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank : (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  simp [SourceChecks, hseq, case_000000_support,
    checkTranslationConstraintSource, case_000000_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000000_rows :
    EqEqPosVarFirstRows case_000000_support case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank : (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_b := by
    simpa [hrank] using case_000000_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000000_support case_000000_rank.val hlt
          case_000000_mask = case_000000_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000000_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000000_support case_000000_rank.val hlt
          case_000000_mask = case_000000_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000000_secondLine_eq]
  have case_000000_rowFirst :
      EqEqPosRow (FirstLineAt case_000000_support case_000000_rank.val hlt case_000000_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000000_firstLine, EqEqPosRow]
  have case_000000_fixedSecond :
      FixedRow (SecondLineAt case_000000_support case_000000_rank.val hlt case_000000_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000000_secondLine, FixedRow]
  exact ⟨case_000000_rowFirst, case_000000_fixedSecond⟩

private theorem case_000000_existsRows :
    ExistsEqEqPosVarFirstRows case_000000_rank.val case_000000_mask :=
  ⟨case_000000_support, case_000000_sourceAgrees, case_000000_rows⟩

private theorem case_000000_covered :
    RowPropertyParametricCovered case_000000_rank.val case_000000_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000000_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000001_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000001_mask : SignMask := ⟨9, by decide⟩
private def case_000001_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000001_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000001_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000001_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000001_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000001_rankWord :
    rankPairWord? case_000001_word = some case_000001_rank := by
  decide

private theorem case_000001_unrank :
    unrankPairWord case_000001_rank = case_000001_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000001_word case_000001_rank).1
    case_000001_rankWord |>.symm

private theorem case_000001_seqChoice :
    translationChoiceSeq case_000001_word case_000001_mask = case_000001_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000001_seqAtRank :
    translationSeqAtRankMask case_000001_rank case_000001_mask = case_000001_seq := by
  rw [translationSeqAtRankMask, case_000001_unrank]
  exact case_000001_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000001_bAtRank :
    translationBAtRankMask case_000001_rank case_000001_mask = case_000001_b := by
  rw [translationBAtRankMask, case_000001_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000001_b, case_000001_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000001_firstLine_eq :
    case_000001_support.firstLine case_000001_seq case_000001_b = case_000001_firstLine := by
  norm_num [case_000001_firstLine, case_000001_support, case_000001_seq, case_000001_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000001_secondLine_eq :
    case_000001_support.secondLine case_000001_seq case_000001_b = case_000001_secondLine := by
  norm_num [case_000001_secondLine, case_000001_support, case_000001_seq, case_000001_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000001_sourceAgrees :
    SourceAgrees case_000001_support case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  simp [SourceChecks, hseq, case_000001_support,
    checkTranslationConstraintSource, case_000001_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000001_rows :
    EqEqPosVarFirstRows case_000001_support case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_b := by
    simpa [hrank] using case_000001_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000001_support case_000001_rank.val hlt
          case_000001_mask = case_000001_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000001_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000001_support case_000001_rank.val hlt
          case_000001_mask = case_000001_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000001_secondLine_eq]
  have case_000001_rowFirst :
      EqEqPosRow (FirstLineAt case_000001_support case_000001_rank.val hlt case_000001_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000001_firstLine, EqEqPosRow]
  have case_000001_fixedSecond :
      FixedRow (SecondLineAt case_000001_support case_000001_rank.val hlt case_000001_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000001_secondLine, FixedRow]
  exact ⟨case_000001_rowFirst, case_000001_fixedSecond⟩

private theorem case_000001_existsRows :
    ExistsEqEqPosVarFirstRows case_000001_rank.val case_000001_mask :=
  ⟨case_000001_support, case_000001_sourceAgrees, case_000001_rows⟩

private theorem case_000001_covered :
    RowPropertyParametricCovered case_000001_rank.val case_000001_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000001_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000002_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000002_mask : SignMask := ⟨13, by decide⟩
private def case_000002_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000002_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000002_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000002_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000002_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000002_rankWord :
    rankPairWord? case_000002_word = some case_000002_rank := by
  decide

private theorem case_000002_unrank :
    unrankPairWord case_000002_rank = case_000002_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000002_word case_000002_rank).1
    case_000002_rankWord |>.symm

private theorem case_000002_seqChoice :
    translationChoiceSeq case_000002_word case_000002_mask = case_000002_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000002_seqAtRank :
    translationSeqAtRankMask case_000002_rank case_000002_mask = case_000002_seq := by
  rw [translationSeqAtRankMask, case_000002_unrank]
  exact case_000002_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000002_bAtRank :
    translationBAtRankMask case_000002_rank case_000002_mask = case_000002_b := by
  rw [translationBAtRankMask, case_000002_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000002_b, case_000002_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000002_firstLine_eq :
    case_000002_support.firstLine case_000002_seq case_000002_b = case_000002_firstLine := by
  norm_num [case_000002_firstLine, case_000002_support, case_000002_seq, case_000002_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000002_secondLine_eq :
    case_000002_support.secondLine case_000002_seq case_000002_b = case_000002_secondLine := by
  norm_num [case_000002_secondLine, case_000002_support, case_000002_seq, case_000002_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000002_sourceAgrees :
    SourceAgrees case_000002_support case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  simp [SourceChecks, hseq, case_000002_support,
    checkTranslationConstraintSource, case_000002_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000002_rows :
    EqEqPosVarSecondRows case_000002_support case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_b := by
    simpa [hrank] using case_000002_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000002_support case_000002_rank.val hlt
          case_000002_mask = case_000002_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000002_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000002_support case_000002_rank.val hlt
          case_000002_mask = case_000002_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000002_secondLine_eq]
  have case_000002_fixedFirst :
      FixedRow (FirstLineAt case_000002_support case_000002_rank.val hlt case_000002_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000002_firstLine, FixedRow]
  have case_000002_rowSecond :
      EqEqPosRow (SecondLineAt case_000002_support case_000002_rank.val hlt case_000002_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000002_secondLine, EqEqPosRow]
  exact ⟨case_000002_fixedFirst, case_000002_rowSecond⟩

private theorem case_000002_existsRows :
    ExistsEqEqPosVarSecondRows case_000002_rank.val case_000002_mask :=
  ⟨case_000002_support, case_000002_sourceAgrees, case_000002_rows⟩

private theorem case_000002_covered :
    RowPropertyParametricCovered case_000002_rank.val case_000002_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000002_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000003_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000003_mask : SignMask := ⟨16, by decide⟩
private def case_000003_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000003_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000003_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000003_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000003_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000003_rankWord :
    rankPairWord? case_000003_word = some case_000003_rank := by
  decide

private theorem case_000003_unrank :
    unrankPairWord case_000003_rank = case_000003_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000003_word case_000003_rank).1
    case_000003_rankWord |>.symm

private theorem case_000003_seqChoice :
    translationChoiceSeq case_000003_word case_000003_mask = case_000003_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000003_seqAtRank :
    translationSeqAtRankMask case_000003_rank case_000003_mask = case_000003_seq := by
  rw [translationSeqAtRankMask, case_000003_unrank]
  exact case_000003_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000003_bAtRank :
    translationBAtRankMask case_000003_rank case_000003_mask = case_000003_b := by
  rw [translationBAtRankMask, case_000003_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000003_b, case_000003_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000003_firstLine_eq :
    case_000003_support.firstLine case_000003_seq case_000003_b = case_000003_firstLine := by
  norm_num [case_000003_firstLine, case_000003_support, case_000003_seq, case_000003_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000003_secondLine_eq :
    case_000003_support.secondLine case_000003_seq case_000003_b = case_000003_secondLine := by
  norm_num [case_000003_secondLine, case_000003_support, case_000003_seq, case_000003_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000003_sourceAgrees :
    SourceAgrees case_000003_support case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank : (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  simp [SourceChecks, hseq, case_000003_support,
    checkTranslationConstraintSource, case_000003_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000003_rows :
    EqEqPosVarFirstRows case_000003_support case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank : (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_b := by
    simpa [hrank] using case_000003_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000003_support case_000003_rank.val hlt
          case_000003_mask = case_000003_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000003_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000003_support case_000003_rank.val hlt
          case_000003_mask = case_000003_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000003_secondLine_eq]
  have case_000003_rowFirst :
      EqEqPosRow (FirstLineAt case_000003_support case_000003_rank.val hlt case_000003_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000003_firstLine, EqEqPosRow]
  have case_000003_fixedSecond :
      FixedRow (SecondLineAt case_000003_support case_000003_rank.val hlt case_000003_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000003_secondLine, FixedRow]
  exact ⟨case_000003_rowFirst, case_000003_fixedSecond⟩

private theorem case_000003_existsRows :
    ExistsEqEqPosVarFirstRows case_000003_rank.val case_000003_mask :=
  ⟨case_000003_support, case_000003_sourceAgrees, case_000003_rows⟩

private theorem case_000003_covered :
    RowPropertyParametricCovered case_000003_rank.val case_000003_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000003_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000004_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000004_mask : SignMask := ⟨18, by decide⟩
private def case_000004_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000004_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000004_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000004_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000004_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000004_rankWord :
    rankPairWord? case_000004_word = some case_000004_rank := by
  decide

private theorem case_000004_unrank :
    unrankPairWord case_000004_rank = case_000004_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000004_word case_000004_rank).1
    case_000004_rankWord |>.symm

private theorem case_000004_seqChoice :
    translationChoiceSeq case_000004_word case_000004_mask = case_000004_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000004_seqAtRank :
    translationSeqAtRankMask case_000004_rank case_000004_mask = case_000004_seq := by
  rw [translationSeqAtRankMask, case_000004_unrank]
  exact case_000004_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000004_bAtRank :
    translationBAtRankMask case_000004_rank case_000004_mask = case_000004_b := by
  rw [translationBAtRankMask, case_000004_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000004_b, case_000004_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000004_firstLine_eq :
    case_000004_support.firstLine case_000004_seq case_000004_b = case_000004_firstLine := by
  norm_num [case_000004_firstLine, case_000004_support, case_000004_seq, case_000004_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000004_secondLine_eq :
    case_000004_support.secondLine case_000004_seq case_000004_b = case_000004_secondLine := by
  norm_num [case_000004_secondLine, case_000004_support, case_000004_seq, case_000004_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000004_sourceAgrees :
    SourceAgrees case_000004_support case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  simp [SourceChecks, hseq, case_000004_support,
    checkTranslationConstraintSource, case_000004_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000004_rows :
    EqEqPosVarFirstRows case_000004_support case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_b := by
    simpa [hrank] using case_000004_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000004_support case_000004_rank.val hlt
          case_000004_mask = case_000004_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000004_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000004_support case_000004_rank.val hlt
          case_000004_mask = case_000004_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000004_secondLine_eq]
  have case_000004_rowFirst :
      EqEqPosRow (FirstLineAt case_000004_support case_000004_rank.val hlt case_000004_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000004_firstLine, EqEqPosRow]
  have case_000004_fixedSecond :
      FixedRow (SecondLineAt case_000004_support case_000004_rank.val hlt case_000004_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000004_secondLine, FixedRow]
  exact ⟨case_000004_rowFirst, case_000004_fixedSecond⟩

private theorem case_000004_existsRows :
    ExistsEqEqPosVarFirstRows case_000004_rank.val case_000004_mask :=
  ⟨case_000004_support, case_000004_sourceAgrees, case_000004_rows⟩

private theorem case_000004_covered :
    RowPropertyParametricCovered case_000004_rank.val case_000004_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000004_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000005_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000005_mask : SignMask := ⟨22, by decide⟩
private def case_000005_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000005_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000005_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000005_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000005_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000005_rankWord :
    rankPairWord? case_000005_word = some case_000005_rank := by
  decide

private theorem case_000005_unrank :
    unrankPairWord case_000005_rank = case_000005_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000005_word case_000005_rank).1
    case_000005_rankWord |>.symm

private theorem case_000005_seqChoice :
    translationChoiceSeq case_000005_word case_000005_mask = case_000005_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000005_seqAtRank :
    translationSeqAtRankMask case_000005_rank case_000005_mask = case_000005_seq := by
  rw [translationSeqAtRankMask, case_000005_unrank]
  exact case_000005_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000005_bAtRank :
    translationBAtRankMask case_000005_rank case_000005_mask = case_000005_b := by
  rw [translationBAtRankMask, case_000005_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000005_b, case_000005_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000005_firstLine_eq :
    case_000005_support.firstLine case_000005_seq case_000005_b = case_000005_firstLine := by
  norm_num [case_000005_firstLine, case_000005_support, case_000005_seq, case_000005_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000005_secondLine_eq :
    case_000005_support.secondLine case_000005_seq case_000005_b = case_000005_secondLine := by
  norm_num [case_000005_secondLine, case_000005_support, case_000005_seq, case_000005_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000005_sourceAgrees :
    SourceAgrees case_000005_support case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  simp [SourceChecks, hseq, case_000005_support,
    checkTranslationConstraintSource, case_000005_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000005_rows :
    EqEqPosVarFirstRows case_000005_support case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_b := by
    simpa [hrank] using case_000005_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000005_support case_000005_rank.val hlt
          case_000005_mask = case_000005_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000005_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000005_support case_000005_rank.val hlt
          case_000005_mask = case_000005_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000005_secondLine_eq]
  have case_000005_rowFirst :
      EqEqPosRow (FirstLineAt case_000005_support case_000005_rank.val hlt case_000005_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000005_firstLine, EqEqPosRow]
  have case_000005_fixedSecond :
      FixedRow (SecondLineAt case_000005_support case_000005_rank.val hlt case_000005_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000005_secondLine, FixedRow]
  exact ⟨case_000005_rowFirst, case_000005_fixedSecond⟩

private theorem case_000005_existsRows :
    ExistsEqEqPosVarFirstRows case_000005_rank.val case_000005_mask :=
  ⟨case_000005_support, case_000005_sourceAgrees, case_000005_rows⟩

private theorem case_000005_covered :
    RowPropertyParametricCovered case_000005_rank.val case_000005_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000005_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000006_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000006_mask : SignMask := ⟨24, by decide⟩
private def case_000006_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000006_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000006_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000006_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000006_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000006_rankWord :
    rankPairWord? case_000006_word = some case_000006_rank := by
  decide

private theorem case_000006_unrank :
    unrankPairWord case_000006_rank = case_000006_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000006_word case_000006_rank).1
    case_000006_rankWord |>.symm

private theorem case_000006_seqChoice :
    translationChoiceSeq case_000006_word case_000006_mask = case_000006_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000006_seqAtRank :
    translationSeqAtRankMask case_000006_rank case_000006_mask = case_000006_seq := by
  rw [translationSeqAtRankMask, case_000006_unrank]
  exact case_000006_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000006_bAtRank :
    translationBAtRankMask case_000006_rank case_000006_mask = case_000006_b := by
  rw [translationBAtRankMask, case_000006_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000006_b, case_000006_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000006_firstLine_eq :
    case_000006_support.firstLine case_000006_seq case_000006_b = case_000006_firstLine := by
  norm_num [case_000006_firstLine, case_000006_support, case_000006_seq, case_000006_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000006_secondLine_eq :
    case_000006_support.secondLine case_000006_seq case_000006_b = case_000006_secondLine := by
  norm_num [case_000006_secondLine, case_000006_support, case_000006_seq, case_000006_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000006_sourceAgrees :
    SourceAgrees case_000006_support case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  simp [SourceChecks, hseq, case_000006_support,
    checkTranslationConstraintSource, case_000006_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000006_rows :
    EqEqPosVarFirstRows case_000006_support case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_b := by
    simpa [hrank] using case_000006_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000006_support case_000006_rank.val hlt
          case_000006_mask = case_000006_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000006_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000006_support case_000006_rank.val hlt
          case_000006_mask = case_000006_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000006_secondLine_eq]
  have case_000006_rowFirst :
      EqEqPosRow (FirstLineAt case_000006_support case_000006_rank.val hlt case_000006_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000006_firstLine, EqEqPosRow]
  have case_000006_fixedSecond :
      FixedRow (SecondLineAt case_000006_support case_000006_rank.val hlt case_000006_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000006_secondLine, FixedRow]
  exact ⟨case_000006_rowFirst, case_000006_fixedSecond⟩

private theorem case_000006_existsRows :
    ExistsEqEqPosVarFirstRows case_000006_rank.val case_000006_mask :=
  ⟨case_000006_support, case_000006_sourceAgrees, case_000006_rows⟩

private theorem case_000006_covered :
    RowPropertyParametricCovered case_000006_rank.val case_000006_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000006_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000007_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000007_mask : SignMask := ⟨28, by decide⟩
private def case_000007_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000007_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000007_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000007_firstLine : StrictLin2 := { a := (-22/17), b := (-22/17), c := (-88/51) }
private def case_000007_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000007_rankWord :
    rankPairWord? case_000007_word = some case_000007_rank := by
  decide

private theorem case_000007_unrank :
    unrankPairWord case_000007_rank = case_000007_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000007_word case_000007_rank).1
    case_000007_rankWord |>.symm

private theorem case_000007_seqChoice :
    translationChoiceSeq case_000007_word case_000007_mask = case_000007_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000007_seqAtRank :
    translationSeqAtRankMask case_000007_rank case_000007_mask = case_000007_seq := by
  rw [translationSeqAtRankMask, case_000007_unrank]
  exact case_000007_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000007_bAtRank :
    translationBAtRankMask case_000007_rank case_000007_mask = case_000007_b := by
  rw [translationBAtRankMask, case_000007_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000007_b, case_000007_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000007_firstLine_eq :
    case_000007_support.firstLine case_000007_seq case_000007_b = case_000007_firstLine := by
  norm_num [case_000007_firstLine, case_000007_support, case_000007_seq, case_000007_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000007_secondLine_eq :
    case_000007_support.secondLine case_000007_seq case_000007_b = case_000007_secondLine := by
  norm_num [case_000007_secondLine, case_000007_support, case_000007_seq, case_000007_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000007_sourceAgrees :
    SourceAgrees case_000007_support case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  simp [SourceChecks, hseq, case_000007_support,
    checkTranslationConstraintSource, case_000007_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000007_rows :
    EqEqPosVarFirstRows case_000007_support case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_b := by
    simpa [hrank] using case_000007_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000007_support case_000007_rank.val hlt
          case_000007_mask = case_000007_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000007_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000007_support case_000007_rank.val hlt
          case_000007_mask = case_000007_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000007_secondLine_eq]
  have case_000007_rowFirst :
      EqEqPosRow (FirstLineAt case_000007_support case_000007_rank.val hlt case_000007_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000007_firstLine, EqEqPosRow]
  have case_000007_fixedSecond :
      FixedRow (SecondLineAt case_000007_support case_000007_rank.val hlt case_000007_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000007_secondLine, FixedRow]
  exact ⟨case_000007_rowFirst, case_000007_fixedSecond⟩

private theorem case_000007_existsRows :
    ExistsEqEqPosVarFirstRows case_000007_rank.val case_000007_mask :=
  ⟨case_000007_support, case_000007_sourceAgrees, case_000007_rows⟩

private theorem case_000007_covered :
    RowPropertyParametricCovered case_000007_rank.val case_000007_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000007_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000008_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000008_mask : SignMask := ⟨29, by decide⟩
private def case_000008_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000008_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000008_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000008_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000008_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000008_rankWord :
    rankPairWord? case_000008_word = some case_000008_rank := by
  decide

private theorem case_000008_unrank :
    unrankPairWord case_000008_rank = case_000008_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000008_word case_000008_rank).1
    case_000008_rankWord |>.symm

private theorem case_000008_seqChoice :
    translationChoiceSeq case_000008_word case_000008_mask = case_000008_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000008_seqAtRank :
    translationSeqAtRankMask case_000008_rank case_000008_mask = case_000008_seq := by
  rw [translationSeqAtRankMask, case_000008_unrank]
  exact case_000008_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000008_bAtRank :
    translationBAtRankMask case_000008_rank case_000008_mask = case_000008_b := by
  rw [translationBAtRankMask, case_000008_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000008_b, case_000008_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000008_firstLine_eq :
    case_000008_support.firstLine case_000008_seq case_000008_b = case_000008_firstLine := by
  norm_num [case_000008_firstLine, case_000008_support, case_000008_seq, case_000008_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000008_secondLine_eq :
    case_000008_support.secondLine case_000008_seq case_000008_b = case_000008_secondLine := by
  norm_num [case_000008_secondLine, case_000008_support, case_000008_seq, case_000008_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000008_sourceAgrees :
    SourceAgrees case_000008_support case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  simp [SourceChecks, hseq, case_000008_support,
    checkTranslationConstraintSource, case_000008_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000008_rows :
    EqEqPosVarSecondRows case_000008_support case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_b := by
    simpa [hrank] using case_000008_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000008_support case_000008_rank.val hlt
          case_000008_mask = case_000008_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000008_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000008_support case_000008_rank.val hlt
          case_000008_mask = case_000008_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000008_secondLine_eq]
  have case_000008_fixedFirst :
      FixedRow (FirstLineAt case_000008_support case_000008_rank.val hlt case_000008_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000008_firstLine, FixedRow]
  have case_000008_rowSecond :
      EqEqPosRow (SecondLineAt case_000008_support case_000008_rank.val hlt case_000008_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000008_secondLine, EqEqPosRow]
  exact ⟨case_000008_fixedFirst, case_000008_rowSecond⟩

private theorem case_000008_existsRows :
    ExistsEqEqPosVarSecondRows case_000008_rank.val case_000008_mask :=
  ⟨case_000008_support, case_000008_sourceAgrees, case_000008_rows⟩

private theorem case_000008_covered :
    RowPropertyParametricCovered case_000008_rank.val case_000008_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000008_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000009_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000009_mask : SignMask := ⟨30, by decide⟩
private def case_000009_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000009_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000009_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000009_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000009_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000009_rankWord :
    rankPairWord? case_000009_word = some case_000009_rank := by
  decide

private theorem case_000009_unrank :
    unrankPairWord case_000009_rank = case_000009_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000009_word case_000009_rank).1
    case_000009_rankWord |>.symm

private theorem case_000009_seqChoice :
    translationChoiceSeq case_000009_word case_000009_mask = case_000009_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000009_seqAtRank :
    translationSeqAtRankMask case_000009_rank case_000009_mask = case_000009_seq := by
  rw [translationSeqAtRankMask, case_000009_unrank]
  exact case_000009_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000009_bAtRank :
    translationBAtRankMask case_000009_rank case_000009_mask = case_000009_b := by
  rw [translationBAtRankMask, case_000009_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000009_b, case_000009_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000009_firstLine_eq :
    case_000009_support.firstLine case_000009_seq case_000009_b = case_000009_firstLine := by
  norm_num [case_000009_firstLine, case_000009_support, case_000009_seq, case_000009_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000009_secondLine_eq :
    case_000009_support.secondLine case_000009_seq case_000009_b = case_000009_secondLine := by
  norm_num [case_000009_secondLine, case_000009_support, case_000009_seq, case_000009_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000009_sourceAgrees :
    SourceAgrees case_000009_support case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  simp [SourceChecks, hseq, case_000009_support,
    checkTranslationConstraintSource, case_000009_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000009_rows :
    EqEqPosVarFirstRows case_000009_support case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_b := by
    simpa [hrank] using case_000009_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000009_support case_000009_rank.val hlt
          case_000009_mask = case_000009_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000009_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000009_support case_000009_rank.val hlt
          case_000009_mask = case_000009_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000009_secondLine_eq]
  have case_000009_rowFirst :
      EqEqPosRow (FirstLineAt case_000009_support case_000009_rank.val hlt case_000009_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000009_firstLine, EqEqPosRow]
  have case_000009_fixedSecond :
      FixedRow (SecondLineAt case_000009_support case_000009_rank.val hlt case_000009_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000009_secondLine, FixedRow]
  exact ⟨case_000009_rowFirst, case_000009_fixedSecond⟩

private theorem case_000009_existsRows :
    ExistsEqEqPosVarFirstRows case_000009_rank.val case_000009_mask :=
  ⟨case_000009_support, case_000009_sourceAgrees, case_000009_rows⟩

private theorem case_000009_covered :
    RowPropertyParametricCovered case_000009_rank.val case_000009_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000009_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000010_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000010_mask : SignMask := ⟨31, by decide⟩
private def case_000010_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000010_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000010_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000010_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-75/17) }
private def case_000010_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000010_rankWord :
    rankPairWord? case_000010_word = some case_000010_rank := by
  decide

private theorem case_000010_unrank :
    unrankPairWord case_000010_rank = case_000010_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000010_word case_000010_rank).1
    case_000010_rankWord |>.symm

private theorem case_000010_seqChoice :
    translationChoiceSeq case_000010_word case_000010_mask = case_000010_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000010_seqAtRank :
    translationSeqAtRankMask case_000010_rank case_000010_mask = case_000010_seq := by
  rw [translationSeqAtRankMask, case_000010_unrank]
  exact case_000010_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000010_bAtRank :
    translationBAtRankMask case_000010_rank case_000010_mask = case_000010_b := by
  rw [translationBAtRankMask, case_000010_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000010_b, case_000010_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000010_firstLine_eq :
    case_000010_support.firstLine case_000010_seq case_000010_b = case_000010_firstLine := by
  norm_num [case_000010_firstLine, case_000010_support, case_000010_seq, case_000010_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000010_secondLine_eq :
    case_000010_support.secondLine case_000010_seq case_000010_b = case_000010_secondLine := by
  norm_num [case_000010_secondLine, case_000010_support, case_000010_seq, case_000010_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000010_sourceAgrees :
    SourceAgrees case_000010_support case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  simp [SourceChecks, hseq, case_000010_support,
    checkTranslationConstraintSource, case_000010_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000010_rows :
    EqEqPosVarFirstRows case_000010_support case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_b := by
    simpa [hrank] using case_000010_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000010_support case_000010_rank.val hlt
          case_000010_mask = case_000010_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000010_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000010_support case_000010_rank.val hlt
          case_000010_mask = case_000010_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000010_secondLine_eq]
  have case_000010_rowFirst :
      EqEqPosRow (FirstLineAt case_000010_support case_000010_rank.val hlt case_000010_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000010_firstLine, EqEqPosRow]
  have case_000010_fixedSecond :
      FixedRow (SecondLineAt case_000010_support case_000010_rank.val hlt case_000010_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000010_secondLine, FixedRow]
  exact ⟨case_000010_rowFirst, case_000010_fixedSecond⟩

private theorem case_000010_existsRows :
    ExistsEqEqPosVarFirstRows case_000010_rank.val case_000010_mask :=
  ⟨case_000010_support, case_000010_sourceAgrees, case_000010_rows⟩

private theorem case_000010_covered :
    RowPropertyParametricCovered case_000010_rank.val case_000010_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000010_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000011_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000011_mask : SignMask := ⟨45, by decide⟩
private def case_000011_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000011_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000011_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000011_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000011_secondLine : StrictLin2 := { a := (9/374), b := (-9/374), c := (-73/187) }

private theorem case_000011_rankWord :
    rankPairWord? case_000011_word = some case_000011_rank := by
  decide

private theorem case_000011_unrank :
    unrankPairWord case_000011_rank = case_000011_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000011_word case_000011_rank).1
    case_000011_rankWord |>.symm

private theorem case_000011_seqChoice :
    translationChoiceSeq case_000011_word case_000011_mask = case_000011_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000011_seqAtRank :
    translationSeqAtRankMask case_000011_rank case_000011_mask = case_000011_seq := by
  rw [translationSeqAtRankMask, case_000011_unrank]
  exact case_000011_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000011_bAtRank :
    translationBAtRankMask case_000011_rank case_000011_mask = case_000011_b := by
  rw [translationBAtRankMask, case_000011_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000011_b, case_000011_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000011_firstLine_eq :
    case_000011_support.firstLine case_000011_seq case_000011_b = case_000011_firstLine := by
  norm_num [case_000011_firstLine, case_000011_support, case_000011_seq, case_000011_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000011_secondLine_eq :
    case_000011_support.secondLine case_000011_seq case_000011_b = case_000011_secondLine := by
  norm_num [case_000011_secondLine, case_000011_support, case_000011_seq, case_000011_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000011_sourceAgrees :
    SourceAgrees case_000011_support case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank : (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  simp [SourceChecks, hseq, case_000011_support,
    checkTranslationConstraintSource, case_000011_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000011_rows :
    OppMinusOneVarSecondRows case_000011_support case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank : (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_b := by
    simpa [hrank] using case_000011_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000011_support case_000011_rank.val hlt
          case_000011_mask = case_000011_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000011_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000011_support case_000011_rank.val hlt
          case_000011_mask = case_000011_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000011_secondLine_eq]
  have case_000011_fixedFirst :
      FixedRow (FirstLineAt case_000011_support case_000011_rank.val hlt case_000011_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000011_firstLine, FixedRow]
  have case_000011_rowSecond :
      OppNegRow (SecondLineAt case_000011_support case_000011_rank.val hlt case_000011_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000011_secondLine, OppNegRow]
  exact ⟨case_000011_fixedFirst, case_000011_rowSecond⟩

private theorem case_000011_existsRows :
    ExistsOppMinusOneVarSecondRows case_000011_rank.val case_000011_mask :=
  ⟨case_000011_support, case_000011_sourceAgrees, case_000011_rows⟩

private theorem case_000011_covered :
    RowPropertyParametricCovered case_000011_rank.val case_000011_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000011_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000012_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000012_mask : SignMask := ⟨47, by decide⟩
private def case_000012_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000012_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000012_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000012_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000012_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-52/55) }

private theorem case_000012_rankWord :
    rankPairWord? case_000012_word = some case_000012_rank := by
  decide

private theorem case_000012_unrank :
    unrankPairWord case_000012_rank = case_000012_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000012_word case_000012_rank).1
    case_000012_rankWord |>.symm

private theorem case_000012_seqChoice :
    translationChoiceSeq case_000012_word case_000012_mask = case_000012_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000012_seqAtRank :
    translationSeqAtRankMask case_000012_rank case_000012_mask = case_000012_seq := by
  rw [translationSeqAtRankMask, case_000012_unrank]
  exact case_000012_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000012_bAtRank :
    translationBAtRankMask case_000012_rank case_000012_mask = case_000012_b := by
  rw [translationBAtRankMask, case_000012_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000012_b, case_000012_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000012_firstLine_eq :
    case_000012_support.firstLine case_000012_seq case_000012_b = case_000012_firstLine := by
  norm_num [case_000012_firstLine, case_000012_support, case_000012_seq, case_000012_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000012_secondLine_eq :
    case_000012_support.secondLine case_000012_seq case_000012_b = case_000012_secondLine := by
  norm_num [case_000012_secondLine, case_000012_support, case_000012_seq, case_000012_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000012_sourceAgrees :
    SourceAgrees case_000012_support case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  simp [SourceChecks, hseq, case_000012_support,
    checkTranslationConstraintSource, case_000012_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000012_rows :
    OppMinusOneVarSecondRows case_000012_support case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_b := by
    simpa [hrank] using case_000012_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000012_support case_000012_rank.val hlt
          case_000012_mask = case_000012_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000012_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000012_support case_000012_rank.val hlt
          case_000012_mask = case_000012_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000012_secondLine_eq]
  have case_000012_fixedFirst :
      FixedRow (FirstLineAt case_000012_support case_000012_rank.val hlt case_000012_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000012_firstLine, FixedRow]
  have case_000012_rowSecond :
      OppNegRow (SecondLineAt case_000012_support case_000012_rank.val hlt case_000012_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000012_secondLine, OppNegRow]
  exact ⟨case_000012_fixedFirst, case_000012_rowSecond⟩

private theorem case_000012_existsRows :
    ExistsOppMinusOneVarSecondRows case_000012_rank.val case_000012_mask :=
  ⟨case_000012_support, case_000012_sourceAgrees, case_000012_rows⟩

private theorem case_000012_covered :
    RowPropertyParametricCovered case_000012_rank.val case_000012_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000012_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000013_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000013_mask : SignMask := ⟨54, by decide⟩
private def case_000013_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000013_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000013_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000013_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000013_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000013_rankWord :
    rankPairWord? case_000013_word = some case_000013_rank := by
  decide

private theorem case_000013_unrank :
    unrankPairWord case_000013_rank = case_000013_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000013_word case_000013_rank).1
    case_000013_rankWord |>.symm

private theorem case_000013_seqChoice :
    translationChoiceSeq case_000013_word case_000013_mask = case_000013_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000013_seqAtRank :
    translationSeqAtRankMask case_000013_rank case_000013_mask = case_000013_seq := by
  rw [translationSeqAtRankMask, case_000013_unrank]
  exact case_000013_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000013_bAtRank :
    translationBAtRankMask case_000013_rank case_000013_mask = case_000013_b := by
  rw [translationBAtRankMask, case_000013_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000013_b, case_000013_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000013_firstLine_eq :
    case_000013_support.firstLine case_000013_seq case_000013_b = case_000013_firstLine := by
  norm_num [case_000013_firstLine, case_000013_support, case_000013_seq, case_000013_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000013_secondLine_eq :
    case_000013_support.secondLine case_000013_seq case_000013_b = case_000013_secondLine := by
  norm_num [case_000013_secondLine, case_000013_support, case_000013_seq, case_000013_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000013_sourceAgrees :
    SourceAgrees case_000013_support case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank : (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  simp [SourceChecks, hseq, case_000013_support,
    checkTranslationConstraintSource, case_000013_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000013_rows :
    OppOneMinusVarFirstRows case_000013_support case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank : (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_b := by
    simpa [hrank] using case_000013_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000013_support case_000013_rank.val hlt
          case_000013_mask = case_000013_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000013_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000013_support case_000013_rank.val hlt
          case_000013_mask = case_000013_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000013_secondLine_eq]
  have case_000013_rowFirst :
      OppPosRow (FirstLineAt case_000013_support case_000013_rank.val hlt case_000013_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000013_firstLine, OppPosRow]
  have case_000013_fixedSecond :
      FixedRow (SecondLineAt case_000013_support case_000013_rank.val hlt case_000013_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000013_secondLine, FixedRow]
  exact ⟨case_000013_rowFirst, case_000013_fixedSecond⟩

private theorem case_000013_existsRows :
    ExistsOppOneMinusVarFirstRows case_000013_rank.val case_000013_mask :=
  ⟨case_000013_support, case_000013_sourceAgrees, case_000013_rows⟩

private theorem case_000013_covered :
    RowPropertyParametricCovered case_000013_rank.val case_000013_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000013_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000014_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000014_mask : SignMask := ⟨55, by decide⟩
private def case_000014_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000014_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000014_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000014_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000014_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000014_rankWord :
    rankPairWord? case_000014_word = some case_000014_rank := by
  decide

private theorem case_000014_unrank :
    unrankPairWord case_000014_rank = case_000014_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000014_word case_000014_rank).1
    case_000014_rankWord |>.symm

private theorem case_000014_seqChoice :
    translationChoiceSeq case_000014_word case_000014_mask = case_000014_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000014_seqAtRank :
    translationSeqAtRankMask case_000014_rank case_000014_mask = case_000014_seq := by
  rw [translationSeqAtRankMask, case_000014_unrank]
  exact case_000014_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000014_bAtRank :
    translationBAtRankMask case_000014_rank case_000014_mask = case_000014_b := by
  rw [translationBAtRankMask, case_000014_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000014_b, case_000014_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000014_firstLine_eq :
    case_000014_support.firstLine case_000014_seq case_000014_b = case_000014_firstLine := by
  norm_num [case_000014_firstLine, case_000014_support, case_000014_seq, case_000014_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000014_secondLine_eq :
    case_000014_support.secondLine case_000014_seq case_000014_b = case_000014_secondLine := by
  norm_num [case_000014_secondLine, case_000014_support, case_000014_seq, case_000014_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000014_sourceAgrees :
    SourceAgrees case_000014_support case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank : (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  simp [SourceChecks, hseq, case_000014_support,
    checkTranslationConstraintSource, case_000014_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000014_rows :
    OppOneMinusVarFirstRows case_000014_support case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank : (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_b := by
    simpa [hrank] using case_000014_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000014_support case_000014_rank.val hlt
          case_000014_mask = case_000014_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000014_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000014_support case_000014_rank.val hlt
          case_000014_mask = case_000014_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000014_secondLine_eq]
  have case_000014_rowFirst :
      OppPosRow (FirstLineAt case_000014_support case_000014_rank.val hlt case_000014_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000014_firstLine, OppPosRow]
  have case_000014_fixedSecond :
      FixedRow (SecondLineAt case_000014_support case_000014_rank.val hlt case_000014_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000014_secondLine, FixedRow]
  exact ⟨case_000014_rowFirst, case_000014_fixedSecond⟩

private theorem case_000014_existsRows :
    ExistsOppOneMinusVarFirstRows case_000014_rank.val case_000014_mask :=
  ⟨case_000014_support, case_000014_sourceAgrees, case_000014_rows⟩

private theorem case_000014_covered :
    RowPropertyParametricCovered case_000014_rank.val case_000014_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000014_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000015_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000015_mask : SignMask := ⟨63, by decide⟩
private def case_000015_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000015_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000015_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000015_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000015_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000015_rankWord :
    rankPairWord? case_000015_word = some case_000015_rank := by
  decide

private theorem case_000015_unrank :
    unrankPairWord case_000015_rank = case_000015_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000015_word case_000015_rank).1
    case_000015_rankWord |>.symm

private theorem case_000015_seqChoice :
    translationChoiceSeq case_000015_word case_000015_mask = case_000015_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000015_seqAtRank :
    translationSeqAtRankMask case_000015_rank case_000015_mask = case_000015_seq := by
  rw [translationSeqAtRankMask, case_000015_unrank]
  exact case_000015_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000015_bAtRank :
    translationBAtRankMask case_000015_rank case_000015_mask = case_000015_b := by
  rw [translationBAtRankMask, case_000015_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000015_b, case_000015_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000015_firstLine_eq :
    case_000015_support.firstLine case_000015_seq case_000015_b = case_000015_firstLine := by
  norm_num [case_000015_firstLine, case_000015_support, case_000015_seq, case_000015_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000015_secondLine_eq :
    case_000015_support.secondLine case_000015_seq case_000015_b = case_000015_secondLine := by
  norm_num [case_000015_secondLine, case_000015_support, case_000015_seq, case_000015_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000015_sourceAgrees :
    SourceAgrees case_000015_support case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank : (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  simp [SourceChecks, hseq, case_000015_support,
    checkTranslationConstraintSource, case_000015_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000015_rows :
    EqEqPosVarFirstRows case_000015_support case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank : (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_b := by
    simpa [hrank] using case_000015_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000015_support case_000015_rank.val hlt
          case_000015_mask = case_000015_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000015_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000015_support case_000015_rank.val hlt
          case_000015_mask = case_000015_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000015_secondLine_eq]
  have case_000015_rowFirst :
      EqEqPosRow (FirstLineAt case_000015_support case_000015_rank.val hlt case_000015_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000015_firstLine, EqEqPosRow]
  have case_000015_fixedSecond :
      FixedRow (SecondLineAt case_000015_support case_000015_rank.val hlt case_000015_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000015_secondLine, FixedRow]
  exact ⟨case_000015_rowFirst, case_000015_fixedSecond⟩

private theorem case_000015_existsRows :
    ExistsEqEqPosVarFirstRows case_000015_rank.val case_000015_mask :=
  ⟨case_000015_support, case_000015_sourceAgrees, case_000015_rows⟩

private theorem case_000015_covered :
    RowPropertyParametricCovered case_000015_rank.val case_000015_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000015_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000016_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000016_mask : SignMask := ⟨8, by decide⟩
private def case_000016_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000016_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000016_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-148/9) }
private def case_000016_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000016_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000016_rankWord :
    rankPairWord? case_000016_word = some case_000016_rank := by
  decide

private theorem case_000016_unrank :
    unrankPairWord case_000016_rank = case_000016_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000016_word case_000016_rank).1
    case_000016_rankWord |>.symm

private theorem case_000016_seqChoice :
    translationChoiceSeq case_000016_word case_000016_mask = case_000016_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000016_seqAtRank :
    translationSeqAtRankMask case_000016_rank case_000016_mask = case_000016_seq := by
  rw [translationSeqAtRankMask, case_000016_unrank]
  exact case_000016_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000016_bAtRank :
    translationBAtRankMask case_000016_rank case_000016_mask = case_000016_b := by
  rw [translationBAtRankMask, case_000016_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000016_b, case_000016_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000016_firstLine_eq :
    case_000016_support.firstLine case_000016_seq case_000016_b = case_000016_firstLine := by
  norm_num [case_000016_firstLine, case_000016_support, case_000016_seq, case_000016_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000016_secondLine_eq :
    case_000016_support.secondLine case_000016_seq case_000016_b = case_000016_secondLine := by
  norm_num [case_000016_secondLine, case_000016_support, case_000016_seq, case_000016_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000016_sourceAgrees :
    SourceAgrees case_000016_support case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank : (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  simp [SourceChecks, hseq, case_000016_support,
    checkTranslationConstraintSource, case_000016_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000016_rows :
    EqEqPosVarFirstRows case_000016_support case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank : (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_b := by
    simpa [hrank] using case_000016_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000016_support case_000016_rank.val hlt
          case_000016_mask = case_000016_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000016_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000016_support case_000016_rank.val hlt
          case_000016_mask = case_000016_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000016_secondLine_eq]
  have case_000016_rowFirst :
      EqEqPosRow (FirstLineAt case_000016_support case_000016_rank.val hlt case_000016_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000016_firstLine, EqEqPosRow]
  have case_000016_fixedSecond :
      FixedRow (SecondLineAt case_000016_support case_000016_rank.val hlt case_000016_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000016_secondLine, FixedRow]
  exact ⟨case_000016_rowFirst, case_000016_fixedSecond⟩

private theorem case_000016_existsRows :
    ExistsEqEqPosVarFirstRows case_000016_rank.val case_000016_mask :=
  ⟨case_000016_support, case_000016_sourceAgrees, case_000016_rows⟩

private theorem case_000016_covered :
    RowPropertyParametricCovered case_000016_rank.val case_000016_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000016_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000017_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000017_mask : SignMask := ⟨9, by decide⟩
private def case_000017_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000017_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000017_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-148/9) }
private def case_000017_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000017_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000017_rankWord :
    rankPairWord? case_000017_word = some case_000017_rank := by
  decide

private theorem case_000017_unrank :
    unrankPairWord case_000017_rank = case_000017_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000017_word case_000017_rank).1
    case_000017_rankWord |>.symm

private theorem case_000017_seqChoice :
    translationChoiceSeq case_000017_word case_000017_mask = case_000017_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000017_seqAtRank :
    translationSeqAtRankMask case_000017_rank case_000017_mask = case_000017_seq := by
  rw [translationSeqAtRankMask, case_000017_unrank]
  exact case_000017_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000017_bAtRank :
    translationBAtRankMask case_000017_rank case_000017_mask = case_000017_b := by
  rw [translationBAtRankMask, case_000017_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000017_b, case_000017_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000017_firstLine_eq :
    case_000017_support.firstLine case_000017_seq case_000017_b = case_000017_firstLine := by
  norm_num [case_000017_firstLine, case_000017_support, case_000017_seq, case_000017_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000017_secondLine_eq :
    case_000017_support.secondLine case_000017_seq case_000017_b = case_000017_secondLine := by
  norm_num [case_000017_secondLine, case_000017_support, case_000017_seq, case_000017_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000017_sourceAgrees :
    SourceAgrees case_000017_support case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank : (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  simp [SourceChecks, hseq, case_000017_support,
    checkTranslationConstraintSource, case_000017_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000017_rows :
    EqEqPosVarFirstRows case_000017_support case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank : (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_b := by
    simpa [hrank] using case_000017_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000017_support case_000017_rank.val hlt
          case_000017_mask = case_000017_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000017_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000017_support case_000017_rank.val hlt
          case_000017_mask = case_000017_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000017_secondLine_eq]
  have case_000017_rowFirst :
      EqEqPosRow (FirstLineAt case_000017_support case_000017_rank.val hlt case_000017_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000017_firstLine, EqEqPosRow]
  have case_000017_fixedSecond :
      FixedRow (SecondLineAt case_000017_support case_000017_rank.val hlt case_000017_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000017_secondLine, FixedRow]
  exact ⟨case_000017_rowFirst, case_000017_fixedSecond⟩

private theorem case_000017_existsRows :
    ExistsEqEqPosVarFirstRows case_000017_rank.val case_000017_mask :=
  ⟨case_000017_support, case_000017_sourceAgrees, case_000017_rows⟩

private theorem case_000017_covered :
    RowPropertyParametricCovered case_000017_rank.val case_000017_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000017_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000018_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000018_mask : SignMask := ⟨13, by decide⟩
private def case_000018_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000018_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000018_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-100/9) }
private def case_000018_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000018_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_000018_rankWord :
    rankPairWord? case_000018_word = some case_000018_rank := by
  decide

private theorem case_000018_unrank :
    unrankPairWord case_000018_rank = case_000018_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000018_word case_000018_rank).1
    case_000018_rankWord |>.symm

private theorem case_000018_seqChoice :
    translationChoiceSeq case_000018_word case_000018_mask = case_000018_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000018_seqAtRank :
    translationSeqAtRankMask case_000018_rank case_000018_mask = case_000018_seq := by
  rw [translationSeqAtRankMask, case_000018_unrank]
  exact case_000018_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000018_bAtRank :
    translationBAtRankMask case_000018_rank case_000018_mask = case_000018_b := by
  rw [translationBAtRankMask, case_000018_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000018_b, case_000018_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000018_firstLine_eq :
    case_000018_support.firstLine case_000018_seq case_000018_b = case_000018_firstLine := by
  norm_num [case_000018_firstLine, case_000018_support, case_000018_seq, case_000018_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000018_secondLine_eq :
    case_000018_support.secondLine case_000018_seq case_000018_b = case_000018_secondLine := by
  norm_num [case_000018_secondLine, case_000018_support, case_000018_seq, case_000018_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000018_sourceAgrees :
    SourceAgrees case_000018_support case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank : (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  simp [SourceChecks, hseq, case_000018_support,
    checkTranslationConstraintSource, case_000018_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000018_rows :
    EqEqPosVarSecondRows case_000018_support case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank : (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_b := by
    simpa [hrank] using case_000018_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000018_support case_000018_rank.val hlt
          case_000018_mask = case_000018_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000018_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000018_support case_000018_rank.val hlt
          case_000018_mask = case_000018_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000018_secondLine_eq]
  have case_000018_fixedFirst :
      FixedRow (FirstLineAt case_000018_support case_000018_rank.val hlt case_000018_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000018_firstLine, FixedRow]
  have case_000018_rowSecond :
      EqEqPosRow (SecondLineAt case_000018_support case_000018_rank.val hlt case_000018_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000018_secondLine, EqEqPosRow]
  exact ⟨case_000018_fixedFirst, case_000018_rowSecond⟩

private theorem case_000018_existsRows :
    ExistsEqEqPosVarSecondRows case_000018_rank.val case_000018_mask :=
  ⟨case_000018_support, case_000018_sourceAgrees, case_000018_rows⟩

private theorem case_000018_covered :
    RowPropertyParametricCovered case_000018_rank.val case_000018_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000018_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000019_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000019_mask : SignMask := ⟨16, by decide⟩
private def case_000019_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000019_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000019_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-52/9) }
private def case_000019_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000019_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000019_rankWord :
    rankPairWord? case_000019_word = some case_000019_rank := by
  decide

private theorem case_000019_unrank :
    unrankPairWord case_000019_rank = case_000019_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000019_word case_000019_rank).1
    case_000019_rankWord |>.symm

private theorem case_000019_seqChoice :
    translationChoiceSeq case_000019_word case_000019_mask = case_000019_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000019_seqAtRank :
    translationSeqAtRankMask case_000019_rank case_000019_mask = case_000019_seq := by
  rw [translationSeqAtRankMask, case_000019_unrank]
  exact case_000019_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000019_bAtRank :
    translationBAtRankMask case_000019_rank case_000019_mask = case_000019_b := by
  rw [translationBAtRankMask, case_000019_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000019_b, case_000019_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000019_firstLine_eq :
    case_000019_support.firstLine case_000019_seq case_000019_b = case_000019_firstLine := by
  norm_num [case_000019_firstLine, case_000019_support, case_000019_seq, case_000019_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000019_secondLine_eq :
    case_000019_support.secondLine case_000019_seq case_000019_b = case_000019_secondLine := by
  norm_num [case_000019_secondLine, case_000019_support, case_000019_seq, case_000019_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000019_sourceAgrees :
    SourceAgrees case_000019_support case_000019_rank.val case_000019_mask := by
  intro hlt
  have hrank : (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_seq := by
    simpa [hrank] using case_000019_seqAtRank
  simp [SourceChecks, hseq, case_000019_support,
    checkTranslationConstraintSource, case_000019_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000019_rows :
    EqEqPosVarFirstRows case_000019_support case_000019_rank.val case_000019_mask := by
  intro hlt
  have hrank : (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_seq := by
    simpa [hrank] using case_000019_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_b := by
    simpa [hrank] using case_000019_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000019_support case_000019_rank.val hlt
          case_000019_mask = case_000019_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000019_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000019_support case_000019_rank.val hlt
          case_000019_mask = case_000019_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000019_secondLine_eq]
  have case_000019_rowFirst :
      EqEqPosRow (FirstLineAt case_000019_support case_000019_rank.val hlt case_000019_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000019_firstLine, EqEqPosRow]
  have case_000019_fixedSecond :
      FixedRow (SecondLineAt case_000019_support case_000019_rank.val hlt case_000019_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000019_secondLine, FixedRow]
  exact ⟨case_000019_rowFirst, case_000019_fixedSecond⟩

private theorem case_000019_existsRows :
    ExistsEqEqPosVarFirstRows case_000019_rank.val case_000019_mask :=
  ⟨case_000019_support, case_000019_sourceAgrees, case_000019_rows⟩

private theorem case_000019_covered :
    RowPropertyParametricCovered case_000019_rank.val case_000019_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000019_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000020_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000020_mask : SignMask := ⟨18, by decide⟩
private def case_000020_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000020_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000020_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (20/9) }
private def case_000020_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000020_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000020_rankWord :
    rankPairWord? case_000020_word = some case_000020_rank := by
  decide

private theorem case_000020_unrank :
    unrankPairWord case_000020_rank = case_000020_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000020_word case_000020_rank).1
    case_000020_rankWord |>.symm

private theorem case_000020_seqChoice :
    translationChoiceSeq case_000020_word case_000020_mask = case_000020_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000020_seqAtRank :
    translationSeqAtRankMask case_000020_rank case_000020_mask = case_000020_seq := by
  rw [translationSeqAtRankMask, case_000020_unrank]
  exact case_000020_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000020_bAtRank :
    translationBAtRankMask case_000020_rank case_000020_mask = case_000020_b := by
  rw [translationBAtRankMask, case_000020_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000020_b, case_000020_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000020_firstLine_eq :
    case_000020_support.firstLine case_000020_seq case_000020_b = case_000020_firstLine := by
  norm_num [case_000020_firstLine, case_000020_support, case_000020_seq, case_000020_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000020_secondLine_eq :
    case_000020_support.secondLine case_000020_seq case_000020_b = case_000020_secondLine := by
  norm_num [case_000020_secondLine, case_000020_support, case_000020_seq, case_000020_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000020_sourceAgrees :
    SourceAgrees case_000020_support case_000020_rank.val case_000020_mask := by
  intro hlt
  have hrank : (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_seq := by
    simpa [hrank] using case_000020_seqAtRank
  simp [SourceChecks, hseq, case_000020_support,
    checkTranslationConstraintSource, case_000020_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000020_rows :
    EqEqPosVarFirstRows case_000020_support case_000020_rank.val case_000020_mask := by
  intro hlt
  have hrank : (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_seq := by
    simpa [hrank] using case_000020_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_b := by
    simpa [hrank] using case_000020_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000020_support case_000020_rank.val hlt
          case_000020_mask = case_000020_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000020_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000020_support case_000020_rank.val hlt
          case_000020_mask = case_000020_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000020_secondLine_eq]
  have case_000020_rowFirst :
      EqEqPosRow (FirstLineAt case_000020_support case_000020_rank.val hlt case_000020_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000020_firstLine, EqEqPosRow]
  have case_000020_fixedSecond :
      FixedRow (SecondLineAt case_000020_support case_000020_rank.val hlt case_000020_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000020_secondLine, FixedRow]
  exact ⟨case_000020_rowFirst, case_000020_fixedSecond⟩

private theorem case_000020_existsRows :
    ExistsEqEqPosVarFirstRows case_000020_rank.val case_000020_mask :=
  ⟨case_000020_support, case_000020_sourceAgrees, case_000020_rows⟩

private theorem case_000020_covered :
    RowPropertyParametricCovered case_000020_rank.val case_000020_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000020_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000021_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000021_mask : SignMask := ⟨24, by decide⟩
private def case_000021_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000021_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000021_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-100/9) }
private def case_000021_firstLine : StrictLin2 := { a := -1, b := -1, c := (-67/17) }
private def case_000021_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000021_rankWord :
    rankPairWord? case_000021_word = some case_000021_rank := by
  decide

private theorem case_000021_unrank :
    unrankPairWord case_000021_rank = case_000021_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000021_word case_000021_rank).1
    case_000021_rankWord |>.symm

private theorem case_000021_seqChoice :
    translationChoiceSeq case_000021_word case_000021_mask = case_000021_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000021_seqAtRank :
    translationSeqAtRankMask case_000021_rank case_000021_mask = case_000021_seq := by
  rw [translationSeqAtRankMask, case_000021_unrank]
  exact case_000021_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000021_bAtRank :
    translationBAtRankMask case_000021_rank case_000021_mask = case_000021_b := by
  rw [translationBAtRankMask, case_000021_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000021_b, case_000021_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000021_firstLine_eq :
    case_000021_support.firstLine case_000021_seq case_000021_b = case_000021_firstLine := by
  norm_num [case_000021_firstLine, case_000021_support, case_000021_seq, case_000021_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000021_secondLine_eq :
    case_000021_support.secondLine case_000021_seq case_000021_b = case_000021_secondLine := by
  norm_num [case_000021_secondLine, case_000021_support, case_000021_seq, case_000021_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000021_sourceAgrees :
    SourceAgrees case_000021_support case_000021_rank.val case_000021_mask := by
  intro hlt
  have hrank : (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_seq := by
    simpa [hrank] using case_000021_seqAtRank
  simp [SourceChecks, hseq, case_000021_support,
    checkTranslationConstraintSource, case_000021_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000021_rows :
    EqEqPosVarFirstRows case_000021_support case_000021_rank.val case_000021_mask := by
  intro hlt
  have hrank : (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_seq := by
    simpa [hrank] using case_000021_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_b := by
    simpa [hrank] using case_000021_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000021_support case_000021_rank.val hlt
          case_000021_mask = case_000021_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000021_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000021_support case_000021_rank.val hlt
          case_000021_mask = case_000021_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000021_secondLine_eq]
  have case_000021_rowFirst :
      EqEqPosRow (FirstLineAt case_000021_support case_000021_rank.val hlt case_000021_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000021_firstLine, EqEqPosRow]
  have case_000021_fixedSecond :
      FixedRow (SecondLineAt case_000021_support case_000021_rank.val hlt case_000021_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000021_secondLine, FixedRow]
  exact ⟨case_000021_rowFirst, case_000021_fixedSecond⟩

private theorem case_000021_existsRows :
    ExistsEqEqPosVarFirstRows case_000021_rank.val case_000021_mask :=
  ⟨case_000021_support, case_000021_sourceAgrees, case_000021_rows⟩

private theorem case_000021_covered :
    RowPropertyParametricCovered case_000021_rank.val case_000021_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000021_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000022_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000022_mask : SignMask := ⟨28, by decide⟩
private def case_000022_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000022_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000022_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-52/9) }
private def case_000022_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000022_secondLine : StrictLin2 := { a := (-87/518), b := (87/518), c := (-45/259) }

private theorem case_000022_rankWord :
    rankPairWord? case_000022_word = some case_000022_rank := by
  decide

private theorem case_000022_unrank :
    unrankPairWord case_000022_rank = case_000022_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000022_word case_000022_rank).1
    case_000022_rankWord |>.symm

private theorem case_000022_seqChoice :
    translationChoiceSeq case_000022_word case_000022_mask = case_000022_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000022_seqAtRank :
    translationSeqAtRankMask case_000022_rank case_000022_mask = case_000022_seq := by
  rw [translationSeqAtRankMask, case_000022_unrank]
  exact case_000022_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000022_bAtRank :
    translationBAtRankMask case_000022_rank case_000022_mask = case_000022_b := by
  rw [translationBAtRankMask, case_000022_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000022_b, case_000022_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000022_firstLine_eq :
    case_000022_support.firstLine case_000022_seq case_000022_b = case_000022_firstLine := by
  norm_num [case_000022_firstLine, case_000022_support, case_000022_seq, case_000022_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000022_secondLine_eq :
    case_000022_support.secondLine case_000022_seq case_000022_b = case_000022_secondLine := by
  norm_num [case_000022_secondLine, case_000022_support, case_000022_seq, case_000022_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000022_sourceAgrees :
    SourceAgrees case_000022_support case_000022_rank.val case_000022_mask := by
  intro hlt
  have hrank : (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_seq := by
    simpa [hrank] using case_000022_seqAtRank
  simp [SourceChecks, hseq, case_000022_support,
    checkTranslationConstraintSource, case_000022_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000022_rows :
    OppOneMinusVarSecondRows case_000022_support case_000022_rank.val case_000022_mask := by
  intro hlt
  have hrank : (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_seq := by
    simpa [hrank] using case_000022_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_b := by
    simpa [hrank] using case_000022_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000022_support case_000022_rank.val hlt
          case_000022_mask = case_000022_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000022_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000022_support case_000022_rank.val hlt
          case_000022_mask = case_000022_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000022_secondLine_eq]
  have case_000022_fixedFirst :
      FixedRow (FirstLineAt case_000022_support case_000022_rank.val hlt case_000022_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000022_firstLine, FixedRow]
  have case_000022_rowSecond :
      OppPosRow (SecondLineAt case_000022_support case_000022_rank.val hlt case_000022_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000022_secondLine, OppPosRow]
  exact ⟨case_000022_fixedFirst, case_000022_rowSecond⟩

private theorem case_000022_existsRows :
    ExistsOppOneMinusVarSecondRows case_000022_rank.val case_000022_mask :=
  ⟨case_000022_support, case_000022_sourceAgrees, case_000022_rows⟩

private theorem case_000022_covered :
    RowPropertyParametricCovered case_000022_rank.val case_000022_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000022_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000023_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000023_mask : SignMask := ⟨29, by decide⟩
private def case_000023_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000023_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000023_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-52/9) }
private def case_000023_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000023_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_000023_rankWord :
    rankPairWord? case_000023_word = some case_000023_rank := by
  decide

private theorem case_000023_unrank :
    unrankPairWord case_000023_rank = case_000023_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000023_word case_000023_rank).1
    case_000023_rankWord |>.symm

private theorem case_000023_seqChoice :
    translationChoiceSeq case_000023_word case_000023_mask = case_000023_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000023_seqAtRank :
    translationSeqAtRankMask case_000023_rank case_000023_mask = case_000023_seq := by
  rw [translationSeqAtRankMask, case_000023_unrank]
  exact case_000023_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000023_bAtRank :
    translationBAtRankMask case_000023_rank case_000023_mask = case_000023_b := by
  rw [translationBAtRankMask, case_000023_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000023_b, case_000023_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000023_firstLine_eq :
    case_000023_support.firstLine case_000023_seq case_000023_b = case_000023_firstLine := by
  norm_num [case_000023_firstLine, case_000023_support, case_000023_seq, case_000023_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000023_secondLine_eq :
    case_000023_support.secondLine case_000023_seq case_000023_b = case_000023_secondLine := by
  norm_num [case_000023_secondLine, case_000023_support, case_000023_seq, case_000023_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000023_sourceAgrees :
    SourceAgrees case_000023_support case_000023_rank.val case_000023_mask := by
  intro hlt
  have hrank : (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_seq := by
    simpa [hrank] using case_000023_seqAtRank
  simp [SourceChecks, hseq, case_000023_support,
    checkTranslationConstraintSource, case_000023_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000023_rows :
    EqEqPosVarSecondRows case_000023_support case_000023_rank.val case_000023_mask := by
  intro hlt
  have hrank : (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_seq := by
    simpa [hrank] using case_000023_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_b := by
    simpa [hrank] using case_000023_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000023_support case_000023_rank.val hlt
          case_000023_mask = case_000023_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000023_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000023_support case_000023_rank.val hlt
          case_000023_mask = case_000023_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000023_secondLine_eq]
  have case_000023_fixedFirst :
      FixedRow (FirstLineAt case_000023_support case_000023_rank.val hlt case_000023_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000023_firstLine, FixedRow]
  have case_000023_rowSecond :
      EqEqPosRow (SecondLineAt case_000023_support case_000023_rank.val hlt case_000023_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000023_secondLine, EqEqPosRow]
  exact ⟨case_000023_fixedFirst, case_000023_rowSecond⟩

private theorem case_000023_existsRows :
    ExistsEqEqPosVarSecondRows case_000023_rank.val case_000023_mask :=
  ⟨case_000023_support, case_000023_sourceAgrees, case_000023_rows⟩

private theorem case_000023_covered :
    RowPropertyParametricCovered case_000023_rank.val case_000023_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000023_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000024_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000024_mask : SignMask := ⟨30, by decide⟩
private def case_000024_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000024_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000024_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (20/9) }
private def case_000024_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000024_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000024_rankWord :
    rankPairWord? case_000024_word = some case_000024_rank := by
  decide

private theorem case_000024_unrank :
    unrankPairWord case_000024_rank = case_000024_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000024_word case_000024_rank).1
    case_000024_rankWord |>.symm

private theorem case_000024_seqChoice :
    translationChoiceSeq case_000024_word case_000024_mask = case_000024_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000024_seqAtRank :
    translationSeqAtRankMask case_000024_rank case_000024_mask = case_000024_seq := by
  rw [translationSeqAtRankMask, case_000024_unrank]
  exact case_000024_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000024_bAtRank :
    translationBAtRankMask case_000024_rank case_000024_mask = case_000024_b := by
  rw [translationBAtRankMask, case_000024_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000024_b, case_000024_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000024_firstLine_eq :
    case_000024_support.firstLine case_000024_seq case_000024_b = case_000024_firstLine := by
  norm_num [case_000024_firstLine, case_000024_support, case_000024_seq, case_000024_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000024_secondLine_eq :
    case_000024_support.secondLine case_000024_seq case_000024_b = case_000024_secondLine := by
  norm_num [case_000024_secondLine, case_000024_support, case_000024_seq, case_000024_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000024_sourceAgrees :
    SourceAgrees case_000024_support case_000024_rank.val case_000024_mask := by
  intro hlt
  have hrank : (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_seq := by
    simpa [hrank] using case_000024_seqAtRank
  simp [SourceChecks, hseq, case_000024_support,
    checkTranslationConstraintSource, case_000024_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000024_rows :
    EqEqPosVarFirstRows case_000024_support case_000024_rank.val case_000024_mask := by
  intro hlt
  have hrank : (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_seq := by
    simpa [hrank] using case_000024_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_b := by
    simpa [hrank] using case_000024_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000024_support case_000024_rank.val hlt
          case_000024_mask = case_000024_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000024_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000024_support case_000024_rank.val hlt
          case_000024_mask = case_000024_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000024_secondLine_eq]
  have case_000024_rowFirst :
      EqEqPosRow (FirstLineAt case_000024_support case_000024_rank.val hlt case_000024_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000024_firstLine, EqEqPosRow]
  have case_000024_fixedSecond :
      FixedRow (SecondLineAt case_000024_support case_000024_rank.val hlt case_000024_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000024_secondLine, FixedRow]
  exact ⟨case_000024_rowFirst, case_000024_fixedSecond⟩

private theorem case_000024_existsRows :
    ExistsEqEqPosVarFirstRows case_000024_rank.val case_000024_mask :=
  ⟨case_000024_support, case_000024_sourceAgrees, case_000024_rows⟩

private theorem case_000024_covered :
    RowPropertyParametricCovered case_000024_rank.val case_000024_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000024_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000025_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000025_mask : SignMask := ⟨47, by decide⟩
private def case_000025_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000025_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def case_000025_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (52/9) }
private def case_000025_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000025_secondLine : StrictLin2 := { a := (39/58), b := (-39/58), c := (-48/29) }

private theorem case_000025_rankWord :
    rankPairWord? case_000025_word = some case_000025_rank := by
  decide

private theorem case_000025_unrank :
    unrankPairWord case_000025_rank = case_000025_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000025_word case_000025_rank).1
    case_000025_rankWord |>.symm

private theorem case_000025_seqChoice :
    translationChoiceSeq case_000025_word case_000025_mask = case_000025_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000025_seqAtRank :
    translationSeqAtRankMask case_000025_rank case_000025_mask = case_000025_seq := by
  rw [translationSeqAtRankMask, case_000025_unrank]
  exact case_000025_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000025_bAtRank :
    translationBAtRankMask case_000025_rank case_000025_mask = case_000025_b := by
  rw [translationBAtRankMask, case_000025_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000025_b, case_000025_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000025_firstLine_eq :
    case_000025_support.firstLine case_000025_seq case_000025_b = case_000025_firstLine := by
  norm_num [case_000025_firstLine, case_000025_support, case_000025_seq, case_000025_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000025_secondLine_eq :
    case_000025_support.secondLine case_000025_seq case_000025_b = case_000025_secondLine := by
  norm_num [case_000025_secondLine, case_000025_support, case_000025_seq, case_000025_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000025_sourceAgrees :
    SourceAgrees case_000025_support case_000025_rank.val case_000025_mask := by
  intro hlt
  have hrank : (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_seq := by
    simpa [hrank] using case_000025_seqAtRank
  simp [SourceChecks, hseq, case_000025_support,
    checkTranslationConstraintSource, case_000025_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000025_rows :
    OppMinusOneVarSecondRows case_000025_support case_000025_rank.val case_000025_mask := by
  intro hlt
  have hrank : (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_seq := by
    simpa [hrank] using case_000025_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_b := by
    simpa [hrank] using case_000025_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000025_support case_000025_rank.val hlt
          case_000025_mask = case_000025_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000025_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000025_support case_000025_rank.val hlt
          case_000025_mask = case_000025_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000025_secondLine_eq]
  have case_000025_fixedFirst :
      FixedRow (FirstLineAt case_000025_support case_000025_rank.val hlt case_000025_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000025_firstLine, FixedRow]
  have case_000025_rowSecond :
      OppNegRow (SecondLineAt case_000025_support case_000025_rank.val hlt case_000025_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000025_secondLine, OppNegRow]
  exact ⟨case_000025_fixedFirst, case_000025_rowSecond⟩

private theorem case_000025_existsRows :
    ExistsOppMinusOneVarSecondRows case_000025_rank.val case_000025_mask :=
  ⟨case_000025_support, case_000025_sourceAgrees, case_000025_rows⟩

private theorem case_000025_covered :
    RowPropertyParametricCovered case_000025_rank.val case_000025_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000025_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000026_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000026_mask : SignMask := ⟨54, by decide⟩
private def case_000026_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000026_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000026_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (148/9) }
private def case_000026_firstLine : StrictLin2 := { a := -1, b := 1, c := (-87/13) }
private def case_000026_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000026_rankWord :
    rankPairWord? case_000026_word = some case_000026_rank := by
  decide

private theorem case_000026_unrank :
    unrankPairWord case_000026_rank = case_000026_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000026_word case_000026_rank).1
    case_000026_rankWord |>.symm

private theorem case_000026_seqChoice :
    translationChoiceSeq case_000026_word case_000026_mask = case_000026_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000026_seqAtRank :
    translationSeqAtRankMask case_000026_rank case_000026_mask = case_000026_seq := by
  rw [translationSeqAtRankMask, case_000026_unrank]
  exact case_000026_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000026_bAtRank :
    translationBAtRankMask case_000026_rank case_000026_mask = case_000026_b := by
  rw [translationBAtRankMask, case_000026_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000026_b, case_000026_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000026_firstLine_eq :
    case_000026_support.firstLine case_000026_seq case_000026_b = case_000026_firstLine := by
  norm_num [case_000026_firstLine, case_000026_support, case_000026_seq, case_000026_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000026_secondLine_eq :
    case_000026_support.secondLine case_000026_seq case_000026_b = case_000026_secondLine := by
  norm_num [case_000026_secondLine, case_000026_support, case_000026_seq, case_000026_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000026_sourceAgrees :
    SourceAgrees case_000026_support case_000026_rank.val case_000026_mask := by
  intro hlt
  have hrank : (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_seq := by
    simpa [hrank] using case_000026_seqAtRank
  simp [SourceChecks, hseq, case_000026_support,
    checkTranslationConstraintSource, case_000026_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000026_rows :
    OppOneMinusVarFirstRows case_000026_support case_000026_rank.val case_000026_mask := by
  intro hlt
  have hrank : (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_seq := by
    simpa [hrank] using case_000026_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_b := by
    simpa [hrank] using case_000026_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000026_support case_000026_rank.val hlt
          case_000026_mask = case_000026_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000026_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000026_support case_000026_rank.val hlt
          case_000026_mask = case_000026_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000026_secondLine_eq]
  have case_000026_rowFirst :
      OppPosRow (FirstLineAt case_000026_support case_000026_rank.val hlt case_000026_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000026_firstLine, OppPosRow]
  have case_000026_fixedSecond :
      FixedRow (SecondLineAt case_000026_support case_000026_rank.val hlt case_000026_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000026_secondLine, FixedRow]
  exact ⟨case_000026_rowFirst, case_000026_fixedSecond⟩

private theorem case_000026_existsRows :
    ExistsOppOneMinusVarFirstRows case_000026_rank.val case_000026_mask :=
  ⟨case_000026_support, case_000026_sourceAgrees, case_000026_rows⟩

private theorem case_000026_covered :
    RowPropertyParametricCovered case_000026_rank.val case_000026_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000026_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000027_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000027_mask : SignMask := ⟨55, by decide⟩
private def case_000027_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000027_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000027_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (148/9) }
private def case_000027_firstLine : StrictLin2 := { a := -1, b := 1, c := (-51/13) }
private def case_000027_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000027_rankWord :
    rankPairWord? case_000027_word = some case_000027_rank := by
  decide

private theorem case_000027_unrank :
    unrankPairWord case_000027_rank = case_000027_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000027_word case_000027_rank).1
    case_000027_rankWord |>.symm

private theorem case_000027_seqChoice :
    translationChoiceSeq case_000027_word case_000027_mask = case_000027_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000027_seqAtRank :
    translationSeqAtRankMask case_000027_rank case_000027_mask = case_000027_seq := by
  rw [translationSeqAtRankMask, case_000027_unrank]
  exact case_000027_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000027_bAtRank :
    translationBAtRankMask case_000027_rank case_000027_mask = case_000027_b := by
  rw [translationBAtRankMask, case_000027_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000027_b, case_000027_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000027_firstLine_eq :
    case_000027_support.firstLine case_000027_seq case_000027_b = case_000027_firstLine := by
  norm_num [case_000027_firstLine, case_000027_support, case_000027_seq, case_000027_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000027_secondLine_eq :
    case_000027_support.secondLine case_000027_seq case_000027_b = case_000027_secondLine := by
  norm_num [case_000027_secondLine, case_000027_support, case_000027_seq, case_000027_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000027_sourceAgrees :
    SourceAgrees case_000027_support case_000027_rank.val case_000027_mask := by
  intro hlt
  have hrank : (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_seq := by
    simpa [hrank] using case_000027_seqAtRank
  simp [SourceChecks, hseq, case_000027_support,
    checkTranslationConstraintSource, case_000027_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000027_rows :
    OppOneMinusVarFirstRows case_000027_support case_000027_rank.val case_000027_mask := by
  intro hlt
  have hrank : (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_seq := by
    simpa [hrank] using case_000027_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_b := by
    simpa [hrank] using case_000027_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000027_support case_000027_rank.val hlt
          case_000027_mask = case_000027_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000027_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000027_support case_000027_rank.val hlt
          case_000027_mask = case_000027_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000027_secondLine_eq]
  have case_000027_rowFirst :
      OppPosRow (FirstLineAt case_000027_support case_000027_rank.val hlt case_000027_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000027_firstLine, OppPosRow]
  have case_000027_fixedSecond :
      FixedRow (SecondLineAt case_000027_support case_000027_rank.val hlt case_000027_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000027_secondLine, FixedRow]
  exact ⟨case_000027_rowFirst, case_000027_fixedSecond⟩

private theorem case_000027_existsRows :
    ExistsOppOneMinusVarFirstRows case_000027_rank.val case_000027_mask :=
  ⟨case_000027_support, case_000027_sourceAgrees, case_000027_rows⟩

private theorem case_000027_covered :
    RowPropertyParametricCovered case_000027_rank.val case_000027_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000027_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000028_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000028_mask : SignMask := ⟨63, by decide⟩
private def case_000028_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000028_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000028_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (100/9) }
private def case_000028_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000028_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000028_rankWord :
    rankPairWord? case_000028_word = some case_000028_rank := by
  decide

private theorem case_000028_unrank :
    unrankPairWord case_000028_rank = case_000028_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000028_word case_000028_rank).1
    case_000028_rankWord |>.symm

private theorem case_000028_seqChoice :
    translationChoiceSeq case_000028_word case_000028_mask = case_000028_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000028_seqAtRank :
    translationSeqAtRankMask case_000028_rank case_000028_mask = case_000028_seq := by
  rw [translationSeqAtRankMask, case_000028_unrank]
  exact case_000028_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000028_bAtRank :
    translationBAtRankMask case_000028_rank case_000028_mask = case_000028_b := by
  rw [translationBAtRankMask, case_000028_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000028_b, case_000028_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000028_firstLine_eq :
    case_000028_support.firstLine case_000028_seq case_000028_b = case_000028_firstLine := by
  norm_num [case_000028_firstLine, case_000028_support, case_000028_seq, case_000028_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000028_secondLine_eq :
    case_000028_support.secondLine case_000028_seq case_000028_b = case_000028_secondLine := by
  norm_num [case_000028_secondLine, case_000028_support, case_000028_seq, case_000028_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000028_sourceAgrees :
    SourceAgrees case_000028_support case_000028_rank.val case_000028_mask := by
  intro hlt
  have hrank : (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_seq := by
    simpa [hrank] using case_000028_seqAtRank
  simp [SourceChecks, hseq, case_000028_support,
    checkTranslationConstraintSource, case_000028_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000028_rows :
    EqEqPosVarFirstRows case_000028_support case_000028_rank.val case_000028_mask := by
  intro hlt
  have hrank : (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_seq := by
    simpa [hrank] using case_000028_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_b := by
    simpa [hrank] using case_000028_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000028_support case_000028_rank.val hlt
          case_000028_mask = case_000028_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000028_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000028_support case_000028_rank.val hlt
          case_000028_mask = case_000028_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000028_secondLine_eq]
  have case_000028_rowFirst :
      EqEqPosRow (FirstLineAt case_000028_support case_000028_rank.val hlt case_000028_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000028_firstLine, EqEqPosRow]
  have case_000028_fixedSecond :
      FixedRow (SecondLineAt case_000028_support case_000028_rank.val hlt case_000028_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000028_secondLine, FixedRow]
  exact ⟨case_000028_rowFirst, case_000028_fixedSecond⟩

private theorem case_000028_existsRows :
    ExistsEqEqPosVarFirstRows case_000028_rank.val case_000028_mask :=
  ⟨case_000028_support, case_000028_sourceAgrees, case_000028_rows⟩

private theorem case_000028_covered :
    RowPropertyParametricCovered case_000028_rank.val case_000028_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000028_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000029_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000029_mask : SignMask := ⟨8, by decide⟩
private def case_000029_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000029_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000029_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-148/9) }
private def case_000029_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_000029_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000029_rankWord :
    rankPairWord? case_000029_word = some case_000029_rank := by
  decide

private theorem case_000029_unrank :
    unrankPairWord case_000029_rank = case_000029_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000029_word case_000029_rank).1
    case_000029_rankWord |>.symm

private theorem case_000029_seqChoice :
    translationChoiceSeq case_000029_word case_000029_mask = case_000029_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000029_seqAtRank :
    translationSeqAtRankMask case_000029_rank case_000029_mask = case_000029_seq := by
  rw [translationSeqAtRankMask, case_000029_unrank]
  exact case_000029_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000029_bAtRank :
    translationBAtRankMask case_000029_rank case_000029_mask = case_000029_b := by
  rw [translationBAtRankMask, case_000029_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000029_b, case_000029_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000029_firstLine_eq :
    case_000029_support.firstLine case_000029_seq case_000029_b = case_000029_firstLine := by
  norm_num [case_000029_firstLine, case_000029_support, case_000029_seq, case_000029_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000029_secondLine_eq :
    case_000029_support.secondLine case_000029_seq case_000029_b = case_000029_secondLine := by
  norm_num [case_000029_secondLine, case_000029_support, case_000029_seq, case_000029_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000029_sourceAgrees :
    SourceAgrees case_000029_support case_000029_rank.val case_000029_mask := by
  intro hlt
  have hrank : (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_seq := by
    simpa [hrank] using case_000029_seqAtRank
  simp [SourceChecks, hseq, case_000029_support,
    checkTranslationConstraintSource, case_000029_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000029_rows :
    EqEqPosVarFirstRows case_000029_support case_000029_rank.val case_000029_mask := by
  intro hlt
  have hrank : (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_seq := by
    simpa [hrank] using case_000029_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_b := by
    simpa [hrank] using case_000029_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000029_support case_000029_rank.val hlt
          case_000029_mask = case_000029_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000029_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000029_support case_000029_rank.val hlt
          case_000029_mask = case_000029_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000029_secondLine_eq]
  have case_000029_rowFirst :
      EqEqPosRow (FirstLineAt case_000029_support case_000029_rank.val hlt case_000029_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000029_firstLine, EqEqPosRow]
  have case_000029_fixedSecond :
      FixedRow (SecondLineAt case_000029_support case_000029_rank.val hlt case_000029_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000029_secondLine, FixedRow]
  exact ⟨case_000029_rowFirst, case_000029_fixedSecond⟩

private theorem case_000029_existsRows :
    ExistsEqEqPosVarFirstRows case_000029_rank.val case_000029_mask :=
  ⟨case_000029_support, case_000029_sourceAgrees, case_000029_rows⟩

private theorem case_000029_covered :
    RowPropertyParametricCovered case_000029_rank.val case_000029_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000029_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000030_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000030_mask : SignMask := ⟨9, by decide⟩
private def case_000030_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000030_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000030_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-148/9) }
private def case_000030_firstLine : StrictLin2 := { a := -1, b := -1, c := (-51/13) }
private def case_000030_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000030_rankWord :
    rankPairWord? case_000030_word = some case_000030_rank := by
  decide

private theorem case_000030_unrank :
    unrankPairWord case_000030_rank = case_000030_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000030_word case_000030_rank).1
    case_000030_rankWord |>.symm

private theorem case_000030_seqChoice :
    translationChoiceSeq case_000030_word case_000030_mask = case_000030_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000030_seqAtRank :
    translationSeqAtRankMask case_000030_rank case_000030_mask = case_000030_seq := by
  rw [translationSeqAtRankMask, case_000030_unrank]
  exact case_000030_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000030_bAtRank :
    translationBAtRankMask case_000030_rank case_000030_mask = case_000030_b := by
  rw [translationBAtRankMask, case_000030_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000030_b, case_000030_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000030_firstLine_eq :
    case_000030_support.firstLine case_000030_seq case_000030_b = case_000030_firstLine := by
  norm_num [case_000030_firstLine, case_000030_support, case_000030_seq, case_000030_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000030_secondLine_eq :
    case_000030_support.secondLine case_000030_seq case_000030_b = case_000030_secondLine := by
  norm_num [case_000030_secondLine, case_000030_support, case_000030_seq, case_000030_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000030_sourceAgrees :
    SourceAgrees case_000030_support case_000030_rank.val case_000030_mask := by
  intro hlt
  have hrank : (⟨case_000030_rank.val, hlt⟩ : Fin numPairWords) = case_000030_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000030_rank.val, hlt⟩ case_000030_mask =
        case_000030_seq := by
    simpa [hrank] using case_000030_seqAtRank
  simp [SourceChecks, hseq, case_000030_support,
    checkTranslationConstraintSource, case_000030_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000030_rows :
    EqEqPosVarFirstRows case_000030_support case_000030_rank.val case_000030_mask := by
  intro hlt
  have hrank : (⟨case_000030_rank.val, hlt⟩ : Fin numPairWords) = case_000030_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000030_rank.val, hlt⟩ case_000030_mask =
        case_000030_seq := by
    simpa [hrank] using case_000030_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000030_rank.val, hlt⟩ case_000030_mask =
        case_000030_b := by
    simpa [hrank] using case_000030_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000030_support case_000030_rank.val hlt
          case_000030_mask = case_000030_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000030_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000030_support case_000030_rank.val hlt
          case_000030_mask = case_000030_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000030_secondLine_eq]
  have case_000030_rowFirst :
      EqEqPosRow (FirstLineAt case_000030_support case_000030_rank.val hlt case_000030_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000030_firstLine, EqEqPosRow]
  have case_000030_fixedSecond :
      FixedRow (SecondLineAt case_000030_support case_000030_rank.val hlt case_000030_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000030_secondLine, FixedRow]
  exact ⟨case_000030_rowFirst, case_000030_fixedSecond⟩

private theorem case_000030_existsRows :
    ExistsEqEqPosVarFirstRows case_000030_rank.val case_000030_mask :=
  ⟨case_000030_support, case_000030_sourceAgrees, case_000030_rows⟩

private theorem case_000030_covered :
    RowPropertyParametricCovered case_000030_rank.val case_000030_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000030_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000031_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000031_mask : SignMask := ⟨13, by decide⟩
private def case_000031_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000031_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000031_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_000031_firstLine : StrictLin2 := { a := (-25/17), b := (-25/17), c := (-57/17) }
private def case_000031_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000031_rankWord :
    rankPairWord? case_000031_word = some case_000031_rank := by
  decide

private theorem case_000031_unrank :
    unrankPairWord case_000031_rank = case_000031_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000031_word case_000031_rank).1
    case_000031_rankWord |>.symm

private theorem case_000031_seqChoice :
    translationChoiceSeq case_000031_word case_000031_mask = case_000031_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000031_seqAtRank :
    translationSeqAtRankMask case_000031_rank case_000031_mask = case_000031_seq := by
  rw [translationSeqAtRankMask, case_000031_unrank]
  exact case_000031_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000031_bAtRank :
    translationBAtRankMask case_000031_rank case_000031_mask = case_000031_b := by
  rw [translationBAtRankMask, case_000031_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000031_b, case_000031_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000031_firstLine_eq :
    case_000031_support.firstLine case_000031_seq case_000031_b = case_000031_firstLine := by
  norm_num [case_000031_firstLine, case_000031_support, case_000031_seq, case_000031_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000031_secondLine_eq :
    case_000031_support.secondLine case_000031_seq case_000031_b = case_000031_secondLine := by
  norm_num [case_000031_secondLine, case_000031_support, case_000031_seq, case_000031_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000031_sourceAgrees :
    SourceAgrees case_000031_support case_000031_rank.val case_000031_mask := by
  intro hlt
  have hrank : (⟨case_000031_rank.val, hlt⟩ : Fin numPairWords) = case_000031_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000031_rank.val, hlt⟩ case_000031_mask =
        case_000031_seq := by
    simpa [hrank] using case_000031_seqAtRank
  simp [SourceChecks, hseq, case_000031_support,
    checkTranslationConstraintSource, case_000031_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000031_rows :
    EqEqPosVarFirstRows case_000031_support case_000031_rank.val case_000031_mask := by
  intro hlt
  have hrank : (⟨case_000031_rank.val, hlt⟩ : Fin numPairWords) = case_000031_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000031_rank.val, hlt⟩ case_000031_mask =
        case_000031_seq := by
    simpa [hrank] using case_000031_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000031_rank.val, hlt⟩ case_000031_mask =
        case_000031_b := by
    simpa [hrank] using case_000031_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000031_support case_000031_rank.val hlt
          case_000031_mask = case_000031_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000031_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000031_support case_000031_rank.val hlt
          case_000031_mask = case_000031_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000031_secondLine_eq]
  have case_000031_rowFirst :
      EqEqPosRow (FirstLineAt case_000031_support case_000031_rank.val hlt case_000031_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000031_firstLine, EqEqPosRow]
  have case_000031_fixedSecond :
      FixedRow (SecondLineAt case_000031_support case_000031_rank.val hlt case_000031_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000031_secondLine, FixedRow]
  exact ⟨case_000031_rowFirst, case_000031_fixedSecond⟩

private theorem case_000031_existsRows :
    ExistsEqEqPosVarFirstRows case_000031_rank.val case_000031_mask :=
  ⟨case_000031_support, case_000031_sourceAgrees, case_000031_rows⟩

private theorem case_000031_covered :
    RowPropertyParametricCovered case_000031_rank.val case_000031_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000031_existsRows

inductive Group000Covered : Nat -> SignMask -> Prop
  | case_000000 : Group000Covered case_000000_rank.val case_000000_mask
  | case_000001 : Group000Covered case_000001_rank.val case_000001_mask
  | case_000002 : Group000Covered case_000002_rank.val case_000002_mask
  | case_000003 : Group000Covered case_000003_rank.val case_000003_mask
  | case_000004 : Group000Covered case_000004_rank.val case_000004_mask
  | case_000005 : Group000Covered case_000005_rank.val case_000005_mask
  | case_000006 : Group000Covered case_000006_rank.val case_000006_mask
  | case_000007 : Group000Covered case_000007_rank.val case_000007_mask
  | case_000008 : Group000Covered case_000008_rank.val case_000008_mask
  | case_000009 : Group000Covered case_000009_rank.val case_000009_mask
  | case_000010 : Group000Covered case_000010_rank.val case_000010_mask
  | case_000011 : Group000Covered case_000011_rank.val case_000011_mask
  | case_000012 : Group000Covered case_000012_rank.val case_000012_mask
  | case_000013 : Group000Covered case_000013_rank.val case_000013_mask
  | case_000014 : Group000Covered case_000014_rank.val case_000014_mask
  | case_000015 : Group000Covered case_000015_rank.val case_000015_mask
  | case_000016 : Group000Covered case_000016_rank.val case_000016_mask
  | case_000017 : Group000Covered case_000017_rank.val case_000017_mask
  | case_000018 : Group000Covered case_000018_rank.val case_000018_mask
  | case_000019 : Group000Covered case_000019_rank.val case_000019_mask
  | case_000020 : Group000Covered case_000020_rank.val case_000020_mask
  | case_000021 : Group000Covered case_000021_rank.val case_000021_mask
  | case_000022 : Group000Covered case_000022_rank.val case_000022_mask
  | case_000023 : Group000Covered case_000023_rank.val case_000023_mask
  | case_000024 : Group000Covered case_000024_rank.val case_000024_mask
  | case_000025 : Group000Covered case_000025_rank.val case_000025_mask
  | case_000026 : Group000Covered case_000026_rank.val case_000026_mask
  | case_000027 : Group000Covered case_000027_rank.val case_000027_mask
  | case_000028 : Group000Covered case_000028_rank.val case_000028_mask
  | case_000029 : Group000Covered case_000029_rank.val case_000029_mask
  | case_000030 : Group000Covered case_000030_rank.val case_000030_mask
  | case_000031 : Group000Covered case_000031_rank.val case_000031_mask

theorem Group000GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group000Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000000 =>
      exact RowPropertyParametricCovered.kills case_000000_covered
  | case_000001 =>
      exact RowPropertyParametricCovered.kills case_000001_covered
  | case_000002 =>
      exact RowPropertyParametricCovered.kills case_000002_covered
  | case_000003 =>
      exact RowPropertyParametricCovered.kills case_000003_covered
  | case_000004 =>
      exact RowPropertyParametricCovered.kills case_000004_covered
  | case_000005 =>
      exact RowPropertyParametricCovered.kills case_000005_covered
  | case_000006 =>
      exact RowPropertyParametricCovered.kills case_000006_covered
  | case_000007 =>
      exact RowPropertyParametricCovered.kills case_000007_covered
  | case_000008 =>
      exact RowPropertyParametricCovered.kills case_000008_covered
  | case_000009 =>
      exact RowPropertyParametricCovered.kills case_000009_covered
  | case_000010 =>
      exact RowPropertyParametricCovered.kills case_000010_covered
  | case_000011 =>
      exact RowPropertyParametricCovered.kills case_000011_covered
  | case_000012 =>
      exact RowPropertyParametricCovered.kills case_000012_covered
  | case_000013 =>
      exact RowPropertyParametricCovered.kills case_000013_covered
  | case_000014 =>
      exact RowPropertyParametricCovered.kills case_000014_covered
  | case_000015 =>
      exact RowPropertyParametricCovered.kills case_000015_covered
  | case_000016 =>
      exact RowPropertyParametricCovered.kills case_000016_covered
  | case_000017 =>
      exact RowPropertyParametricCovered.kills case_000017_covered
  | case_000018 =>
      exact RowPropertyParametricCovered.kills case_000018_covered
  | case_000019 =>
      exact RowPropertyParametricCovered.kills case_000019_covered
  | case_000020 =>
      exact RowPropertyParametricCovered.kills case_000020_covered
  | case_000021 =>
      exact RowPropertyParametricCovered.kills case_000021_covered
  | case_000022 =>
      exact RowPropertyParametricCovered.kills case_000022_covered
  | case_000023 =>
      exact RowPropertyParametricCovered.kills case_000023_covered
  | case_000024 =>
      exact RowPropertyParametricCovered.kills case_000024_covered
  | case_000025 =>
      exact RowPropertyParametricCovered.kills case_000025_covered
  | case_000026 =>
      exact RowPropertyParametricCovered.kills case_000026_covered
  | case_000027 =>
      exact RowPropertyParametricCovered.kills case_000027_covered
  | case_000028 =>
      exact RowPropertyParametricCovered.kills case_000028_covered
  | case_000029 =>
      exact RowPropertyParametricCovered.kills case_000029_covered
  | case_000030 =>
      exact RowPropertyParametricCovered.kills case_000030_covered
  | case_000031 =>
      exact RowPropertyParametricCovered.kills case_000031_covered

theorem Group000_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group000
