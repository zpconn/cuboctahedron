import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated bounded source-index/state family bridge smoke for Phase 6Z.6K.8F.

This module tests multi-member fact-free membership predicates.  It is
not production coverage and deliberately caps emitted members per
family to avoid becoming a rank/mask table.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateFamilySmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Source-index/state family smoke `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded cases: 421. Emitted members: 2. -/
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

private def case_000000_desc : SourceIndexStateDescriptor where
  rank := case_000000_rank.val
  mask := case_000000_mask
  support := case_000000_support

private theorem case_000000_sourceAgrees_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000000_desc.Applies r mask) :
    SourceAgrees case_000000_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000000_desc] using case_000000_sourceAgrees

private theorem case_000000_rows_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000000_desc.Applies r mask) :
    EqEqPosVarFirstRows case_000000_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000000_desc] using case_000000_rows

private theorem case_000000_covered_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000000_desc.Applies r mask) :
    RowPropertyParametricCovered r mask := by
  exact RowPropertyParametricCovered.eqEqPosVarFirst
    ⟨case_000000_desc.support,
      case_000000_sourceAgrees_of_applies h,
      case_000000_rows_of_applies h⟩

private theorem case_000000_covered :
    RowPropertyParametricCovered case_000000_rank.val case_000000_mask := by
  exact case_000000_covered_of_applies ⟨rfl, rfl⟩

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

private def case_000001_desc : SourceIndexStateDescriptor where
  rank := case_000001_rank.val
  mask := case_000001_mask
  support := case_000001_support

private theorem case_000001_sourceAgrees_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000001_desc.Applies r mask) :
    SourceAgrees case_000001_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000001_desc] using case_000001_sourceAgrees

private theorem case_000001_rows_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000001_desc.Applies r mask) :
    EqEqPosVarFirstRows case_000001_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000001_desc] using case_000001_rows

private theorem case_000001_covered_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000001_desc.Applies r mask) :
    RowPropertyParametricCovered r mask := by
  exact RowPropertyParametricCovered.eqEqPosVarFirst
    ⟨case_000001_desc.support,
      case_000001_sourceAgrees_of_applies h,
      case_000001_rows_of_applies h⟩

private theorem case_000001_covered :
    RowPropertyParametricCovered case_000001_rank.val case_000001_mask := by
  exact case_000001_covered_of_applies ⟨rfl, rfl⟩

inductive fam_000_applies : Nat -> SignMask -> Prop
  | member_000 : fam_000_applies case_000000_rank.val case_000000_mask
  | member_001 : fam_000_applies case_000001_rank.val case_000001_mask

def fam_000_family : RowPropertyMembershipFamily where
  Applies := fam_000_applies
  covered := by
    intro r mask h
    cases h with
    | member_000 =>
        exact case_000000_covered
    | member_001 =>
        exact case_000001_covered

theorem fam_000_killsOn : fam_000_family.KillsOn :=
  fam_000_family.killsOn

/-- Source-index/state family smoke `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded cases: 134. Emitted members: 2. -/
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

private def case_000013_desc : SourceIndexStateDescriptor where
  rank := case_000013_rank.val
  mask := case_000013_mask
  support := case_000013_support

private theorem case_000013_sourceAgrees_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000013_desc.Applies r mask) :
    SourceAgrees case_000013_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000013_desc] using case_000013_sourceAgrees

private theorem case_000013_rows_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000013_desc.Applies r mask) :
    OppOneMinusVarFirstRows case_000013_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000013_desc] using case_000013_rows

private theorem case_000013_covered_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000013_desc.Applies r mask) :
    RowPropertyParametricCovered r mask := by
  exact RowPropertyParametricCovered.oppOneMinusVarFirst
    ⟨case_000013_desc.support,
      case_000013_sourceAgrees_of_applies h,
      case_000013_rows_of_applies h⟩

private theorem case_000013_covered :
    RowPropertyParametricCovered case_000013_rank.val case_000013_mask := by
  exact case_000013_covered_of_applies ⟨rfl, rfl⟩

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

private def case_000014_desc : SourceIndexStateDescriptor where
  rank := case_000014_rank.val
  mask := case_000014_mask
  support := case_000014_support

private theorem case_000014_sourceAgrees_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000014_desc.Applies r mask) :
    SourceAgrees case_000014_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000014_desc] using case_000014_sourceAgrees

private theorem case_000014_rows_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000014_desc.Applies r mask) :
    OppOneMinusVarFirstRows case_000014_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000014_desc] using case_000014_rows

private theorem case_000014_covered_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000014_desc.Applies r mask) :
    RowPropertyParametricCovered r mask := by
  exact RowPropertyParametricCovered.oppOneMinusVarFirst
    ⟨case_000014_desc.support,
      case_000014_sourceAgrees_of_applies h,
      case_000014_rows_of_applies h⟩

private theorem case_000014_covered :
    RowPropertyParametricCovered case_000014_rank.val case_000014_mask := by
  exact case_000014_covered_of_applies ⟨rfl, rfl⟩

inductive fam_001_applies : Nat -> SignMask -> Prop
  | member_000 : fam_001_applies case_000013_rank.val case_000013_mask
  | member_001 : fam_001_applies case_000014_rank.val case_000014_mask

def fam_001_family : RowPropertyMembershipFamily where
  Applies := fam_001_applies
  covered := by
    intro r mask h
    cases h with
    | member_000 =>
        exact case_000013_covered
    | member_001 =>
        exact case_000014_covered

theorem fam_001_killsOn : fam_001_family.KillsOn :=
  fam_001_family.killsOn

/-- Source-index/state family smoke `29c29249413755d9d6fbbc65c672e06248f54014ce6ad4eaf1d254591260718a`.
Observed bounded cases: 2. Emitted members: 2. -/
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

private def case_000270_desc : SourceIndexStateDescriptor where
  rank := case_000270_rank.val
  mask := case_000270_mask
  support := case_000270_support

private theorem case_000270_sourceAgrees_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000270_desc.Applies r mask) :
    SourceAgrees case_000270_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000270_desc] using case_000270_sourceAgrees

private theorem case_000270_rows_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000270_desc.Applies r mask) :
    EqEqNegVarSecondRows case_000270_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000270_desc] using case_000270_rows

private theorem case_000270_covered_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000270_desc.Applies r mask) :
    RowPropertyParametricCovered r mask := by
  exact RowPropertyParametricCovered.eqEqNegVarSecond
    ⟨case_000270_desc.support,
      case_000270_sourceAgrees_of_applies h,
      case_000270_rows_of_applies h⟩

private theorem case_000270_covered :
    RowPropertyParametricCovered case_000270_rank.val case_000270_mask := by
  exact case_000270_covered_of_applies ⟨rfl, rfl⟩

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

private def case_000277_desc : SourceIndexStateDescriptor where
  rank := case_000277_rank.val
  mask := case_000277_mask
  support := case_000277_support

private theorem case_000277_sourceAgrees_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000277_desc.Applies r mask) :
    SourceAgrees case_000277_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000277_desc] using case_000277_sourceAgrees

private theorem case_000277_rows_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000277_desc.Applies r mask) :
    EqEqNegVarSecondRows case_000277_desc.support r mask := by
  rcases h with ⟨hr, hmask⟩
  subst r
  subst mask
  simpa [case_000277_desc] using case_000277_rows

private theorem case_000277_covered_of_applies
    {r : Nat} {mask : SignMask}
    (h : case_000277_desc.Applies r mask) :
    RowPropertyParametricCovered r mask := by
  exact RowPropertyParametricCovered.eqEqNegVarSecond
    ⟨case_000277_desc.support,
      case_000277_sourceAgrees_of_applies h,
      case_000277_rows_of_applies h⟩

private theorem case_000277_covered :
    RowPropertyParametricCovered case_000277_rank.val case_000277_mask := by
  exact case_000277_covered_of_applies ⟨rfl, rfl⟩

inductive fam_002_applies : Nat -> SignMask -> Prop
  | member_000 : fam_002_applies case_000270_rank.val case_000270_mask
  | member_001 : fam_002_applies case_000277_rank.val case_000277_mask

def fam_002_family : RowPropertyMembershipFamily where
  Applies := fam_002_applies
  covered := by
    intro r mask h
    cases h with
    | member_000 =>
        exact case_000270_covered
    | member_001 =>
        exact case_000277_covered

theorem fam_002_killsOn : fam_002_family.KillsOn :=
  fam_002_family.killsOn

theorem sourceIndexStateFamilySmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateFamilySmoke
