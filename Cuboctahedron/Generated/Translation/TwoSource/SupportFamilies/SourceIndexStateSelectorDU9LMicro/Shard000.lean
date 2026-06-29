import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-!
Generated DU.9L selector-coordinate positive-survivor micro-shard.

This file is bounded telemetry.  It proves selector lookup and public
source/row facts only for emitted GoodDirection survivor cases.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Generated coordinate selector for this DU.9L micro-shard.

It is intentionally specified only on emitted positive survivor cases;
all other inputs return a harmless default. -/
def selectorCoordAt (rank : Nat) (mask : SignMask) : SelectorCoordinate :=
  if rank = 0 ∧ mask.val = 8 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 0 ∧ mask.val = 9 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 0 ∧ mask.val = 13 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 0 ∧ mask.val = 16 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 0 ∧ mask.val = 18 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 0 ∧ mask.val = 22 then selectorCoordinateOfKey ClassifierKey.k004 else
  if rank = 0 ∧ mask.val = 24 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 0 ∧ mask.val = 28 then selectorCoordinateOfKey ClassifierKey.k041 else
  if rank = 0 ∧ mask.val = 29 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 0 ∧ mask.val = 30 then selectorCoordinateOfKey ClassifierKey.k004 else
  if rank = 0 ∧ mask.val = 31 then selectorCoordinateOfKey ClassifierKey.k004 else
  if rank = 0 ∧ mask.val = 45 then selectorCoordinateOfKey ClassifierKey.k035 else
  if rank = 0 ∧ mask.val = 47 then selectorCoordinateOfKey ClassifierKey.k035 else
  if rank = 0 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 0 ∧ mask.val = 55 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 0 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k004 else
  selectorCoordinateOfKey ClassifierKey.k000

/-- Source-index/state bounded coverage descriptor `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded cases: 14. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded cases: 8. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_001_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_001_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded cases: 6. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_002_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_002_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Source-index/state bounded coverage descriptor `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded cases: 4. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_003_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 7
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Source-index/state bounded coverage descriptor `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded cases: 3. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_004_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 13
  support := fam_004_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Source-index/state bounded coverage descriptor `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded cases: 1. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_005_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 167
  secondIndex := 0
  support := fam_005_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded cases: 1. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_006_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 105
  secondIndex := 0
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded cases: 1. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_007_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 0
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded cases: 1. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_008_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 1
  support := fam_008_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Source-index/state bounded coverage descriptor `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded cases: 1. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_009_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 13
  support := fam_009_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Source-index/state bounded coverage descriptor `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded cases: 1. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_010_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 7
  support := fam_010_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Source-index/state bounded coverage descriptor `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded cases: 1. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_011_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 25
  secondIndex := 2
  support := fam_011_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

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

set_option maxHeartbeats 1200000 in
private theorem case_000000_sourceMatches :
    fam_000_desc.SourceMatches case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank :
      (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000000_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000000_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000000_rank.val hlt case_000000_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000000_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000000_applies :
    fam_000_desc.Applies case_000000_rank.val case_000000_mask := by
  exact ⟨
    case_000000_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000000_support] using case_000000_rows
  ⟩

private theorem case_000000_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000000_rank.val case_000000_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000000_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000000_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000000_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000000_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000000_rank.val case_000000_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000000_support] using case_000000_rows)

private theorem case_000000_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000000_rank.val case_000000_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000000_selectorSourceFacts
    case_000000_selectorRowFacts

private theorem case_000000_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000001_sourceMatches :
    fam_000_desc.SourceMatches case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank :
      (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000001_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000001_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000001_rank.val hlt case_000001_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000001_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000001_applies :
    fam_000_desc.Applies case_000001_rank.val case_000001_mask := by
  exact ⟨
    case_000001_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000001_support] using case_000001_rows
  ⟩

private theorem case_000001_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000001_rank.val case_000001_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000001_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000001_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000001_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000001_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000001_rank.val case_000001_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000001_support] using case_000001_rows)

private theorem case_000001_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000001_rank.val case_000001_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000001_selectorSourceFacts
    case_000001_selectorRowFacts

private theorem case_000001_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000002_sourceMatches :
    fam_003_desc.SourceMatches case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank :
      (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000002_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000002_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000002_rank.val hlt case_000002_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000002_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000002_applies :
    fam_003_desc.Applies case_000002_rank.val case_000002_mask := by
  exact ⟨
    case_000002_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000002_support] using case_000002_rows
  ⟩

private theorem case_000002_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000002_rank.val case_000002_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000002_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000002_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000002_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000002_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000002_rank.val case_000002_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000002_support] using case_000002_rows)

private theorem case_000002_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000002_rank.val case_000002_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000002_selectorSourceFacts
    case_000002_selectorRowFacts

private theorem case_000002_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

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

set_option maxHeartbeats 1200000 in
private theorem case_000003_sourceMatches :
    fam_000_desc.SourceMatches case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank :
      (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000003_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000003_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000003_rank.val hlt case_000003_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000003_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000003_applies :
    fam_000_desc.Applies case_000003_rank.val case_000003_mask := by
  exact ⟨
    case_000003_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000003_support] using case_000003_rows
  ⟩

private theorem case_000003_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000003_rank.val case_000003_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000003_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000003_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000003_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000003_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000003_rank.val case_000003_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000003_support] using case_000003_rows)

private theorem case_000003_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000003_rank.val case_000003_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000003_selectorSourceFacts
    case_000003_selectorRowFacts

private theorem case_000003_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000004_sourceMatches :
    fam_000_desc.SourceMatches case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank :
      (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000004_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000004_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000004_rank.val hlt case_000004_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000004_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000004_applies :
    fam_000_desc.Applies case_000004_rank.val case_000004_mask := by
  exact ⟨
    case_000004_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000004_support] using case_000004_rows
  ⟩

private theorem case_000004_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000004_rank.val case_000004_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000004_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000004_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000004_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000004_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000004_rank.val case_000004_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000004_support] using case_000004_rows)

private theorem case_000004_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000004_rank.val case_000004_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000004_selectorSourceFacts
    case_000004_selectorRowFacts

private theorem case_000004_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000005_sourceMatches :
    fam_001_desc.SourceMatches case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank :
      (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000005_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000005_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000005_rank.val hlt case_000005_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000005_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000005_applies :
    fam_001_desc.Applies case_000005_rank.val case_000005_mask := by
  exact ⟨
    case_000005_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000005_support] using case_000005_rows
  ⟩

private theorem case_000005_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000005_rank.val case_000005_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000005_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000005_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000005_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000005_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000005_rank.val case_000005_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000005_support] using case_000005_rows)

private theorem case_000005_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000005_rank.val case_000005_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000005_selectorSourceFacts
    case_000005_selectorRowFacts

private theorem case_000005_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

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

set_option maxHeartbeats 1200000 in
private theorem case_000006_sourceMatches :
    fam_000_desc.SourceMatches case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank :
      (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000006_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000006_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000006_rank.val hlt case_000006_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000006_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000006_applies :
    fam_000_desc.Applies case_000006_rank.val case_000006_mask := by
  exact ⟨
    case_000006_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000006_support] using case_000006_rows
  ⟩

private theorem case_000006_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000006_rank.val case_000006_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000006_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000006_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000006_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000006_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000006_rank.val case_000006_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000006_support] using case_000006_rows)

private theorem case_000006_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000006_rank.val case_000006_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000006_selectorSourceFacts
    case_000006_selectorRowFacts

private theorem case_000006_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000007_sourceMatches :
    fam_005_desc.SourceMatches case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank :
      (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000007_seq)
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000007_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000007_rank.val hlt case_000007_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000007_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000007_applies :
    fam_005_desc.Applies case_000007_rank.val case_000007_mask := by
  exact ⟨
    case_000007_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000007_support] using case_000007_rows
  ⟩

private theorem case_000007_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k041.toSourceIndexStateKey
      case_000007_rank.val case_000007_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000007_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_041_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000007_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_041_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000007_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_041_support] using hs.2.2
    }

private theorem case_000007_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k041.toSourceIndexStateKey
      case_000007_rank.val case_000007_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_041_support, case_000007_support] using case_000007_rows)

private theorem case_000007_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k041)
      case_000007_rank.val case_000007_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000007_selectorSourceFacts
    case_000007_selectorRowFacts

private theorem case_000007_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k041) =
      some ClassifierKey.k041 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k041

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

set_option maxHeartbeats 1200000 in
private theorem case_000008_sourceMatches :
    fam_003_desc.SourceMatches case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank :
      (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000008_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000008_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000008_rank.val hlt case_000008_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000008_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000008_applies :
    fam_003_desc.Applies case_000008_rank.val case_000008_mask := by
  exact ⟨
    case_000008_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000008_support] using case_000008_rows
  ⟩

private theorem case_000008_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000008_rank.val case_000008_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000008_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000008_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000008_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000008_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000008_rank.val case_000008_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000008_support] using case_000008_rows)

private theorem case_000008_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000008_rank.val case_000008_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000008_selectorSourceFacts
    case_000008_selectorRowFacts

private theorem case_000008_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

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

set_option maxHeartbeats 1200000 in
private theorem case_000009_sourceMatches :
    fam_001_desc.SourceMatches case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank :
      (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000009_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000009_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000009_rank.val hlt case_000009_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000009_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000009_applies :
    fam_001_desc.Applies case_000009_rank.val case_000009_mask := by
  exact ⟨
    case_000009_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000009_support] using case_000009_rows
  ⟩

private theorem case_000009_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000009_rank.val case_000009_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000009_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000009_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000009_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000009_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000009_rank.val case_000009_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000009_support] using case_000009_rows)

private theorem case_000009_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000009_rank.val case_000009_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000009_selectorSourceFacts
    case_000009_selectorRowFacts

private theorem case_000009_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

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

set_option maxHeartbeats 1200000 in
private theorem case_000010_sourceMatches :
    fam_001_desc.SourceMatches case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank :
      (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000010_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000010_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000010_rank.val hlt case_000010_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000010_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000010_applies :
    fam_001_desc.Applies case_000010_rank.val case_000010_mask := by
  exact ⟨
    case_000010_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000010_support] using case_000010_rows
  ⟩

private theorem case_000010_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000010_rank.val case_000010_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000010_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000010_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000010_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000010_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000010_rank.val case_000010_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000010_support] using case_000010_rows)

private theorem case_000010_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000010_rank.val case_000010_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000010_selectorSourceFacts
    case_000010_selectorRowFacts

private theorem case_000010_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

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

set_option maxHeartbeats 1200000 in
private theorem case_000011_sourceMatches :
    fam_004_desc.SourceMatches case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank :
      (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000011_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000011_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000011_rank.val hlt case_000011_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000011_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000011_applies :
    fam_004_desc.Applies case_000011_rank.val case_000011_mask := by
  exact ⟨
    case_000011_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000011_support] using case_000011_rows
  ⟩

private theorem case_000011_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k035.toSourceIndexStateKey
      case_000011_rank.val case_000011_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000011_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000011_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000011_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.2.2
    }

private theorem case_000011_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k035.toSourceIndexStateKey
      case_000011_rank.val case_000011_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support, case_000011_support] using case_000011_rows)

private theorem case_000011_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k035)
      case_000011_rank.val case_000011_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000011_selectorSourceFacts
    case_000011_selectorRowFacts

private theorem case_000011_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k035) =
      some ClassifierKey.k035 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k035

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

set_option maxHeartbeats 1200000 in
private theorem case_000012_sourceMatches :
    fam_004_desc.SourceMatches case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank :
      (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000012_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000012_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000012_rank.val hlt case_000012_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000012_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000012_applies :
    fam_004_desc.Applies case_000012_rank.val case_000012_mask := by
  exact ⟨
    case_000012_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000012_support] using case_000012_rows
  ⟩

private theorem case_000012_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k035.toSourceIndexStateKey
      case_000012_rank.val case_000012_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000012_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000012_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000012_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.2.2
    }

private theorem case_000012_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k035.toSourceIndexStateKey
      case_000012_rank.val case_000012_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support, case_000012_support] using case_000012_rows)

private theorem case_000012_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k035)
      case_000012_rank.val case_000012_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000012_selectorSourceFacts
    case_000012_selectorRowFacts

private theorem case_000012_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k035) =
      some ClassifierKey.k035 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k035

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

set_option maxHeartbeats 1200000 in
private theorem case_000013_sourceMatches :
    fam_002_desc.SourceMatches case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank :
      (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000013_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000013_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000013_rank.val hlt case_000013_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000013_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000013_applies :
    fam_002_desc.Applies case_000013_rank.val case_000013_mask := by
  exact ⟨
    case_000013_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000013_support] using case_000013_rows
  ⟩

private theorem case_000013_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000013_rank.val case_000013_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000013_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000013_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000013_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000013_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000013_rank.val case_000013_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000013_support] using case_000013_rows)

private theorem case_000013_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000013_rank.val case_000013_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000013_selectorSourceFacts
    case_000013_selectorRowFacts

private theorem case_000013_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

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

set_option maxHeartbeats 1200000 in
private theorem case_000014_sourceMatches :
    fam_002_desc.SourceMatches case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank :
      (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000014_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000014_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000014_rank.val hlt case_000014_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000014_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000014_applies :
    fam_002_desc.Applies case_000014_rank.val case_000014_mask := by
  exact ⟨
    case_000014_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000014_support] using case_000014_rows
  ⟩

private theorem case_000014_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000014_rank.val case_000014_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000014_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000014_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000014_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000014_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000014_rank.val case_000014_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000014_support] using case_000014_rows)

private theorem case_000014_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000014_rank.val case_000014_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000014_selectorSourceFacts
    case_000014_selectorRowFacts

private theorem case_000014_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

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

set_option maxHeartbeats 1200000 in
private theorem case_000015_sourceMatches :
    fam_001_desc.SourceMatches case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank :
      (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000015_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000015_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000015_rank.val hlt case_000015_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000015_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000015_applies :
    fam_001_desc.Applies case_000015_rank.val case_000015_mask := by
  exact ⟨
    case_000015_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000015_support] using case_000015_rows
  ⟩

private theorem case_000015_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000015_rank.val case_000015_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000015_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000015_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000015_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000015_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000015_rank.val case_000015_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000015_support] using case_000015_rows)

private theorem case_000015_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000015_rank.val case_000015_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000015_selectorSourceFacts
    case_000015_selectorRowFacts

private theorem case_000015_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

/-- Positive GoodDirection survivor cases represented in this shard. -/
inductive SelectorPositiveCase : Nat -> SignMask -> Prop
  | c000 : SelectorPositiveCase 0 (⟨8, by decide⟩ : SignMask)
  | c001 : SelectorPositiveCase 0 (⟨9, by decide⟩ : SignMask)
  | c002 : SelectorPositiveCase 0 (⟨13, by decide⟩ : SignMask)
  | c003 : SelectorPositiveCase 0 (⟨16, by decide⟩ : SignMask)
  | c004 : SelectorPositiveCase 0 (⟨18, by decide⟩ : SignMask)
  | c005 : SelectorPositiveCase 0 (⟨22, by decide⟩ : SignMask)
  | c006 : SelectorPositiveCase 0 (⟨24, by decide⟩ : SignMask)
  | c007 : SelectorPositiveCase 0 (⟨28, by decide⟩ : SignMask)
  | c008 : SelectorPositiveCase 0 (⟨29, by decide⟩ : SignMask)
  | c009 : SelectorPositiveCase 0 (⟨30, by decide⟩ : SignMask)
  | c010 : SelectorPositiveCase 0 (⟨31, by decide⟩ : SignMask)
  | c011 : SelectorPositiveCase 0 (⟨45, by decide⟩ : SignMask)
  | c012 : SelectorPositiveCase 0 (⟨47, by decide⟩ : SignMask)
  | c013 : SelectorPositiveCase 0 (⟨54, by decide⟩ : SignMask)
  | c014 : SelectorPositiveCase 0 (⟨55, by decide⟩ : SignMask)
  | c015 : SelectorPositiveCase 0 (⟨63, by decide⟩ : SignMask)

theorem selectorPositiveLookup
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    ∃ key : ClassifierKey,
      keyOfSelectorCoordinate? (selectorCoordAt rank mask) = some key := by
  cases hcase with
  | c000 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000000_selectorLookup⟩
  | c001 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000001_selectorLookup⟩
  | c002 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000002_selectorLookup⟩
  | c003 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000003_selectorLookup⟩
  | c004 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000004_selectorLookup⟩
  | c005 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000005_selectorLookup⟩
  | c006 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000006_selectorLookup⟩
  | c007 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000007_selectorLookup⟩
  | c008 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000008_selectorLookup⟩
  | c009 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000009_selectorLookup⟩
  | c010 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000010_selectorLookup⟩
  | c011 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000011_selectorLookup⟩
  | c012 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000012_selectorLookup⟩
  | c013 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000013_selectorLookup⟩
  | c014 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000014_selectorLookup⟩
  | c015 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000015_selectorLookup⟩

theorem selectorPositiveSourceRowFacts
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    SelectorCoordinateSourceRowFacts (selectorCoordAt rank mask)
      rank mask := by
  cases hcase with
  | c000 =>
      simpa [selectorCoordAt, case_000000_rank, case_000000_mask] using case_000000_selectorSourceRowFacts
  | c001 =>
      simpa [selectorCoordAt, case_000001_rank, case_000001_mask] using case_000001_selectorSourceRowFacts
  | c002 =>
      simpa [selectorCoordAt, case_000002_rank, case_000002_mask] using case_000002_selectorSourceRowFacts
  | c003 =>
      simpa [selectorCoordAt, case_000003_rank, case_000003_mask] using case_000003_selectorSourceRowFacts
  | c004 =>
      simpa [selectorCoordAt, case_000004_rank, case_000004_mask] using case_000004_selectorSourceRowFacts
  | c005 =>
      simpa [selectorCoordAt, case_000005_rank, case_000005_mask] using case_000005_selectorSourceRowFacts
  | c006 =>
      simpa [selectorCoordAt, case_000006_rank, case_000006_mask] using case_000006_selectorSourceRowFacts
  | c007 =>
      simpa [selectorCoordAt, case_000007_rank, case_000007_mask] using case_000007_selectorSourceRowFacts
  | c008 =>
      simpa [selectorCoordAt, case_000008_rank, case_000008_mask] using case_000008_selectorSourceRowFacts
  | c009 =>
      simpa [selectorCoordAt, case_000009_rank, case_000009_mask] using case_000009_selectorSourceRowFacts
  | c010 =>
      simpa [selectorCoordAt, case_000010_rank, case_000010_mask] using case_000010_selectorSourceRowFacts
  | c011 =>
      simpa [selectorCoordAt, case_000011_rank, case_000011_mask] using case_000011_selectorSourceRowFacts
  | c012 =>
      simpa [selectorCoordAt, case_000012_rank, case_000012_mask] using case_000012_selectorSourceRowFacts
  | c013 =>
      simpa [selectorCoordAt, case_000013_rank, case_000013_mask] using case_000013_selectorSourceRowFacts
  | c014 =>
      simpa [selectorCoordAt, case_000014_rank, case_000014_mask] using case_000014_selectorSourceRowFacts
  | c015 =>
      simpa [selectorCoordAt, case_000015_rank, case_000015_mask] using case_000015_selectorSourceRowFacts

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000
