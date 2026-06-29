import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-!
Generated DU.9L selector-coordinate positive-survivor micro-shard.

This file is bounded telemetry.  It proves selector lookup and public
source/row facts only for emitted GoodDirection survivor cases.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002

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
  if rank = 3 ∧ mask.val = 16 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 3 ∧ mask.val = 18 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 3 ∧ mask.val = 22 then selectorCoordinateOfKey ClassifierKey.k025 else
  if rank = 3 ∧ mask.val = 28 then selectorCoordinateOfKey ClassifierKey.k032 else
  if rank = 3 ∧ mask.val = 30 then selectorCoordinateOfKey ClassifierKey.k078 else
  if rank = 3 ∧ mask.val = 31 then selectorCoordinateOfKey ClassifierKey.k004 else
  if rank = 3 ∧ mask.val = 45 then selectorCoordinateOfKey ClassifierKey.k002 else
  if rank = 3 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 3 ∧ mask.val = 55 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 3 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k014 else
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

private def case_000032_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000032_mask : SignMask := ⟨16, by decide⟩
private def case_000032_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000032_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000032_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_000032_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_000032_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000032_rankWord :
    rankPairWord? case_000032_word = some case_000032_rank := by
  decide

private theorem case_000032_unrank :
    unrankPairWord case_000032_rank = case_000032_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000032_word case_000032_rank).1
    case_000032_rankWord |>.symm

private theorem case_000032_seqChoice :
    translationChoiceSeq case_000032_word case_000032_mask = case_000032_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000032_seqAtRank :
    translationSeqAtRankMask case_000032_rank case_000032_mask = case_000032_seq := by
  rw [translationSeqAtRankMask, case_000032_unrank]
  exact case_000032_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000032_bAtRank :
    translationBAtRankMask case_000032_rank case_000032_mask = case_000032_b := by
  rw [translationBAtRankMask, case_000032_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000032_b, case_000032_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000032_firstLine_eq :
    case_000032_support.firstLine case_000032_seq case_000032_b = case_000032_firstLine := by
  norm_num [case_000032_firstLine, case_000032_support, case_000032_seq, case_000032_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000032_secondLine_eq :
    case_000032_support.secondLine case_000032_seq case_000032_b = case_000032_secondLine := by
  norm_num [case_000032_secondLine, case_000032_support, case_000032_seq, case_000032_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000032_rows :
    EqEqPosVarFirstRows case_000032_support case_000032_rank.val case_000032_mask := by
  intro hlt
  have hrank : (⟨case_000032_rank.val, hlt⟩ : Fin numPairWords) = case_000032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_seq := by
    simpa [hrank] using case_000032_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_b := by
    simpa [hrank] using case_000032_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000032_support case_000032_rank.val hlt
          case_000032_mask = case_000032_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000032_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000032_support case_000032_rank.val hlt
          case_000032_mask = case_000032_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000032_secondLine_eq]
  have case_000032_rowFirst :
      EqEqPosRow (FirstLineAt case_000032_support case_000032_rank.val hlt case_000032_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000032_firstLine, EqEqPosRow]
  have case_000032_fixedSecond :
      FixedRow (SecondLineAt case_000032_support case_000032_rank.val hlt case_000032_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000032_secondLine, FixedRow]
  exact ⟨case_000032_rowFirst, case_000032_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000032_sourceMatches :
    fam_000_desc.SourceMatches case_000032_rank.val case_000032_mask := by
  intro hlt
  have hrank :
      (⟨case_000032_rank.val, hlt⟩ : Fin numPairWords) = case_000032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_seq := by
    simpa [hrank] using case_000032_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000032_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000032_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000032_rank.val hlt case_000032_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000032_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000032_applies :
    fam_000_desc.Applies case_000032_rank.val case_000032_mask := by
  exact ⟨
    case_000032_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000032_support] using case_000032_rows
  ⟩

private theorem case_000032_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000032_rank.val case_000032_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000032_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000032_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000032_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000032_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000032_rank.val case_000032_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000032_support] using case_000032_rows)

private theorem case_000032_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000032_rank.val case_000032_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000032_selectorSourceFacts
    case_000032_selectorRowFacts

private theorem case_000032_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000033_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000033_mask : SignMask := ⟨18, by decide⟩
private def case_000033_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000033_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000033_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (52/9) }
private def case_000033_firstLine : StrictLin2 := { a := -1, b := -1, c := (-27/5) }
private def case_000033_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000033_rankWord :
    rankPairWord? case_000033_word = some case_000033_rank := by
  decide

private theorem case_000033_unrank :
    unrankPairWord case_000033_rank = case_000033_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000033_word case_000033_rank).1
    case_000033_rankWord |>.symm

private theorem case_000033_seqChoice :
    translationChoiceSeq case_000033_word case_000033_mask = case_000033_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000033_seqAtRank :
    translationSeqAtRankMask case_000033_rank case_000033_mask = case_000033_seq := by
  rw [translationSeqAtRankMask, case_000033_unrank]
  exact case_000033_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000033_bAtRank :
    translationBAtRankMask case_000033_rank case_000033_mask = case_000033_b := by
  rw [translationBAtRankMask, case_000033_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000033_b, case_000033_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000033_firstLine_eq :
    case_000033_support.firstLine case_000033_seq case_000033_b = case_000033_firstLine := by
  norm_num [case_000033_firstLine, case_000033_support, case_000033_seq, case_000033_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000033_secondLine_eq :
    case_000033_support.secondLine case_000033_seq case_000033_b = case_000033_secondLine := by
  norm_num [case_000033_secondLine, case_000033_support, case_000033_seq, case_000033_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000033_rows :
    EqEqPosVarFirstRows case_000033_support case_000033_rank.val case_000033_mask := by
  intro hlt
  have hrank : (⟨case_000033_rank.val, hlt⟩ : Fin numPairWords) = case_000033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_seq := by
    simpa [hrank] using case_000033_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_b := by
    simpa [hrank] using case_000033_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000033_support case_000033_rank.val hlt
          case_000033_mask = case_000033_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000033_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000033_support case_000033_rank.val hlt
          case_000033_mask = case_000033_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000033_secondLine_eq]
  have case_000033_rowFirst :
      EqEqPosRow (FirstLineAt case_000033_support case_000033_rank.val hlt case_000033_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000033_firstLine, EqEqPosRow]
  have case_000033_fixedSecond :
      FixedRow (SecondLineAt case_000033_support case_000033_rank.val hlt case_000033_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000033_secondLine, FixedRow]
  exact ⟨case_000033_rowFirst, case_000033_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000033_sourceMatches :
    fam_000_desc.SourceMatches case_000033_rank.val case_000033_mask := by
  intro hlt
  have hrank :
      (⟨case_000033_rank.val, hlt⟩ : Fin numPairWords) = case_000033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_seq := by
    simpa [hrank] using case_000033_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000033_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000033_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000033_rank.val hlt case_000033_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000033_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000033_applies :
    fam_000_desc.Applies case_000033_rank.val case_000033_mask := by
  exact ⟨
    case_000033_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000033_support] using case_000033_rows
  ⟩

private theorem case_000033_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000033_rank.val case_000033_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000033_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000033_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000033_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000033_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000033_rank.val case_000033_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000033_support] using case_000033_rows)

private theorem case_000033_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000033_rank.val case_000033_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000033_selectorSourceFacts
    case_000033_selectorRowFacts

private theorem case_000033_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000034_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000034_mask : SignMask := ⟨22, by decide⟩
private def case_000034_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000034_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000034_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (100/9) }
private def case_000034_firstLine : StrictLin2 := { a := (-17/9), b := (-17/9), c := (-71/27) }
private def case_000034_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000034_rankWord :
    rankPairWord? case_000034_word = some case_000034_rank := by
  decide

private theorem case_000034_unrank :
    unrankPairWord case_000034_rank = case_000034_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000034_word case_000034_rank).1
    case_000034_rankWord |>.symm

private theorem case_000034_seqChoice :
    translationChoiceSeq case_000034_word case_000034_mask = case_000034_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000034_seqAtRank :
    translationSeqAtRankMask case_000034_rank case_000034_mask = case_000034_seq := by
  rw [translationSeqAtRankMask, case_000034_unrank]
  exact case_000034_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000034_bAtRank :
    translationBAtRankMask case_000034_rank case_000034_mask = case_000034_b := by
  rw [translationBAtRankMask, case_000034_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000034_b, case_000034_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000034_firstLine_eq :
    case_000034_support.firstLine case_000034_seq case_000034_b = case_000034_firstLine := by
  norm_num [case_000034_firstLine, case_000034_support, case_000034_seq, case_000034_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000034_secondLine_eq :
    case_000034_support.secondLine case_000034_seq case_000034_b = case_000034_secondLine := by
  norm_num [case_000034_secondLine, case_000034_support, case_000034_seq, case_000034_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000034_rows :
    EqEqPosVarFirstRows case_000034_support case_000034_rank.val case_000034_mask := by
  intro hlt
  have hrank : (⟨case_000034_rank.val, hlt⟩ : Fin numPairWords) = case_000034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_seq := by
    simpa [hrank] using case_000034_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_b := by
    simpa [hrank] using case_000034_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000034_support case_000034_rank.val hlt
          case_000034_mask = case_000034_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000034_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000034_support case_000034_rank.val hlt
          case_000034_mask = case_000034_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000034_secondLine_eq]
  have case_000034_rowFirst :
      EqEqPosRow (FirstLineAt case_000034_support case_000034_rank.val hlt case_000034_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000034_firstLine, EqEqPosRow]
  have case_000034_fixedSecond :
      FixedRow (SecondLineAt case_000034_support case_000034_rank.val hlt case_000034_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000034_secondLine, FixedRow]
  exact ⟨case_000034_rowFirst, case_000034_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000034_sourceMatches :
    fam_007_desc.SourceMatches case_000034_rank.val case_000034_mask := by
  intro hlt
  have hrank :
      (⟨case_000034_rank.val, hlt⟩ : Fin numPairWords) = case_000034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_seq := by
    simpa [hrank] using case_000034_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000034_seq)
          fam_007_desc.firstIndex = some fam_007_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000034_seq)
          fam_007_desc.secondIndex = some fam_007_support.second := by
    decide
  have hchecks :
      SourceChecks fam_007_support case_000034_rank.val hlt case_000034_mask := by
    simp [SourceChecks, hseq, fam_007_support,
      checkTranslationConstraintSource, case_000034_seq, impactFace]
  exact ⟨
    by simpa [fam_007_desc, hseq] using hfirstIndex,
    by simpa [fam_007_desc, hseq] using hsecondIndex,
    by simpa [fam_007_desc] using hchecks
  ⟩

private theorem case_000034_applies :
    fam_007_desc.Applies case_000034_rank.val case_000034_mask := by
  exact ⟨
    case_000034_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_007_desc, fam_007_support, case_000034_support] using case_000034_rows
  ⟩

private theorem case_000034_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k025.toSourceIndexStateKey
      case_000034_rank.val case_000034_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000034_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_007_desc, fam_007_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_025_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000034_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_007_desc, fam_007_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_025_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000034_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_007_desc, fam_007_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_025_support] using hs.2.2
    }

private theorem case_000034_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k025.toSourceIndexStateKey
      case_000034_rank.val case_000034_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_025_support, case_000034_support] using case_000034_rows)

private theorem case_000034_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k025)
      case_000034_rank.val case_000034_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000034_selectorSourceFacts
    case_000034_selectorRowFacts

private theorem case_000034_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k025) =
      some ClassifierKey.k025 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k025

private def case_000035_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000035_mask : SignMask := ⟨28, by decide⟩
private def case_000035_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000035_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000035_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_000035_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000035_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000035_rankWord :
    rankPairWord? case_000035_word = some case_000035_rank := by
  decide

private theorem case_000035_unrank :
    unrankPairWord case_000035_rank = case_000035_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000035_word case_000035_rank).1
    case_000035_rankWord |>.symm

private theorem case_000035_seqChoice :
    translationChoiceSeq case_000035_word case_000035_mask = case_000035_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000035_seqAtRank :
    translationSeqAtRankMask case_000035_rank case_000035_mask = case_000035_seq := by
  rw [translationSeqAtRankMask, case_000035_unrank]
  exact case_000035_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000035_bAtRank :
    translationBAtRankMask case_000035_rank case_000035_mask = case_000035_b := by
  rw [translationBAtRankMask, case_000035_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000035_b, case_000035_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000035_firstLine_eq :
    case_000035_support.firstLine case_000035_seq case_000035_b = case_000035_firstLine := by
  norm_num [case_000035_firstLine, case_000035_support, case_000035_seq, case_000035_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000035_secondLine_eq :
    case_000035_support.secondLine case_000035_seq case_000035_b = case_000035_secondLine := by
  norm_num [case_000035_secondLine, case_000035_support, case_000035_seq, case_000035_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000035_rows :
    OppOneMinusVarFirstRows case_000035_support case_000035_rank.val case_000035_mask := by
  intro hlt
  have hrank : (⟨case_000035_rank.val, hlt⟩ : Fin numPairWords) = case_000035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_seq := by
    simpa [hrank] using case_000035_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_b := by
    simpa [hrank] using case_000035_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000035_support case_000035_rank.val hlt
          case_000035_mask = case_000035_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000035_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000035_support case_000035_rank.val hlt
          case_000035_mask = case_000035_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000035_secondLine_eq]
  have case_000035_rowFirst :
      OppPosRow (FirstLineAt case_000035_support case_000035_rank.val hlt case_000035_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000035_firstLine, OppPosRow]
  have case_000035_fixedSecond :
      FixedRow (SecondLineAt case_000035_support case_000035_rank.val hlt case_000035_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000035_secondLine, FixedRow]
  exact ⟨case_000035_rowFirst, case_000035_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000035_sourceMatches :
    fam_008_desc.SourceMatches case_000035_rank.val case_000035_mask := by
  intro hlt
  have hrank :
      (⟨case_000035_rank.val, hlt⟩ : Fin numPairWords) = case_000035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_seq := by
    simpa [hrank] using case_000035_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000035_seq)
          fam_008_desc.firstIndex = some fam_008_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000035_seq)
          fam_008_desc.secondIndex = some fam_008_support.second := by
    decide
  have hchecks :
      SourceChecks fam_008_support case_000035_rank.val hlt case_000035_mask := by
    simp [SourceChecks, hseq, fam_008_support,
      checkTranslationConstraintSource, case_000035_seq, impactFace]
  exact ⟨
    by simpa [fam_008_desc, hseq] using hfirstIndex,
    by simpa [fam_008_desc, hseq] using hsecondIndex,
    by simpa [fam_008_desc] using hchecks
  ⟩

private theorem case_000035_applies :
    fam_008_desc.Applies case_000035_rank.val case_000035_mask := by
  exact ⟨
    case_000035_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_008_desc, fam_008_support, case_000035_support] using case_000035_rows
  ⟩

private theorem case_000035_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k032.toSourceIndexStateKey
      case_000035_rank.val case_000035_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000035_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_008_desc, fam_008_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_032_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000035_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_008_desc, fam_008_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_032_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000035_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_008_desc, fam_008_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_032_support] using hs.2.2
    }

private theorem case_000035_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k032.toSourceIndexStateKey
      case_000035_rank.val case_000035_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_032_support, case_000035_support] using case_000035_rows)

private theorem case_000035_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k032)
      case_000035_rank.val case_000035_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000035_selectorSourceFacts
    case_000035_selectorRowFacts

private theorem case_000035_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k032) =
      some ClassifierKey.k032 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k032

private def case_000036_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000036_mask : SignMask := ⟨30, by decide⟩
private def case_000036_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000036_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000036_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (52/9) }
private def case_000036_firstLine : StrictLin2 := { a := (-58/37), b := (-58/37), c := (-308/111) }
private def case_000036_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000036_rankWord :
    rankPairWord? case_000036_word = some case_000036_rank := by
  decide

private theorem case_000036_unrank :
    unrankPairWord case_000036_rank = case_000036_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000036_word case_000036_rank).1
    case_000036_rankWord |>.symm

private theorem case_000036_seqChoice :
    translationChoiceSeq case_000036_word case_000036_mask = case_000036_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000036_seqAtRank :
    translationSeqAtRankMask case_000036_rank case_000036_mask = case_000036_seq := by
  rw [translationSeqAtRankMask, case_000036_unrank]
  exact case_000036_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000036_bAtRank :
    translationBAtRankMask case_000036_rank case_000036_mask = case_000036_b := by
  rw [translationBAtRankMask, case_000036_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000036_b, case_000036_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000036_firstLine_eq :
    case_000036_support.firstLine case_000036_seq case_000036_b = case_000036_firstLine := by
  norm_num [case_000036_firstLine, case_000036_support, case_000036_seq, case_000036_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000036_secondLine_eq :
    case_000036_support.secondLine case_000036_seq case_000036_b = case_000036_secondLine := by
  norm_num [case_000036_secondLine, case_000036_support, case_000036_seq, case_000036_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000036_rows :
    EqEqPosVarFirstRows case_000036_support case_000036_rank.val case_000036_mask := by
  intro hlt
  have hrank : (⟨case_000036_rank.val, hlt⟩ : Fin numPairWords) = case_000036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_seq := by
    simpa [hrank] using case_000036_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_b := by
    simpa [hrank] using case_000036_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000036_support case_000036_rank.val hlt
          case_000036_mask = case_000036_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000036_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000036_support case_000036_rank.val hlt
          case_000036_mask = case_000036_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000036_secondLine_eq]
  have case_000036_rowFirst :
      EqEqPosRow (FirstLineAt case_000036_support case_000036_rank.val hlt case_000036_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000036_firstLine, EqEqPosRow]
  have case_000036_fixedSecond :
      FixedRow (SecondLineAt case_000036_support case_000036_rank.val hlt case_000036_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000036_secondLine, FixedRow]
  exact ⟨case_000036_rowFirst, case_000036_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000036_sourceMatches :
    fam_006_desc.SourceMatches case_000036_rank.val case_000036_mask := by
  intro hlt
  have hrank :
      (⟨case_000036_rank.val, hlt⟩ : Fin numPairWords) = case_000036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_seq := by
    simpa [hrank] using case_000036_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000036_seq)
          fam_006_desc.firstIndex = some fam_006_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000036_seq)
          fam_006_desc.secondIndex = some fam_006_support.second := by
    decide
  have hchecks :
      SourceChecks fam_006_support case_000036_rank.val hlt case_000036_mask := by
    simp [SourceChecks, hseq, fam_006_support,
      checkTranslationConstraintSource, case_000036_seq, impactFace]
  exact ⟨
    by simpa [fam_006_desc, hseq] using hfirstIndex,
    by simpa [fam_006_desc, hseq] using hsecondIndex,
    by simpa [fam_006_desc] using hchecks
  ⟩

private theorem case_000036_applies :
    fam_006_desc.Applies case_000036_rank.val case_000036_mask := by
  exact ⟨
    case_000036_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_006_desc, fam_006_support, case_000036_support] using case_000036_rows
  ⟩

private theorem case_000036_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k078.toSourceIndexStateKey
      case_000036_rank.val case_000036_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000036_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_006_desc, fam_006_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_078_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000036_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_006_desc, fam_006_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_078_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000036_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_006_desc, fam_006_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_078_support] using hs.2.2
    }

private theorem case_000036_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k078.toSourceIndexStateKey
      case_000036_rank.val case_000036_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_078_support, case_000036_support] using case_000036_rows)

private theorem case_000036_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k078)
      case_000036_rank.val case_000036_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000036_selectorSourceFacts
    case_000036_selectorRowFacts

private theorem case_000036_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k078) =
      some ClassifierKey.k078 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k078

private def case_000037_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000037_mask : SignMask := ⟨31, by decide⟩
private def case_000037_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000037_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000037_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_000037_firstLine : StrictLin2 := { a := (-29/55), b := (-29/55), c := (-157/55) }
private def case_000037_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000037_rankWord :
    rankPairWord? case_000037_word = some case_000037_rank := by
  decide

private theorem case_000037_unrank :
    unrankPairWord case_000037_rank = case_000037_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000037_word case_000037_rank).1
    case_000037_rankWord |>.symm

private theorem case_000037_seqChoice :
    translationChoiceSeq case_000037_word case_000037_mask = case_000037_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000037_seqAtRank :
    translationSeqAtRankMask case_000037_rank case_000037_mask = case_000037_seq := by
  rw [translationSeqAtRankMask, case_000037_unrank]
  exact case_000037_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000037_bAtRank :
    translationBAtRankMask case_000037_rank case_000037_mask = case_000037_b := by
  rw [translationBAtRankMask, case_000037_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000037_b, case_000037_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000037_firstLine_eq :
    case_000037_support.firstLine case_000037_seq case_000037_b = case_000037_firstLine := by
  norm_num [case_000037_firstLine, case_000037_support, case_000037_seq, case_000037_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000037_secondLine_eq :
    case_000037_support.secondLine case_000037_seq case_000037_b = case_000037_secondLine := by
  norm_num [case_000037_secondLine, case_000037_support, case_000037_seq, case_000037_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000037_rows :
    EqEqPosVarFirstRows case_000037_support case_000037_rank.val case_000037_mask := by
  intro hlt
  have hrank : (⟨case_000037_rank.val, hlt⟩ : Fin numPairWords) = case_000037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_seq := by
    simpa [hrank] using case_000037_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_b := by
    simpa [hrank] using case_000037_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000037_support case_000037_rank.val hlt
          case_000037_mask = case_000037_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000037_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000037_support case_000037_rank.val hlt
          case_000037_mask = case_000037_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000037_secondLine_eq]
  have case_000037_rowFirst :
      EqEqPosRow (FirstLineAt case_000037_support case_000037_rank.val hlt case_000037_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000037_firstLine, EqEqPosRow]
  have case_000037_fixedSecond :
      FixedRow (SecondLineAt case_000037_support case_000037_rank.val hlt case_000037_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000037_secondLine, FixedRow]
  exact ⟨case_000037_rowFirst, case_000037_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000037_sourceMatches :
    fam_001_desc.SourceMatches case_000037_rank.val case_000037_mask := by
  intro hlt
  have hrank :
      (⟨case_000037_rank.val, hlt⟩ : Fin numPairWords) = case_000037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_seq := by
    simpa [hrank] using case_000037_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000037_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000037_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000037_rank.val hlt case_000037_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000037_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000037_applies :
    fam_001_desc.Applies case_000037_rank.val case_000037_mask := by
  exact ⟨
    case_000037_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000037_support] using case_000037_rows
  ⟩

private theorem case_000037_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000037_rank.val case_000037_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000037_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000037_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000037_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support] using hs.2.2
    }

private theorem case_000037_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k004.toSourceIndexStateKey
      case_000037_rank.val case_000037_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_004_support, case_000037_support] using case_000037_rows)

private theorem case_000037_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k004)
      case_000037_rank.val case_000037_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000037_selectorSourceFacts
    case_000037_selectorRowFacts

private theorem case_000037_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k004) =
      some ClassifierKey.k004 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k004

private def case_000038_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000038_mask : SignMask := ⟨45, by decide⟩
private def case_000038_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000038_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000038_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_000038_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_000038_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000038_rankWord :
    rankPairWord? case_000038_word = some case_000038_rank := by
  decide

private theorem case_000038_unrank :
    unrankPairWord case_000038_rank = case_000038_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000038_word case_000038_rank).1
    case_000038_rankWord |>.symm

private theorem case_000038_seqChoice :
    translationChoiceSeq case_000038_word case_000038_mask = case_000038_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000038_seqAtRank :
    translationSeqAtRankMask case_000038_rank case_000038_mask = case_000038_seq := by
  rw [translationSeqAtRankMask, case_000038_unrank]
  exact case_000038_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000038_bAtRank :
    translationBAtRankMask case_000038_rank case_000038_mask = case_000038_b := by
  rw [translationBAtRankMask, case_000038_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000038_b, case_000038_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000038_firstLine_eq :
    case_000038_support.firstLine case_000038_seq case_000038_b = case_000038_firstLine := by
  norm_num [case_000038_firstLine, case_000038_support, case_000038_seq, case_000038_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000038_secondLine_eq :
    case_000038_support.secondLine case_000038_seq case_000038_b = case_000038_secondLine := by
  norm_num [case_000038_secondLine, case_000038_support, case_000038_seq, case_000038_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000038_rows :
    OppMinusOneVarFirstRows case_000038_support case_000038_rank.val case_000038_mask := by
  intro hlt
  have hrank : (⟨case_000038_rank.val, hlt⟩ : Fin numPairWords) = case_000038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_seq := by
    simpa [hrank] using case_000038_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_b := by
    simpa [hrank] using case_000038_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000038_support case_000038_rank.val hlt
          case_000038_mask = case_000038_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000038_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000038_support case_000038_rank.val hlt
          case_000038_mask = case_000038_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000038_secondLine_eq]
  have case_000038_rowFirst :
      OppNegRow (FirstLineAt case_000038_support case_000038_rank.val hlt case_000038_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000038_firstLine, OppNegRow]
  have case_000038_fixedSecond :
      FixedRow (SecondLineAt case_000038_support case_000038_rank.val hlt case_000038_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000038_secondLine, FixedRow]
  exact ⟨case_000038_rowFirst, case_000038_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000038_sourceMatches :
    fam_011_desc.SourceMatches case_000038_rank.val case_000038_mask := by
  intro hlt
  have hrank :
      (⟨case_000038_rank.val, hlt⟩ : Fin numPairWords) = case_000038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_seq := by
    simpa [hrank] using case_000038_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000038_seq)
          fam_011_desc.firstIndex = some fam_011_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000038_seq)
          fam_011_desc.secondIndex = some fam_011_support.second := by
    decide
  have hchecks :
      SourceChecks fam_011_support case_000038_rank.val hlt case_000038_mask := by
    simp [SourceChecks, hseq, fam_011_support,
      checkTranslationConstraintSource, case_000038_seq, impactFace]
  exact ⟨
    by simpa [fam_011_desc, hseq] using hfirstIndex,
    by simpa [fam_011_desc, hseq] using hsecondIndex,
    by simpa [fam_011_desc] using hchecks
  ⟩

private theorem case_000038_applies :
    fam_011_desc.Applies case_000038_rank.val case_000038_mask := by
  exact ⟨
    case_000038_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_011_desc, fam_011_support, case_000038_support] using case_000038_rows
  ⟩

private theorem case_000038_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k002.toSourceIndexStateKey
      case_000038_rank.val case_000038_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000038_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_011_desc, fam_011_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_002_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000038_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_011_desc, fam_011_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_002_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000038_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_011_desc, fam_011_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_002_support] using hs.2.2
    }

private theorem case_000038_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k002.toSourceIndexStateKey
      case_000038_rank.val case_000038_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_002_support, case_000038_support] using case_000038_rows)

private theorem case_000038_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k002)
      case_000038_rank.val case_000038_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000038_selectorSourceFacts
    case_000038_selectorRowFacts

private theorem case_000038_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k002) =
      some ClassifierKey.k002 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k002

private def case_000039_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000039_mask : SignMask := ⟨54, by decide⟩
private def case_000039_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000039_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000039_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (148/9) }
private def case_000039_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_000039_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000039_rankWord :
    rankPairWord? case_000039_word = some case_000039_rank := by
  decide

private theorem case_000039_unrank :
    unrankPairWord case_000039_rank = case_000039_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000039_word case_000039_rank).1
    case_000039_rankWord |>.symm

private theorem case_000039_seqChoice :
    translationChoiceSeq case_000039_word case_000039_mask = case_000039_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000039_seqAtRank :
    translationSeqAtRankMask case_000039_rank case_000039_mask = case_000039_seq := by
  rw [translationSeqAtRankMask, case_000039_unrank]
  exact case_000039_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000039_bAtRank :
    translationBAtRankMask case_000039_rank case_000039_mask = case_000039_b := by
  rw [translationBAtRankMask, case_000039_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000039_b, case_000039_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000039_firstLine_eq :
    case_000039_support.firstLine case_000039_seq case_000039_b = case_000039_firstLine := by
  norm_num [case_000039_firstLine, case_000039_support, case_000039_seq, case_000039_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000039_secondLine_eq :
    case_000039_support.secondLine case_000039_seq case_000039_b = case_000039_secondLine := by
  norm_num [case_000039_secondLine, case_000039_support, case_000039_seq, case_000039_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000039_rows :
    OppOneMinusVarFirstRows case_000039_support case_000039_rank.val case_000039_mask := by
  intro hlt
  have hrank : (⟨case_000039_rank.val, hlt⟩ : Fin numPairWords) = case_000039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_seq := by
    simpa [hrank] using case_000039_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_b := by
    simpa [hrank] using case_000039_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000039_support case_000039_rank.val hlt
          case_000039_mask = case_000039_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000039_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000039_support case_000039_rank.val hlt
          case_000039_mask = case_000039_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000039_secondLine_eq]
  have case_000039_rowFirst :
      OppPosRow (FirstLineAt case_000039_support case_000039_rank.val hlt case_000039_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000039_firstLine, OppPosRow]
  have case_000039_fixedSecond :
      FixedRow (SecondLineAt case_000039_support case_000039_rank.val hlt case_000039_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000039_secondLine, FixedRow]
  exact ⟨case_000039_rowFirst, case_000039_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000039_sourceMatches :
    fam_002_desc.SourceMatches case_000039_rank.val case_000039_mask := by
  intro hlt
  have hrank :
      (⟨case_000039_rank.val, hlt⟩ : Fin numPairWords) = case_000039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_seq := by
    simpa [hrank] using case_000039_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000039_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000039_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000039_rank.val hlt case_000039_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000039_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000039_applies :
    fam_002_desc.Applies case_000039_rank.val case_000039_mask := by
  exact ⟨
    case_000039_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000039_support] using case_000039_rows
  ⟩

private theorem case_000039_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000039_rank.val case_000039_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000039_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000039_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000039_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000039_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000039_rank.val case_000039_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000039_support] using case_000039_rows)

private theorem case_000039_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000039_rank.val case_000039_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000039_selectorSourceFacts
    case_000039_selectorRowFacts

private theorem case_000039_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000040_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000040_mask : SignMask := ⟨55, by decide⟩
private def case_000040_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000040_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000040_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (148/9) }
private def case_000040_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_000040_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000040_rankWord :
    rankPairWord? case_000040_word = some case_000040_rank := by
  decide

private theorem case_000040_unrank :
    unrankPairWord case_000040_rank = case_000040_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000040_word case_000040_rank).1
    case_000040_rankWord |>.symm

private theorem case_000040_seqChoice :
    translationChoiceSeq case_000040_word case_000040_mask = case_000040_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000040_seqAtRank :
    translationSeqAtRankMask case_000040_rank case_000040_mask = case_000040_seq := by
  rw [translationSeqAtRankMask, case_000040_unrank]
  exact case_000040_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000040_bAtRank :
    translationBAtRankMask case_000040_rank case_000040_mask = case_000040_b := by
  rw [translationBAtRankMask, case_000040_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000040_b, case_000040_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000040_firstLine_eq :
    case_000040_support.firstLine case_000040_seq case_000040_b = case_000040_firstLine := by
  norm_num [case_000040_firstLine, case_000040_support, case_000040_seq, case_000040_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000040_secondLine_eq :
    case_000040_support.secondLine case_000040_seq case_000040_b = case_000040_secondLine := by
  norm_num [case_000040_secondLine, case_000040_support, case_000040_seq, case_000040_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000040_rows :
    OppOneMinusVarFirstRows case_000040_support case_000040_rank.val case_000040_mask := by
  intro hlt
  have hrank : (⟨case_000040_rank.val, hlt⟩ : Fin numPairWords) = case_000040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_seq := by
    simpa [hrank] using case_000040_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_b := by
    simpa [hrank] using case_000040_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000040_support case_000040_rank.val hlt
          case_000040_mask = case_000040_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000040_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000040_support case_000040_rank.val hlt
          case_000040_mask = case_000040_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000040_secondLine_eq]
  have case_000040_rowFirst :
      OppPosRow (FirstLineAt case_000040_support case_000040_rank.val hlt case_000040_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000040_firstLine, OppPosRow]
  have case_000040_fixedSecond :
      FixedRow (SecondLineAt case_000040_support case_000040_rank.val hlt case_000040_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000040_secondLine, FixedRow]
  exact ⟨case_000040_rowFirst, case_000040_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000040_sourceMatches :
    fam_002_desc.SourceMatches case_000040_rank.val case_000040_mask := by
  intro hlt
  have hrank :
      (⟨case_000040_rank.val, hlt⟩ : Fin numPairWords) = case_000040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_seq := by
    simpa [hrank] using case_000040_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000040_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000040_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000040_rank.val hlt case_000040_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000040_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000040_applies :
    fam_002_desc.Applies case_000040_rank.val case_000040_mask := by
  exact ⟨
    case_000040_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000040_support] using case_000040_rows
  ⟩

private theorem case_000040_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000040_rank.val case_000040_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000040_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000040_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000040_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000040_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000040_rank.val case_000040_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000040_support] using case_000040_rows)

private theorem case_000040_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000040_rank.val case_000040_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000040_selectorSourceFacts
    case_000040_selectorRowFacts

private theorem case_000040_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000041_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000041_mask : SignMask := ⟨63, by decide⟩
private def case_000041_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000041_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000041_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_000041_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000041_secondLine : StrictLin2 := { a := (-9/100), b := (9/100), c := (-9/50) }

private theorem case_000041_rankWord :
    rankPairWord? case_000041_word = some case_000041_rank := by
  decide

private theorem case_000041_unrank :
    unrankPairWord case_000041_rank = case_000041_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000041_word case_000041_rank).1
    case_000041_rankWord |>.symm

private theorem case_000041_seqChoice :
    translationChoiceSeq case_000041_word case_000041_mask = case_000041_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000041_seqAtRank :
    translationSeqAtRankMask case_000041_rank case_000041_mask = case_000041_seq := by
  rw [translationSeqAtRankMask, case_000041_unrank]
  exact case_000041_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000041_bAtRank :
    translationBAtRankMask case_000041_rank case_000041_mask = case_000041_b := by
  rw [translationBAtRankMask, case_000041_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000041_b, case_000041_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000041_firstLine_eq :
    case_000041_support.firstLine case_000041_seq case_000041_b = case_000041_firstLine := by
  norm_num [case_000041_firstLine, case_000041_support, case_000041_seq, case_000041_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000041_secondLine_eq :
    case_000041_support.secondLine case_000041_seq case_000041_b = case_000041_secondLine := by
  norm_num [case_000041_secondLine, case_000041_support, case_000041_seq, case_000041_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000041_rows :
    OppOneMinusVarSecondRows case_000041_support case_000041_rank.val case_000041_mask := by
  intro hlt
  have hrank : (⟨case_000041_rank.val, hlt⟩ : Fin numPairWords) = case_000041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_seq := by
    simpa [hrank] using case_000041_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_b := by
    simpa [hrank] using case_000041_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000041_support case_000041_rank.val hlt
          case_000041_mask = case_000041_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000041_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000041_support case_000041_rank.val hlt
          case_000041_mask = case_000041_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000041_secondLine_eq]
  have case_000041_fixedFirst :
      FixedRow (FirstLineAt case_000041_support case_000041_rank.val hlt case_000041_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000041_firstLine, FixedRow]
  have case_000041_rowSecond :
      OppPosRow (SecondLineAt case_000041_support case_000041_rank.val hlt case_000041_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000041_secondLine, OppPosRow]
  exact ⟨case_000041_fixedFirst, case_000041_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000041_sourceMatches :
    fam_010_desc.SourceMatches case_000041_rank.val case_000041_mask := by
  intro hlt
  have hrank :
      (⟨case_000041_rank.val, hlt⟩ : Fin numPairWords) = case_000041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_seq := by
    simpa [hrank] using case_000041_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000041_seq)
          fam_010_desc.firstIndex = some fam_010_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000041_seq)
          fam_010_desc.secondIndex = some fam_010_support.second := by
    decide
  have hchecks :
      SourceChecks fam_010_support case_000041_rank.val hlt case_000041_mask := by
    simp [SourceChecks, hseq, fam_010_support,
      checkTranslationConstraintSource, case_000041_seq, impactFace]
  exact ⟨
    by simpa [fam_010_desc, hseq] using hfirstIndex,
    by simpa [fam_010_desc, hseq] using hsecondIndex,
    by simpa [fam_010_desc] using hchecks
  ⟩

private theorem case_000041_applies :
    fam_010_desc.Applies case_000041_rank.val case_000041_mask := by
  exact ⟨
    case_000041_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_010_desc, fam_010_support, case_000041_support] using case_000041_rows
  ⟩

private theorem case_000041_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k014.toSourceIndexStateKey
      case_000041_rank.val case_000041_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000041_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_014_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000041_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_014_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000041_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_014_support] using hs.2.2
    }

private theorem case_000041_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k014.toSourceIndexStateKey
      case_000041_rank.val case_000041_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_014_support, case_000041_support] using case_000041_rows)

private theorem case_000041_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k014)
      case_000041_rank.val case_000041_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000041_selectorSourceFacts
    case_000041_selectorRowFacts

private theorem case_000041_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k014) =
      some ClassifierKey.k014 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k014

/-- Positive GoodDirection survivor cases represented in this shard. -/
inductive SelectorPositiveCase : Nat -> SignMask -> Prop
  | c000 : SelectorPositiveCase 3 (⟨16, by decide⟩ : SignMask)
  | c001 : SelectorPositiveCase 3 (⟨18, by decide⟩ : SignMask)
  | c002 : SelectorPositiveCase 3 (⟨22, by decide⟩ : SignMask)
  | c003 : SelectorPositiveCase 3 (⟨28, by decide⟩ : SignMask)
  | c004 : SelectorPositiveCase 3 (⟨30, by decide⟩ : SignMask)
  | c005 : SelectorPositiveCase 3 (⟨31, by decide⟩ : SignMask)
  | c006 : SelectorPositiveCase 3 (⟨45, by decide⟩ : SignMask)
  | c007 : SelectorPositiveCase 3 (⟨54, by decide⟩ : SignMask)
  | c008 : SelectorPositiveCase 3 (⟨55, by decide⟩ : SignMask)
  | c009 : SelectorPositiveCase 3 (⟨63, by decide⟩ : SignMask)

theorem selectorPositiveLookup
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    ∃ key : ClassifierKey,
      keyOfSelectorCoordinate? (selectorCoordAt rank mask) = some key := by
  cases hcase with
  | c000 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000032_selectorLookup⟩
  | c001 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000033_selectorLookup⟩
  | c002 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000034_selectorLookup⟩
  | c003 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000035_selectorLookup⟩
  | c004 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000036_selectorLookup⟩
  | c005 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000037_selectorLookup⟩
  | c006 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000038_selectorLookup⟩
  | c007 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000039_selectorLookup⟩
  | c008 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000040_selectorLookup⟩
  | c009 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000041_selectorLookup⟩

theorem selectorPositiveSourceRowFacts
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    SelectorCoordinateSourceRowFacts (selectorCoordAt rank mask)
      rank mask := by
  cases hcase with
  | c000 =>
      simpa [selectorCoordAt, case_000032_rank, case_000032_mask] using case_000032_selectorSourceRowFacts
  | c001 =>
      simpa [selectorCoordAt, case_000033_rank, case_000033_mask] using case_000033_selectorSourceRowFacts
  | c002 =>
      simpa [selectorCoordAt, case_000034_rank, case_000034_mask] using case_000034_selectorSourceRowFacts
  | c003 =>
      simpa [selectorCoordAt, case_000035_rank, case_000035_mask] using case_000035_selectorSourceRowFacts
  | c004 =>
      simpa [selectorCoordAt, case_000036_rank, case_000036_mask] using case_000036_selectorSourceRowFacts
  | c005 =>
      simpa [selectorCoordAt, case_000037_rank, case_000037_mask] using case_000037_selectorSourceRowFacts
  | c006 =>
      simpa [selectorCoordAt, case_000038_rank, case_000038_mask] using case_000038_selectorSourceRowFacts
  | c007 =>
      simpa [selectorCoordAt, case_000039_rank, case_000039_mask] using case_000039_selectorSourceRowFacts
  | c008 =>
      simpa [selectorCoordAt, case_000040_rank, case_000040_mask] using case_000040_selectorSourceRowFacts
  | c009 =>
      simpa [selectorCoordAt, case_000041_rank, case_000041_mask] using case_000041_selectorSourceRowFacts

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002
