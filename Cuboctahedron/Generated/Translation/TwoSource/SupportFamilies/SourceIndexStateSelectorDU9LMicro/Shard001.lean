import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-!
Generated DU.9L selector-coordinate positive-survivor micro-shard.

This file is bounded telemetry.  It proves selector lookup and public
source/row facts only for emitted GoodDirection survivor cases.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001

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
  if rank = 2 ∧ mask.val = 8 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 2 ∧ mask.val = 9 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 2 ∧ mask.val = 13 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 2 ∧ mask.val = 16 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 2 ∧ mask.val = 18 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 2 ∧ mask.val = 24 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 2 ∧ mask.val = 28 then selectorCoordinateOfKey ClassifierKey.k031 else
  if rank = 2 ∧ mask.val = 29 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 2 ∧ mask.val = 30 then selectorCoordinateOfKey ClassifierKey.k004 else
  if rank = 2 ∧ mask.val = 47 then selectorCoordinateOfKey ClassifierKey.k035 else
  if rank = 2 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 2 ∧ mask.val = 55 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 2 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k004 else
  if rank = 3 ∧ mask.val = 8 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 3 ∧ mask.val = 9 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 3 ∧ mask.val = 13 then selectorCoordinateOfKey ClassifierKey.k004 else
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

set_option maxHeartbeats 1200000 in
private theorem case_000016_sourceMatches :
    fam_000_desc.SourceMatches case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank :
      (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000016_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000016_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000016_rank.val hlt case_000016_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000016_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000016_applies :
    fam_000_desc.Applies case_000016_rank.val case_000016_mask := by
  exact ⟨
    case_000016_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000016_support] using case_000016_rows
  ⟩

private theorem case_000016_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000016_rank.val case_000016_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000016_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000016_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000016_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000016_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000016_rank.val case_000016_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000016_support] using case_000016_rows)

private theorem case_000016_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000016_rank.val case_000016_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000016_selectorSourceFacts
    case_000016_selectorRowFacts

private theorem case_000016_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000017_sourceMatches :
    fam_000_desc.SourceMatches case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank :
      (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000017_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000017_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000017_rank.val hlt case_000017_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000017_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000017_applies :
    fam_000_desc.Applies case_000017_rank.val case_000017_mask := by
  exact ⟨
    case_000017_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000017_support] using case_000017_rows
  ⟩

private theorem case_000017_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000017_rank.val case_000017_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000017_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000017_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000017_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000017_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000017_rank.val case_000017_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000017_support] using case_000017_rows)

private theorem case_000017_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000017_rank.val case_000017_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000017_selectorSourceFacts
    case_000017_selectorRowFacts

private theorem case_000017_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000018_sourceMatches :
    fam_003_desc.SourceMatches case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank :
      (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000018_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000018_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000018_rank.val hlt case_000018_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000018_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000018_applies :
    fam_003_desc.Applies case_000018_rank.val case_000018_mask := by
  exact ⟨
    case_000018_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000018_support] using case_000018_rows
  ⟩

private theorem case_000018_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000018_rank.val case_000018_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000018_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000018_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000018_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000018_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000018_rank.val case_000018_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000018_support] using case_000018_rows)

private theorem case_000018_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000018_rank.val case_000018_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000018_selectorSourceFacts
    case_000018_selectorRowFacts

private theorem case_000018_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

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

set_option maxHeartbeats 1200000 in
private theorem case_000019_sourceMatches :
    fam_000_desc.SourceMatches case_000019_rank.val case_000019_mask := by
  intro hlt
  have hrank :
      (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_seq := by
    simpa [hrank] using case_000019_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000019_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000019_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000019_rank.val hlt case_000019_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000019_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000019_applies :
    fam_000_desc.Applies case_000019_rank.val case_000019_mask := by
  exact ⟨
    case_000019_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000019_support] using case_000019_rows
  ⟩

private theorem case_000019_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000019_rank.val case_000019_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000019_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000019_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000019_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000019_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000019_rank.val case_000019_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000019_support] using case_000019_rows)

private theorem case_000019_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000019_rank.val case_000019_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000019_selectorSourceFacts
    case_000019_selectorRowFacts

private theorem case_000019_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000020_sourceMatches :
    fam_000_desc.SourceMatches case_000020_rank.val case_000020_mask := by
  intro hlt
  have hrank :
      (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_seq := by
    simpa [hrank] using case_000020_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000020_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000020_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000020_rank.val hlt case_000020_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000020_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000020_applies :
    fam_000_desc.Applies case_000020_rank.val case_000020_mask := by
  exact ⟨
    case_000020_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000020_support] using case_000020_rows
  ⟩

private theorem case_000020_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000020_rank.val case_000020_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000020_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000020_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000020_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000020_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000020_rank.val case_000020_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000020_support] using case_000020_rows)

private theorem case_000020_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000020_rank.val case_000020_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000020_selectorSourceFacts
    case_000020_selectorRowFacts

private theorem case_000020_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000021_sourceMatches :
    fam_000_desc.SourceMatches case_000021_rank.val case_000021_mask := by
  intro hlt
  have hrank :
      (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_seq := by
    simpa [hrank] using case_000021_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000021_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000021_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000021_rank.val hlt case_000021_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000021_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000021_applies :
    fam_000_desc.Applies case_000021_rank.val case_000021_mask := by
  exact ⟨
    case_000021_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000021_support] using case_000021_rows
  ⟩

private theorem case_000021_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000021_rank.val case_000021_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000021_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000021_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000021_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000021_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000021_rank.val case_000021_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000021_support] using case_000021_rows)

private theorem case_000021_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000021_rank.val case_000021_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000021_selectorSourceFacts
    case_000021_selectorRowFacts

private theorem case_000021_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000022_sourceMatches :
    fam_009_desc.SourceMatches case_000022_rank.val case_000022_mask := by
  intro hlt
  have hrank :
      (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_seq := by
    simpa [hrank] using case_000022_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000022_seq)
          fam_009_desc.firstIndex = some fam_009_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000022_seq)
          fam_009_desc.secondIndex = some fam_009_support.second := by
    decide
  have hchecks :
      SourceChecks fam_009_support case_000022_rank.val hlt case_000022_mask := by
    simp [SourceChecks, hseq, fam_009_support,
      checkTranslationConstraintSource, case_000022_seq, impactFace]
  exact ⟨
    by simpa [fam_009_desc, hseq] using hfirstIndex,
    by simpa [fam_009_desc, hseq] using hsecondIndex,
    by simpa [fam_009_desc] using hchecks
  ⟩

private theorem case_000022_applies :
    fam_009_desc.Applies case_000022_rank.val case_000022_mask := by
  exact ⟨
    case_000022_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_009_desc, fam_009_support, case_000022_support] using case_000022_rows
  ⟩

private theorem case_000022_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k031.toSourceIndexStateKey
      case_000022_rank.val case_000022_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000022_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_009_desc, fam_009_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_031_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000022_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_009_desc, fam_009_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_031_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000022_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_009_desc, fam_009_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_031_support] using hs.2.2
    }

private theorem case_000022_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k031.toSourceIndexStateKey
      case_000022_rank.val case_000022_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_031_support, case_000022_support] using case_000022_rows)

private theorem case_000022_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k031)
      case_000022_rank.val case_000022_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000022_selectorSourceFacts
    case_000022_selectorRowFacts

private theorem case_000022_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k031) =
      some ClassifierKey.k031 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k031

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

set_option maxHeartbeats 1200000 in
private theorem case_000023_sourceMatches :
    fam_003_desc.SourceMatches case_000023_rank.val case_000023_mask := by
  intro hlt
  have hrank :
      (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_seq := by
    simpa [hrank] using case_000023_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000023_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000023_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000023_rank.val hlt case_000023_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000023_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000023_applies :
    fam_003_desc.Applies case_000023_rank.val case_000023_mask := by
  exact ⟨
    case_000023_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000023_support] using case_000023_rows
  ⟩

private theorem case_000023_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000023_rank.val case_000023_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000023_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000023_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000023_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000023_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000023_rank.val case_000023_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000023_support] using case_000023_rows)

private theorem case_000023_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000023_rank.val case_000023_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000023_selectorSourceFacts
    case_000023_selectorRowFacts

private theorem case_000023_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

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

set_option maxHeartbeats 1200000 in
private theorem case_000024_sourceMatches :
    fam_001_desc.SourceMatches case_000024_rank.val case_000024_mask := by
  intro hlt
  have hrank :
      (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_seq := by
    simpa [hrank] using case_000024_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000024_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000024_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000024_rank.val hlt case_000024_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000024_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000024_applies :
    fam_001_desc.Applies case_000024_rank.val case_000024_mask := by
  exact ⟨
    case_000024_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000024_support] using case_000024_rows
  ⟩

private theorem case_000024_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000024_rank.val case_000024_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000024_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000024_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000024_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000024_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000024_rank.val case_000024_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000024_support] using case_000024_rows)

private theorem case_000024_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000024_rank.val case_000024_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000024_selectorSourceFacts
    case_000024_selectorRowFacts

private theorem case_000024_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

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

set_option maxHeartbeats 1200000 in
private theorem case_000025_sourceMatches :
    fam_004_desc.SourceMatches case_000025_rank.val case_000025_mask := by
  intro hlt
  have hrank :
      (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_seq := by
    simpa [hrank] using case_000025_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000025_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000025_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000025_rank.val hlt case_000025_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000025_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000025_applies :
    fam_004_desc.Applies case_000025_rank.val case_000025_mask := by
  exact ⟨
    case_000025_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000025_support] using case_000025_rows
  ⟩

private theorem case_000025_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k035.toSourceIndexStateKey
      case_000025_rank.val case_000025_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000025_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000025_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000025_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support] using hs.2.2
    }

private theorem case_000025_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k035.toSourceIndexStateKey
      case_000025_rank.val case_000025_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_035_support, case_000025_support] using case_000025_rows)

private theorem case_000025_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k035)
      case_000025_rank.val case_000025_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000025_selectorSourceFacts
    case_000025_selectorRowFacts

private theorem case_000025_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k035) =
      some ClassifierKey.k035 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k035

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

set_option maxHeartbeats 1200000 in
private theorem case_000026_sourceMatches :
    fam_002_desc.SourceMatches case_000026_rank.val case_000026_mask := by
  intro hlt
  have hrank :
      (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_seq := by
    simpa [hrank] using case_000026_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000026_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000026_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000026_rank.val hlt case_000026_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000026_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000026_applies :
    fam_002_desc.Applies case_000026_rank.val case_000026_mask := by
  exact ⟨
    case_000026_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000026_support] using case_000026_rows
  ⟩

private theorem case_000026_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000026_rank.val case_000026_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000026_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000026_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000026_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000026_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000026_rank.val case_000026_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000026_support] using case_000026_rows)

private theorem case_000026_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000026_rank.val case_000026_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000026_selectorSourceFacts
    case_000026_selectorRowFacts

private theorem case_000026_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

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

set_option maxHeartbeats 1200000 in
private theorem case_000027_sourceMatches :
    fam_002_desc.SourceMatches case_000027_rank.val case_000027_mask := by
  intro hlt
  have hrank :
      (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_seq := by
    simpa [hrank] using case_000027_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000027_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000027_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000027_rank.val hlt case_000027_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000027_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000027_applies :
    fam_002_desc.Applies case_000027_rank.val case_000027_mask := by
  exact ⟨
    case_000027_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000027_support] using case_000027_rows
  ⟩

private theorem case_000027_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000027_rank.val case_000027_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000027_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000027_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000027_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000027_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000027_rank.val case_000027_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000027_support] using case_000027_rows)

private theorem case_000027_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000027_rank.val case_000027_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000027_selectorSourceFacts
    case_000027_selectorRowFacts

private theorem case_000027_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

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

set_option maxHeartbeats 1200000 in
private theorem case_000028_sourceMatches :
    fam_001_desc.SourceMatches case_000028_rank.val case_000028_mask := by
  intro hlt
  have hrank :
      (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_seq := by
    simpa [hrank] using case_000028_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000028_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000028_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000028_rank.val hlt case_000028_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000028_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000028_applies :
    fam_001_desc.Applies case_000028_rank.val case_000028_mask := by
  exact ⟨
    case_000028_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000028_support] using case_000028_rows
  ⟩

private theorem case_000028_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000028_rank.val case_000028_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000028_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000028_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000028_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000028_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000028_rank.val case_000028_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000028_support] using case_000028_rows)

private theorem case_000028_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000028_rank.val case_000028_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000028_selectorSourceFacts
    case_000028_selectorRowFacts

private theorem case_000028_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

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

set_option maxHeartbeats 1200000 in
private theorem case_000029_sourceMatches :
    fam_000_desc.SourceMatches case_000029_rank.val case_000029_mask := by
  intro hlt
  have hrank :
      (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_seq := by
    simpa [hrank] using case_000029_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000029_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000029_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000029_rank.val hlt case_000029_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000029_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000029_applies :
    fam_000_desc.Applies case_000029_rank.val case_000029_mask := by
  exact ⟨
    case_000029_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000029_support] using case_000029_rows
  ⟩

private theorem case_000029_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000029_rank.val case_000029_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000029_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000029_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000029_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000029_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000029_rank.val case_000029_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000029_support] using case_000029_rows)

private theorem case_000029_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000029_rank.val case_000029_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000029_selectorSourceFacts
    case_000029_selectorRowFacts

private theorem case_000029_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000030_sourceMatches :
    fam_000_desc.SourceMatches case_000030_rank.val case_000030_mask := by
  intro hlt
  have hrank :
      (⟨case_000030_rank.val, hlt⟩ : Fin numPairWords) = case_000030_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000030_rank.val, hlt⟩ case_000030_mask =
        case_000030_seq := by
    simpa [hrank] using case_000030_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000030_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000030_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000030_rank.val hlt case_000030_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000030_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000030_applies :
    fam_000_desc.Applies case_000030_rank.val case_000030_mask := by
  exact ⟨
    case_000030_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000030_support] using case_000030_rows
  ⟩

private theorem case_000030_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000030_rank.val case_000030_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000030_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000030_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000030_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000030_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000030_rank.val case_000030_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000030_support] using case_000030_rows)

private theorem case_000030_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000030_rank.val case_000030_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000030_selectorSourceFacts
    case_000030_selectorRowFacts

private theorem case_000030_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

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

set_option maxHeartbeats 1200000 in
private theorem case_000031_sourceMatches :
    fam_001_desc.SourceMatches case_000031_rank.val case_000031_mask := by
  intro hlt
  have hrank :
      (⟨case_000031_rank.val, hlt⟩ : Fin numPairWords) = case_000031_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000031_rank.val, hlt⟩ case_000031_mask =
        case_000031_seq := by
    simpa [hrank] using case_000031_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000031_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000031_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000031_rank.val hlt case_000031_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000031_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000031_applies :
    fam_001_desc.Applies case_000031_rank.val case_000031_mask := by
  exact ⟨
    case_000031_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000031_support] using case_000031_rows
  ⟩

private theorem case_000031_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000031_rank.val case_000031_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000031_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000031_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000031_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000031_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000031_rank.val case_000031_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000031_support] using case_000031_rows)

private theorem case_000031_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000031_rank.val case_000031_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000031_selectorSourceFacts
    case_000031_selectorRowFacts

private theorem case_000031_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

/-- Positive GoodDirection survivor cases represented in this shard. -/
inductive SelectorPositiveCase : Nat -> SignMask -> Prop
  | c000 : SelectorPositiveCase 2 (⟨8, by decide⟩ : SignMask)
  | c001 : SelectorPositiveCase 2 (⟨9, by decide⟩ : SignMask)
  | c002 : SelectorPositiveCase 2 (⟨13, by decide⟩ : SignMask)
  | c003 : SelectorPositiveCase 2 (⟨16, by decide⟩ : SignMask)
  | c004 : SelectorPositiveCase 2 (⟨18, by decide⟩ : SignMask)
  | c005 : SelectorPositiveCase 2 (⟨24, by decide⟩ : SignMask)
  | c006 : SelectorPositiveCase 2 (⟨28, by decide⟩ : SignMask)
  | c007 : SelectorPositiveCase 2 (⟨29, by decide⟩ : SignMask)
  | c008 : SelectorPositiveCase 2 (⟨30, by decide⟩ : SignMask)
  | c009 : SelectorPositiveCase 2 (⟨47, by decide⟩ : SignMask)
  | c010 : SelectorPositiveCase 2 (⟨54, by decide⟩ : SignMask)
  | c011 : SelectorPositiveCase 2 (⟨55, by decide⟩ : SignMask)
  | c012 : SelectorPositiveCase 2 (⟨63, by decide⟩ : SignMask)
  | c013 : SelectorPositiveCase 3 (⟨8, by decide⟩ : SignMask)
  | c014 : SelectorPositiveCase 3 (⟨9, by decide⟩ : SignMask)
  | c015 : SelectorPositiveCase 3 (⟨13, by decide⟩ : SignMask)

theorem selectorPositiveLookup
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    ∃ key : ClassifierKey,
      keyOfSelectorCoordinate? (selectorCoordAt rank mask) = some key := by
  cases hcase with
  | c000 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000016_selectorLookup⟩
  | c001 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000017_selectorLookup⟩
  | c002 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000018_selectorLookup⟩
  | c003 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000019_selectorLookup⟩
  | c004 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000020_selectorLookup⟩
  | c005 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000021_selectorLookup⟩
  | c006 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000022_selectorLookup⟩
  | c007 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000023_selectorLookup⟩
  | c008 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000024_selectorLookup⟩
  | c009 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000025_selectorLookup⟩
  | c010 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000026_selectorLookup⟩
  | c011 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000027_selectorLookup⟩
  | c012 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000028_selectorLookup⟩
  | c013 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000029_selectorLookup⟩
  | c014 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000030_selectorLookup⟩
  | c015 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000031_selectorLookup⟩

theorem selectorPositiveSourceRowFacts
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    SelectorCoordinateSourceRowFacts (selectorCoordAt rank mask)
      rank mask := by
  cases hcase with
  | c000 =>
      simpa [selectorCoordAt, case_000016_rank, case_000016_mask] using case_000016_selectorSourceRowFacts
  | c001 =>
      simpa [selectorCoordAt, case_000017_rank, case_000017_mask] using case_000017_selectorSourceRowFacts
  | c002 =>
      simpa [selectorCoordAt, case_000018_rank, case_000018_mask] using case_000018_selectorSourceRowFacts
  | c003 =>
      simpa [selectorCoordAt, case_000019_rank, case_000019_mask] using case_000019_selectorSourceRowFacts
  | c004 =>
      simpa [selectorCoordAt, case_000020_rank, case_000020_mask] using case_000020_selectorSourceRowFacts
  | c005 =>
      simpa [selectorCoordAt, case_000021_rank, case_000021_mask] using case_000021_selectorSourceRowFacts
  | c006 =>
      simpa [selectorCoordAt, case_000022_rank, case_000022_mask] using case_000022_selectorSourceRowFacts
  | c007 =>
      simpa [selectorCoordAt, case_000023_rank, case_000023_mask] using case_000023_selectorSourceRowFacts
  | c008 =>
      simpa [selectorCoordAt, case_000024_rank, case_000024_mask] using case_000024_selectorSourceRowFacts
  | c009 =>
      simpa [selectorCoordAt, case_000025_rank, case_000025_mask] using case_000025_selectorSourceRowFacts
  | c010 =>
      simpa [selectorCoordAt, case_000026_rank, case_000026_mask] using case_000026_selectorSourceRowFacts
  | c011 =>
      simpa [selectorCoordAt, case_000027_rank, case_000027_mask] using case_000027_selectorSourceRowFacts
  | c012 =>
      simpa [selectorCoordAt, case_000028_rank, case_000028_mask] using case_000028_selectorSourceRowFacts
  | c013 =>
      simpa [selectorCoordAt, case_000029_rank, case_000029_mask] using case_000029_selectorSourceRowFacts
  | c014 =>
      simpa [selectorCoordAt, case_000030_rank, case_000030_mask] using case_000030_selectorSourceRowFacts
  | c015 =>
      simpa [selectorCoordAt, case_000031_rank, case_000031_mask] using case_000031_selectorSourceRowFacts

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001
