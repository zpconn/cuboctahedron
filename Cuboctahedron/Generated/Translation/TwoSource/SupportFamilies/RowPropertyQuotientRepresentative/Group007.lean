import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group007

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
private def case_000224_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000224_mask : SignMask := ⟨45, by decide⟩
private def case_000224_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000224_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000224_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmp
private def case_000224_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-4/9) }
private def case_000224_firstLine : StrictLin2 := { a := (-34/9), b := (34/9), c := (-136/27) }
private def case_000224_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000224_rankWord :
    rankPairWord? case_000224_word = some case_000224_rank := by
  decide

private theorem case_000224_unrank :
    unrankPairWord case_000224_rank = case_000224_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000224_word case_000224_rank).1
    case_000224_rankWord |>.symm

private theorem case_000224_seqChoice :
    translationChoiceSeq case_000224_word case_000224_mask = case_000224_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000224_seqAtRank :
    translationSeqAtRankMask case_000224_rank case_000224_mask = case_000224_seq := by
  rw [translationSeqAtRankMask, case_000224_unrank]
  exact case_000224_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000224_bAtRank :
    translationBAtRankMask case_000224_rank case_000224_mask = case_000224_b := by
  rw [translationBAtRankMask, case_000224_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000224_b, case_000224_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000224_firstLine_eq :
    case_000224_support.firstLine case_000224_seq case_000224_b = case_000224_firstLine := by
  norm_num [case_000224_firstLine, case_000224_support, case_000224_seq, case_000224_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000224_secondLine_eq :
    case_000224_support.secondLine case_000224_seq case_000224_b = case_000224_secondLine := by
  norm_num [case_000224_secondLine, case_000224_support, case_000224_seq, case_000224_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000224_sourceAgrees :
    SourceAgrees case_000224_support case_000224_rank.val case_000224_mask := by
  intro hlt
  have hrank : (⟨case_000224_rank.val, hlt⟩ : Fin numPairWords) = case_000224_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000224_rank.val, hlt⟩ case_000224_mask =
        case_000224_seq := by
    simpa [hrank] using case_000224_seqAtRank
  simp [SourceChecks, hseq, case_000224_support,
    checkTranslationConstraintSource, case_000224_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000224_rows :
    OppOneMinusVarFirstRows case_000224_support case_000224_rank.val case_000224_mask := by
  intro hlt
  have hrank : (⟨case_000224_rank.val, hlt⟩ : Fin numPairWords) = case_000224_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000224_rank.val, hlt⟩ case_000224_mask =
        case_000224_seq := by
    simpa [hrank] using case_000224_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000224_rank.val, hlt⟩ case_000224_mask =
        case_000224_b := by
    simpa [hrank] using case_000224_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000224_support case_000224_rank.val hlt
          case_000224_mask = case_000224_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000224_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000224_support case_000224_rank.val hlt
          case_000224_mask = case_000224_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000224_secondLine_eq]
  have case_000224_rowFirst :
      OppPosRow (FirstLineAt case_000224_support case_000224_rank.val hlt case_000224_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000224_firstLine, OppPosRow]
  have case_000224_fixedSecond :
      FixedRow (SecondLineAt case_000224_support case_000224_rank.val hlt case_000224_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000224_secondLine, FixedRow]
  exact ⟨case_000224_rowFirst, case_000224_fixedSecond⟩

private theorem case_000224_existsRows :
    ExistsOppOneMinusVarFirstRows case_000224_rank.val case_000224_mask :=
  ⟨case_000224_support, case_000224_sourceAgrees, case_000224_rows⟩

private theorem case_000224_covered :
    RowPropertyParametricCovered case_000224_rank.val case_000224_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000224_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000225_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000225_mask : SignMask := ⟨62, by decide⟩
private def case_000225_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000225_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000225_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000225_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (116/9) }
private def case_000225_firstLine : StrictLin2 := { a := -1, b := 1, c := (-39/29) }
private def case_000225_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000225_rankWord :
    rankPairWord? case_000225_word = some case_000225_rank := by
  decide

private theorem case_000225_unrank :
    unrankPairWord case_000225_rank = case_000225_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000225_word case_000225_rank).1
    case_000225_rankWord |>.symm

private theorem case_000225_seqChoice :
    translationChoiceSeq case_000225_word case_000225_mask = case_000225_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000225_seqAtRank :
    translationSeqAtRankMask case_000225_rank case_000225_mask = case_000225_seq := by
  rw [translationSeqAtRankMask, case_000225_unrank]
  exact case_000225_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000225_bAtRank :
    translationBAtRankMask case_000225_rank case_000225_mask = case_000225_b := by
  rw [translationBAtRankMask, case_000225_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000225_b, case_000225_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000225_firstLine_eq :
    case_000225_support.firstLine case_000225_seq case_000225_b = case_000225_firstLine := by
  norm_num [case_000225_firstLine, case_000225_support, case_000225_seq, case_000225_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000225_secondLine_eq :
    case_000225_support.secondLine case_000225_seq case_000225_b = case_000225_secondLine := by
  norm_num [case_000225_secondLine, case_000225_support, case_000225_seq, case_000225_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000225_sourceAgrees :
    SourceAgrees case_000225_support case_000225_rank.val case_000225_mask := by
  intro hlt
  have hrank : (⟨case_000225_rank.val, hlt⟩ : Fin numPairWords) = case_000225_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000225_rank.val, hlt⟩ case_000225_mask =
        case_000225_seq := by
    simpa [hrank] using case_000225_seqAtRank
  simp [SourceChecks, hseq, case_000225_support,
    checkTranslationConstraintSource, case_000225_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000225_rows :
    OppOneMinusVarFirstRows case_000225_support case_000225_rank.val case_000225_mask := by
  intro hlt
  have hrank : (⟨case_000225_rank.val, hlt⟩ : Fin numPairWords) = case_000225_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000225_rank.val, hlt⟩ case_000225_mask =
        case_000225_seq := by
    simpa [hrank] using case_000225_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000225_rank.val, hlt⟩ case_000225_mask =
        case_000225_b := by
    simpa [hrank] using case_000225_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000225_support case_000225_rank.val hlt
          case_000225_mask = case_000225_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000225_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000225_support case_000225_rank.val hlt
          case_000225_mask = case_000225_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000225_secondLine_eq]
  have case_000225_rowFirst :
      OppPosRow (FirstLineAt case_000225_support case_000225_rank.val hlt case_000225_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000225_firstLine, OppPosRow]
  have case_000225_fixedSecond :
      FixedRow (SecondLineAt case_000225_support case_000225_rank.val hlt case_000225_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000225_secondLine, FixedRow]
  exact ⟨case_000225_rowFirst, case_000225_fixedSecond⟩

private theorem case_000225_existsRows :
    ExistsOppOneMinusVarFirstRows case_000225_rank.val case_000225_mask :=
  ⟨case_000225_support, case_000225_sourceAgrees, case_000225_rows⟩

private theorem case_000225_covered :
    RowPropertyParametricCovered case_000225_rank.val case_000225_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000225_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000226_rank : Fin numPairWords := ⟨57, by decide⟩
private def case_000226_mask : SignMask := ⟨63, by decide⟩
private def case_000226_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩
private def case_000226_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000226_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000226_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (116/9) }
private def case_000226_firstLine : StrictLin2 := { a := (-29/71), b := (-29/71), c := (-93/71) }
private def case_000226_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000226_rankWord :
    rankPairWord? case_000226_word = some case_000226_rank := by
  decide

private theorem case_000226_unrank :
    unrankPairWord case_000226_rank = case_000226_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000226_word case_000226_rank).1
    case_000226_rankWord |>.symm

private theorem case_000226_seqChoice :
    translationChoiceSeq case_000226_word case_000226_mask = case_000226_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000226_seqAtRank :
    translationSeqAtRankMask case_000226_rank case_000226_mask = case_000226_seq := by
  rw [translationSeqAtRankMask, case_000226_unrank]
  exact case_000226_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000226_bAtRank :
    translationBAtRankMask case_000226_rank case_000226_mask = case_000226_b := by
  rw [translationBAtRankMask, case_000226_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000226_b, case_000226_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000226_firstLine_eq :
    case_000226_support.firstLine case_000226_seq case_000226_b = case_000226_firstLine := by
  norm_num [case_000226_firstLine, case_000226_support, case_000226_seq, case_000226_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000226_secondLine_eq :
    case_000226_support.secondLine case_000226_seq case_000226_b = case_000226_secondLine := by
  norm_num [case_000226_secondLine, case_000226_support, case_000226_seq, case_000226_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000226_sourceAgrees :
    SourceAgrees case_000226_support case_000226_rank.val case_000226_mask := by
  intro hlt
  have hrank : (⟨case_000226_rank.val, hlt⟩ : Fin numPairWords) = case_000226_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000226_rank.val, hlt⟩ case_000226_mask =
        case_000226_seq := by
    simpa [hrank] using case_000226_seqAtRank
  simp [SourceChecks, hseq, case_000226_support,
    checkTranslationConstraintSource, case_000226_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000226_rows :
    EqEqPosVarFirstRows case_000226_support case_000226_rank.val case_000226_mask := by
  intro hlt
  have hrank : (⟨case_000226_rank.val, hlt⟩ : Fin numPairWords) = case_000226_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000226_rank.val, hlt⟩ case_000226_mask =
        case_000226_seq := by
    simpa [hrank] using case_000226_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000226_rank.val, hlt⟩ case_000226_mask =
        case_000226_b := by
    simpa [hrank] using case_000226_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000226_support case_000226_rank.val hlt
          case_000226_mask = case_000226_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000226_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000226_support case_000226_rank.val hlt
          case_000226_mask = case_000226_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000226_secondLine_eq]
  have case_000226_rowFirst :
      EqEqPosRow (FirstLineAt case_000226_support case_000226_rank.val hlt case_000226_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000226_firstLine, EqEqPosRow]
  have case_000226_fixedSecond :
      FixedRow (SecondLineAt case_000226_support case_000226_rank.val hlt case_000226_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000226_secondLine, FixedRow]
  exact ⟨case_000226_rowFirst, case_000226_fixedSecond⟩

private theorem case_000226_existsRows :
    ExistsEqEqPosVarFirstRows case_000226_rank.val case_000226_mask :=
  ⟨case_000226_support, case_000226_sourceAgrees, case_000226_rows⟩

private theorem case_000226_covered :
    RowPropertyParametricCovered case_000226_rank.val case_000226_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000226_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000227_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000227_mask : SignMask := ⟨8, by decide⟩
private def case_000227_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000227_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000227_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000227_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-148/9) }
private def case_000227_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000227_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000227_rankWord :
    rankPairWord? case_000227_word = some case_000227_rank := by
  decide

private theorem case_000227_unrank :
    unrankPairWord case_000227_rank = case_000227_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000227_word case_000227_rank).1
    case_000227_rankWord |>.symm

private theorem case_000227_seqChoice :
    translationChoiceSeq case_000227_word case_000227_mask = case_000227_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000227_seqAtRank :
    translationSeqAtRankMask case_000227_rank case_000227_mask = case_000227_seq := by
  rw [translationSeqAtRankMask, case_000227_unrank]
  exact case_000227_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000227_bAtRank :
    translationBAtRankMask case_000227_rank case_000227_mask = case_000227_b := by
  rw [translationBAtRankMask, case_000227_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000227_b, case_000227_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000227_firstLine_eq :
    case_000227_support.firstLine case_000227_seq case_000227_b = case_000227_firstLine := by
  norm_num [case_000227_firstLine, case_000227_support, case_000227_seq, case_000227_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000227_secondLine_eq :
    case_000227_support.secondLine case_000227_seq case_000227_b = case_000227_secondLine := by
  norm_num [case_000227_secondLine, case_000227_support, case_000227_seq, case_000227_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000227_sourceAgrees :
    SourceAgrees case_000227_support case_000227_rank.val case_000227_mask := by
  intro hlt
  have hrank : (⟨case_000227_rank.val, hlt⟩ : Fin numPairWords) = case_000227_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000227_rank.val, hlt⟩ case_000227_mask =
        case_000227_seq := by
    simpa [hrank] using case_000227_seqAtRank
  simp [SourceChecks, hseq, case_000227_support,
    checkTranslationConstraintSource, case_000227_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000227_rows :
    EqEqPosVarFirstRows case_000227_support case_000227_rank.val case_000227_mask := by
  intro hlt
  have hrank : (⟨case_000227_rank.val, hlt⟩ : Fin numPairWords) = case_000227_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000227_rank.val, hlt⟩ case_000227_mask =
        case_000227_seq := by
    simpa [hrank] using case_000227_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000227_rank.val, hlt⟩ case_000227_mask =
        case_000227_b := by
    simpa [hrank] using case_000227_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000227_support case_000227_rank.val hlt
          case_000227_mask = case_000227_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000227_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000227_support case_000227_rank.val hlt
          case_000227_mask = case_000227_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000227_secondLine_eq]
  have case_000227_rowFirst :
      EqEqPosRow (FirstLineAt case_000227_support case_000227_rank.val hlt case_000227_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000227_firstLine, EqEqPosRow]
  have case_000227_fixedSecond :
      FixedRow (SecondLineAt case_000227_support case_000227_rank.val hlt case_000227_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000227_secondLine, FixedRow]
  exact ⟨case_000227_rowFirst, case_000227_fixedSecond⟩

private theorem case_000227_existsRows :
    ExistsEqEqPosVarFirstRows case_000227_rank.val case_000227_mask :=
  ⟨case_000227_support, case_000227_sourceAgrees, case_000227_rows⟩

private theorem case_000227_covered :
    RowPropertyParametricCovered case_000227_rank.val case_000227_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000227_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000228_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000228_mask : SignMask := ⟨9, by decide⟩
private def case_000228_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000228_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000228_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000228_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-148/9) }
private def case_000228_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000228_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000228_rankWord :
    rankPairWord? case_000228_word = some case_000228_rank := by
  decide

private theorem case_000228_unrank :
    unrankPairWord case_000228_rank = case_000228_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000228_word case_000228_rank).1
    case_000228_rankWord |>.symm

private theorem case_000228_seqChoice :
    translationChoiceSeq case_000228_word case_000228_mask = case_000228_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000228_seqAtRank :
    translationSeqAtRankMask case_000228_rank case_000228_mask = case_000228_seq := by
  rw [translationSeqAtRankMask, case_000228_unrank]
  exact case_000228_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000228_bAtRank :
    translationBAtRankMask case_000228_rank case_000228_mask = case_000228_b := by
  rw [translationBAtRankMask, case_000228_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000228_b, case_000228_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000228_firstLine_eq :
    case_000228_support.firstLine case_000228_seq case_000228_b = case_000228_firstLine := by
  norm_num [case_000228_firstLine, case_000228_support, case_000228_seq, case_000228_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000228_secondLine_eq :
    case_000228_support.secondLine case_000228_seq case_000228_b = case_000228_secondLine := by
  norm_num [case_000228_secondLine, case_000228_support, case_000228_seq, case_000228_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000228_sourceAgrees :
    SourceAgrees case_000228_support case_000228_rank.val case_000228_mask := by
  intro hlt
  have hrank : (⟨case_000228_rank.val, hlt⟩ : Fin numPairWords) = case_000228_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000228_rank.val, hlt⟩ case_000228_mask =
        case_000228_seq := by
    simpa [hrank] using case_000228_seqAtRank
  simp [SourceChecks, hseq, case_000228_support,
    checkTranslationConstraintSource, case_000228_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000228_rows :
    EqEqPosVarFirstRows case_000228_support case_000228_rank.val case_000228_mask := by
  intro hlt
  have hrank : (⟨case_000228_rank.val, hlt⟩ : Fin numPairWords) = case_000228_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000228_rank.val, hlt⟩ case_000228_mask =
        case_000228_seq := by
    simpa [hrank] using case_000228_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000228_rank.val, hlt⟩ case_000228_mask =
        case_000228_b := by
    simpa [hrank] using case_000228_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000228_support case_000228_rank.val hlt
          case_000228_mask = case_000228_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000228_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000228_support case_000228_rank.val hlt
          case_000228_mask = case_000228_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000228_secondLine_eq]
  have case_000228_rowFirst :
      EqEqPosRow (FirstLineAt case_000228_support case_000228_rank.val hlt case_000228_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000228_firstLine, EqEqPosRow]
  have case_000228_fixedSecond :
      FixedRow (SecondLineAt case_000228_support case_000228_rank.val hlt case_000228_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000228_secondLine, FixedRow]
  exact ⟨case_000228_rowFirst, case_000228_fixedSecond⟩

private theorem case_000228_existsRows :
    ExistsEqEqPosVarFirstRows case_000228_rank.val case_000228_mask :=
  ⟨case_000228_support, case_000228_sourceAgrees, case_000228_rows⟩

private theorem case_000228_covered :
    RowPropertyParametricCovered case_000228_rank.val case_000228_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000228_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000229_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000229_mask : SignMask := ⟨13, by decide⟩
private def case_000229_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000229_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000229_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000229_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-100/9) }
private def case_000229_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000229_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_000229_rankWord :
    rankPairWord? case_000229_word = some case_000229_rank := by
  decide

private theorem case_000229_unrank :
    unrankPairWord case_000229_rank = case_000229_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000229_word case_000229_rank).1
    case_000229_rankWord |>.symm

private theorem case_000229_seqChoice :
    translationChoiceSeq case_000229_word case_000229_mask = case_000229_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000229_seqAtRank :
    translationSeqAtRankMask case_000229_rank case_000229_mask = case_000229_seq := by
  rw [translationSeqAtRankMask, case_000229_unrank]
  exact case_000229_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000229_bAtRank :
    translationBAtRankMask case_000229_rank case_000229_mask = case_000229_b := by
  rw [translationBAtRankMask, case_000229_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000229_b, case_000229_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000229_firstLine_eq :
    case_000229_support.firstLine case_000229_seq case_000229_b = case_000229_firstLine := by
  norm_num [case_000229_firstLine, case_000229_support, case_000229_seq, case_000229_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000229_secondLine_eq :
    case_000229_support.secondLine case_000229_seq case_000229_b = case_000229_secondLine := by
  norm_num [case_000229_secondLine, case_000229_support, case_000229_seq, case_000229_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000229_sourceAgrees :
    SourceAgrees case_000229_support case_000229_rank.val case_000229_mask := by
  intro hlt
  have hrank : (⟨case_000229_rank.val, hlt⟩ : Fin numPairWords) = case_000229_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000229_rank.val, hlt⟩ case_000229_mask =
        case_000229_seq := by
    simpa [hrank] using case_000229_seqAtRank
  simp [SourceChecks, hseq, case_000229_support,
    checkTranslationConstraintSource, case_000229_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000229_rows :
    EqEqPosVarSecondRows case_000229_support case_000229_rank.val case_000229_mask := by
  intro hlt
  have hrank : (⟨case_000229_rank.val, hlt⟩ : Fin numPairWords) = case_000229_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000229_rank.val, hlt⟩ case_000229_mask =
        case_000229_seq := by
    simpa [hrank] using case_000229_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000229_rank.val, hlt⟩ case_000229_mask =
        case_000229_b := by
    simpa [hrank] using case_000229_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000229_support case_000229_rank.val hlt
          case_000229_mask = case_000229_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000229_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000229_support case_000229_rank.val hlt
          case_000229_mask = case_000229_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000229_secondLine_eq]
  have case_000229_fixedFirst :
      FixedRow (FirstLineAt case_000229_support case_000229_rank.val hlt case_000229_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000229_firstLine, FixedRow]
  have case_000229_rowSecond :
      EqEqPosRow (SecondLineAt case_000229_support case_000229_rank.val hlt case_000229_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000229_secondLine, EqEqPosRow]
  exact ⟨case_000229_fixedFirst, case_000229_rowSecond⟩

private theorem case_000229_existsRows :
    ExistsEqEqPosVarSecondRows case_000229_rank.val case_000229_mask :=
  ⟨case_000229_support, case_000229_sourceAgrees, case_000229_rows⟩

private theorem case_000229_covered :
    RowPropertyParametricCovered case_000229_rank.val case_000229_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000229_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000230_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000230_mask : SignMask := ⟨16, by decide⟩
private def case_000230_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000230_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000230_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000230_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-52/9) }
private def case_000230_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000230_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000230_rankWord :
    rankPairWord? case_000230_word = some case_000230_rank := by
  decide

private theorem case_000230_unrank :
    unrankPairWord case_000230_rank = case_000230_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000230_word case_000230_rank).1
    case_000230_rankWord |>.symm

private theorem case_000230_seqChoice :
    translationChoiceSeq case_000230_word case_000230_mask = case_000230_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000230_seqAtRank :
    translationSeqAtRankMask case_000230_rank case_000230_mask = case_000230_seq := by
  rw [translationSeqAtRankMask, case_000230_unrank]
  exact case_000230_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000230_bAtRank :
    translationBAtRankMask case_000230_rank case_000230_mask = case_000230_b := by
  rw [translationBAtRankMask, case_000230_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000230_b, case_000230_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000230_firstLine_eq :
    case_000230_support.firstLine case_000230_seq case_000230_b = case_000230_firstLine := by
  norm_num [case_000230_firstLine, case_000230_support, case_000230_seq, case_000230_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000230_secondLine_eq :
    case_000230_support.secondLine case_000230_seq case_000230_b = case_000230_secondLine := by
  norm_num [case_000230_secondLine, case_000230_support, case_000230_seq, case_000230_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000230_sourceAgrees :
    SourceAgrees case_000230_support case_000230_rank.val case_000230_mask := by
  intro hlt
  have hrank : (⟨case_000230_rank.val, hlt⟩ : Fin numPairWords) = case_000230_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000230_rank.val, hlt⟩ case_000230_mask =
        case_000230_seq := by
    simpa [hrank] using case_000230_seqAtRank
  simp [SourceChecks, hseq, case_000230_support,
    checkTranslationConstraintSource, case_000230_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000230_rows :
    EqEqPosVarFirstRows case_000230_support case_000230_rank.val case_000230_mask := by
  intro hlt
  have hrank : (⟨case_000230_rank.val, hlt⟩ : Fin numPairWords) = case_000230_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000230_rank.val, hlt⟩ case_000230_mask =
        case_000230_seq := by
    simpa [hrank] using case_000230_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000230_rank.val, hlt⟩ case_000230_mask =
        case_000230_b := by
    simpa [hrank] using case_000230_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000230_support case_000230_rank.val hlt
          case_000230_mask = case_000230_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000230_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000230_support case_000230_rank.val hlt
          case_000230_mask = case_000230_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000230_secondLine_eq]
  have case_000230_rowFirst :
      EqEqPosRow (FirstLineAt case_000230_support case_000230_rank.val hlt case_000230_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000230_firstLine, EqEqPosRow]
  have case_000230_fixedSecond :
      FixedRow (SecondLineAt case_000230_support case_000230_rank.val hlt case_000230_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000230_secondLine, FixedRow]
  exact ⟨case_000230_rowFirst, case_000230_fixedSecond⟩

private theorem case_000230_existsRows :
    ExistsEqEqPosVarFirstRows case_000230_rank.val case_000230_mask :=
  ⟨case_000230_support, case_000230_sourceAgrees, case_000230_rows⟩

private theorem case_000230_covered :
    RowPropertyParametricCovered case_000230_rank.val case_000230_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000230_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000231_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000231_mask : SignMask := ⟨18, by decide⟩
private def case_000231_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000231_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000231_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000231_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (20/9) }
private def case_000231_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000231_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000231_rankWord :
    rankPairWord? case_000231_word = some case_000231_rank := by
  decide

private theorem case_000231_unrank :
    unrankPairWord case_000231_rank = case_000231_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000231_word case_000231_rank).1
    case_000231_rankWord |>.symm

private theorem case_000231_seqChoice :
    translationChoiceSeq case_000231_word case_000231_mask = case_000231_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000231_seqAtRank :
    translationSeqAtRankMask case_000231_rank case_000231_mask = case_000231_seq := by
  rw [translationSeqAtRankMask, case_000231_unrank]
  exact case_000231_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000231_bAtRank :
    translationBAtRankMask case_000231_rank case_000231_mask = case_000231_b := by
  rw [translationBAtRankMask, case_000231_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000231_b, case_000231_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000231_firstLine_eq :
    case_000231_support.firstLine case_000231_seq case_000231_b = case_000231_firstLine := by
  norm_num [case_000231_firstLine, case_000231_support, case_000231_seq, case_000231_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000231_secondLine_eq :
    case_000231_support.secondLine case_000231_seq case_000231_b = case_000231_secondLine := by
  norm_num [case_000231_secondLine, case_000231_support, case_000231_seq, case_000231_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000231_sourceAgrees :
    SourceAgrees case_000231_support case_000231_rank.val case_000231_mask := by
  intro hlt
  have hrank : (⟨case_000231_rank.val, hlt⟩ : Fin numPairWords) = case_000231_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000231_rank.val, hlt⟩ case_000231_mask =
        case_000231_seq := by
    simpa [hrank] using case_000231_seqAtRank
  simp [SourceChecks, hseq, case_000231_support,
    checkTranslationConstraintSource, case_000231_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000231_rows :
    EqEqPosVarFirstRows case_000231_support case_000231_rank.val case_000231_mask := by
  intro hlt
  have hrank : (⟨case_000231_rank.val, hlt⟩ : Fin numPairWords) = case_000231_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000231_rank.val, hlt⟩ case_000231_mask =
        case_000231_seq := by
    simpa [hrank] using case_000231_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000231_rank.val, hlt⟩ case_000231_mask =
        case_000231_b := by
    simpa [hrank] using case_000231_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000231_support case_000231_rank.val hlt
          case_000231_mask = case_000231_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000231_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000231_support case_000231_rank.val hlt
          case_000231_mask = case_000231_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000231_secondLine_eq]
  have case_000231_rowFirst :
      EqEqPosRow (FirstLineAt case_000231_support case_000231_rank.val hlt case_000231_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000231_firstLine, EqEqPosRow]
  have case_000231_fixedSecond :
      FixedRow (SecondLineAt case_000231_support case_000231_rank.val hlt case_000231_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000231_secondLine, FixedRow]
  exact ⟨case_000231_rowFirst, case_000231_fixedSecond⟩

private theorem case_000231_existsRows :
    ExistsEqEqPosVarFirstRows case_000231_rank.val case_000231_mask :=
  ⟨case_000231_support, case_000231_sourceAgrees, case_000231_rows⟩

private theorem case_000231_covered :
    RowPropertyParametricCovered case_000231_rank.val case_000231_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000231_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000232_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000232_mask : SignMask := ⟨24, by decide⟩
private def case_000232_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000232_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000232_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000232_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-100/9) }
private def case_000232_firstLine : StrictLin2 := { a := -1, b := -1, c := (-67/17) }
private def case_000232_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000232_rankWord :
    rankPairWord? case_000232_word = some case_000232_rank := by
  decide

private theorem case_000232_unrank :
    unrankPairWord case_000232_rank = case_000232_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000232_word case_000232_rank).1
    case_000232_rankWord |>.symm

private theorem case_000232_seqChoice :
    translationChoiceSeq case_000232_word case_000232_mask = case_000232_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000232_seqAtRank :
    translationSeqAtRankMask case_000232_rank case_000232_mask = case_000232_seq := by
  rw [translationSeqAtRankMask, case_000232_unrank]
  exact case_000232_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000232_bAtRank :
    translationBAtRankMask case_000232_rank case_000232_mask = case_000232_b := by
  rw [translationBAtRankMask, case_000232_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000232_b, case_000232_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000232_firstLine_eq :
    case_000232_support.firstLine case_000232_seq case_000232_b = case_000232_firstLine := by
  norm_num [case_000232_firstLine, case_000232_support, case_000232_seq, case_000232_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000232_secondLine_eq :
    case_000232_support.secondLine case_000232_seq case_000232_b = case_000232_secondLine := by
  norm_num [case_000232_secondLine, case_000232_support, case_000232_seq, case_000232_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000232_sourceAgrees :
    SourceAgrees case_000232_support case_000232_rank.val case_000232_mask := by
  intro hlt
  have hrank : (⟨case_000232_rank.val, hlt⟩ : Fin numPairWords) = case_000232_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000232_rank.val, hlt⟩ case_000232_mask =
        case_000232_seq := by
    simpa [hrank] using case_000232_seqAtRank
  simp [SourceChecks, hseq, case_000232_support,
    checkTranslationConstraintSource, case_000232_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000232_rows :
    EqEqPosVarFirstRows case_000232_support case_000232_rank.val case_000232_mask := by
  intro hlt
  have hrank : (⟨case_000232_rank.val, hlt⟩ : Fin numPairWords) = case_000232_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000232_rank.val, hlt⟩ case_000232_mask =
        case_000232_seq := by
    simpa [hrank] using case_000232_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000232_rank.val, hlt⟩ case_000232_mask =
        case_000232_b := by
    simpa [hrank] using case_000232_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000232_support case_000232_rank.val hlt
          case_000232_mask = case_000232_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000232_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000232_support case_000232_rank.val hlt
          case_000232_mask = case_000232_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000232_secondLine_eq]
  have case_000232_rowFirst :
      EqEqPosRow (FirstLineAt case_000232_support case_000232_rank.val hlt case_000232_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000232_firstLine, EqEqPosRow]
  have case_000232_fixedSecond :
      FixedRow (SecondLineAt case_000232_support case_000232_rank.val hlt case_000232_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000232_secondLine, FixedRow]
  exact ⟨case_000232_rowFirst, case_000232_fixedSecond⟩

private theorem case_000232_existsRows :
    ExistsEqEqPosVarFirstRows case_000232_rank.val case_000232_mask :=
  ⟨case_000232_support, case_000232_sourceAgrees, case_000232_rows⟩

private theorem case_000232_covered :
    RowPropertyParametricCovered case_000232_rank.val case_000232_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000232_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000233_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000233_mask : SignMask := ⟨28, by decide⟩
private def case_000233_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000233_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000233_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000233_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-52/9) }
private def case_000233_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000233_secondLine : StrictLin2 := { a := (87/518), b := (-87/518), c := (-101/259) }

private theorem case_000233_rankWord :
    rankPairWord? case_000233_word = some case_000233_rank := by
  decide

private theorem case_000233_unrank :
    unrankPairWord case_000233_rank = case_000233_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000233_word case_000233_rank).1
    case_000233_rankWord |>.symm

private theorem case_000233_seqChoice :
    translationChoiceSeq case_000233_word case_000233_mask = case_000233_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000233_seqAtRank :
    translationSeqAtRankMask case_000233_rank case_000233_mask = case_000233_seq := by
  rw [translationSeqAtRankMask, case_000233_unrank]
  exact case_000233_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000233_bAtRank :
    translationBAtRankMask case_000233_rank case_000233_mask = case_000233_b := by
  rw [translationBAtRankMask, case_000233_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000233_b, case_000233_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000233_firstLine_eq :
    case_000233_support.firstLine case_000233_seq case_000233_b = case_000233_firstLine := by
  norm_num [case_000233_firstLine, case_000233_support, case_000233_seq, case_000233_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000233_secondLine_eq :
    case_000233_support.secondLine case_000233_seq case_000233_b = case_000233_secondLine := by
  norm_num [case_000233_secondLine, case_000233_support, case_000233_seq, case_000233_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000233_sourceAgrees :
    SourceAgrees case_000233_support case_000233_rank.val case_000233_mask := by
  intro hlt
  have hrank : (⟨case_000233_rank.val, hlt⟩ : Fin numPairWords) = case_000233_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000233_rank.val, hlt⟩ case_000233_mask =
        case_000233_seq := by
    simpa [hrank] using case_000233_seqAtRank
  simp [SourceChecks, hseq, case_000233_support,
    checkTranslationConstraintSource, case_000233_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000233_rows :
    OppMinusOneVarSecondRows case_000233_support case_000233_rank.val case_000233_mask := by
  intro hlt
  have hrank : (⟨case_000233_rank.val, hlt⟩ : Fin numPairWords) = case_000233_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000233_rank.val, hlt⟩ case_000233_mask =
        case_000233_seq := by
    simpa [hrank] using case_000233_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000233_rank.val, hlt⟩ case_000233_mask =
        case_000233_b := by
    simpa [hrank] using case_000233_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000233_support case_000233_rank.val hlt
          case_000233_mask = case_000233_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000233_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000233_support case_000233_rank.val hlt
          case_000233_mask = case_000233_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000233_secondLine_eq]
  have case_000233_fixedFirst :
      FixedRow (FirstLineAt case_000233_support case_000233_rank.val hlt case_000233_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000233_firstLine, FixedRow]
  have case_000233_rowSecond :
      OppNegRow (SecondLineAt case_000233_support case_000233_rank.val hlt case_000233_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000233_secondLine, OppNegRow]
  exact ⟨case_000233_fixedFirst, case_000233_rowSecond⟩

private theorem case_000233_existsRows :
    ExistsOppMinusOneVarSecondRows case_000233_rank.val case_000233_mask :=
  ⟨case_000233_support, case_000233_sourceAgrees, case_000233_rows⟩

private theorem case_000233_covered :
    RowPropertyParametricCovered case_000233_rank.val case_000233_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000233_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000234_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000234_mask : SignMask := ⟨29, by decide⟩
private def case_000234_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000234_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000234_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000234_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-52/9) }
private def case_000234_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000234_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_000234_rankWord :
    rankPairWord? case_000234_word = some case_000234_rank := by
  decide

private theorem case_000234_unrank :
    unrankPairWord case_000234_rank = case_000234_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000234_word case_000234_rank).1
    case_000234_rankWord |>.symm

private theorem case_000234_seqChoice :
    translationChoiceSeq case_000234_word case_000234_mask = case_000234_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000234_seqAtRank :
    translationSeqAtRankMask case_000234_rank case_000234_mask = case_000234_seq := by
  rw [translationSeqAtRankMask, case_000234_unrank]
  exact case_000234_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000234_bAtRank :
    translationBAtRankMask case_000234_rank case_000234_mask = case_000234_b := by
  rw [translationBAtRankMask, case_000234_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000234_b, case_000234_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000234_firstLine_eq :
    case_000234_support.firstLine case_000234_seq case_000234_b = case_000234_firstLine := by
  norm_num [case_000234_firstLine, case_000234_support, case_000234_seq, case_000234_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000234_secondLine_eq :
    case_000234_support.secondLine case_000234_seq case_000234_b = case_000234_secondLine := by
  norm_num [case_000234_secondLine, case_000234_support, case_000234_seq, case_000234_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000234_sourceAgrees :
    SourceAgrees case_000234_support case_000234_rank.val case_000234_mask := by
  intro hlt
  have hrank : (⟨case_000234_rank.val, hlt⟩ : Fin numPairWords) = case_000234_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000234_rank.val, hlt⟩ case_000234_mask =
        case_000234_seq := by
    simpa [hrank] using case_000234_seqAtRank
  simp [SourceChecks, hseq, case_000234_support,
    checkTranslationConstraintSource, case_000234_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000234_rows :
    EqEqPosVarSecondRows case_000234_support case_000234_rank.val case_000234_mask := by
  intro hlt
  have hrank : (⟨case_000234_rank.val, hlt⟩ : Fin numPairWords) = case_000234_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000234_rank.val, hlt⟩ case_000234_mask =
        case_000234_seq := by
    simpa [hrank] using case_000234_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000234_rank.val, hlt⟩ case_000234_mask =
        case_000234_b := by
    simpa [hrank] using case_000234_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000234_support case_000234_rank.val hlt
          case_000234_mask = case_000234_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000234_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000234_support case_000234_rank.val hlt
          case_000234_mask = case_000234_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000234_secondLine_eq]
  have case_000234_fixedFirst :
      FixedRow (FirstLineAt case_000234_support case_000234_rank.val hlt case_000234_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000234_firstLine, FixedRow]
  have case_000234_rowSecond :
      EqEqPosRow (SecondLineAt case_000234_support case_000234_rank.val hlt case_000234_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000234_secondLine, EqEqPosRow]
  exact ⟨case_000234_fixedFirst, case_000234_rowSecond⟩

private theorem case_000234_existsRows :
    ExistsEqEqPosVarSecondRows case_000234_rank.val case_000234_mask :=
  ⟨case_000234_support, case_000234_sourceAgrees, case_000234_rows⟩

private theorem case_000234_covered :
    RowPropertyParametricCovered case_000234_rank.val case_000234_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000234_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000235_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000235_mask : SignMask := ⟨30, by decide⟩
private def case_000235_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000235_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000235_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000235_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (20/9) }
private def case_000235_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000235_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000235_rankWord :
    rankPairWord? case_000235_word = some case_000235_rank := by
  decide

private theorem case_000235_unrank :
    unrankPairWord case_000235_rank = case_000235_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000235_word case_000235_rank).1
    case_000235_rankWord |>.symm

private theorem case_000235_seqChoice :
    translationChoiceSeq case_000235_word case_000235_mask = case_000235_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000235_seqAtRank :
    translationSeqAtRankMask case_000235_rank case_000235_mask = case_000235_seq := by
  rw [translationSeqAtRankMask, case_000235_unrank]
  exact case_000235_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000235_bAtRank :
    translationBAtRankMask case_000235_rank case_000235_mask = case_000235_b := by
  rw [translationBAtRankMask, case_000235_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000235_b, case_000235_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000235_firstLine_eq :
    case_000235_support.firstLine case_000235_seq case_000235_b = case_000235_firstLine := by
  norm_num [case_000235_firstLine, case_000235_support, case_000235_seq, case_000235_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000235_secondLine_eq :
    case_000235_support.secondLine case_000235_seq case_000235_b = case_000235_secondLine := by
  norm_num [case_000235_secondLine, case_000235_support, case_000235_seq, case_000235_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000235_sourceAgrees :
    SourceAgrees case_000235_support case_000235_rank.val case_000235_mask := by
  intro hlt
  have hrank : (⟨case_000235_rank.val, hlt⟩ : Fin numPairWords) = case_000235_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000235_rank.val, hlt⟩ case_000235_mask =
        case_000235_seq := by
    simpa [hrank] using case_000235_seqAtRank
  simp [SourceChecks, hseq, case_000235_support,
    checkTranslationConstraintSource, case_000235_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000235_rows :
    EqEqPosVarFirstRows case_000235_support case_000235_rank.val case_000235_mask := by
  intro hlt
  have hrank : (⟨case_000235_rank.val, hlt⟩ : Fin numPairWords) = case_000235_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000235_rank.val, hlt⟩ case_000235_mask =
        case_000235_seq := by
    simpa [hrank] using case_000235_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000235_rank.val, hlt⟩ case_000235_mask =
        case_000235_b := by
    simpa [hrank] using case_000235_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000235_support case_000235_rank.val hlt
          case_000235_mask = case_000235_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000235_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000235_support case_000235_rank.val hlt
          case_000235_mask = case_000235_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000235_secondLine_eq]
  have case_000235_rowFirst :
      EqEqPosRow (FirstLineAt case_000235_support case_000235_rank.val hlt case_000235_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000235_firstLine, EqEqPosRow]
  have case_000235_fixedSecond :
      FixedRow (SecondLineAt case_000235_support case_000235_rank.val hlt case_000235_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000235_secondLine, FixedRow]
  exact ⟨case_000235_rowFirst, case_000235_fixedSecond⟩

private theorem case_000235_existsRows :
    ExistsEqEqPosVarFirstRows case_000235_rank.val case_000235_mask :=
  ⟨case_000235_support, case_000235_sourceAgrees, case_000235_rows⟩

private theorem case_000235_covered :
    RowPropertyParametricCovered case_000235_rank.val case_000235_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000235_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000236_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000236_mask : SignMask := ⟨47, by decide⟩
private def case_000236_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000236_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000236_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000236_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (52/9) }
private def case_000236_firstLine : StrictLin2 := { a := 1, b := -1, c := (-19/13) }
private def case_000236_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000236_rankWord :
    rankPairWord? case_000236_word = some case_000236_rank := by
  decide

private theorem case_000236_unrank :
    unrankPairWord case_000236_rank = case_000236_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000236_word case_000236_rank).1
    case_000236_rankWord |>.symm

private theorem case_000236_seqChoice :
    translationChoiceSeq case_000236_word case_000236_mask = case_000236_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000236_seqAtRank :
    translationSeqAtRankMask case_000236_rank case_000236_mask = case_000236_seq := by
  rw [translationSeqAtRankMask, case_000236_unrank]
  exact case_000236_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000236_bAtRank :
    translationBAtRankMask case_000236_rank case_000236_mask = case_000236_b := by
  rw [translationBAtRankMask, case_000236_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000236_b, case_000236_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000236_firstLine_eq :
    case_000236_support.firstLine case_000236_seq case_000236_b = case_000236_firstLine := by
  norm_num [case_000236_firstLine, case_000236_support, case_000236_seq, case_000236_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000236_secondLine_eq :
    case_000236_support.secondLine case_000236_seq case_000236_b = case_000236_secondLine := by
  norm_num [case_000236_secondLine, case_000236_support, case_000236_seq, case_000236_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000236_sourceAgrees :
    SourceAgrees case_000236_support case_000236_rank.val case_000236_mask := by
  intro hlt
  have hrank : (⟨case_000236_rank.val, hlt⟩ : Fin numPairWords) = case_000236_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000236_rank.val, hlt⟩ case_000236_mask =
        case_000236_seq := by
    simpa [hrank] using case_000236_seqAtRank
  simp [SourceChecks, hseq, case_000236_support,
    checkTranslationConstraintSource, case_000236_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000236_rows :
    OppMinusOneVarFirstRows case_000236_support case_000236_rank.val case_000236_mask := by
  intro hlt
  have hrank : (⟨case_000236_rank.val, hlt⟩ : Fin numPairWords) = case_000236_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000236_rank.val, hlt⟩ case_000236_mask =
        case_000236_seq := by
    simpa [hrank] using case_000236_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000236_rank.val, hlt⟩ case_000236_mask =
        case_000236_b := by
    simpa [hrank] using case_000236_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000236_support case_000236_rank.val hlt
          case_000236_mask = case_000236_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000236_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000236_support case_000236_rank.val hlt
          case_000236_mask = case_000236_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000236_secondLine_eq]
  have case_000236_rowFirst :
      OppNegRow (FirstLineAt case_000236_support case_000236_rank.val hlt case_000236_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000236_firstLine, OppNegRow]
  have case_000236_fixedSecond :
      FixedRow (SecondLineAt case_000236_support case_000236_rank.val hlt case_000236_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000236_secondLine, FixedRow]
  exact ⟨case_000236_rowFirst, case_000236_fixedSecond⟩

private theorem case_000236_existsRows :
    ExistsOppMinusOneVarFirstRows case_000236_rank.val case_000236_mask :=
  ⟨case_000236_support, case_000236_sourceAgrees, case_000236_rows⟩

private theorem case_000236_covered :
    RowPropertyParametricCovered case_000236_rank.val case_000236_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000236_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000237_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000237_mask : SignMask := ⟨54, by decide⟩
private def case_000237_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000237_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000237_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000237_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (148/9) }
private def case_000237_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000237_secondLine : StrictLin2 := { a := (-13/518), b := (13/518), c := (-79/777) }

private theorem case_000237_rankWord :
    rankPairWord? case_000237_word = some case_000237_rank := by
  decide

private theorem case_000237_unrank :
    unrankPairWord case_000237_rank = case_000237_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000237_word case_000237_rank).1
    case_000237_rankWord |>.symm

private theorem case_000237_seqChoice :
    translationChoiceSeq case_000237_word case_000237_mask = case_000237_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000237_seqAtRank :
    translationSeqAtRankMask case_000237_rank case_000237_mask = case_000237_seq := by
  rw [translationSeqAtRankMask, case_000237_unrank]
  exact case_000237_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000237_bAtRank :
    translationBAtRankMask case_000237_rank case_000237_mask = case_000237_b := by
  rw [translationBAtRankMask, case_000237_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000237_b, case_000237_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000237_firstLine_eq :
    case_000237_support.firstLine case_000237_seq case_000237_b = case_000237_firstLine := by
  norm_num [case_000237_firstLine, case_000237_support, case_000237_seq, case_000237_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000237_secondLine_eq :
    case_000237_support.secondLine case_000237_seq case_000237_b = case_000237_secondLine := by
  norm_num [case_000237_secondLine, case_000237_support, case_000237_seq, case_000237_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000237_sourceAgrees :
    SourceAgrees case_000237_support case_000237_rank.val case_000237_mask := by
  intro hlt
  have hrank : (⟨case_000237_rank.val, hlt⟩ : Fin numPairWords) = case_000237_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000237_rank.val, hlt⟩ case_000237_mask =
        case_000237_seq := by
    simpa [hrank] using case_000237_seqAtRank
  simp [SourceChecks, hseq, case_000237_support,
    checkTranslationConstraintSource, case_000237_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000237_rows :
    OppOneMinusVarSecondRows case_000237_support case_000237_rank.val case_000237_mask := by
  intro hlt
  have hrank : (⟨case_000237_rank.val, hlt⟩ : Fin numPairWords) = case_000237_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000237_rank.val, hlt⟩ case_000237_mask =
        case_000237_seq := by
    simpa [hrank] using case_000237_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000237_rank.val, hlt⟩ case_000237_mask =
        case_000237_b := by
    simpa [hrank] using case_000237_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000237_support case_000237_rank.val hlt
          case_000237_mask = case_000237_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000237_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000237_support case_000237_rank.val hlt
          case_000237_mask = case_000237_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000237_secondLine_eq]
  have case_000237_fixedFirst :
      FixedRow (FirstLineAt case_000237_support case_000237_rank.val hlt case_000237_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000237_firstLine, FixedRow]
  have case_000237_rowSecond :
      OppPosRow (SecondLineAt case_000237_support case_000237_rank.val hlt case_000237_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000237_secondLine, OppPosRow]
  exact ⟨case_000237_fixedFirst, case_000237_rowSecond⟩

private theorem case_000237_existsRows :
    ExistsOppOneMinusVarSecondRows case_000237_rank.val case_000237_mask :=
  ⟨case_000237_support, case_000237_sourceAgrees, case_000237_rows⟩

private theorem case_000237_covered :
    RowPropertyParametricCovered case_000237_rank.val case_000237_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000237_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000238_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000238_mask : SignMask := ⟨55, by decide⟩
private def case_000238_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000238_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000238_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000238_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (148/9) }
private def case_000238_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000238_secondLine : StrictLin2 := { a := (-13/190), b := (13/190), c := (-88/285) }

private theorem case_000238_rankWord :
    rankPairWord? case_000238_word = some case_000238_rank := by
  decide

private theorem case_000238_unrank :
    unrankPairWord case_000238_rank = case_000238_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000238_word case_000238_rank).1
    case_000238_rankWord |>.symm

private theorem case_000238_seqChoice :
    translationChoiceSeq case_000238_word case_000238_mask = case_000238_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000238_seqAtRank :
    translationSeqAtRankMask case_000238_rank case_000238_mask = case_000238_seq := by
  rw [translationSeqAtRankMask, case_000238_unrank]
  exact case_000238_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000238_bAtRank :
    translationBAtRankMask case_000238_rank case_000238_mask = case_000238_b := by
  rw [translationBAtRankMask, case_000238_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000238_b, case_000238_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000238_firstLine_eq :
    case_000238_support.firstLine case_000238_seq case_000238_b = case_000238_firstLine := by
  norm_num [case_000238_firstLine, case_000238_support, case_000238_seq, case_000238_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000238_secondLine_eq :
    case_000238_support.secondLine case_000238_seq case_000238_b = case_000238_secondLine := by
  norm_num [case_000238_secondLine, case_000238_support, case_000238_seq, case_000238_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000238_sourceAgrees :
    SourceAgrees case_000238_support case_000238_rank.val case_000238_mask := by
  intro hlt
  have hrank : (⟨case_000238_rank.val, hlt⟩ : Fin numPairWords) = case_000238_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000238_rank.val, hlt⟩ case_000238_mask =
        case_000238_seq := by
    simpa [hrank] using case_000238_seqAtRank
  simp [SourceChecks, hseq, case_000238_support,
    checkTranslationConstraintSource, case_000238_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000238_rows :
    OppOneMinusVarSecondRows case_000238_support case_000238_rank.val case_000238_mask := by
  intro hlt
  have hrank : (⟨case_000238_rank.val, hlt⟩ : Fin numPairWords) = case_000238_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000238_rank.val, hlt⟩ case_000238_mask =
        case_000238_seq := by
    simpa [hrank] using case_000238_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000238_rank.val, hlt⟩ case_000238_mask =
        case_000238_b := by
    simpa [hrank] using case_000238_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000238_support case_000238_rank.val hlt
          case_000238_mask = case_000238_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000238_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000238_support case_000238_rank.val hlt
          case_000238_mask = case_000238_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000238_secondLine_eq]
  have case_000238_fixedFirst :
      FixedRow (FirstLineAt case_000238_support case_000238_rank.val hlt case_000238_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000238_firstLine, FixedRow]
  have case_000238_rowSecond :
      OppPosRow (SecondLineAt case_000238_support case_000238_rank.val hlt case_000238_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000238_secondLine, OppPosRow]
  exact ⟨case_000238_fixedFirst, case_000238_rowSecond⟩

private theorem case_000238_existsRows :
    ExistsOppOneMinusVarSecondRows case_000238_rank.val case_000238_mask :=
  ⟨case_000238_support, case_000238_sourceAgrees, case_000238_rows⟩

private theorem case_000238_covered :
    RowPropertyParametricCovered case_000238_rank.val case_000238_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000238_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000239_rank : Fin numPairWords := ⟨59, by decide⟩
private def case_000239_mask : SignMask := ⟨63, by decide⟩
private def case_000239_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩
private def case_000239_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000239_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000239_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (100/9) }
private def case_000239_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000239_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000239_rankWord :
    rankPairWord? case_000239_word = some case_000239_rank := by
  decide

private theorem case_000239_unrank :
    unrankPairWord case_000239_rank = case_000239_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000239_word case_000239_rank).1
    case_000239_rankWord |>.symm

private theorem case_000239_seqChoice :
    translationChoiceSeq case_000239_word case_000239_mask = case_000239_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000239_seqAtRank :
    translationSeqAtRankMask case_000239_rank case_000239_mask = case_000239_seq := by
  rw [translationSeqAtRankMask, case_000239_unrank]
  exact case_000239_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000239_bAtRank :
    translationBAtRankMask case_000239_rank case_000239_mask = case_000239_b := by
  rw [translationBAtRankMask, case_000239_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000239_b, case_000239_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000239_firstLine_eq :
    case_000239_support.firstLine case_000239_seq case_000239_b = case_000239_firstLine := by
  norm_num [case_000239_firstLine, case_000239_support, case_000239_seq, case_000239_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000239_secondLine_eq :
    case_000239_support.secondLine case_000239_seq case_000239_b = case_000239_secondLine := by
  norm_num [case_000239_secondLine, case_000239_support, case_000239_seq, case_000239_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000239_sourceAgrees :
    SourceAgrees case_000239_support case_000239_rank.val case_000239_mask := by
  intro hlt
  have hrank : (⟨case_000239_rank.val, hlt⟩ : Fin numPairWords) = case_000239_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000239_rank.val, hlt⟩ case_000239_mask =
        case_000239_seq := by
    simpa [hrank] using case_000239_seqAtRank
  simp [SourceChecks, hseq, case_000239_support,
    checkTranslationConstraintSource, case_000239_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000239_rows :
    EqEqPosVarFirstRows case_000239_support case_000239_rank.val case_000239_mask := by
  intro hlt
  have hrank : (⟨case_000239_rank.val, hlt⟩ : Fin numPairWords) = case_000239_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000239_rank.val, hlt⟩ case_000239_mask =
        case_000239_seq := by
    simpa [hrank] using case_000239_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000239_rank.val, hlt⟩ case_000239_mask =
        case_000239_b := by
    simpa [hrank] using case_000239_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000239_support case_000239_rank.val hlt
          case_000239_mask = case_000239_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000239_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000239_support case_000239_rank.val hlt
          case_000239_mask = case_000239_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000239_secondLine_eq]
  have case_000239_rowFirst :
      EqEqPosRow (FirstLineAt case_000239_support case_000239_rank.val hlt case_000239_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000239_firstLine, EqEqPosRow]
  have case_000239_fixedSecond :
      FixedRow (SecondLineAt case_000239_support case_000239_rank.val hlt case_000239_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000239_secondLine, FixedRow]
  exact ⟨case_000239_rowFirst, case_000239_fixedSecond⟩

private theorem case_000239_existsRows :
    ExistsEqEqPosVarFirstRows case_000239_rank.val case_000239_mask :=
  ⟨case_000239_support, case_000239_sourceAgrees, case_000239_rows⟩

private theorem case_000239_covered :
    RowPropertyParametricCovered case_000239_rank.val case_000239_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000239_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000240_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000240_mask : SignMask := ⟨0, by decide⟩
private def case_000240_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000240_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000240_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000240_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-116/9) }
private def case_000240_firstLine : StrictLin2 := { a := -1, b := -1, c := (-111/5) }
private def case_000240_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000240_rankWord :
    rankPairWord? case_000240_word = some case_000240_rank := by
  decide

private theorem case_000240_unrank :
    unrankPairWord case_000240_rank = case_000240_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000240_word case_000240_rank).1
    case_000240_rankWord |>.symm

private theorem case_000240_seqChoice :
    translationChoiceSeq case_000240_word case_000240_mask = case_000240_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000240_seqAtRank :
    translationSeqAtRankMask case_000240_rank case_000240_mask = case_000240_seq := by
  rw [translationSeqAtRankMask, case_000240_unrank]
  exact case_000240_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000240_bAtRank :
    translationBAtRankMask case_000240_rank case_000240_mask = case_000240_b := by
  rw [translationBAtRankMask, case_000240_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000240_b, case_000240_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000240_firstLine_eq :
    case_000240_support.firstLine case_000240_seq case_000240_b = case_000240_firstLine := by
  norm_num [case_000240_firstLine, case_000240_support, case_000240_seq, case_000240_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000240_secondLine_eq :
    case_000240_support.secondLine case_000240_seq case_000240_b = case_000240_secondLine := by
  norm_num [case_000240_secondLine, case_000240_support, case_000240_seq, case_000240_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000240_sourceAgrees :
    SourceAgrees case_000240_support case_000240_rank.val case_000240_mask := by
  intro hlt
  have hrank : (⟨case_000240_rank.val, hlt⟩ : Fin numPairWords) = case_000240_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000240_rank.val, hlt⟩ case_000240_mask =
        case_000240_seq := by
    simpa [hrank] using case_000240_seqAtRank
  simp [SourceChecks, hseq, case_000240_support,
    checkTranslationConstraintSource, case_000240_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000240_rows :
    EqEqPosVarFirstRows case_000240_support case_000240_rank.val case_000240_mask := by
  intro hlt
  have hrank : (⟨case_000240_rank.val, hlt⟩ : Fin numPairWords) = case_000240_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000240_rank.val, hlt⟩ case_000240_mask =
        case_000240_seq := by
    simpa [hrank] using case_000240_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000240_rank.val, hlt⟩ case_000240_mask =
        case_000240_b := by
    simpa [hrank] using case_000240_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000240_support case_000240_rank.val hlt
          case_000240_mask = case_000240_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000240_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000240_support case_000240_rank.val hlt
          case_000240_mask = case_000240_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000240_secondLine_eq]
  have case_000240_rowFirst :
      EqEqPosRow (FirstLineAt case_000240_support case_000240_rank.val hlt case_000240_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000240_firstLine, EqEqPosRow]
  have case_000240_fixedSecond :
      FixedRow (SecondLineAt case_000240_support case_000240_rank.val hlt case_000240_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000240_secondLine, FixedRow]
  exact ⟨case_000240_rowFirst, case_000240_fixedSecond⟩

private theorem case_000240_existsRows :
    ExistsEqEqPosVarFirstRows case_000240_rank.val case_000240_mask :=
  ⟨case_000240_support, case_000240_sourceAgrees, case_000240_rows⟩

private theorem case_000240_covered :
    RowPropertyParametricCovered case_000240_rank.val case_000240_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000240_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000241_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000241_mask : SignMask := ⟨9, by decide⟩
private def case_000241_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000241_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000241_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000241_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000241_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000241_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000241_rankWord :
    rankPairWord? case_000241_word = some case_000241_rank := by
  decide

private theorem case_000241_unrank :
    unrankPairWord case_000241_rank = case_000241_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000241_word case_000241_rank).1
    case_000241_rankWord |>.symm

private theorem case_000241_seqChoice :
    translationChoiceSeq case_000241_word case_000241_mask = case_000241_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000241_seqAtRank :
    translationSeqAtRankMask case_000241_rank case_000241_mask = case_000241_seq := by
  rw [translationSeqAtRankMask, case_000241_unrank]
  exact case_000241_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000241_bAtRank :
    translationBAtRankMask case_000241_rank case_000241_mask = case_000241_b := by
  rw [translationBAtRankMask, case_000241_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000241_b, case_000241_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000241_firstLine_eq :
    case_000241_support.firstLine case_000241_seq case_000241_b = case_000241_firstLine := by
  norm_num [case_000241_firstLine, case_000241_support, case_000241_seq, case_000241_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000241_secondLine_eq :
    case_000241_support.secondLine case_000241_seq case_000241_b = case_000241_secondLine := by
  norm_num [case_000241_secondLine, case_000241_support, case_000241_seq, case_000241_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000241_sourceAgrees :
    SourceAgrees case_000241_support case_000241_rank.val case_000241_mask := by
  intro hlt
  have hrank : (⟨case_000241_rank.val, hlt⟩ : Fin numPairWords) = case_000241_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000241_rank.val, hlt⟩ case_000241_mask =
        case_000241_seq := by
    simpa [hrank] using case_000241_seqAtRank
  simp [SourceChecks, hseq, case_000241_support,
    checkTranslationConstraintSource, case_000241_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000241_rows :
    EqEqPosVarFirstRows case_000241_support case_000241_rank.val case_000241_mask := by
  intro hlt
  have hrank : (⟨case_000241_rank.val, hlt⟩ : Fin numPairWords) = case_000241_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000241_rank.val, hlt⟩ case_000241_mask =
        case_000241_seq := by
    simpa [hrank] using case_000241_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000241_rank.val, hlt⟩ case_000241_mask =
        case_000241_b := by
    simpa [hrank] using case_000241_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000241_support case_000241_rank.val hlt
          case_000241_mask = case_000241_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000241_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000241_support case_000241_rank.val hlt
          case_000241_mask = case_000241_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000241_secondLine_eq]
  have case_000241_rowFirst :
      EqEqPosRow (FirstLineAt case_000241_support case_000241_rank.val hlt case_000241_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000241_firstLine, EqEqPosRow]
  have case_000241_fixedSecond :
      FixedRow (SecondLineAt case_000241_support case_000241_rank.val hlt case_000241_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000241_secondLine, FixedRow]
  exact ⟨case_000241_rowFirst, case_000241_fixedSecond⟩

private theorem case_000241_existsRows :
    ExistsEqEqPosVarFirstRows case_000241_rank.val case_000241_mask :=
  ⟨case_000241_support, case_000241_sourceAgrees, case_000241_rows⟩

private theorem case_000241_covered :
    RowPropertyParametricCovered case_000241_rank.val case_000241_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000241_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000242_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000242_mask : SignMask := ⟨13, by decide⟩
private def case_000242_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000242_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000242_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000242_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000242_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000242_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000242_rankWord :
    rankPairWord? case_000242_word = some case_000242_rank := by
  decide

private theorem case_000242_unrank :
    unrankPairWord case_000242_rank = case_000242_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000242_word case_000242_rank).1
    case_000242_rankWord |>.symm

private theorem case_000242_seqChoice :
    translationChoiceSeq case_000242_word case_000242_mask = case_000242_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000242_seqAtRank :
    translationSeqAtRankMask case_000242_rank case_000242_mask = case_000242_seq := by
  rw [translationSeqAtRankMask, case_000242_unrank]
  exact case_000242_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000242_bAtRank :
    translationBAtRankMask case_000242_rank case_000242_mask = case_000242_b := by
  rw [translationBAtRankMask, case_000242_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000242_b, case_000242_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000242_firstLine_eq :
    case_000242_support.firstLine case_000242_seq case_000242_b = case_000242_firstLine := by
  norm_num [case_000242_firstLine, case_000242_support, case_000242_seq, case_000242_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000242_secondLine_eq :
    case_000242_support.secondLine case_000242_seq case_000242_b = case_000242_secondLine := by
  norm_num [case_000242_secondLine, case_000242_support, case_000242_seq, case_000242_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000242_sourceAgrees :
    SourceAgrees case_000242_support case_000242_rank.val case_000242_mask := by
  intro hlt
  have hrank : (⟨case_000242_rank.val, hlt⟩ : Fin numPairWords) = case_000242_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000242_rank.val, hlt⟩ case_000242_mask =
        case_000242_seq := by
    simpa [hrank] using case_000242_seqAtRank
  simp [SourceChecks, hseq, case_000242_support,
    checkTranslationConstraintSource, case_000242_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000242_rows :
    EqEqPosVarSecondRows case_000242_support case_000242_rank.val case_000242_mask := by
  intro hlt
  have hrank : (⟨case_000242_rank.val, hlt⟩ : Fin numPairWords) = case_000242_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000242_rank.val, hlt⟩ case_000242_mask =
        case_000242_seq := by
    simpa [hrank] using case_000242_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000242_rank.val, hlt⟩ case_000242_mask =
        case_000242_b := by
    simpa [hrank] using case_000242_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000242_support case_000242_rank.val hlt
          case_000242_mask = case_000242_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000242_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000242_support case_000242_rank.val hlt
          case_000242_mask = case_000242_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000242_secondLine_eq]
  have case_000242_fixedFirst :
      FixedRow (FirstLineAt case_000242_support case_000242_rank.val hlt case_000242_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000242_firstLine, FixedRow]
  have case_000242_rowSecond :
      EqEqPosRow (SecondLineAt case_000242_support case_000242_rank.val hlt case_000242_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000242_secondLine, EqEqPosRow]
  exact ⟨case_000242_fixedFirst, case_000242_rowSecond⟩

private theorem case_000242_existsRows :
    ExistsEqEqPosVarSecondRows case_000242_rank.val case_000242_mask :=
  ⟨case_000242_support, case_000242_sourceAgrees, case_000242_rows⟩

private theorem case_000242_covered :
    RowPropertyParametricCovered case_000242_rank.val case_000242_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000242_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000243_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000243_mask : SignMask := ⟨18, by decide⟩
private def case_000243_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000243_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000243_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000243_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000243_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000243_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000243_rankWord :
    rankPairWord? case_000243_word = some case_000243_rank := by
  decide

private theorem case_000243_unrank :
    unrankPairWord case_000243_rank = case_000243_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000243_word case_000243_rank).1
    case_000243_rankWord |>.symm

private theorem case_000243_seqChoice :
    translationChoiceSeq case_000243_word case_000243_mask = case_000243_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000243_seqAtRank :
    translationSeqAtRankMask case_000243_rank case_000243_mask = case_000243_seq := by
  rw [translationSeqAtRankMask, case_000243_unrank]
  exact case_000243_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000243_bAtRank :
    translationBAtRankMask case_000243_rank case_000243_mask = case_000243_b := by
  rw [translationBAtRankMask, case_000243_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000243_b, case_000243_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000243_firstLine_eq :
    case_000243_support.firstLine case_000243_seq case_000243_b = case_000243_firstLine := by
  norm_num [case_000243_firstLine, case_000243_support, case_000243_seq, case_000243_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000243_secondLine_eq :
    case_000243_support.secondLine case_000243_seq case_000243_b = case_000243_secondLine := by
  norm_num [case_000243_secondLine, case_000243_support, case_000243_seq, case_000243_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000243_sourceAgrees :
    SourceAgrees case_000243_support case_000243_rank.val case_000243_mask := by
  intro hlt
  have hrank : (⟨case_000243_rank.val, hlt⟩ : Fin numPairWords) = case_000243_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000243_rank.val, hlt⟩ case_000243_mask =
        case_000243_seq := by
    simpa [hrank] using case_000243_seqAtRank
  simp [SourceChecks, hseq, case_000243_support,
    checkTranslationConstraintSource, case_000243_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000243_rows :
    EqEqPosVarFirstRows case_000243_support case_000243_rank.val case_000243_mask := by
  intro hlt
  have hrank : (⟨case_000243_rank.val, hlt⟩ : Fin numPairWords) = case_000243_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000243_rank.val, hlt⟩ case_000243_mask =
        case_000243_seq := by
    simpa [hrank] using case_000243_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000243_rank.val, hlt⟩ case_000243_mask =
        case_000243_b := by
    simpa [hrank] using case_000243_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000243_support case_000243_rank.val hlt
          case_000243_mask = case_000243_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000243_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000243_support case_000243_rank.val hlt
          case_000243_mask = case_000243_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000243_secondLine_eq]
  have case_000243_rowFirst :
      EqEqPosRow (FirstLineAt case_000243_support case_000243_rank.val hlt case_000243_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000243_firstLine, EqEqPosRow]
  have case_000243_fixedSecond :
      FixedRow (SecondLineAt case_000243_support case_000243_rank.val hlt case_000243_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000243_secondLine, FixedRow]
  exact ⟨case_000243_rowFirst, case_000243_fixedSecond⟩

private theorem case_000243_existsRows :
    ExistsEqEqPosVarFirstRows case_000243_rank.val case_000243_mask :=
  ⟨case_000243_support, case_000243_sourceAgrees, case_000243_rows⟩

private theorem case_000243_covered :
    RowPropertyParametricCovered case_000243_rank.val case_000243_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000243_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000244_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000244_mask : SignMask := ⟨22, by decide⟩
private def case_000244_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000244_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000244_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000244_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000244_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000244_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_000244_rankWord :
    rankPairWord? case_000244_word = some case_000244_rank := by
  decide

private theorem case_000244_unrank :
    unrankPairWord case_000244_rank = case_000244_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000244_word case_000244_rank).1
    case_000244_rankWord |>.symm

private theorem case_000244_seqChoice :
    translationChoiceSeq case_000244_word case_000244_mask = case_000244_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000244_seqAtRank :
    translationSeqAtRankMask case_000244_rank case_000244_mask = case_000244_seq := by
  rw [translationSeqAtRankMask, case_000244_unrank]
  exact case_000244_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000244_bAtRank :
    translationBAtRankMask case_000244_rank case_000244_mask = case_000244_b := by
  rw [translationBAtRankMask, case_000244_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000244_b, case_000244_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000244_firstLine_eq :
    case_000244_support.firstLine case_000244_seq case_000244_b = case_000244_firstLine := by
  norm_num [case_000244_firstLine, case_000244_support, case_000244_seq, case_000244_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000244_secondLine_eq :
    case_000244_support.secondLine case_000244_seq case_000244_b = case_000244_secondLine := by
  norm_num [case_000244_secondLine, case_000244_support, case_000244_seq, case_000244_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000244_sourceAgrees :
    SourceAgrees case_000244_support case_000244_rank.val case_000244_mask := by
  intro hlt
  have hrank : (⟨case_000244_rank.val, hlt⟩ : Fin numPairWords) = case_000244_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000244_rank.val, hlt⟩ case_000244_mask =
        case_000244_seq := by
    simpa [hrank] using case_000244_seqAtRank
  simp [SourceChecks, hseq, case_000244_support,
    checkTranslationConstraintSource, case_000244_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000244_rows :
    EqEqPosVarSecondRows case_000244_support case_000244_rank.val case_000244_mask := by
  intro hlt
  have hrank : (⟨case_000244_rank.val, hlt⟩ : Fin numPairWords) = case_000244_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000244_rank.val, hlt⟩ case_000244_mask =
        case_000244_seq := by
    simpa [hrank] using case_000244_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000244_rank.val, hlt⟩ case_000244_mask =
        case_000244_b := by
    simpa [hrank] using case_000244_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000244_support case_000244_rank.val hlt
          case_000244_mask = case_000244_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000244_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000244_support case_000244_rank.val hlt
          case_000244_mask = case_000244_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000244_secondLine_eq]
  have case_000244_fixedFirst :
      FixedRow (FirstLineAt case_000244_support case_000244_rank.val hlt case_000244_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000244_firstLine, FixedRow]
  have case_000244_rowSecond :
      EqEqPosRow (SecondLineAt case_000244_support case_000244_rank.val hlt case_000244_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000244_secondLine, EqEqPosRow]
  exact ⟨case_000244_fixedFirst, case_000244_rowSecond⟩

private theorem case_000244_existsRows :
    ExistsEqEqPosVarSecondRows case_000244_rank.val case_000244_mask :=
  ⟨case_000244_support, case_000244_sourceAgrees, case_000244_rows⟩

private theorem case_000244_covered :
    RowPropertyParametricCovered case_000244_rank.val case_000244_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000244_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000245_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000245_mask : SignMask := ⟨28, by decide⟩
private def case_000245_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000245_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000245_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000245_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (-4/9) }
private def case_000245_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000245_secondLine : StrictLin2 := { a := (-9/14), b := (9/14), c := (-15/7) }

private theorem case_000245_rankWord :
    rankPairWord? case_000245_word = some case_000245_rank := by
  decide

private theorem case_000245_unrank :
    unrankPairWord case_000245_rank = case_000245_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000245_word case_000245_rank).1
    case_000245_rankWord |>.symm

private theorem case_000245_seqChoice :
    translationChoiceSeq case_000245_word case_000245_mask = case_000245_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000245_seqAtRank :
    translationSeqAtRankMask case_000245_rank case_000245_mask = case_000245_seq := by
  rw [translationSeqAtRankMask, case_000245_unrank]
  exact case_000245_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000245_bAtRank :
    translationBAtRankMask case_000245_rank case_000245_mask = case_000245_b := by
  rw [translationBAtRankMask, case_000245_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000245_b, case_000245_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000245_firstLine_eq :
    case_000245_support.firstLine case_000245_seq case_000245_b = case_000245_firstLine := by
  norm_num [case_000245_firstLine, case_000245_support, case_000245_seq, case_000245_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000245_secondLine_eq :
    case_000245_support.secondLine case_000245_seq case_000245_b = case_000245_secondLine := by
  norm_num [case_000245_secondLine, case_000245_support, case_000245_seq, case_000245_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000245_sourceAgrees :
    SourceAgrees case_000245_support case_000245_rank.val case_000245_mask := by
  intro hlt
  have hrank : (⟨case_000245_rank.val, hlt⟩ : Fin numPairWords) = case_000245_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000245_rank.val, hlt⟩ case_000245_mask =
        case_000245_seq := by
    simpa [hrank] using case_000245_seqAtRank
  simp [SourceChecks, hseq, case_000245_support,
    checkTranslationConstraintSource, case_000245_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000245_rows :
    OppOneMinusVarSecondRows case_000245_support case_000245_rank.val case_000245_mask := by
  intro hlt
  have hrank : (⟨case_000245_rank.val, hlt⟩ : Fin numPairWords) = case_000245_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000245_rank.val, hlt⟩ case_000245_mask =
        case_000245_seq := by
    simpa [hrank] using case_000245_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000245_rank.val, hlt⟩ case_000245_mask =
        case_000245_b := by
    simpa [hrank] using case_000245_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000245_support case_000245_rank.val hlt
          case_000245_mask = case_000245_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000245_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000245_support case_000245_rank.val hlt
          case_000245_mask = case_000245_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000245_secondLine_eq]
  have case_000245_fixedFirst :
      FixedRow (FirstLineAt case_000245_support case_000245_rank.val hlt case_000245_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000245_firstLine, FixedRow]
  have case_000245_rowSecond :
      OppPosRow (SecondLineAt case_000245_support case_000245_rank.val hlt case_000245_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000245_secondLine, OppPosRow]
  exact ⟨case_000245_fixedFirst, case_000245_rowSecond⟩

private theorem case_000245_existsRows :
    ExistsOppOneMinusVarSecondRows case_000245_rank.val case_000245_mask :=
  ⟨case_000245_support, case_000245_sourceAgrees, case_000245_rows⟩

private theorem case_000245_covered :
    RowPropertyParametricCovered case_000245_rank.val case_000245_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000245_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000246_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000246_mask : SignMask := ⟨29, by decide⟩
private def case_000246_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000246_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000246_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000246_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-4/9) }
private def case_000246_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-19/3) }
private def case_000246_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000246_rankWord :
    rankPairWord? case_000246_word = some case_000246_rank := by
  decide

private theorem case_000246_unrank :
    unrankPairWord case_000246_rank = case_000246_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000246_word case_000246_rank).1
    case_000246_rankWord |>.symm

private theorem case_000246_seqChoice :
    translationChoiceSeq case_000246_word case_000246_mask = case_000246_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000246_seqAtRank :
    translationSeqAtRankMask case_000246_rank case_000246_mask = case_000246_seq := by
  rw [translationSeqAtRankMask, case_000246_unrank]
  exact case_000246_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000246_bAtRank :
    translationBAtRankMask case_000246_rank case_000246_mask = case_000246_b := by
  rw [translationBAtRankMask, case_000246_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000246_b, case_000246_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000246_firstLine_eq :
    case_000246_support.firstLine case_000246_seq case_000246_b = case_000246_firstLine := by
  norm_num [case_000246_firstLine, case_000246_support, case_000246_seq, case_000246_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000246_secondLine_eq :
    case_000246_support.secondLine case_000246_seq case_000246_b = case_000246_secondLine := by
  norm_num [case_000246_secondLine, case_000246_support, case_000246_seq, case_000246_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000246_sourceAgrees :
    SourceAgrees case_000246_support case_000246_rank.val case_000246_mask := by
  intro hlt
  have hrank : (⟨case_000246_rank.val, hlt⟩ : Fin numPairWords) = case_000246_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000246_rank.val, hlt⟩ case_000246_mask =
        case_000246_seq := by
    simpa [hrank] using case_000246_seqAtRank
  simp [SourceChecks, hseq, case_000246_support,
    checkTranslationConstraintSource, case_000246_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000246_rows :
    EqEqPosVarFirstRows case_000246_support case_000246_rank.val case_000246_mask := by
  intro hlt
  have hrank : (⟨case_000246_rank.val, hlt⟩ : Fin numPairWords) = case_000246_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000246_rank.val, hlt⟩ case_000246_mask =
        case_000246_seq := by
    simpa [hrank] using case_000246_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000246_rank.val, hlt⟩ case_000246_mask =
        case_000246_b := by
    simpa [hrank] using case_000246_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000246_support case_000246_rank.val hlt
          case_000246_mask = case_000246_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000246_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000246_support case_000246_rank.val hlt
          case_000246_mask = case_000246_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000246_secondLine_eq]
  have case_000246_rowFirst :
      EqEqPosRow (FirstLineAt case_000246_support case_000246_rank.val hlt case_000246_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000246_firstLine, EqEqPosRow]
  have case_000246_fixedSecond :
      FixedRow (SecondLineAt case_000246_support case_000246_rank.val hlt case_000246_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000246_secondLine, FixedRow]
  exact ⟨case_000246_rowFirst, case_000246_fixedSecond⟩

private theorem case_000246_existsRows :
    ExistsEqEqPosVarFirstRows case_000246_rank.val case_000246_mask :=
  ⟨case_000246_support, case_000246_sourceAgrees, case_000246_rows⟩

private theorem case_000246_covered :
    RowPropertyParametricCovered case_000246_rank.val case_000246_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000246_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000247_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000247_mask : SignMask := ⟨30, by decide⟩
private def case_000247_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000247_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000247_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000247_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (68/9) }
private def case_000247_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-19/3) }
private def case_000247_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000247_rankWord :
    rankPairWord? case_000247_word = some case_000247_rank := by
  decide

private theorem case_000247_unrank :
    unrankPairWord case_000247_rank = case_000247_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000247_word case_000247_rank).1
    case_000247_rankWord |>.symm

private theorem case_000247_seqChoice :
    translationChoiceSeq case_000247_word case_000247_mask = case_000247_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000247_seqAtRank :
    translationSeqAtRankMask case_000247_rank case_000247_mask = case_000247_seq := by
  rw [translationSeqAtRankMask, case_000247_unrank]
  exact case_000247_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000247_bAtRank :
    translationBAtRankMask case_000247_rank case_000247_mask = case_000247_b := by
  rw [translationBAtRankMask, case_000247_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000247_b, case_000247_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000247_firstLine_eq :
    case_000247_support.firstLine case_000247_seq case_000247_b = case_000247_firstLine := by
  norm_num [case_000247_firstLine, case_000247_support, case_000247_seq, case_000247_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000247_secondLine_eq :
    case_000247_support.secondLine case_000247_seq case_000247_b = case_000247_secondLine := by
  norm_num [case_000247_secondLine, case_000247_support, case_000247_seq, case_000247_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000247_sourceAgrees :
    SourceAgrees case_000247_support case_000247_rank.val case_000247_mask := by
  intro hlt
  have hrank : (⟨case_000247_rank.val, hlt⟩ : Fin numPairWords) = case_000247_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000247_rank.val, hlt⟩ case_000247_mask =
        case_000247_seq := by
    simpa [hrank] using case_000247_seqAtRank
  simp [SourceChecks, hseq, case_000247_support,
    checkTranslationConstraintSource, case_000247_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000247_rows :
    EqEqPosVarFirstRows case_000247_support case_000247_rank.val case_000247_mask := by
  intro hlt
  have hrank : (⟨case_000247_rank.val, hlt⟩ : Fin numPairWords) = case_000247_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000247_rank.val, hlt⟩ case_000247_mask =
        case_000247_seq := by
    simpa [hrank] using case_000247_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000247_rank.val, hlt⟩ case_000247_mask =
        case_000247_b := by
    simpa [hrank] using case_000247_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000247_support case_000247_rank.val hlt
          case_000247_mask = case_000247_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000247_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000247_support case_000247_rank.val hlt
          case_000247_mask = case_000247_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000247_secondLine_eq]
  have case_000247_rowFirst :
      EqEqPosRow (FirstLineAt case_000247_support case_000247_rank.val hlt case_000247_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000247_firstLine, EqEqPosRow]
  have case_000247_fixedSecond :
      FixedRow (SecondLineAt case_000247_support case_000247_rank.val hlt case_000247_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000247_secondLine, FixedRow]
  exact ⟨case_000247_rowFirst, case_000247_fixedSecond⟩

private theorem case_000247_existsRows :
    ExistsEqEqPosVarFirstRows case_000247_rank.val case_000247_mask :=
  ⟨case_000247_support, case_000247_sourceAgrees, case_000247_rows⟩

private theorem case_000247_covered :
    RowPropertyParametricCovered case_000247_rank.val case_000247_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000247_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000248_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000248_mask : SignMask := ⟨45, by decide⟩
private def case_000248_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000248_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000248_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000248_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000248_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000248_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000248_rankWord :
    rankPairWord? case_000248_word = some case_000248_rank := by
  decide

private theorem case_000248_unrank :
    unrankPairWord case_000248_rank = case_000248_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000248_word case_000248_rank).1
    case_000248_rankWord |>.symm

private theorem case_000248_seqChoice :
    translationChoiceSeq case_000248_word case_000248_mask = case_000248_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000248_seqAtRank :
    translationSeqAtRankMask case_000248_rank case_000248_mask = case_000248_seq := by
  rw [translationSeqAtRankMask, case_000248_unrank]
  exact case_000248_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000248_bAtRank :
    translationBAtRankMask case_000248_rank case_000248_mask = case_000248_b := by
  rw [translationBAtRankMask, case_000248_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000248_b, case_000248_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000248_firstLine_eq :
    case_000248_support.firstLine case_000248_seq case_000248_b = case_000248_firstLine := by
  norm_num [case_000248_firstLine, case_000248_support, case_000248_seq, case_000248_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000248_secondLine_eq :
    case_000248_support.secondLine case_000248_seq case_000248_b = case_000248_secondLine := by
  norm_num [case_000248_secondLine, case_000248_support, case_000248_seq, case_000248_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000248_sourceAgrees :
    SourceAgrees case_000248_support case_000248_rank.val case_000248_mask := by
  intro hlt
  have hrank : (⟨case_000248_rank.val, hlt⟩ : Fin numPairWords) = case_000248_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000248_rank.val, hlt⟩ case_000248_mask =
        case_000248_seq := by
    simpa [hrank] using case_000248_seqAtRank
  simp [SourceChecks, hseq, case_000248_support,
    checkTranslationConstraintSource, case_000248_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000248_rows :
    OppMinusOneVarFirstRows case_000248_support case_000248_rank.val case_000248_mask := by
  intro hlt
  have hrank : (⟨case_000248_rank.val, hlt⟩ : Fin numPairWords) = case_000248_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000248_rank.val, hlt⟩ case_000248_mask =
        case_000248_seq := by
    simpa [hrank] using case_000248_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000248_rank.val, hlt⟩ case_000248_mask =
        case_000248_b := by
    simpa [hrank] using case_000248_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000248_support case_000248_rank.val hlt
          case_000248_mask = case_000248_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000248_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000248_support case_000248_rank.val hlt
          case_000248_mask = case_000248_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000248_secondLine_eq]
  have case_000248_rowFirst :
      OppNegRow (FirstLineAt case_000248_support case_000248_rank.val hlt case_000248_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000248_firstLine, OppNegRow]
  have case_000248_fixedSecond :
      FixedRow (SecondLineAt case_000248_support case_000248_rank.val hlt case_000248_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000248_secondLine, FixedRow]
  exact ⟨case_000248_rowFirst, case_000248_fixedSecond⟩

private theorem case_000248_existsRows :
    ExistsOppMinusOneVarFirstRows case_000248_rank.val case_000248_mask :=
  ⟨case_000248_support, case_000248_sourceAgrees, case_000248_rows⟩

private theorem case_000248_covered :
    RowPropertyParametricCovered case_000248_rank.val case_000248_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000248_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000249_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000249_mask : SignMask := ⟨54, by decide⟩
private def case_000249_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000249_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000249_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000249_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000249_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000249_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000249_rankWord :
    rankPairWord? case_000249_word = some case_000249_rank := by
  decide

private theorem case_000249_unrank :
    unrankPairWord case_000249_rank = case_000249_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000249_word case_000249_rank).1
    case_000249_rankWord |>.symm

private theorem case_000249_seqChoice :
    translationChoiceSeq case_000249_word case_000249_mask = case_000249_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000249_seqAtRank :
    translationSeqAtRankMask case_000249_rank case_000249_mask = case_000249_seq := by
  rw [translationSeqAtRankMask, case_000249_unrank]
  exact case_000249_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000249_bAtRank :
    translationBAtRankMask case_000249_rank case_000249_mask = case_000249_b := by
  rw [translationBAtRankMask, case_000249_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000249_b, case_000249_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000249_firstLine_eq :
    case_000249_support.firstLine case_000249_seq case_000249_b = case_000249_firstLine := by
  norm_num [case_000249_firstLine, case_000249_support, case_000249_seq, case_000249_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000249_secondLine_eq :
    case_000249_support.secondLine case_000249_seq case_000249_b = case_000249_secondLine := by
  norm_num [case_000249_secondLine, case_000249_support, case_000249_seq, case_000249_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000249_sourceAgrees :
    SourceAgrees case_000249_support case_000249_rank.val case_000249_mask := by
  intro hlt
  have hrank : (⟨case_000249_rank.val, hlt⟩ : Fin numPairWords) = case_000249_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000249_rank.val, hlt⟩ case_000249_mask =
        case_000249_seq := by
    simpa [hrank] using case_000249_seqAtRank
  simp [SourceChecks, hseq, case_000249_support,
    checkTranslationConstraintSource, case_000249_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000249_rows :
    OppOneMinusVarFirstRows case_000249_support case_000249_rank.val case_000249_mask := by
  intro hlt
  have hrank : (⟨case_000249_rank.val, hlt⟩ : Fin numPairWords) = case_000249_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000249_rank.val, hlt⟩ case_000249_mask =
        case_000249_seq := by
    simpa [hrank] using case_000249_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000249_rank.val, hlt⟩ case_000249_mask =
        case_000249_b := by
    simpa [hrank] using case_000249_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000249_support case_000249_rank.val hlt
          case_000249_mask = case_000249_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000249_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000249_support case_000249_rank.val hlt
          case_000249_mask = case_000249_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000249_secondLine_eq]
  have case_000249_rowFirst :
      OppPosRow (FirstLineAt case_000249_support case_000249_rank.val hlt case_000249_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000249_firstLine, OppPosRow]
  have case_000249_fixedSecond :
      FixedRow (SecondLineAt case_000249_support case_000249_rank.val hlt case_000249_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000249_secondLine, FixedRow]
  exact ⟨case_000249_rowFirst, case_000249_fixedSecond⟩

private theorem case_000249_existsRows :
    ExistsOppOneMinusVarFirstRows case_000249_rank.val case_000249_mask :=
  ⟨case_000249_support, case_000249_sourceAgrees, case_000249_rows⟩

private theorem case_000249_covered :
    RowPropertyParametricCovered case_000249_rank.val case_000249_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000249_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000250_rank : Fin numPairWords := ⟨60, by decide⟩
private def case_000250_mask : SignMask := ⟨63, by decide⟩
private def case_000250_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000250_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000250_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000250_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (116/9) }
private def case_000250_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000250_secondLine : StrictLin2 := { a := (-9/116), b := (9/116), c := (-9/58) }

private theorem case_000250_rankWord :
    rankPairWord? case_000250_word = some case_000250_rank := by
  decide

private theorem case_000250_unrank :
    unrankPairWord case_000250_rank = case_000250_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000250_word case_000250_rank).1
    case_000250_rankWord |>.symm

private theorem case_000250_seqChoice :
    translationChoiceSeq case_000250_word case_000250_mask = case_000250_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000250_seqAtRank :
    translationSeqAtRankMask case_000250_rank case_000250_mask = case_000250_seq := by
  rw [translationSeqAtRankMask, case_000250_unrank]
  exact case_000250_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000250_bAtRank :
    translationBAtRankMask case_000250_rank case_000250_mask = case_000250_b := by
  rw [translationBAtRankMask, case_000250_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000250_b, case_000250_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000250_firstLine_eq :
    case_000250_support.firstLine case_000250_seq case_000250_b = case_000250_firstLine := by
  norm_num [case_000250_firstLine, case_000250_support, case_000250_seq, case_000250_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000250_secondLine_eq :
    case_000250_support.secondLine case_000250_seq case_000250_b = case_000250_secondLine := by
  norm_num [case_000250_secondLine, case_000250_support, case_000250_seq, case_000250_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000250_sourceAgrees :
    SourceAgrees case_000250_support case_000250_rank.val case_000250_mask := by
  intro hlt
  have hrank : (⟨case_000250_rank.val, hlt⟩ : Fin numPairWords) = case_000250_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000250_rank.val, hlt⟩ case_000250_mask =
        case_000250_seq := by
    simpa [hrank] using case_000250_seqAtRank
  simp [SourceChecks, hseq, case_000250_support,
    checkTranslationConstraintSource, case_000250_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000250_rows :
    OppOneMinusVarSecondRows case_000250_support case_000250_rank.val case_000250_mask := by
  intro hlt
  have hrank : (⟨case_000250_rank.val, hlt⟩ : Fin numPairWords) = case_000250_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000250_rank.val, hlt⟩ case_000250_mask =
        case_000250_seq := by
    simpa [hrank] using case_000250_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000250_rank.val, hlt⟩ case_000250_mask =
        case_000250_b := by
    simpa [hrank] using case_000250_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000250_support case_000250_rank.val hlt
          case_000250_mask = case_000250_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000250_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000250_support case_000250_rank.val hlt
          case_000250_mask = case_000250_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000250_secondLine_eq]
  have case_000250_fixedFirst :
      FixedRow (FirstLineAt case_000250_support case_000250_rank.val hlt case_000250_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000250_firstLine, FixedRow]
  have case_000250_rowSecond :
      OppPosRow (SecondLineAt case_000250_support case_000250_rank.val hlt case_000250_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000250_secondLine, OppPosRow]
  exact ⟨case_000250_fixedFirst, case_000250_rowSecond⟩

private theorem case_000250_existsRows :
    ExistsOppOneMinusVarSecondRows case_000250_rank.val case_000250_mask :=
  ⟨case_000250_support, case_000250_sourceAgrees, case_000250_rows⟩

private theorem case_000250_covered :
    RowPropertyParametricCovered case_000250_rank.val case_000250_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000250_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000251_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000251_mask : SignMask := ⟨8, by decide⟩
private def case_000251_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000251_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000251_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000251_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-116/9) }
private def case_000251_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_000251_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000251_rankWord :
    rankPairWord? case_000251_word = some case_000251_rank := by
  decide

private theorem case_000251_unrank :
    unrankPairWord case_000251_rank = case_000251_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000251_word case_000251_rank).1
    case_000251_rankWord |>.symm

private theorem case_000251_seqChoice :
    translationChoiceSeq case_000251_word case_000251_mask = case_000251_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000251_seqAtRank :
    translationSeqAtRankMask case_000251_rank case_000251_mask = case_000251_seq := by
  rw [translationSeqAtRankMask, case_000251_unrank]
  exact case_000251_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000251_bAtRank :
    translationBAtRankMask case_000251_rank case_000251_mask = case_000251_b := by
  rw [translationBAtRankMask, case_000251_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000251_b, case_000251_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000251_firstLine_eq :
    case_000251_support.firstLine case_000251_seq case_000251_b = case_000251_firstLine := by
  norm_num [case_000251_firstLine, case_000251_support, case_000251_seq, case_000251_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000251_secondLine_eq :
    case_000251_support.secondLine case_000251_seq case_000251_b = case_000251_secondLine := by
  norm_num [case_000251_secondLine, case_000251_support, case_000251_seq, case_000251_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000251_sourceAgrees :
    SourceAgrees case_000251_support case_000251_rank.val case_000251_mask := by
  intro hlt
  have hrank : (⟨case_000251_rank.val, hlt⟩ : Fin numPairWords) = case_000251_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000251_rank.val, hlt⟩ case_000251_mask =
        case_000251_seq := by
    simpa [hrank] using case_000251_seqAtRank
  simp [SourceChecks, hseq, case_000251_support,
    checkTranslationConstraintSource, case_000251_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000251_rows :
    EqEqPosVarFirstRows case_000251_support case_000251_rank.val case_000251_mask := by
  intro hlt
  have hrank : (⟨case_000251_rank.val, hlt⟩ : Fin numPairWords) = case_000251_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000251_rank.val, hlt⟩ case_000251_mask =
        case_000251_seq := by
    simpa [hrank] using case_000251_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000251_rank.val, hlt⟩ case_000251_mask =
        case_000251_b := by
    simpa [hrank] using case_000251_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000251_support case_000251_rank.val hlt
          case_000251_mask = case_000251_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000251_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000251_support case_000251_rank.val hlt
          case_000251_mask = case_000251_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000251_secondLine_eq]
  have case_000251_rowFirst :
      EqEqPosRow (FirstLineAt case_000251_support case_000251_rank.val hlt case_000251_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000251_firstLine, EqEqPosRow]
  have case_000251_fixedSecond :
      FixedRow (SecondLineAt case_000251_support case_000251_rank.val hlt case_000251_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000251_secondLine, FixedRow]
  exact ⟨case_000251_rowFirst, case_000251_fixedSecond⟩

private theorem case_000251_existsRows :
    ExistsEqEqPosVarFirstRows case_000251_rank.val case_000251_mask :=
  ⟨case_000251_support, case_000251_sourceAgrees, case_000251_rows⟩

private theorem case_000251_covered :
    RowPropertyParametricCovered case_000251_rank.val case_000251_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000251_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000252_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000252_mask : SignMask := ⟨9, by decide⟩
private def case_000252_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000252_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000252_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000252_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-116/9) }
private def case_000252_firstLine : StrictLin2 := { a := -1, b := -1, c := (-27/5) }
private def case_000252_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000252_rankWord :
    rankPairWord? case_000252_word = some case_000252_rank := by
  decide

private theorem case_000252_unrank :
    unrankPairWord case_000252_rank = case_000252_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000252_word case_000252_rank).1
    case_000252_rankWord |>.symm

private theorem case_000252_seqChoice :
    translationChoiceSeq case_000252_word case_000252_mask = case_000252_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000252_seqAtRank :
    translationSeqAtRankMask case_000252_rank case_000252_mask = case_000252_seq := by
  rw [translationSeqAtRankMask, case_000252_unrank]
  exact case_000252_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000252_bAtRank :
    translationBAtRankMask case_000252_rank case_000252_mask = case_000252_b := by
  rw [translationBAtRankMask, case_000252_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000252_b, case_000252_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000252_firstLine_eq :
    case_000252_support.firstLine case_000252_seq case_000252_b = case_000252_firstLine := by
  norm_num [case_000252_firstLine, case_000252_support, case_000252_seq, case_000252_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000252_secondLine_eq :
    case_000252_support.secondLine case_000252_seq case_000252_b = case_000252_secondLine := by
  norm_num [case_000252_secondLine, case_000252_support, case_000252_seq, case_000252_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000252_sourceAgrees :
    SourceAgrees case_000252_support case_000252_rank.val case_000252_mask := by
  intro hlt
  have hrank : (⟨case_000252_rank.val, hlt⟩ : Fin numPairWords) = case_000252_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000252_rank.val, hlt⟩ case_000252_mask =
        case_000252_seq := by
    simpa [hrank] using case_000252_seqAtRank
  simp [SourceChecks, hseq, case_000252_support,
    checkTranslationConstraintSource, case_000252_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000252_rows :
    EqEqPosVarFirstRows case_000252_support case_000252_rank.val case_000252_mask := by
  intro hlt
  have hrank : (⟨case_000252_rank.val, hlt⟩ : Fin numPairWords) = case_000252_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000252_rank.val, hlt⟩ case_000252_mask =
        case_000252_seq := by
    simpa [hrank] using case_000252_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000252_rank.val, hlt⟩ case_000252_mask =
        case_000252_b := by
    simpa [hrank] using case_000252_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000252_support case_000252_rank.val hlt
          case_000252_mask = case_000252_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000252_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000252_support case_000252_rank.val hlt
          case_000252_mask = case_000252_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000252_secondLine_eq]
  have case_000252_rowFirst :
      EqEqPosRow (FirstLineAt case_000252_support case_000252_rank.val hlt case_000252_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000252_firstLine, EqEqPosRow]
  have case_000252_fixedSecond :
      FixedRow (SecondLineAt case_000252_support case_000252_rank.val hlt case_000252_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000252_secondLine, FixedRow]
  exact ⟨case_000252_rowFirst, case_000252_fixedSecond⟩

private theorem case_000252_existsRows :
    ExistsEqEqPosVarFirstRows case_000252_rank.val case_000252_mask :=
  ⟨case_000252_support, case_000252_sourceAgrees, case_000252_rows⟩

private theorem case_000252_covered :
    RowPropertyParametricCovered case_000252_rank.val case_000252_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000252_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000253_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000253_mask : SignMask := ⟨13, by decide⟩
private def case_000253_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000253_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000253_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000253_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-68/9) }
private def case_000253_firstLine : StrictLin2 := { a := 1, b := -1, c := (-67/17) }
private def case_000253_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000253_rankWord :
    rankPairWord? case_000253_word = some case_000253_rank := by
  decide

private theorem case_000253_unrank :
    unrankPairWord case_000253_rank = case_000253_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000253_word case_000253_rank).1
    case_000253_rankWord |>.symm

private theorem case_000253_seqChoice :
    translationChoiceSeq case_000253_word case_000253_mask = case_000253_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000253_seqAtRank :
    translationSeqAtRankMask case_000253_rank case_000253_mask = case_000253_seq := by
  rw [translationSeqAtRankMask, case_000253_unrank]
  exact case_000253_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000253_bAtRank :
    translationBAtRankMask case_000253_rank case_000253_mask = case_000253_b := by
  rw [translationBAtRankMask, case_000253_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000253_b, case_000253_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000253_firstLine_eq :
    case_000253_support.firstLine case_000253_seq case_000253_b = case_000253_firstLine := by
  norm_num [case_000253_firstLine, case_000253_support, case_000253_seq, case_000253_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000253_secondLine_eq :
    case_000253_support.secondLine case_000253_seq case_000253_b = case_000253_secondLine := by
  norm_num [case_000253_secondLine, case_000253_support, case_000253_seq, case_000253_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000253_sourceAgrees :
    SourceAgrees case_000253_support case_000253_rank.val case_000253_mask := by
  intro hlt
  have hrank : (⟨case_000253_rank.val, hlt⟩ : Fin numPairWords) = case_000253_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000253_rank.val, hlt⟩ case_000253_mask =
        case_000253_seq := by
    simpa [hrank] using case_000253_seqAtRank
  simp [SourceChecks, hseq, case_000253_support,
    checkTranslationConstraintSource, case_000253_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000253_rows :
    OppMinusOneVarFirstRows case_000253_support case_000253_rank.val case_000253_mask := by
  intro hlt
  have hrank : (⟨case_000253_rank.val, hlt⟩ : Fin numPairWords) = case_000253_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000253_rank.val, hlt⟩ case_000253_mask =
        case_000253_seq := by
    simpa [hrank] using case_000253_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000253_rank.val, hlt⟩ case_000253_mask =
        case_000253_b := by
    simpa [hrank] using case_000253_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000253_support case_000253_rank.val hlt
          case_000253_mask = case_000253_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000253_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000253_support case_000253_rank.val hlt
          case_000253_mask = case_000253_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000253_secondLine_eq]
  have case_000253_rowFirst :
      OppNegRow (FirstLineAt case_000253_support case_000253_rank.val hlt case_000253_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000253_firstLine, OppNegRow]
  have case_000253_fixedSecond :
      FixedRow (SecondLineAt case_000253_support case_000253_rank.val hlt case_000253_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000253_secondLine, FixedRow]
  exact ⟨case_000253_rowFirst, case_000253_fixedSecond⟩

private theorem case_000253_existsRows :
    ExistsOppMinusOneVarFirstRows case_000253_rank.val case_000253_mask :=
  ⟨case_000253_support, case_000253_sourceAgrees, case_000253_rows⟩

private theorem case_000253_covered :
    RowPropertyParametricCovered case_000253_rank.val case_000253_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000253_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000254_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000254_mask : SignMask := ⟨16, by decide⟩
private def case_000254_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000254_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000254_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000254_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (-52/9) }
private def case_000254_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_000254_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000254_rankWord :
    rankPairWord? case_000254_word = some case_000254_rank := by
  decide

private theorem case_000254_unrank :
    unrankPairWord case_000254_rank = case_000254_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000254_word case_000254_rank).1
    case_000254_rankWord |>.symm

private theorem case_000254_seqChoice :
    translationChoiceSeq case_000254_word case_000254_mask = case_000254_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000254_seqAtRank :
    translationSeqAtRankMask case_000254_rank case_000254_mask = case_000254_seq := by
  rw [translationSeqAtRankMask, case_000254_unrank]
  exact case_000254_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000254_bAtRank :
    translationBAtRankMask case_000254_rank case_000254_mask = case_000254_b := by
  rw [translationBAtRankMask, case_000254_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000254_b, case_000254_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000254_firstLine_eq :
    case_000254_support.firstLine case_000254_seq case_000254_b = case_000254_firstLine := by
  norm_num [case_000254_firstLine, case_000254_support, case_000254_seq, case_000254_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000254_secondLine_eq :
    case_000254_support.secondLine case_000254_seq case_000254_b = case_000254_secondLine := by
  norm_num [case_000254_secondLine, case_000254_support, case_000254_seq, case_000254_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000254_sourceAgrees :
    SourceAgrees case_000254_support case_000254_rank.val case_000254_mask := by
  intro hlt
  have hrank : (⟨case_000254_rank.val, hlt⟩ : Fin numPairWords) = case_000254_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000254_rank.val, hlt⟩ case_000254_mask =
        case_000254_seq := by
    simpa [hrank] using case_000254_seqAtRank
  simp [SourceChecks, hseq, case_000254_support,
    checkTranslationConstraintSource, case_000254_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000254_rows :
    EqEqPosVarFirstRows case_000254_support case_000254_rank.val case_000254_mask := by
  intro hlt
  have hrank : (⟨case_000254_rank.val, hlt⟩ : Fin numPairWords) = case_000254_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000254_rank.val, hlt⟩ case_000254_mask =
        case_000254_seq := by
    simpa [hrank] using case_000254_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000254_rank.val, hlt⟩ case_000254_mask =
        case_000254_b := by
    simpa [hrank] using case_000254_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000254_support case_000254_rank.val hlt
          case_000254_mask = case_000254_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000254_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000254_support case_000254_rank.val hlt
          case_000254_mask = case_000254_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000254_secondLine_eq]
  have case_000254_rowFirst :
      EqEqPosRow (FirstLineAt case_000254_support case_000254_rank.val hlt case_000254_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000254_firstLine, EqEqPosRow]
  have case_000254_fixedSecond :
      FixedRow (SecondLineAt case_000254_support case_000254_rank.val hlt case_000254_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000254_secondLine, FixedRow]
  exact ⟨case_000254_rowFirst, case_000254_fixedSecond⟩

private theorem case_000254_existsRows :
    ExistsEqEqPosVarFirstRows case_000254_rank.val case_000254_mask :=
  ⟨case_000254_support, case_000254_sourceAgrees, case_000254_rows⟩

private theorem case_000254_covered :
    RowPropertyParametricCovered case_000254_rank.val case_000254_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000254_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000255_rank : Fin numPairWords := ⟨62, by decide⟩
private def case_000255_mask : SignMask := ⟨18, by decide⟩
private def case_000255_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000255_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000255_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000255_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (20/9) }
private def case_000255_firstLine : StrictLin2 := { a := -1, b := -1, c := (-51/13) }
private def case_000255_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000255_rankWord :
    rankPairWord? case_000255_word = some case_000255_rank := by
  decide

private theorem case_000255_unrank :
    unrankPairWord case_000255_rank = case_000255_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000255_word case_000255_rank).1
    case_000255_rankWord |>.symm

private theorem case_000255_seqChoice :
    translationChoiceSeq case_000255_word case_000255_mask = case_000255_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000255_seqAtRank :
    translationSeqAtRankMask case_000255_rank case_000255_mask = case_000255_seq := by
  rw [translationSeqAtRankMask, case_000255_unrank]
  exact case_000255_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000255_bAtRank :
    translationBAtRankMask case_000255_rank case_000255_mask = case_000255_b := by
  rw [translationBAtRankMask, case_000255_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000255_b, case_000255_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000255_firstLine_eq :
    case_000255_support.firstLine case_000255_seq case_000255_b = case_000255_firstLine := by
  norm_num [case_000255_firstLine, case_000255_support, case_000255_seq, case_000255_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000255_secondLine_eq :
    case_000255_support.secondLine case_000255_seq case_000255_b = case_000255_secondLine := by
  norm_num [case_000255_secondLine, case_000255_support, case_000255_seq, case_000255_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000255_sourceAgrees :
    SourceAgrees case_000255_support case_000255_rank.val case_000255_mask := by
  intro hlt
  have hrank : (⟨case_000255_rank.val, hlt⟩ : Fin numPairWords) = case_000255_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000255_rank.val, hlt⟩ case_000255_mask =
        case_000255_seq := by
    simpa [hrank] using case_000255_seqAtRank
  simp [SourceChecks, hseq, case_000255_support,
    checkTranslationConstraintSource, case_000255_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000255_rows :
    EqEqPosVarFirstRows case_000255_support case_000255_rank.val case_000255_mask := by
  intro hlt
  have hrank : (⟨case_000255_rank.val, hlt⟩ : Fin numPairWords) = case_000255_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000255_rank.val, hlt⟩ case_000255_mask =
        case_000255_seq := by
    simpa [hrank] using case_000255_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000255_rank.val, hlt⟩ case_000255_mask =
        case_000255_b := by
    simpa [hrank] using case_000255_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000255_support case_000255_rank.val hlt
          case_000255_mask = case_000255_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000255_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000255_support case_000255_rank.val hlt
          case_000255_mask = case_000255_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000255_secondLine_eq]
  have case_000255_rowFirst :
      EqEqPosRow (FirstLineAt case_000255_support case_000255_rank.val hlt case_000255_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000255_firstLine, EqEqPosRow]
  have case_000255_fixedSecond :
      FixedRow (SecondLineAt case_000255_support case_000255_rank.val hlt case_000255_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000255_secondLine, FixedRow]
  exact ⟨case_000255_rowFirst, case_000255_fixedSecond⟩

private theorem case_000255_existsRows :
    ExistsEqEqPosVarFirstRows case_000255_rank.val case_000255_mask :=
  ⟨case_000255_support, case_000255_sourceAgrees, case_000255_rows⟩

private theorem case_000255_covered :
    RowPropertyParametricCovered case_000255_rank.val case_000255_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000255_existsRows

inductive Group007Covered : Nat -> SignMask -> Prop
  | case_000224 : Group007Covered case_000224_rank.val case_000224_mask
  | case_000225 : Group007Covered case_000225_rank.val case_000225_mask
  | case_000226 : Group007Covered case_000226_rank.val case_000226_mask
  | case_000227 : Group007Covered case_000227_rank.val case_000227_mask
  | case_000228 : Group007Covered case_000228_rank.val case_000228_mask
  | case_000229 : Group007Covered case_000229_rank.val case_000229_mask
  | case_000230 : Group007Covered case_000230_rank.val case_000230_mask
  | case_000231 : Group007Covered case_000231_rank.val case_000231_mask
  | case_000232 : Group007Covered case_000232_rank.val case_000232_mask
  | case_000233 : Group007Covered case_000233_rank.val case_000233_mask
  | case_000234 : Group007Covered case_000234_rank.val case_000234_mask
  | case_000235 : Group007Covered case_000235_rank.val case_000235_mask
  | case_000236 : Group007Covered case_000236_rank.val case_000236_mask
  | case_000237 : Group007Covered case_000237_rank.val case_000237_mask
  | case_000238 : Group007Covered case_000238_rank.val case_000238_mask
  | case_000239 : Group007Covered case_000239_rank.val case_000239_mask
  | case_000240 : Group007Covered case_000240_rank.val case_000240_mask
  | case_000241 : Group007Covered case_000241_rank.val case_000241_mask
  | case_000242 : Group007Covered case_000242_rank.val case_000242_mask
  | case_000243 : Group007Covered case_000243_rank.val case_000243_mask
  | case_000244 : Group007Covered case_000244_rank.val case_000244_mask
  | case_000245 : Group007Covered case_000245_rank.val case_000245_mask
  | case_000246 : Group007Covered case_000246_rank.val case_000246_mask
  | case_000247 : Group007Covered case_000247_rank.val case_000247_mask
  | case_000248 : Group007Covered case_000248_rank.val case_000248_mask
  | case_000249 : Group007Covered case_000249_rank.val case_000249_mask
  | case_000250 : Group007Covered case_000250_rank.val case_000250_mask
  | case_000251 : Group007Covered case_000251_rank.val case_000251_mask
  | case_000252 : Group007Covered case_000252_rank.val case_000252_mask
  | case_000253 : Group007Covered case_000253_rank.val case_000253_mask
  | case_000254 : Group007Covered case_000254_rank.val case_000254_mask
  | case_000255 : Group007Covered case_000255_rank.val case_000255_mask

theorem Group007GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group007Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000224 =>
      exact RowPropertyParametricCovered.kills case_000224_covered
  | case_000225 =>
      exact RowPropertyParametricCovered.kills case_000225_covered
  | case_000226 =>
      exact RowPropertyParametricCovered.kills case_000226_covered
  | case_000227 =>
      exact RowPropertyParametricCovered.kills case_000227_covered
  | case_000228 =>
      exact RowPropertyParametricCovered.kills case_000228_covered
  | case_000229 =>
      exact RowPropertyParametricCovered.kills case_000229_covered
  | case_000230 =>
      exact RowPropertyParametricCovered.kills case_000230_covered
  | case_000231 =>
      exact RowPropertyParametricCovered.kills case_000231_covered
  | case_000232 =>
      exact RowPropertyParametricCovered.kills case_000232_covered
  | case_000233 =>
      exact RowPropertyParametricCovered.kills case_000233_covered
  | case_000234 =>
      exact RowPropertyParametricCovered.kills case_000234_covered
  | case_000235 =>
      exact RowPropertyParametricCovered.kills case_000235_covered
  | case_000236 =>
      exact RowPropertyParametricCovered.kills case_000236_covered
  | case_000237 =>
      exact RowPropertyParametricCovered.kills case_000237_covered
  | case_000238 =>
      exact RowPropertyParametricCovered.kills case_000238_covered
  | case_000239 =>
      exact RowPropertyParametricCovered.kills case_000239_covered
  | case_000240 =>
      exact RowPropertyParametricCovered.kills case_000240_covered
  | case_000241 =>
      exact RowPropertyParametricCovered.kills case_000241_covered
  | case_000242 =>
      exact RowPropertyParametricCovered.kills case_000242_covered
  | case_000243 =>
      exact RowPropertyParametricCovered.kills case_000243_covered
  | case_000244 =>
      exact RowPropertyParametricCovered.kills case_000244_covered
  | case_000245 =>
      exact RowPropertyParametricCovered.kills case_000245_covered
  | case_000246 =>
      exact RowPropertyParametricCovered.kills case_000246_covered
  | case_000247 =>
      exact RowPropertyParametricCovered.kills case_000247_covered
  | case_000248 =>
      exact RowPropertyParametricCovered.kills case_000248_covered
  | case_000249 =>
      exact RowPropertyParametricCovered.kills case_000249_covered
  | case_000250 =>
      exact RowPropertyParametricCovered.kills case_000250_covered
  | case_000251 =>
      exact RowPropertyParametricCovered.kills case_000251_covered
  | case_000252 =>
      exact RowPropertyParametricCovered.kills case_000252_covered
  | case_000253 =>
      exact RowPropertyParametricCovered.kills case_000253_covered
  | case_000254 =>
      exact RowPropertyParametricCovered.kills case_000254_covered
  | case_000255 =>
      exact RowPropertyParametricCovered.kills case_000255_covered

theorem Group007_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group007
