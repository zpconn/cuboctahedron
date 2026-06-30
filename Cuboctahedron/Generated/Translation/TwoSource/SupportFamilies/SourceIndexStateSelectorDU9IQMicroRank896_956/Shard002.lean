import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-!
Generated DU.9L selector-coordinate positive-survivor micro-shard.

This file is bounded telemetry.  It proves selector lookup and public
source/row facts only for emitted GoodDirection survivor cases.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard002

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
  if rank = 911 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 911 ∧ mask.val = 55 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 911 ∧ mask.val = 57 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 911 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k010 else
  if rank = 955 ∧ mask.val = 16 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 955 ∧ mask.val = 18 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 955 ∧ mask.val = 22 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 955 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 955 ∧ mask.val = 56 then selectorCoordinateOfKey ClassifierKey.k063 else
  if rank = 955 ∧ mask.val = 57 then selectorCoordinateOfKey ClassifierKey.k012 else
  if rank = 955 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k010 else
  selectorCoordinateOfKey ClassifierKey.k000

/-- Source-index/state bounded coverage descriptor `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded cases: 20. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded cases: 9. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_001_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Source-index/state bounded coverage descriptor `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded cases: 7. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_002_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 7
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Source-index/state bounded coverage descriptor `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded cases: 6. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_003_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 13
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Source-index/state bounded coverage descriptor `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded cases: 3. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_004_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 0
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded cases: 3. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_005_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 0
  support := fam_005_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded cases: 3. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_006_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 0
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded cases: 3. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_007_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 1
  support := fam_007_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Source-index/state bounded coverage descriptor `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded cases: 3. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_008_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 2
  support := fam_008_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Source-index/state bounded coverage descriptor `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded cases: 3. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_009_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 25
  secondIndex := 2
  support := fam_009_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Source-index/state bounded coverage descriptor `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded cases: 2. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_010_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 26
  secondIndex := 3
  support := fam_010_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Source-index/state bounded coverage descriptor `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded cases: 2. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_011_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 121
  secondIndex := 0
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded cases: 2. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_012_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 161
  secondIndex := 0
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded cases: 2. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_013_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 14
  support := fam_013_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Source-index/state bounded coverage descriptor `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded cases: 2. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_014_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 10
  support := fam_014_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Source-index/state bounded coverage descriptor `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded cases: 2. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_015_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 2
  support := fam_015_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Source-index/state bounded coverage descriptor `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded cases: 1. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_016_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_016_support
  template := SourceIndexTemplate.axisAOnly

/-- Source-index/state bounded coverage descriptor `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded cases: 1. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_017_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 183
  secondIndex := 0
  support := fam_017_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded cases: 1. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_018_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 16
  support := fam_018_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

private def case_000064_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000064_mask : SignMask := ⟨54, by decide⟩
private def case_000064_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000064_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000064_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (116/9) }
private def case_000064_firstLine : StrictLin2 := { a := -1, b := 1, c := (-55/13) }
private def case_000064_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000064_rankWord :
    rankPairWord? case_000064_word = some case_000064_rank := by
  decide

private theorem case_000064_unrank :
    unrankPairWord case_000064_rank = case_000064_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000064_word case_000064_rank).1
    case_000064_rankWord |>.symm

private theorem case_000064_seqChoice :
    translationChoiceSeq case_000064_word case_000064_mask = case_000064_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000064_seqAtRank :
    translationSeqAtRankMask case_000064_rank case_000064_mask = case_000064_seq := by
  rw [translationSeqAtRankMask, case_000064_unrank]
  exact case_000064_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000064_bAtRank :
    translationBAtRankMask case_000064_rank case_000064_mask = case_000064_b := by
  rw [translationBAtRankMask, case_000064_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000064_b, case_000064_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000064_firstLine_eq :
    case_000064_support.firstLine case_000064_seq case_000064_b = case_000064_firstLine := by
  norm_num [case_000064_firstLine, case_000064_support, case_000064_seq, case_000064_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000064_secondLine_eq :
    case_000064_support.secondLine case_000064_seq case_000064_b = case_000064_secondLine := by
  norm_num [case_000064_secondLine, case_000064_support, case_000064_seq, case_000064_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000064_rows :
    OppOneMinusVarFirstRows case_000064_support case_000064_rank.val case_000064_mask := by
  intro hlt
  have hrank : (⟨case_000064_rank.val, hlt⟩ : Fin numPairWords) = case_000064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_seq := by
    simpa [hrank] using case_000064_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_b := by
    simpa [hrank] using case_000064_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000064_support case_000064_rank.val hlt
          case_000064_mask = case_000064_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000064_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000064_support case_000064_rank.val hlt
          case_000064_mask = case_000064_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000064_secondLine_eq]
  have case_000064_rowFirst :
      OppPosRow (FirstLineAt case_000064_support case_000064_rank.val hlt case_000064_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000064_firstLine, OppPosRow]
  have case_000064_fixedSecond :
      FixedRow (SecondLineAt case_000064_support case_000064_rank.val hlt case_000064_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000064_secondLine, FixedRow]
  exact ⟨case_000064_rowFirst, case_000064_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000064_sourceMatches :
    fam_001_desc.SourceMatches case_000064_rank.val case_000064_mask := by
  intro hlt
  have hrank :
      (⟨case_000064_rank.val, hlt⟩ : Fin numPairWords) = case_000064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_seq := by
    simpa [hrank] using case_000064_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000064_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000064_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000064_rank.val hlt case_000064_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000064_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000064_applies :
    fam_001_desc.Applies case_000064_rank.val case_000064_mask := by
  exact ⟨
    case_000064_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000064_support] using case_000064_rows
  ⟩

private theorem case_000064_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000064_rank.val case_000064_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000064_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000064_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000064_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000064_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000064_rank.val case_000064_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000064_support] using case_000064_rows)

private theorem case_000064_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000064_rank.val case_000064_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000064_selectorSourceFacts
    case_000064_selectorRowFacts

private theorem case_000064_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000065_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000065_mask : SignMask := ⟨55, by decide⟩
private def case_000065_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000065_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000065_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000065_firstLine : StrictLin2 := { a := -1, b := 1, c := (-19/13) }
private def case_000065_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000065_rankWord :
    rankPairWord? case_000065_word = some case_000065_rank := by
  decide

private theorem case_000065_unrank :
    unrankPairWord case_000065_rank = case_000065_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000065_word case_000065_rank).1
    case_000065_rankWord |>.symm

private theorem case_000065_seqChoice :
    translationChoiceSeq case_000065_word case_000065_mask = case_000065_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000065_seqAtRank :
    translationSeqAtRankMask case_000065_rank case_000065_mask = case_000065_seq := by
  rw [translationSeqAtRankMask, case_000065_unrank]
  exact case_000065_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000065_bAtRank :
    translationBAtRankMask case_000065_rank case_000065_mask = case_000065_b := by
  rw [translationBAtRankMask, case_000065_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000065_b, case_000065_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000065_firstLine_eq :
    case_000065_support.firstLine case_000065_seq case_000065_b = case_000065_firstLine := by
  norm_num [case_000065_firstLine, case_000065_support, case_000065_seq, case_000065_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000065_secondLine_eq :
    case_000065_support.secondLine case_000065_seq case_000065_b = case_000065_secondLine := by
  norm_num [case_000065_secondLine, case_000065_support, case_000065_seq, case_000065_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000065_rows :
    OppOneMinusVarFirstRows case_000065_support case_000065_rank.val case_000065_mask := by
  intro hlt
  have hrank : (⟨case_000065_rank.val, hlt⟩ : Fin numPairWords) = case_000065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_seq := by
    simpa [hrank] using case_000065_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_b := by
    simpa [hrank] using case_000065_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000065_support case_000065_rank.val hlt
          case_000065_mask = case_000065_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000065_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000065_support case_000065_rank.val hlt
          case_000065_mask = case_000065_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000065_secondLine_eq]
  have case_000065_rowFirst :
      OppPosRow (FirstLineAt case_000065_support case_000065_rank.val hlt case_000065_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000065_firstLine, OppPosRow]
  have case_000065_fixedSecond :
      FixedRow (SecondLineAt case_000065_support case_000065_rank.val hlt case_000065_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000065_secondLine, FixedRow]
  exact ⟨case_000065_rowFirst, case_000065_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000065_sourceMatches :
    fam_001_desc.SourceMatches case_000065_rank.val case_000065_mask := by
  intro hlt
  have hrank :
      (⟨case_000065_rank.val, hlt⟩ : Fin numPairWords) = case_000065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_seq := by
    simpa [hrank] using case_000065_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000065_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000065_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000065_rank.val hlt case_000065_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000065_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000065_applies :
    fam_001_desc.Applies case_000065_rank.val case_000065_mask := by
  exact ⟨
    case_000065_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000065_support] using case_000065_rows
  ⟩

private theorem case_000065_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000065_rank.val case_000065_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000065_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000065_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000065_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000065_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000065_rank.val case_000065_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000065_support] using case_000065_rows)

private theorem case_000065_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000065_rank.val case_000065_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000065_selectorSourceFacts
    case_000065_selectorRowFacts

private theorem case_000065_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000066_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000066_mask : SignMask := ⟨57, by decide⟩
private def case_000066_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000066_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000066_b : Vec3 Rat := { x := (-412/27), y := (220/27), z := (-220/27) }
private def case_000066_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000066_secondLine : StrictLin2 := { a := (-27/220), b := (-27/220), c := (-27/110) }

private theorem case_000066_rankWord :
    rankPairWord? case_000066_word = some case_000066_rank := by
  decide

private theorem case_000066_unrank :
    unrankPairWord case_000066_rank = case_000066_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000066_word case_000066_rank).1
    case_000066_rankWord |>.symm

private theorem case_000066_seqChoice :
    translationChoiceSeq case_000066_word case_000066_mask = case_000066_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000066_seqAtRank :
    translationSeqAtRankMask case_000066_rank case_000066_mask = case_000066_seq := by
  rw [translationSeqAtRankMask, case_000066_unrank]
  exact case_000066_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000066_bAtRank :
    translationBAtRankMask case_000066_rank case_000066_mask = case_000066_b := by
  rw [translationBAtRankMask, case_000066_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000066_b, case_000066_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000066_firstLine_eq :
    case_000066_support.firstLine case_000066_seq case_000066_b = case_000066_firstLine := by
  norm_num [case_000066_firstLine, case_000066_support, case_000066_seq, case_000066_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000066_secondLine_eq :
    case_000066_support.secondLine case_000066_seq case_000066_b = case_000066_secondLine := by
  norm_num [case_000066_secondLine, case_000066_support, case_000066_seq, case_000066_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000066_rows :
    EqEqPosVarSecondRows case_000066_support case_000066_rank.val case_000066_mask := by
  intro hlt
  have hrank : (⟨case_000066_rank.val, hlt⟩ : Fin numPairWords) = case_000066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_seq := by
    simpa [hrank] using case_000066_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_b := by
    simpa [hrank] using case_000066_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000066_support case_000066_rank.val hlt
          case_000066_mask = case_000066_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000066_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000066_support case_000066_rank.val hlt
          case_000066_mask = case_000066_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000066_secondLine_eq]
  have case_000066_fixedFirst :
      FixedRow (FirstLineAt case_000066_support case_000066_rank.val hlt case_000066_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000066_firstLine, FixedRow]
  have case_000066_rowSecond :
      EqEqPosRow (SecondLineAt case_000066_support case_000066_rank.val hlt case_000066_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000066_secondLine, EqEqPosRow]
  exact ⟨case_000066_fixedFirst, case_000066_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000066_sourceMatches :
    fam_002_desc.SourceMatches case_000066_rank.val case_000066_mask := by
  intro hlt
  have hrank :
      (⟨case_000066_rank.val, hlt⟩ : Fin numPairWords) = case_000066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_seq := by
    simpa [hrank] using case_000066_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000066_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000066_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000066_rank.val hlt case_000066_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000066_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000066_applies :
    fam_002_desc.Applies case_000066_rank.val case_000066_mask := by
  exact ⟨
    case_000066_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000066_support] using case_000066_rows
  ⟩

private theorem case_000066_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000066_rank.val case_000066_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000066_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000066_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000066_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000066_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000066_rank.val case_000066_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000066_support] using case_000066_rows)

private theorem case_000066_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000066_rank.val case_000066_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000066_selectorSourceFacts
    case_000066_selectorRowFacts

private theorem case_000066_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

private def case_000067_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000067_mask : SignMask := ⟨63, by decide⟩
private def case_000067_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000067_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000067_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000067_firstLine : StrictLin2 := { a := 1, b := 1, c := (-59/25) }
private def case_000067_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000067_rankWord :
    rankPairWord? case_000067_word = some case_000067_rank := by
  decide

private theorem case_000067_unrank :
    unrankPairWord case_000067_rank = case_000067_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000067_word case_000067_rank).1
    case_000067_rankWord |>.symm

private theorem case_000067_seqChoice :
    translationChoiceSeq case_000067_word case_000067_mask = case_000067_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000067_seqAtRank :
    translationSeqAtRankMask case_000067_rank case_000067_mask = case_000067_seq := by
  rw [translationSeqAtRankMask, case_000067_unrank]
  exact case_000067_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000067_bAtRank :
    translationBAtRankMask case_000067_rank case_000067_mask = case_000067_b := by
  rw [translationBAtRankMask, case_000067_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000067_b, case_000067_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000067_firstLine_eq :
    case_000067_support.firstLine case_000067_seq case_000067_b = case_000067_firstLine := by
  norm_num [case_000067_firstLine, case_000067_support, case_000067_seq, case_000067_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000067_secondLine_eq :
    case_000067_support.secondLine case_000067_seq case_000067_b = case_000067_secondLine := by
  norm_num [case_000067_secondLine, case_000067_support, case_000067_seq, case_000067_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000067_rows :
    EqEqNegVarFirstRows case_000067_support case_000067_rank.val case_000067_mask := by
  intro hlt
  have hrank : (⟨case_000067_rank.val, hlt⟩ : Fin numPairWords) = case_000067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_seq := by
    simpa [hrank] using case_000067_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_b := by
    simpa [hrank] using case_000067_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000067_support case_000067_rank.val hlt
          case_000067_mask = case_000067_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000067_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000067_support case_000067_rank.val hlt
          case_000067_mask = case_000067_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000067_secondLine_eq]
  have case_000067_rowFirst :
      EqEqNegRow (FirstLineAt case_000067_support case_000067_rank.val hlt case_000067_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000067_firstLine, EqEqNegRow]
  have case_000067_fixedSecond :
      FixedRow (SecondLineAt case_000067_support case_000067_rank.val hlt case_000067_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000067_secondLine, FixedRow]
  exact ⟨case_000067_rowFirst, case_000067_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000067_sourceMatches :
    fam_010_desc.SourceMatches case_000067_rank.val case_000067_mask := by
  intro hlt
  have hrank :
      (⟨case_000067_rank.val, hlt⟩ : Fin numPairWords) = case_000067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_seq := by
    simpa [hrank] using case_000067_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000067_seq)
          fam_010_desc.firstIndex = some fam_010_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000067_seq)
          fam_010_desc.secondIndex = some fam_010_support.second := by
    decide
  have hchecks :
      SourceChecks fam_010_support case_000067_rank.val hlt case_000067_mask := by
    simp [SourceChecks, hseq, fam_010_support,
      checkTranslationConstraintSource, case_000067_seq, impactFace]
  exact ⟨
    by simpa [fam_010_desc, hseq] using hfirstIndex,
    by simpa [fam_010_desc, hseq] using hsecondIndex,
    by simpa [fam_010_desc] using hchecks
  ⟩

private theorem case_000067_applies :
    fam_010_desc.Applies case_000067_rank.val case_000067_mask := by
  exact ⟨
    case_000067_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_010_desc, fam_010_support, case_000067_support] using case_000067_rows
  ⟩

private theorem case_000067_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k010.toSourceIndexStateKey
      case_000067_rank.val case_000067_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000067_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000067_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000067_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support] using hs.2.2
    }

private theorem case_000067_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k010.toSourceIndexStateKey
      case_000067_rank.val case_000067_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support, case_000067_support] using case_000067_rows)

private theorem case_000067_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k010)
      case_000067_rank.val case_000067_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000067_selectorSourceFacts
    case_000067_selectorRowFacts

private theorem case_000067_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k010) =
      some ClassifierKey.k010 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k010

private def case_000068_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_000068_mask : SignMask := ⟨16, by decide⟩
private def case_000068_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000068_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000068_b : Vec3 Rat := { x := (-356/81), y := (-964/81), z := (-260/81) }
private def case_000068_firstLine : StrictLin2 := { a := -1, b := -1, c := (-523/89) }
private def case_000068_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000068_rankWord :
    rankPairWord? case_000068_word = some case_000068_rank := by
  decide

private theorem case_000068_unrank :
    unrankPairWord case_000068_rank = case_000068_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000068_word case_000068_rank).1
    case_000068_rankWord |>.symm

private theorem case_000068_seqChoice :
    translationChoiceSeq case_000068_word case_000068_mask = case_000068_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000068_seqAtRank :
    translationSeqAtRankMask case_000068_rank case_000068_mask = case_000068_seq := by
  rw [translationSeqAtRankMask, case_000068_unrank]
  exact case_000068_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000068_bAtRank :
    translationBAtRankMask case_000068_rank case_000068_mask = case_000068_b := by
  rw [translationBAtRankMask, case_000068_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000068_b, case_000068_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000068_firstLine_eq :
    case_000068_support.firstLine case_000068_seq case_000068_b = case_000068_firstLine := by
  norm_num [case_000068_firstLine, case_000068_support, case_000068_seq, case_000068_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000068_secondLine_eq :
    case_000068_support.secondLine case_000068_seq case_000068_b = case_000068_secondLine := by
  norm_num [case_000068_secondLine, case_000068_support, case_000068_seq, case_000068_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000068_rows :
    EqEqPosVarFirstRows case_000068_support case_000068_rank.val case_000068_mask := by
  intro hlt
  have hrank : (⟨case_000068_rank.val, hlt⟩ : Fin numPairWords) = case_000068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_seq := by
    simpa [hrank] using case_000068_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_b := by
    simpa [hrank] using case_000068_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000068_support case_000068_rank.val hlt
          case_000068_mask = case_000068_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000068_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000068_support case_000068_rank.val hlt
          case_000068_mask = case_000068_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000068_secondLine_eq]
  have case_000068_rowFirst :
      EqEqPosRow (FirstLineAt case_000068_support case_000068_rank.val hlt case_000068_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000068_firstLine, EqEqPosRow]
  have case_000068_fixedSecond :
      FixedRow (SecondLineAt case_000068_support case_000068_rank.val hlt case_000068_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000068_secondLine, FixedRow]
  exact ⟨case_000068_rowFirst, case_000068_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000068_sourceMatches :
    fam_000_desc.SourceMatches case_000068_rank.val case_000068_mask := by
  intro hlt
  have hrank :
      (⟨case_000068_rank.val, hlt⟩ : Fin numPairWords) = case_000068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_seq := by
    simpa [hrank] using case_000068_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000068_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000068_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000068_rank.val hlt case_000068_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000068_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000068_applies :
    fam_000_desc.Applies case_000068_rank.val case_000068_mask := by
  exact ⟨
    case_000068_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000068_support] using case_000068_rows
  ⟩

private theorem case_000068_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000068_rank.val case_000068_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000068_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000068_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000068_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000068_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000068_rank.val case_000068_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000068_support] using case_000068_rows)

private theorem case_000068_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000068_rank.val case_000068_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000068_selectorSourceFacts
    case_000068_selectorRowFacts

private theorem case_000068_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000069_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_000069_mask : SignMask := ⟨18, by decide⟩
private def case_000069_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000069_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000069_b : Vec3 Rat := { x := (-356/81), y := (-964/81), z := (388/81) }
private def case_000069_firstLine : StrictLin2 := { a := -1, b := -1, c := (-199/89) }
private def case_000069_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000069_rankWord :
    rankPairWord? case_000069_word = some case_000069_rank := by
  decide

private theorem case_000069_unrank :
    unrankPairWord case_000069_rank = case_000069_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000069_word case_000069_rank).1
    case_000069_rankWord |>.symm

private theorem case_000069_seqChoice :
    translationChoiceSeq case_000069_word case_000069_mask = case_000069_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000069_seqAtRank :
    translationSeqAtRankMask case_000069_rank case_000069_mask = case_000069_seq := by
  rw [translationSeqAtRankMask, case_000069_unrank]
  exact case_000069_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000069_bAtRank :
    translationBAtRankMask case_000069_rank case_000069_mask = case_000069_b := by
  rw [translationBAtRankMask, case_000069_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000069_b, case_000069_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000069_firstLine_eq :
    case_000069_support.firstLine case_000069_seq case_000069_b = case_000069_firstLine := by
  norm_num [case_000069_firstLine, case_000069_support, case_000069_seq, case_000069_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000069_secondLine_eq :
    case_000069_support.secondLine case_000069_seq case_000069_b = case_000069_secondLine := by
  norm_num [case_000069_secondLine, case_000069_support, case_000069_seq, case_000069_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000069_rows :
    EqEqPosVarFirstRows case_000069_support case_000069_rank.val case_000069_mask := by
  intro hlt
  have hrank : (⟨case_000069_rank.val, hlt⟩ : Fin numPairWords) = case_000069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_seq := by
    simpa [hrank] using case_000069_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_b := by
    simpa [hrank] using case_000069_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000069_support case_000069_rank.val hlt
          case_000069_mask = case_000069_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000069_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000069_support case_000069_rank.val hlt
          case_000069_mask = case_000069_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000069_secondLine_eq]
  have case_000069_rowFirst :
      EqEqPosRow (FirstLineAt case_000069_support case_000069_rank.val hlt case_000069_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000069_firstLine, EqEqPosRow]
  have case_000069_fixedSecond :
      FixedRow (SecondLineAt case_000069_support case_000069_rank.val hlt case_000069_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000069_secondLine, FixedRow]
  exact ⟨case_000069_rowFirst, case_000069_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000069_sourceMatches :
    fam_000_desc.SourceMatches case_000069_rank.val case_000069_mask := by
  intro hlt
  have hrank :
      (⟨case_000069_rank.val, hlt⟩ : Fin numPairWords) = case_000069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_seq := by
    simpa [hrank] using case_000069_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000069_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000069_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000069_rank.val hlt case_000069_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000069_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000069_applies :
    fam_000_desc.Applies case_000069_rank.val case_000069_mask := by
  exact ⟨
    case_000069_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000069_support] using case_000069_rows
  ⟩

private theorem case_000069_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000069_rank.val case_000069_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000069_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000069_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000069_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000069_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000069_rank.val case_000069_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000069_support] using case_000069_rows)

private theorem case_000069_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000069_rank.val case_000069_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000069_selectorSourceFacts
    case_000069_selectorRowFacts

private theorem case_000069_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000070_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_000070_mask : SignMask := ⟨22, by decide⟩
private def case_000070_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000070_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000070_b : Vec3 Rat := { x := (-20/81), y := (-724/81), z := (1012/81) }
private def case_000070_firstLine : StrictLin2 := { a := -1, b := 1, c := (-863/5) }
private def case_000070_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000070_rankWord :
    rankPairWord? case_000070_word = some case_000070_rank := by
  decide

private theorem case_000070_unrank :
    unrankPairWord case_000070_rank = case_000070_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000070_word case_000070_rank).1
    case_000070_rankWord |>.symm

private theorem case_000070_seqChoice :
    translationChoiceSeq case_000070_word case_000070_mask = case_000070_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000070_seqAtRank :
    translationSeqAtRankMask case_000070_rank case_000070_mask = case_000070_seq := by
  rw [translationSeqAtRankMask, case_000070_unrank]
  exact case_000070_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000070_bAtRank :
    translationBAtRankMask case_000070_rank case_000070_mask = case_000070_b := by
  rw [translationBAtRankMask, case_000070_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000070_b, case_000070_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000070_firstLine_eq :
    case_000070_support.firstLine case_000070_seq case_000070_b = case_000070_firstLine := by
  norm_num [case_000070_firstLine, case_000070_support, case_000070_seq, case_000070_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000070_secondLine_eq :
    case_000070_support.secondLine case_000070_seq case_000070_b = case_000070_secondLine := by
  norm_num [case_000070_secondLine, case_000070_support, case_000070_seq, case_000070_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000070_rows :
    OppOneMinusVarFirstRows case_000070_support case_000070_rank.val case_000070_mask := by
  intro hlt
  have hrank : (⟨case_000070_rank.val, hlt⟩ : Fin numPairWords) = case_000070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_seq := by
    simpa [hrank] using case_000070_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_b := by
    simpa [hrank] using case_000070_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000070_support case_000070_rank.val hlt
          case_000070_mask = case_000070_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000070_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000070_support case_000070_rank.val hlt
          case_000070_mask = case_000070_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000070_secondLine_eq]
  have case_000070_rowFirst :
      OppPosRow (FirstLineAt case_000070_support case_000070_rank.val hlt case_000070_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000070_firstLine, OppPosRow]
  have case_000070_fixedSecond :
      FixedRow (SecondLineAt case_000070_support case_000070_rank.val hlt case_000070_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000070_secondLine, FixedRow]
  exact ⟨case_000070_rowFirst, case_000070_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000070_sourceMatches :
    fam_001_desc.SourceMatches case_000070_rank.val case_000070_mask := by
  intro hlt
  have hrank :
      (⟨case_000070_rank.val, hlt⟩ : Fin numPairWords) = case_000070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_seq := by
    simpa [hrank] using case_000070_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000070_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000070_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000070_rank.val hlt case_000070_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000070_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000070_applies :
    fam_001_desc.Applies case_000070_rank.val case_000070_mask := by
  exact ⟨
    case_000070_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000070_support] using case_000070_rows
  ⟩

private theorem case_000070_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000070_rank.val case_000070_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000070_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000070_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000070_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000070_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000070_rank.val case_000070_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000070_support] using case_000070_rows)

private theorem case_000070_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000070_rank.val case_000070_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000070_selectorSourceFacts
    case_000070_selectorRowFacts

private theorem case_000070_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000071_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_000071_mask : SignMask := ⟨54, by decide⟩
private def case_000071_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000071_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000071_b : Vec3 Rat := { x := (-580/81), y := (-260/81), z := (836/81) }
private def case_000071_firstLine : StrictLin2 := { a := -1, b := 1, c := (-403/145) }
private def case_000071_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000071_rankWord :
    rankPairWord? case_000071_word = some case_000071_rank := by
  decide

private theorem case_000071_unrank :
    unrankPairWord case_000071_rank = case_000071_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000071_word case_000071_rank).1
    case_000071_rankWord |>.symm

private theorem case_000071_seqChoice :
    translationChoiceSeq case_000071_word case_000071_mask = case_000071_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000071_seqAtRank :
    translationSeqAtRankMask case_000071_rank case_000071_mask = case_000071_seq := by
  rw [translationSeqAtRankMask, case_000071_unrank]
  exact case_000071_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000071_bAtRank :
    translationBAtRankMask case_000071_rank case_000071_mask = case_000071_b := by
  rw [translationBAtRankMask, case_000071_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000071_b, case_000071_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000071_firstLine_eq :
    case_000071_support.firstLine case_000071_seq case_000071_b = case_000071_firstLine := by
  norm_num [case_000071_firstLine, case_000071_support, case_000071_seq, case_000071_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000071_secondLine_eq :
    case_000071_support.secondLine case_000071_seq case_000071_b = case_000071_secondLine := by
  norm_num [case_000071_secondLine, case_000071_support, case_000071_seq, case_000071_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000071_rows :
    OppOneMinusVarFirstRows case_000071_support case_000071_rank.val case_000071_mask := by
  intro hlt
  have hrank : (⟨case_000071_rank.val, hlt⟩ : Fin numPairWords) = case_000071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_seq := by
    simpa [hrank] using case_000071_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_b := by
    simpa [hrank] using case_000071_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000071_support case_000071_rank.val hlt
          case_000071_mask = case_000071_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000071_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000071_support case_000071_rank.val hlt
          case_000071_mask = case_000071_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000071_secondLine_eq]
  have case_000071_rowFirst :
      OppPosRow (FirstLineAt case_000071_support case_000071_rank.val hlt case_000071_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000071_firstLine, OppPosRow]
  have case_000071_fixedSecond :
      FixedRow (SecondLineAt case_000071_support case_000071_rank.val hlt case_000071_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000071_secondLine, FixedRow]
  exact ⟨case_000071_rowFirst, case_000071_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000071_sourceMatches :
    fam_001_desc.SourceMatches case_000071_rank.val case_000071_mask := by
  intro hlt
  have hrank :
      (⟨case_000071_rank.val, hlt⟩ : Fin numPairWords) = case_000071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_seq := by
    simpa [hrank] using case_000071_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000071_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000071_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000071_rank.val hlt case_000071_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000071_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000071_applies :
    fam_001_desc.Applies case_000071_rank.val case_000071_mask := by
  exact ⟨
    case_000071_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000071_support] using case_000071_rows
  ⟩

private theorem case_000071_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000071_rank.val case_000071_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000071_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000071_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000071_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000071_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000071_rank.val case_000071_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000071_support] using case_000071_rows)

private theorem case_000071_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000071_rank.val case_000071_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000071_selectorSourceFacts
    case_000071_selectorRowFacts

private theorem case_000071_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000072_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_000072_mask : SignMask := ⟨56, by decide⟩
private def case_000072_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000072_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000072_b : Vec3 Rat := { x := (-1348/81), y := (-68/81), z := (-868/81) }
private def case_000072_firstLine : StrictLin2 := { a := (337/17), b := 0, c := (-943/17) }
private def case_000072_secondLine : StrictLin2 := { a := (-81/68), b := 0, c := (24543/22916) }

private theorem case_000072_rankWord :
    rankPairWord? case_000072_word = some case_000072_rank := by
  decide

private theorem case_000072_unrank :
    unrankPairWord case_000072_rank = case_000072_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000072_word case_000072_rank).1
    case_000072_rankWord |>.symm

private theorem case_000072_seqChoice :
    translationChoiceSeq case_000072_word case_000072_mask = case_000072_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000072_seqAtRank :
    translationSeqAtRankMask case_000072_rank case_000072_mask = case_000072_seq := by
  rw [translationSeqAtRankMask, case_000072_unrank]
  exact case_000072_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000072_bAtRank :
    translationBAtRankMask case_000072_rank case_000072_mask = case_000072_b := by
  rw [translationBAtRankMask, case_000072_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000072_b, case_000072_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000072_firstLine_eq :
    case_000072_support.firstLine case_000072_seq case_000072_b = case_000072_firstLine := by
  norm_num [case_000072_firstLine, case_000072_support, case_000072_seq, case_000072_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000072_secondLine_eq :
    case_000072_support.secondLine case_000072_seq case_000072_b = case_000072_secondLine := by
  norm_num [case_000072_secondLine, case_000072_support, case_000072_seq, case_000072_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000072_rows :
    AxisAOnlyRows case_000072_support case_000072_rank.val case_000072_mask := by
  intro hlt
  have hrank : (⟨case_000072_rank.val, hlt⟩ : Fin numPairWords) = case_000072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_seq := by
    simpa [hrank] using case_000072_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_b := by
    simpa [hrank] using case_000072_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000072_support case_000072_rank.val hlt
          case_000072_mask = case_000072_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000072_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000072_support case_000072_rank.val hlt
          case_000072_mask = case_000072_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000072_secondLine_eq]
  have case_000072_firstBZero :
      (FirstLineAt case_000072_support case_000072_rank.val hlt case_000072_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000072_firstLine]
  have case_000072_secondBZero :
      (SecondLineAt case_000072_support case_000072_rank.val hlt case_000072_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000072_secondLine]
  have case_000072_aProductNeg :
      (FirstLineAt case_000072_support case_000072_rank.val hlt case_000072_mask).a *
          (SecondLineAt case_000072_support case_000072_rank.val hlt case_000072_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000072_firstLine, case_000072_secondLine]
  have case_000072_weightedCNonpos :
      (SupportPair.multipliersAt case_000072_support
          case_000072_rank.val hlt case_000072_mask).1 *
          (FirstLineAt case_000072_support case_000072_rank.val hlt case_000072_mask).c +
        (SupportPair.multipliersAt case_000072_support
          case_000072_rank.val hlt case_000072_mask).2 *
          (SecondLineAt case_000072_support case_000072_rank.val hlt case_000072_mask).c <= 0 := by
    rw [SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_000072_firstLine_eq,
      case_000072_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000072_firstLine, case_000072_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative]
  exact ⟨case_000072_firstBZero, case_000072_secondBZero,
    case_000072_aProductNeg, case_000072_weightedCNonpos⟩

set_option maxHeartbeats 1200000 in
private theorem case_000072_sourceMatches :
    fam_016_desc.SourceMatches case_000072_rank.val case_000072_mask := by
  intro hlt
  have hrank :
      (⟨case_000072_rank.val, hlt⟩ : Fin numPairWords) = case_000072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_seq := by
    simpa [hrank] using case_000072_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000072_seq)
          fam_016_desc.firstIndex = some fam_016_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000072_seq)
          fam_016_desc.secondIndex = some fam_016_support.second := by
    decide
  have hchecks :
      SourceChecks fam_016_support case_000072_rank.val hlt case_000072_mask := by
    simp [SourceChecks, hseq, fam_016_support,
      checkTranslationConstraintSource, case_000072_seq, impactFace]
  exact ⟨
    by simpa [fam_016_desc, hseq] using hfirstIndex,
    by simpa [fam_016_desc, hseq] using hsecondIndex,
    by simpa [fam_016_desc] using hchecks
  ⟩

private theorem case_000072_applies :
    fam_016_desc.Applies case_000072_rank.val case_000072_mask := by
  exact ⟨
    case_000072_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_016_desc, fam_016_support, case_000072_support] using case_000072_rows
  ⟩

private theorem case_000072_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k063.toSourceIndexStateKey
      case_000072_rank.val case_000072_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000072_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_016_desc, fam_016_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_063_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000072_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_016_desc, fam_016_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_063_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000072_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_016_desc, fam_016_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_063_support] using hs.2.2
    }

private theorem case_000072_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k063.toSourceIndexStateKey
      case_000072_rank.val case_000072_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_063_support, case_000072_support] using case_000072_rows)

private theorem case_000072_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k063)
      case_000072_rank.val case_000072_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000072_selectorSourceFacts
    case_000072_selectorRowFacts

private theorem case_000072_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k063) =
      some ClassifierKey.k063 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k063

private def case_000073_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_000073_mask : SignMask := ⟨57, by decide⟩
private def case_000073_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000073_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000073_b : Vec3 Rat := { x := (-1348/81), y := (580/81), z := (-868/81) }
private def case_000073_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000073_secondLine : StrictLin2 := { a := (-1011/22834), b := (1011/22834), c := (-1329/11417) }

private theorem case_000073_rankWord :
    rankPairWord? case_000073_word = some case_000073_rank := by
  decide

private theorem case_000073_unrank :
    unrankPairWord case_000073_rank = case_000073_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000073_word case_000073_rank).1
    case_000073_rankWord |>.symm

private theorem case_000073_seqChoice :
    translationChoiceSeq case_000073_word case_000073_mask = case_000073_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000073_seqAtRank :
    translationSeqAtRankMask case_000073_rank case_000073_mask = case_000073_seq := by
  rw [translationSeqAtRankMask, case_000073_unrank]
  exact case_000073_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000073_bAtRank :
    translationBAtRankMask case_000073_rank case_000073_mask = case_000073_b := by
  rw [translationBAtRankMask, case_000073_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000073_b, case_000073_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000073_firstLine_eq :
    case_000073_support.firstLine case_000073_seq case_000073_b = case_000073_firstLine := by
  norm_num [case_000073_firstLine, case_000073_support, case_000073_seq, case_000073_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000073_secondLine_eq :
    case_000073_support.secondLine case_000073_seq case_000073_b = case_000073_secondLine := by
  norm_num [case_000073_secondLine, case_000073_support, case_000073_seq, case_000073_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000073_rows :
    OppOneMinusVarSecondRows case_000073_support case_000073_rank.val case_000073_mask := by
  intro hlt
  have hrank : (⟨case_000073_rank.val, hlt⟩ : Fin numPairWords) = case_000073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_seq := by
    simpa [hrank] using case_000073_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_b := by
    simpa [hrank] using case_000073_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000073_support case_000073_rank.val hlt
          case_000073_mask = case_000073_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000073_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000073_support case_000073_rank.val hlt
          case_000073_mask = case_000073_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000073_secondLine_eq]
  have case_000073_fixedFirst :
      FixedRow (FirstLineAt case_000073_support case_000073_rank.val hlt case_000073_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000073_firstLine, FixedRow]
  have case_000073_rowSecond :
      OppPosRow (SecondLineAt case_000073_support case_000073_rank.val hlt case_000073_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000073_secondLine, OppPosRow]
  exact ⟨case_000073_fixedFirst, case_000073_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000073_sourceMatches :
    fam_014_desc.SourceMatches case_000073_rank.val case_000073_mask := by
  intro hlt
  have hrank :
      (⟨case_000073_rank.val, hlt⟩ : Fin numPairWords) = case_000073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_seq := by
    simpa [hrank] using case_000073_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000073_seq)
          fam_014_desc.firstIndex = some fam_014_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000073_seq)
          fam_014_desc.secondIndex = some fam_014_support.second := by
    decide
  have hchecks :
      SourceChecks fam_014_support case_000073_rank.val hlt case_000073_mask := by
    simp [SourceChecks, hseq, fam_014_support,
      checkTranslationConstraintSource, case_000073_seq, impactFace]
  exact ⟨
    by simpa [fam_014_desc, hseq] using hfirstIndex,
    by simpa [fam_014_desc, hseq] using hsecondIndex,
    by simpa [fam_014_desc] using hchecks
  ⟩

private theorem case_000073_applies :
    fam_014_desc.Applies case_000073_rank.val case_000073_mask := by
  exact ⟨
    case_000073_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_014_desc, fam_014_support, case_000073_support] using case_000073_rows
  ⟩

private theorem case_000073_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k012.toSourceIndexStateKey
      case_000073_rank.val case_000073_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000073_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_014_desc, fam_014_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000073_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_014_desc, fam_014_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000073_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_014_desc, fam_014_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support] using hs.2.2
    }

private theorem case_000073_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k012.toSourceIndexStateKey
      case_000073_rank.val case_000073_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support, case_000073_support] using case_000073_rows)

private theorem case_000073_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k012)
      case_000073_rank.val case_000073_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000073_selectorSourceFacts
    case_000073_selectorRowFacts

private theorem case_000073_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k012) =
      some ClassifierKey.k012 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k012

private def case_000074_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_000074_mask : SignMask := ⟨63, by decide⟩
private def case_000074_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000074_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000074_b : Vec3 Rat := { x := (-1012/81), y := (820/81), z := (404/81) }
private def case_000074_firstLine : StrictLin2 := { a := 1, b := 1, c := (-359/253) }
private def case_000074_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000074_rankWord :
    rankPairWord? case_000074_word = some case_000074_rank := by
  decide

private theorem case_000074_unrank :
    unrankPairWord case_000074_rank = case_000074_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000074_word case_000074_rank).1
    case_000074_rankWord |>.symm

private theorem case_000074_seqChoice :
    translationChoiceSeq case_000074_word case_000074_mask = case_000074_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000074_seqAtRank :
    translationSeqAtRankMask case_000074_rank case_000074_mask = case_000074_seq := by
  rw [translationSeqAtRankMask, case_000074_unrank]
  exact case_000074_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000074_bAtRank :
    translationBAtRankMask case_000074_rank case_000074_mask = case_000074_b := by
  rw [translationBAtRankMask, case_000074_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000074_b, case_000074_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000074_firstLine_eq :
    case_000074_support.firstLine case_000074_seq case_000074_b = case_000074_firstLine := by
  norm_num [case_000074_firstLine, case_000074_support, case_000074_seq, case_000074_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000074_secondLine_eq :
    case_000074_support.secondLine case_000074_seq case_000074_b = case_000074_secondLine := by
  norm_num [case_000074_secondLine, case_000074_support, case_000074_seq, case_000074_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000074_rows :
    EqEqNegVarFirstRows case_000074_support case_000074_rank.val case_000074_mask := by
  intro hlt
  have hrank : (⟨case_000074_rank.val, hlt⟩ : Fin numPairWords) = case_000074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_seq := by
    simpa [hrank] using case_000074_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_b := by
    simpa [hrank] using case_000074_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000074_support case_000074_rank.val hlt
          case_000074_mask = case_000074_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000074_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000074_support case_000074_rank.val hlt
          case_000074_mask = case_000074_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000074_secondLine_eq]
  have case_000074_rowFirst :
      EqEqNegRow (FirstLineAt case_000074_support case_000074_rank.val hlt case_000074_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000074_firstLine, EqEqNegRow]
  have case_000074_fixedSecond :
      FixedRow (SecondLineAt case_000074_support case_000074_rank.val hlt case_000074_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000074_secondLine, FixedRow]
  exact ⟨case_000074_rowFirst, case_000074_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000074_sourceMatches :
    fam_010_desc.SourceMatches case_000074_rank.val case_000074_mask := by
  intro hlt
  have hrank :
      (⟨case_000074_rank.val, hlt⟩ : Fin numPairWords) = case_000074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_seq := by
    simpa [hrank] using case_000074_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000074_seq)
          fam_010_desc.firstIndex = some fam_010_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000074_seq)
          fam_010_desc.secondIndex = some fam_010_support.second := by
    decide
  have hchecks :
      SourceChecks fam_010_support case_000074_rank.val hlt case_000074_mask := by
    simp [SourceChecks, hseq, fam_010_support,
      checkTranslationConstraintSource, case_000074_seq, impactFace]
  exact ⟨
    by simpa [fam_010_desc, hseq] using hfirstIndex,
    by simpa [fam_010_desc, hseq] using hsecondIndex,
    by simpa [fam_010_desc] using hchecks
  ⟩

private theorem case_000074_applies :
    fam_010_desc.Applies case_000074_rank.val case_000074_mask := by
  exact ⟨
    case_000074_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_010_desc, fam_010_support, case_000074_support] using case_000074_rows
  ⟩

private theorem case_000074_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k010.toSourceIndexStateKey
      case_000074_rank.val case_000074_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000074_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000074_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000074_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_010_desc, fam_010_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support] using hs.2.2
    }

private theorem case_000074_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k010.toSourceIndexStateKey
      case_000074_rank.val case_000074_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_010_support, case_000074_support] using case_000074_rows)

private theorem case_000074_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k010)
      case_000074_rank.val case_000074_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000074_selectorSourceFacts
    case_000074_selectorRowFacts

private theorem case_000074_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k010) =
      some ClassifierKey.k010 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k010

/-- Positive GoodDirection survivor cases represented in this shard. -/
inductive SelectorPositiveCase : Nat -> SignMask -> Prop
  | c000 : SelectorPositiveCase 911 (⟨54, by decide⟩ : SignMask)
  | c001 : SelectorPositiveCase 911 (⟨55, by decide⟩ : SignMask)
  | c002 : SelectorPositiveCase 911 (⟨57, by decide⟩ : SignMask)
  | c003 : SelectorPositiveCase 911 (⟨63, by decide⟩ : SignMask)
  | c004 : SelectorPositiveCase 955 (⟨16, by decide⟩ : SignMask)
  | c005 : SelectorPositiveCase 955 (⟨18, by decide⟩ : SignMask)
  | c006 : SelectorPositiveCase 955 (⟨22, by decide⟩ : SignMask)
  | c007 : SelectorPositiveCase 955 (⟨54, by decide⟩ : SignMask)
  | c008 : SelectorPositiveCase 955 (⟨56, by decide⟩ : SignMask)
  | c009 : SelectorPositiveCase 955 (⟨57, by decide⟩ : SignMask)
  | c010 : SelectorPositiveCase 955 (⟨63, by decide⟩ : SignMask)

theorem selectorPositiveLookup
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    ∃ key : ClassifierKey,
      keyOfSelectorCoordinate? (selectorCoordAt rank mask) = some key := by
  cases hcase with
  | c000 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000064_selectorLookup⟩
  | c001 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000065_selectorLookup⟩
  | c002 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000066_selectorLookup⟩
  | c003 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000067_selectorLookup⟩
  | c004 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000068_selectorLookup⟩
  | c005 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000069_selectorLookup⟩
  | c006 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000070_selectorLookup⟩
  | c007 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000071_selectorLookup⟩
  | c008 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000072_selectorLookup⟩
  | c009 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000073_selectorLookup⟩
  | c010 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000074_selectorLookup⟩

theorem selectorPositiveSourceRowFacts
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    SelectorCoordinateSourceRowFacts (selectorCoordAt rank mask)
      rank mask := by
  cases hcase with
  | c000 =>
      simpa [selectorCoordAt, case_000064_rank, case_000064_mask] using case_000064_selectorSourceRowFacts
  | c001 =>
      simpa [selectorCoordAt, case_000065_rank, case_000065_mask] using case_000065_selectorSourceRowFacts
  | c002 =>
      simpa [selectorCoordAt, case_000066_rank, case_000066_mask] using case_000066_selectorSourceRowFacts
  | c003 =>
      simpa [selectorCoordAt, case_000067_rank, case_000067_mask] using case_000067_selectorSourceRowFacts
  | c004 =>
      simpa [selectorCoordAt, case_000068_rank, case_000068_mask] using case_000068_selectorSourceRowFacts
  | c005 =>
      simpa [selectorCoordAt, case_000069_rank, case_000069_mask] using case_000069_selectorSourceRowFacts
  | c006 =>
      simpa [selectorCoordAt, case_000070_rank, case_000070_mask] using case_000070_selectorSourceRowFacts
  | c007 =>
      simpa [selectorCoordAt, case_000071_rank, case_000071_mask] using case_000071_selectorSourceRowFacts
  | c008 =>
      simpa [selectorCoordAt, case_000072_rank, case_000072_mask] using case_000072_selectorSourceRowFacts
  | c009 =>
      simpa [selectorCoordAt, case_000073_rank, case_000073_mask] using case_000073_selectorSourceRowFacts
  | c010 =>
      simpa [selectorCoordAt, case_000074_rank, case_000074_mask] using case_000074_selectorSourceRowFacts

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard002
