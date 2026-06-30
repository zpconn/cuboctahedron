import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-!
Generated DU.9L selector-coordinate positive-survivor micro-shard.

This file is bounded telemetry.  It proves selector lookup and public
source/row facts only for emitted GoodDirection survivor cases.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard001

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
  if rank = 899 ∧ mask.val = 24 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 899 ∧ mask.val = 28 then selectorCoordinateOfKey ClassifierKey.k006 else
  if rank = 899 ∧ mask.val = 29 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 899 ∧ mask.val = 30 then selectorCoordinateOfKey ClassifierKey.k038 else
  if rank = 899 ∧ mask.val = 31 then selectorCoordinateOfKey ClassifierKey.k034 else
  if rank = 899 ∧ mask.val = 45 then selectorCoordinateOfKey ClassifierKey.k022 else
  if rank = 899 ∧ mask.val = 47 then selectorCoordinateOfKey ClassifierKey.k022 else
  if rank = 899 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k059 else
  if rank = 899 ∧ mask.val = 55 then selectorCoordinateOfKey ClassifierKey.k015 else
  if rank = 899 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k026 else
  if rank = 903 ∧ mask.val = 18 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 903 ∧ mask.val = 22 then selectorCoordinateOfKey ClassifierKey.k015 else
  if rank = 903 ∧ mask.val = 24 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 903 ∧ mask.val = 25 then selectorCoordinateOfKey ClassifierKey.k012 else
  if rank = 903 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k042 else
  if rank = 903 ∧ mask.val = 55 then selectorCoordinateOfKey ClassifierKey.k042 else
  if rank = 903 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k075 else
  if rank = 905 ∧ mask.val = 18 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 905 ∧ mask.val = 22 then selectorCoordinateOfKey ClassifierKey.k015 else
  if rank = 905 ∧ mask.val = 24 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 905 ∧ mask.val = 41 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 905 ∧ mask.val = 54 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 905 ∧ mask.val = 55 then selectorCoordinateOfKey ClassifierKey.k001 else
  if rank = 905 ∧ mask.val = 57 then selectorCoordinateOfKey ClassifierKey.k003 else
  if rank = 905 ∧ mask.val = 63 then selectorCoordinateOfKey ClassifierKey.k075 else
  if rank = 911 ∧ mask.val = 9 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 911 ∧ mask.val = 16 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 911 ∧ mask.val = 18 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 911 ∧ mask.val = 22 then selectorCoordinateOfKey ClassifierKey.k008 else
  if rank = 911 ∧ mask.val = 24 then selectorCoordinateOfKey ClassifierKey.k000 else
  if rank = 911 ∧ mask.val = 45 then selectorCoordinateOfKey ClassifierKey.k040 else
  if rank = 911 ∧ mask.val = 50 then selectorCoordinateOfKey ClassifierKey.k001 else
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

private def case_000032_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000032_mask : SignMask := ⟨24, by decide⟩
private def case_000032_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
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
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_000032_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000032_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
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

private def case_000033_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000033_mask : SignMask := ⟨28, by decide⟩
private def case_000033_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000033_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000033_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000033_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000033_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

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
    OppOneMinusVarFirstRows case_000033_support case_000033_rank.val case_000033_mask := by
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
      OppPosRow (FirstLineAt case_000033_support case_000033_rank.val hlt case_000033_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000033_firstLine, OppPosRow]
  have case_000033_fixedSecond :
      FixedRow (SecondLineAt case_000033_support case_000033_rank.val hlt case_000033_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000033_secondLine, FixedRow]
  exact ⟨case_000033_rowFirst, case_000033_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000033_sourceMatches :
    fam_007_desc.SourceMatches case_000033_rank.val case_000033_mask := by
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
          fam_007_desc.firstIndex = some fam_007_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000033_seq)
          fam_007_desc.secondIndex = some fam_007_support.second := by
    decide
  have hchecks :
      SourceChecks fam_007_support case_000033_rank.val hlt case_000033_mask := by
    simp [SourceChecks, hseq, fam_007_support,
      checkTranslationConstraintSource, case_000033_seq, impactFace]
  exact ⟨
    by simpa [fam_007_desc, hseq] using hfirstIndex,
    by simpa [fam_007_desc, hseq] using hsecondIndex,
    by simpa [fam_007_desc] using hchecks
  ⟩

private theorem case_000033_applies :
    fam_007_desc.Applies case_000033_rank.val case_000033_mask := by
  exact ⟨
    case_000033_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_007_desc, fam_007_support, case_000033_support] using case_000033_rows
  ⟩

private theorem case_000033_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k006.toSourceIndexStateKey
      case_000033_rank.val case_000033_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000033_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_007_desc, fam_007_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_006_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000033_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_007_desc, fam_007_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_006_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000033_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_007_desc, fam_007_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_006_support] using hs.2.2
    }

private theorem case_000033_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k006.toSourceIndexStateKey
      case_000033_rank.val case_000033_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_006_support, case_000033_support] using case_000033_rows)

private theorem case_000033_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k006)
      case_000033_rank.val case_000033_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000033_selectorSourceFacts
    case_000033_selectorRowFacts

private theorem case_000033_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k006) =
      some ClassifierKey.k006 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k006

private def case_000034_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000034_mask : SignMask := ⟨29, by decide⟩
private def case_000034_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000034_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000034_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000034_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000034_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

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
    EqEqPosVarSecondRows case_000034_support case_000034_rank.val case_000034_mask := by
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
  have case_000034_fixedFirst :
      FixedRow (FirstLineAt case_000034_support case_000034_rank.val hlt case_000034_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000034_firstLine, FixedRow]
  have case_000034_rowSecond :
      EqEqPosRow (SecondLineAt case_000034_support case_000034_rank.val hlt case_000034_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000034_secondLine, EqEqPosRow]
  exact ⟨case_000034_fixedFirst, case_000034_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000034_sourceMatches :
    fam_002_desc.SourceMatches case_000034_rank.val case_000034_mask := by
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
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000034_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000034_rank.val hlt case_000034_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000034_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000034_applies :
    fam_002_desc.Applies case_000034_rank.val case_000034_mask := by
  exact ⟨
    case_000034_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000034_support] using case_000034_rows
  ⟩

private theorem case_000034_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000034_rank.val case_000034_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000034_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000034_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000034_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000034_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000034_rank.val case_000034_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000034_support] using case_000034_rows)

private theorem case_000034_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000034_rank.val case_000034_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000034_selectorSourceFacts
    case_000034_selectorRowFacts

private theorem case_000034_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

private def case_000035_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000035_mask : SignMask := ⟨30, by decide⟩
private def case_000035_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000035_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000035_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000035_firstLine : StrictLin2 := { a := (11/5), b := (-11/5), c := (-43/5) }
private def case_000035_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

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
    OppMinusOneVarFirstRows case_000035_support case_000035_rank.val case_000035_mask := by
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
      OppNegRow (FirstLineAt case_000035_support case_000035_rank.val hlt case_000035_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000035_firstLine, OppNegRow]
  have case_000035_fixedSecond :
      FixedRow (SecondLineAt case_000035_support case_000035_rank.val hlt case_000035_mask)
        (-1) (1) := by
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
    SourceIndexStateSourceFacts ClassifierKey.k038.toSourceIndexStateKey
      case_000035_rank.val case_000035_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000035_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_008_desc, fam_008_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_038_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000035_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_008_desc, fam_008_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_038_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000035_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_008_desc, fam_008_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_038_support] using hs.2.2
    }

private theorem case_000035_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k038.toSourceIndexStateKey
      case_000035_rank.val case_000035_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_038_support, case_000035_support] using case_000035_rows)

private theorem case_000035_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k038)
      case_000035_rank.val case_000035_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000035_selectorSourceFacts
    case_000035_selectorRowFacts

private theorem case_000035_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k038) =
      some ClassifierKey.k038 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k038

private def case_000036_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000036_mask : SignMask := ⟨31, by decide⟩
private def case_000036_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000036_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000036_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000036_firstLine : StrictLin2 := { a := (-11/5), b := (-11/5), c := (-27/5) }
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
    SourceIndexStateSourceFacts ClassifierKey.k034.toSourceIndexStateKey
      case_000036_rank.val case_000036_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000036_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_006_desc, fam_006_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_034_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000036_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_006_desc, fam_006_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_034_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000036_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_006_desc, fam_006_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_034_support] using hs.2.2
    }

private theorem case_000036_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k034.toSourceIndexStateKey
      case_000036_rank.val case_000036_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_034_support, case_000036_support] using case_000036_rows)

private theorem case_000036_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k034)
      case_000036_rank.val case_000036_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000036_selectorSourceFacts
    case_000036_selectorRowFacts

private theorem case_000036_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k034) =
      some ClassifierKey.k034 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k034

private def case_000037_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000037_mask : SignMask := ⟨45, by decide⟩
private def case_000037_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000037_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000037_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000037_firstLine : StrictLin2 := { a := (-3/11), b := (-3/11), c := (-25/33) }
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
    fam_012_desc.SourceMatches case_000037_rank.val case_000037_mask := by
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
          fam_012_desc.firstIndex = some fam_012_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000037_seq)
          fam_012_desc.secondIndex = some fam_012_support.second := by
    decide
  have hchecks :
      SourceChecks fam_012_support case_000037_rank.val hlt case_000037_mask := by
    simp [SourceChecks, hseq, fam_012_support,
      checkTranslationConstraintSource, case_000037_seq, impactFace]
  exact ⟨
    by simpa [fam_012_desc, hseq] using hfirstIndex,
    by simpa [fam_012_desc, hseq] using hsecondIndex,
    by simpa [fam_012_desc] using hchecks
  ⟩

private theorem case_000037_applies :
    fam_012_desc.Applies case_000037_rank.val case_000037_mask := by
  exact ⟨
    case_000037_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_012_desc, fam_012_support, case_000037_support] using case_000037_rows
  ⟩

private theorem case_000037_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k022.toSourceIndexStateKey
      case_000037_rank.val case_000037_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000037_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_012_desc, fam_012_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000037_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_012_desc, fam_012_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000037_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_012_desc, fam_012_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support] using hs.2.2
    }

private theorem case_000037_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k022.toSourceIndexStateKey
      case_000037_rank.val case_000037_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support, case_000037_support] using case_000037_rows)

private theorem case_000037_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k022)
      case_000037_rank.val case_000037_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000037_selectorSourceFacts
    case_000037_selectorRowFacts

private theorem case_000037_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k022) =
      some ClassifierKey.k022 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k022

private def case_000038_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000038_mask : SignMask := ⟨47, by decide⟩
private def case_000038_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000038_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000038_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000038_firstLine : StrictLin2 := { a := (-3/17), b := (-3/17), c := (-73/51) }
private def case_000038_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
    EqEqPosVarFirstRows case_000038_support case_000038_rank.val case_000038_mask := by
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
      EqEqPosRow (FirstLineAt case_000038_support case_000038_rank.val hlt case_000038_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000038_firstLine, EqEqPosRow]
  have case_000038_fixedSecond :
      FixedRow (SecondLineAt case_000038_support case_000038_rank.val hlt case_000038_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000038_secondLine, FixedRow]
  exact ⟨case_000038_rowFirst, case_000038_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000038_sourceMatches :
    fam_012_desc.SourceMatches case_000038_rank.val case_000038_mask := by
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
          fam_012_desc.firstIndex = some fam_012_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000038_seq)
          fam_012_desc.secondIndex = some fam_012_support.second := by
    decide
  have hchecks :
      SourceChecks fam_012_support case_000038_rank.val hlt case_000038_mask := by
    simp [SourceChecks, hseq, fam_012_support,
      checkTranslationConstraintSource, case_000038_seq, impactFace]
  exact ⟨
    by simpa [fam_012_desc, hseq] using hfirstIndex,
    by simpa [fam_012_desc, hseq] using hsecondIndex,
    by simpa [fam_012_desc] using hchecks
  ⟩

private theorem case_000038_applies :
    fam_012_desc.Applies case_000038_rank.val case_000038_mask := by
  exact ⟨
    case_000038_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_012_desc, fam_012_support, case_000038_support] using case_000038_rows
  ⟩

private theorem case_000038_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k022.toSourceIndexStateKey
      case_000038_rank.val case_000038_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000038_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_012_desc, fam_012_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000038_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_012_desc, fam_012_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000038_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_012_desc, fam_012_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support] using hs.2.2
    }

private theorem case_000038_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k022.toSourceIndexStateKey
      case_000038_rank.val case_000038_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_022_support, case_000038_support] using case_000038_rows)

private theorem case_000038_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k022)
      case_000038_rank.val case_000038_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000038_selectorSourceFacts
    case_000038_selectorRowFacts

private theorem case_000038_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k022) =
      some ClassifierKey.k022 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k022

private def case_000039_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000039_mask : SignMask := ⟨54, by decide⟩
private def case_000039_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000039_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000039_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000039_firstLine : StrictLin2 := { a := (-6/5), b := (-6/5), c := (-4/3) }
private def case_000039_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
    EqEqPosVarFirstRows case_000039_support case_000039_rank.val case_000039_mask := by
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
      EqEqPosRow (FirstLineAt case_000039_support case_000039_rank.val hlt case_000039_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000039_firstLine, EqEqPosRow]
  have case_000039_fixedSecond :
      FixedRow (SecondLineAt case_000039_support case_000039_rank.val hlt case_000039_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000039_secondLine, FixedRow]
  exact ⟨case_000039_rowFirst, case_000039_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000039_sourceMatches :
    fam_011_desc.SourceMatches case_000039_rank.val case_000039_mask := by
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
          fam_011_desc.firstIndex = some fam_011_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000039_seq)
          fam_011_desc.secondIndex = some fam_011_support.second := by
    decide
  have hchecks :
      SourceChecks fam_011_support case_000039_rank.val hlt case_000039_mask := by
    simp [SourceChecks, hseq, fam_011_support,
      checkTranslationConstraintSource, case_000039_seq, impactFace]
  exact ⟨
    by simpa [fam_011_desc, hseq] using hfirstIndex,
    by simpa [fam_011_desc, hseq] using hsecondIndex,
    by simpa [fam_011_desc] using hchecks
  ⟩

private theorem case_000039_applies :
    fam_011_desc.Applies case_000039_rank.val case_000039_mask := by
  exact ⟨
    case_000039_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_011_desc, fam_011_support, case_000039_support] using case_000039_rows
  ⟩

private theorem case_000039_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k059.toSourceIndexStateKey
      case_000039_rank.val case_000039_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000039_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_011_desc, fam_011_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_059_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000039_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_011_desc, fam_011_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_059_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000039_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_011_desc, fam_011_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_059_support] using hs.2.2
    }

private theorem case_000039_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k059.toSourceIndexStateKey
      case_000039_rank.val case_000039_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_059_support, case_000039_support] using case_000039_rows)

private theorem case_000039_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k059)
      case_000039_rank.val case_000039_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000039_selectorSourceFacts
    case_000039_selectorRowFacts

private theorem case_000039_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k059) =
      some ClassifierKey.k059 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k059

private def case_000040_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000040_mask : SignMask := ⟨55, by decide⟩
private def case_000040_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000040_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000040_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000040_firstLine : StrictLin2 := { a := (-3/11), b := (-3/11), c := (-43/33) }
private def case_000040_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
    EqEqPosVarFirstRows case_000040_support case_000040_rank.val case_000040_mask := by
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
      EqEqPosRow (FirstLineAt case_000040_support case_000040_rank.val hlt case_000040_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000040_firstLine, EqEqPosRow]
  have case_000040_fixedSecond :
      FixedRow (SecondLineAt case_000040_support case_000040_rank.val hlt case_000040_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000040_secondLine, FixedRow]
  exact ⟨case_000040_rowFirst, case_000040_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000040_sourceMatches :
    fam_005_desc.SourceMatches case_000040_rank.val case_000040_mask := by
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
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000040_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000040_rank.val hlt case_000040_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000040_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000040_applies :
    fam_005_desc.Applies case_000040_rank.val case_000040_mask := by
  exact ⟨
    case_000040_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000040_support] using case_000040_rows
  ⟩

private theorem case_000040_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k015.toSourceIndexStateKey
      case_000040_rank.val case_000040_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000040_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000040_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000040_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.2.2
    }

private theorem case_000040_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k015.toSourceIndexStateKey
      case_000040_rank.val case_000040_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support, case_000040_support] using case_000040_rows)

private theorem case_000040_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k015)
      case_000040_rank.val case_000040_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000040_selectorSourceFacts
    case_000040_selectorRowFacts

private theorem case_000040_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k015) =
      some ClassifierKey.k015 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k015

private def case_000041_rank : Fin numPairWords := ⟨899, by decide⟩
private def case_000041_mask : SignMask := ⟨63, by decide⟩
private def case_000041_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_000041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000041_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_000041_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000041_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000041_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
    EqEqPosVarFirstRows case_000041_support case_000041_rank.val case_000041_mask := by
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
  have case_000041_rowFirst :
      EqEqPosRow (FirstLineAt case_000041_support case_000041_rank.val hlt case_000041_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000041_firstLine, EqEqPosRow]
  have case_000041_fixedSecond :
      FixedRow (SecondLineAt case_000041_support case_000041_rank.val hlt case_000041_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000041_secondLine, FixedRow]
  exact ⟨case_000041_rowFirst, case_000041_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000041_sourceMatches :
    fam_004_desc.SourceMatches case_000041_rank.val case_000041_mask := by
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
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000041_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000041_rank.val hlt case_000041_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000041_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000041_applies :
    fam_004_desc.Applies case_000041_rank.val case_000041_mask := by
  exact ⟨
    case_000041_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000041_support] using case_000041_rows
  ⟩

private theorem case_000041_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k026.toSourceIndexStateKey
      case_000041_rank.val case_000041_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000041_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_026_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000041_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_026_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000041_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_004_desc, fam_004_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_026_support] using hs.2.2
    }

private theorem case_000041_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k026.toSourceIndexStateKey
      case_000041_rank.val case_000041_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_026_support, case_000041_support] using case_000041_rows)

private theorem case_000041_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k026)
      case_000041_rank.val case_000041_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000041_selectorSourceFacts
    case_000041_selectorRowFacts

private theorem case_000041_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k026) =
      some ClassifierKey.k026 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k026

private def case_000042_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_000042_mask : SignMask := ⟨18, by decide⟩
private def case_000042_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000042_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000042_b : Vec3 Rat := { x := (-284/27), y := (-316/27), z := (28/27) }
private def case_000042_firstLine : StrictLin2 := { a := -1, b := -1, c := (-73/71) }
private def case_000042_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000042_rankWord :
    rankPairWord? case_000042_word = some case_000042_rank := by
  decide

private theorem case_000042_unrank :
    unrankPairWord case_000042_rank = case_000042_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000042_word case_000042_rank).1
    case_000042_rankWord |>.symm

private theorem case_000042_seqChoice :
    translationChoiceSeq case_000042_word case_000042_mask = case_000042_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000042_seqAtRank :
    translationSeqAtRankMask case_000042_rank case_000042_mask = case_000042_seq := by
  rw [translationSeqAtRankMask, case_000042_unrank]
  exact case_000042_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000042_bAtRank :
    translationBAtRankMask case_000042_rank case_000042_mask = case_000042_b := by
  rw [translationBAtRankMask, case_000042_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000042_b, case_000042_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_firstLine_eq :
    case_000042_support.firstLine case_000042_seq case_000042_b = case_000042_firstLine := by
  norm_num [case_000042_firstLine, case_000042_support, case_000042_seq, case_000042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_secondLine_eq :
    case_000042_support.secondLine case_000042_seq case_000042_b = case_000042_secondLine := by
  norm_num [case_000042_secondLine, case_000042_support, case_000042_seq, case_000042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_rows :
    EqEqPosVarFirstRows case_000042_support case_000042_rank.val case_000042_mask := by
  intro hlt
  have hrank : (⟨case_000042_rank.val, hlt⟩ : Fin numPairWords) = case_000042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_seq := by
    simpa [hrank] using case_000042_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_b := by
    simpa [hrank] using case_000042_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000042_support case_000042_rank.val hlt
          case_000042_mask = case_000042_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000042_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000042_support case_000042_rank.val hlt
          case_000042_mask = case_000042_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000042_secondLine_eq]
  have case_000042_rowFirst :
      EqEqPosRow (FirstLineAt case_000042_support case_000042_rank.val hlt case_000042_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000042_firstLine, EqEqPosRow]
  have case_000042_fixedSecond :
      FixedRow (SecondLineAt case_000042_support case_000042_rank.val hlt case_000042_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000042_secondLine, FixedRow]
  exact ⟨case_000042_rowFirst, case_000042_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000042_sourceMatches :
    fam_000_desc.SourceMatches case_000042_rank.val case_000042_mask := by
  intro hlt
  have hrank :
      (⟨case_000042_rank.val, hlt⟩ : Fin numPairWords) = case_000042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_seq := by
    simpa [hrank] using case_000042_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000042_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000042_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000042_rank.val hlt case_000042_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000042_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000042_applies :
    fam_000_desc.Applies case_000042_rank.val case_000042_mask := by
  exact ⟨
    case_000042_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000042_support] using case_000042_rows
  ⟩

private theorem case_000042_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000042_rank.val case_000042_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000042_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000042_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000042_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000042_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000042_rank.val case_000042_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000042_support] using case_000042_rows)

private theorem case_000042_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000042_rank.val case_000042_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000042_selectorSourceFacts
    case_000042_selectorRowFacts

private theorem case_000042_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000043_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_000043_mask : SignMask := ⟨22, by decide⟩
private def case_000043_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000043_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000043_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (236/27) }
private def case_000043_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000043_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000043_rankWord :
    rankPairWord? case_000043_word = some case_000043_rank := by
  decide

private theorem case_000043_unrank :
    unrankPairWord case_000043_rank = case_000043_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000043_word case_000043_rank).1
    case_000043_rankWord |>.symm

private theorem case_000043_seqChoice :
    translationChoiceSeq case_000043_word case_000043_mask = case_000043_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000043_seqAtRank :
    translationSeqAtRankMask case_000043_rank case_000043_mask = case_000043_seq := by
  rw [translationSeqAtRankMask, case_000043_unrank]
  exact case_000043_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000043_bAtRank :
    translationBAtRankMask case_000043_rank case_000043_mask = case_000043_b := by
  rw [translationBAtRankMask, case_000043_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000043_b, case_000043_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_firstLine_eq :
    case_000043_support.firstLine case_000043_seq case_000043_b = case_000043_firstLine := by
  norm_num [case_000043_firstLine, case_000043_support, case_000043_seq, case_000043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_secondLine_eq :
    case_000043_support.secondLine case_000043_seq case_000043_b = case_000043_secondLine := by
  norm_num [case_000043_secondLine, case_000043_support, case_000043_seq, case_000043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_rows :
    EqEqPosVarFirstRows case_000043_support case_000043_rank.val case_000043_mask := by
  intro hlt
  have hrank : (⟨case_000043_rank.val, hlt⟩ : Fin numPairWords) = case_000043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_seq := by
    simpa [hrank] using case_000043_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_b := by
    simpa [hrank] using case_000043_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000043_support case_000043_rank.val hlt
          case_000043_mask = case_000043_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000043_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000043_support case_000043_rank.val hlt
          case_000043_mask = case_000043_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000043_secondLine_eq]
  have case_000043_rowFirst :
      EqEqPosRow (FirstLineAt case_000043_support case_000043_rank.val hlt case_000043_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000043_firstLine, EqEqPosRow]
  have case_000043_fixedSecond :
      FixedRow (SecondLineAt case_000043_support case_000043_rank.val hlt case_000043_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000043_secondLine, FixedRow]
  exact ⟨case_000043_rowFirst, case_000043_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000043_sourceMatches :
    fam_005_desc.SourceMatches case_000043_rank.val case_000043_mask := by
  intro hlt
  have hrank :
      (⟨case_000043_rank.val, hlt⟩ : Fin numPairWords) = case_000043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_seq := by
    simpa [hrank] using case_000043_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000043_seq)
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000043_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000043_rank.val hlt case_000043_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000043_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000043_applies :
    fam_005_desc.Applies case_000043_rank.val case_000043_mask := by
  exact ⟨
    case_000043_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000043_support] using case_000043_rows
  ⟩

private theorem case_000043_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k015.toSourceIndexStateKey
      case_000043_rank.val case_000043_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000043_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000043_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000043_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.2.2
    }

private theorem case_000043_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k015.toSourceIndexStateKey
      case_000043_rank.val case_000043_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support, case_000043_support] using case_000043_rows)

private theorem case_000043_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k015)
      case_000043_rank.val case_000043_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000043_selectorSourceFacts
    case_000043_selectorRowFacts

private theorem case_000043_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k015) =
      some ClassifierKey.k015 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k015

private def case_000044_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_000044_mask : SignMask := ⟨24, by decide⟩
private def case_000044_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000044_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000044_b : Vec3 Rat := { x := (-428/27), y := (-172/27), z := (-332/27) }
private def case_000044_firstLine : StrictLin2 := { a := -1, b := -1, c := (-145/107) }
private def case_000044_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000044_rankWord :
    rankPairWord? case_000044_word = some case_000044_rank := by
  decide

private theorem case_000044_unrank :
    unrankPairWord case_000044_rank = case_000044_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000044_word case_000044_rank).1
    case_000044_rankWord |>.symm

private theorem case_000044_seqChoice :
    translationChoiceSeq case_000044_word case_000044_mask = case_000044_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000044_seqAtRank :
    translationSeqAtRankMask case_000044_rank case_000044_mask = case_000044_seq := by
  rw [translationSeqAtRankMask, case_000044_unrank]
  exact case_000044_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000044_bAtRank :
    translationBAtRankMask case_000044_rank case_000044_mask = case_000044_b := by
  rw [translationBAtRankMask, case_000044_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000044_b, case_000044_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_firstLine_eq :
    case_000044_support.firstLine case_000044_seq case_000044_b = case_000044_firstLine := by
  norm_num [case_000044_firstLine, case_000044_support, case_000044_seq, case_000044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_secondLine_eq :
    case_000044_support.secondLine case_000044_seq case_000044_b = case_000044_secondLine := by
  norm_num [case_000044_secondLine, case_000044_support, case_000044_seq, case_000044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_rows :
    EqEqPosVarFirstRows case_000044_support case_000044_rank.val case_000044_mask := by
  intro hlt
  have hrank : (⟨case_000044_rank.val, hlt⟩ : Fin numPairWords) = case_000044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_seq := by
    simpa [hrank] using case_000044_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_b := by
    simpa [hrank] using case_000044_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000044_support case_000044_rank.val hlt
          case_000044_mask = case_000044_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000044_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000044_support case_000044_rank.val hlt
          case_000044_mask = case_000044_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000044_secondLine_eq]
  have case_000044_rowFirst :
      EqEqPosRow (FirstLineAt case_000044_support case_000044_rank.val hlt case_000044_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000044_firstLine, EqEqPosRow]
  have case_000044_fixedSecond :
      FixedRow (SecondLineAt case_000044_support case_000044_rank.val hlt case_000044_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000044_secondLine, FixedRow]
  exact ⟨case_000044_rowFirst, case_000044_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000044_sourceMatches :
    fam_000_desc.SourceMatches case_000044_rank.val case_000044_mask := by
  intro hlt
  have hrank :
      (⟨case_000044_rank.val, hlt⟩ : Fin numPairWords) = case_000044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_seq := by
    simpa [hrank] using case_000044_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000044_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000044_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000044_rank.val hlt case_000044_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000044_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000044_applies :
    fam_000_desc.Applies case_000044_rank.val case_000044_mask := by
  exact ⟨
    case_000044_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000044_support] using case_000044_rows
  ⟩

private theorem case_000044_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000044_rank.val case_000044_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000044_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000044_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000044_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000044_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000044_rank.val case_000044_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000044_support] using case_000044_rows)

private theorem case_000044_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000044_rank.val case_000044_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000044_selectorSourceFacts
    case_000044_selectorRowFacts

private theorem case_000044_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000045_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_000045_mask : SignMask := ⟨25, by decide⟩
private def case_000045_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000045_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000045_b : Vec3 Rat := { x := (-428/27), y := (44/27), z := (-332/27) }
private def case_000045_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000045_secondLine : StrictLin2 := { a := (-321/6566), b := (321/6566), c := (-579/3283) }

private theorem case_000045_rankWord :
    rankPairWord? case_000045_word = some case_000045_rank := by
  decide

private theorem case_000045_unrank :
    unrankPairWord case_000045_rank = case_000045_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000045_word case_000045_rank).1
    case_000045_rankWord |>.symm

private theorem case_000045_seqChoice :
    translationChoiceSeq case_000045_word case_000045_mask = case_000045_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000045_seqAtRank :
    translationSeqAtRankMask case_000045_rank case_000045_mask = case_000045_seq := by
  rw [translationSeqAtRankMask, case_000045_unrank]
  exact case_000045_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000045_bAtRank :
    translationBAtRankMask case_000045_rank case_000045_mask = case_000045_b := by
  rw [translationBAtRankMask, case_000045_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000045_b, case_000045_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_firstLine_eq :
    case_000045_support.firstLine case_000045_seq case_000045_b = case_000045_firstLine := by
  norm_num [case_000045_firstLine, case_000045_support, case_000045_seq, case_000045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_secondLine_eq :
    case_000045_support.secondLine case_000045_seq case_000045_b = case_000045_secondLine := by
  norm_num [case_000045_secondLine, case_000045_support, case_000045_seq, case_000045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_rows :
    OppOneMinusVarSecondRows case_000045_support case_000045_rank.val case_000045_mask := by
  intro hlt
  have hrank : (⟨case_000045_rank.val, hlt⟩ : Fin numPairWords) = case_000045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_seq := by
    simpa [hrank] using case_000045_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_b := by
    simpa [hrank] using case_000045_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000045_support case_000045_rank.val hlt
          case_000045_mask = case_000045_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000045_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000045_support case_000045_rank.val hlt
          case_000045_mask = case_000045_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000045_secondLine_eq]
  have case_000045_fixedFirst :
      FixedRow (FirstLineAt case_000045_support case_000045_rank.val hlt case_000045_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000045_firstLine, FixedRow]
  have case_000045_rowSecond :
      OppPosRow (SecondLineAt case_000045_support case_000045_rank.val hlt case_000045_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000045_secondLine, OppPosRow]
  exact ⟨case_000045_fixedFirst, case_000045_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000045_sourceMatches :
    fam_014_desc.SourceMatches case_000045_rank.val case_000045_mask := by
  intro hlt
  have hrank :
      (⟨case_000045_rank.val, hlt⟩ : Fin numPairWords) = case_000045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_seq := by
    simpa [hrank] using case_000045_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000045_seq)
          fam_014_desc.firstIndex = some fam_014_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000045_seq)
          fam_014_desc.secondIndex = some fam_014_support.second := by
    decide
  have hchecks :
      SourceChecks fam_014_support case_000045_rank.val hlt case_000045_mask := by
    simp [SourceChecks, hseq, fam_014_support,
      checkTranslationConstraintSource, case_000045_seq, impactFace]
  exact ⟨
    by simpa [fam_014_desc, hseq] using hfirstIndex,
    by simpa [fam_014_desc, hseq] using hsecondIndex,
    by simpa [fam_014_desc] using hchecks
  ⟩

private theorem case_000045_applies :
    fam_014_desc.Applies case_000045_rank.val case_000045_mask := by
  exact ⟨
    case_000045_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_014_desc, fam_014_support, case_000045_support] using case_000045_rows
  ⟩

private theorem case_000045_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k012.toSourceIndexStateKey
      case_000045_rank.val case_000045_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000045_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_014_desc, fam_014_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000045_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_014_desc, fam_014_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000045_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_014_desc, fam_014_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support] using hs.2.2
    }

private theorem case_000045_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k012.toSourceIndexStateKey
      case_000045_rank.val case_000045_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_012_support, case_000045_support] using case_000045_rows)

private theorem case_000045_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k012)
      case_000045_rank.val case_000045_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000045_selectorSourceFacts
    case_000045_selectorRowFacts

private theorem case_000045_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k012) =
      some ClassifierKey.k012 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k012

private def case_000046_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_000046_mask : SignMask := ⟨54, by decide⟩
private def case_000046_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000046_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000046_b : Vec3 Rat := { x := (-28/27), y := (-92/27), z := (380/27) }
private def case_000046_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000046_secondLine : StrictLin2 := { a := (-21/1258), b := (21/1258), c := (-316/629) }

private theorem case_000046_rankWord :
    rankPairWord? case_000046_word = some case_000046_rank := by
  decide

private theorem case_000046_unrank :
    unrankPairWord case_000046_rank = case_000046_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000046_word case_000046_rank).1
    case_000046_rankWord |>.symm

private theorem case_000046_seqChoice :
    translationChoiceSeq case_000046_word case_000046_mask = case_000046_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000046_seqAtRank :
    translationSeqAtRankMask case_000046_rank case_000046_mask = case_000046_seq := by
  rw [translationSeqAtRankMask, case_000046_unrank]
  exact case_000046_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000046_bAtRank :
    translationBAtRankMask case_000046_rank case_000046_mask = case_000046_b := by
  rw [translationBAtRankMask, case_000046_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000046_b, case_000046_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_firstLine_eq :
    case_000046_support.firstLine case_000046_seq case_000046_b = case_000046_firstLine := by
  norm_num [case_000046_firstLine, case_000046_support, case_000046_seq, case_000046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_secondLine_eq :
    case_000046_support.secondLine case_000046_seq case_000046_b = case_000046_secondLine := by
  norm_num [case_000046_secondLine, case_000046_support, case_000046_seq, case_000046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_rows :
    OppOneMinusVarSecondRows case_000046_support case_000046_rank.val case_000046_mask := by
  intro hlt
  have hrank : (⟨case_000046_rank.val, hlt⟩ : Fin numPairWords) = case_000046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_seq := by
    simpa [hrank] using case_000046_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_b := by
    simpa [hrank] using case_000046_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000046_support case_000046_rank.val hlt
          case_000046_mask = case_000046_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000046_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000046_support case_000046_rank.val hlt
          case_000046_mask = case_000046_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000046_secondLine_eq]
  have case_000046_fixedFirst :
      FixedRow (FirstLineAt case_000046_support case_000046_rank.val hlt case_000046_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000046_firstLine, FixedRow]
  have case_000046_rowSecond :
      OppPosRow (SecondLineAt case_000046_support case_000046_rank.val hlt case_000046_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000046_secondLine, OppPosRow]
  exact ⟨case_000046_fixedFirst, case_000046_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000046_sourceMatches :
    fam_013_desc.SourceMatches case_000046_rank.val case_000046_mask := by
  intro hlt
  have hrank :
      (⟨case_000046_rank.val, hlt⟩ : Fin numPairWords) = case_000046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_seq := by
    simpa [hrank] using case_000046_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000046_seq)
          fam_013_desc.firstIndex = some fam_013_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000046_seq)
          fam_013_desc.secondIndex = some fam_013_support.second := by
    decide
  have hchecks :
      SourceChecks fam_013_support case_000046_rank.val hlt case_000046_mask := by
    simp [SourceChecks, hseq, fam_013_support,
      checkTranslationConstraintSource, case_000046_seq, impactFace]
  exact ⟨
    by simpa [fam_013_desc, hseq] using hfirstIndex,
    by simpa [fam_013_desc, hseq] using hsecondIndex,
    by simpa [fam_013_desc] using hchecks
  ⟩

private theorem case_000046_applies :
    fam_013_desc.Applies case_000046_rank.val case_000046_mask := by
  exact ⟨
    case_000046_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_013_desc, fam_013_support, case_000046_support] using case_000046_rows
  ⟩

private theorem case_000046_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k042.toSourceIndexStateKey
      case_000046_rank.val case_000046_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000046_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_013_desc, fam_013_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000046_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_013_desc, fam_013_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000046_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_013_desc, fam_013_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support] using hs.2.2
    }

private theorem case_000046_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k042.toSourceIndexStateKey
      case_000046_rank.val case_000046_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support, case_000046_support] using case_000046_rows)

private theorem case_000046_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k042)
      case_000046_rank.val case_000046_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000046_selectorSourceFacts
    case_000046_selectorRowFacts

private theorem case_000046_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k042) =
      some ClassifierKey.k042 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k042

private def case_000047_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_000047_mask : SignMask := ⟨55, by decide⟩
private def case_000047_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000047_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000047_b : Vec3 Rat := { x := (-28/27), y := (124/27), z := (380/27) }
private def case_000047_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000047_secondLine : StrictLin2 := { a := (-21/418), b := (21/418), c := (-181/209) }

private theorem case_000047_rankWord :
    rankPairWord? case_000047_word = some case_000047_rank := by
  decide

private theorem case_000047_unrank :
    unrankPairWord case_000047_rank = case_000047_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000047_word case_000047_rank).1
    case_000047_rankWord |>.symm

private theorem case_000047_seqChoice :
    translationChoiceSeq case_000047_word case_000047_mask = case_000047_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000047_seqAtRank :
    translationSeqAtRankMask case_000047_rank case_000047_mask = case_000047_seq := by
  rw [translationSeqAtRankMask, case_000047_unrank]
  exact case_000047_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000047_bAtRank :
    translationBAtRankMask case_000047_rank case_000047_mask = case_000047_b := by
  rw [translationBAtRankMask, case_000047_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000047_b, case_000047_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_firstLine_eq :
    case_000047_support.firstLine case_000047_seq case_000047_b = case_000047_firstLine := by
  norm_num [case_000047_firstLine, case_000047_support, case_000047_seq, case_000047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_secondLine_eq :
    case_000047_support.secondLine case_000047_seq case_000047_b = case_000047_secondLine := by
  norm_num [case_000047_secondLine, case_000047_support, case_000047_seq, case_000047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_rows :
    OppOneMinusVarSecondRows case_000047_support case_000047_rank.val case_000047_mask := by
  intro hlt
  have hrank : (⟨case_000047_rank.val, hlt⟩ : Fin numPairWords) = case_000047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_seq := by
    simpa [hrank] using case_000047_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_b := by
    simpa [hrank] using case_000047_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000047_support case_000047_rank.val hlt
          case_000047_mask = case_000047_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000047_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000047_support case_000047_rank.val hlt
          case_000047_mask = case_000047_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000047_secondLine_eq]
  have case_000047_fixedFirst :
      FixedRow (FirstLineAt case_000047_support case_000047_rank.val hlt case_000047_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000047_firstLine, FixedRow]
  have case_000047_rowSecond :
      OppPosRow (SecondLineAt case_000047_support case_000047_rank.val hlt case_000047_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000047_secondLine, OppPosRow]
  exact ⟨case_000047_fixedFirst, case_000047_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000047_sourceMatches :
    fam_013_desc.SourceMatches case_000047_rank.val case_000047_mask := by
  intro hlt
  have hrank :
      (⟨case_000047_rank.val, hlt⟩ : Fin numPairWords) = case_000047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_seq := by
    simpa [hrank] using case_000047_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000047_seq)
          fam_013_desc.firstIndex = some fam_013_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000047_seq)
          fam_013_desc.secondIndex = some fam_013_support.second := by
    decide
  have hchecks :
      SourceChecks fam_013_support case_000047_rank.val hlt case_000047_mask := by
    simp [SourceChecks, hseq, fam_013_support,
      checkTranslationConstraintSource, case_000047_seq, impactFace]
  exact ⟨
    by simpa [fam_013_desc, hseq] using hfirstIndex,
    by simpa [fam_013_desc, hseq] using hsecondIndex,
    by simpa [fam_013_desc] using hchecks
  ⟩

private theorem case_000047_applies :
    fam_013_desc.Applies case_000047_rank.val case_000047_mask := by
  exact ⟨
    case_000047_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_013_desc, fam_013_support, case_000047_support] using case_000047_rows
  ⟩

private theorem case_000047_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k042.toSourceIndexStateKey
      case_000047_rank.val case_000047_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000047_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_013_desc, fam_013_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000047_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_013_desc, fam_013_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000047_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_013_desc, fam_013_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support] using hs.2.2
    }

private theorem case_000047_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k042.toSourceIndexStateKey
      case_000047_rank.val case_000047_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_042_support, case_000047_support] using case_000047_rows)

private theorem case_000047_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k042)
      case_000047_rank.val case_000047_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000047_selectorSourceFacts
    case_000047_selectorRowFacts

private theorem case_000047_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k042) =
      some ClassifierKey.k042 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k042

private def case_000048_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_000048_mask : SignMask := ⟨63, by decide⟩
private def case_000048_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000048_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000048_b : Vec3 Rat := { x := (-172/27), y := (268/27), z := (236/27) }
private def case_000048_firstLine : StrictLin2 := { a := (43/69), b := (-43/69), c := (-199/207) }
private def case_000048_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000048_rankWord :
    rankPairWord? case_000048_word = some case_000048_rank := by
  decide

private theorem case_000048_unrank :
    unrankPairWord case_000048_rank = case_000048_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000048_word case_000048_rank).1
    case_000048_rankWord |>.symm

private theorem case_000048_seqChoice :
    translationChoiceSeq case_000048_word case_000048_mask = case_000048_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000048_seqAtRank :
    translationSeqAtRankMask case_000048_rank case_000048_mask = case_000048_seq := by
  rw [translationSeqAtRankMask, case_000048_unrank]
  exact case_000048_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000048_bAtRank :
    translationBAtRankMask case_000048_rank case_000048_mask = case_000048_b := by
  rw [translationBAtRankMask, case_000048_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000048_b, case_000048_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_firstLine_eq :
    case_000048_support.firstLine case_000048_seq case_000048_b = case_000048_firstLine := by
  norm_num [case_000048_firstLine, case_000048_support, case_000048_seq, case_000048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_secondLine_eq :
    case_000048_support.secondLine case_000048_seq case_000048_b = case_000048_secondLine := by
  norm_num [case_000048_secondLine, case_000048_support, case_000048_seq, case_000048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_rows :
    OppMinusOneVarFirstRows case_000048_support case_000048_rank.val case_000048_mask := by
  intro hlt
  have hrank : (⟨case_000048_rank.val, hlt⟩ : Fin numPairWords) = case_000048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_seq := by
    simpa [hrank] using case_000048_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_b := by
    simpa [hrank] using case_000048_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000048_support case_000048_rank.val hlt
          case_000048_mask = case_000048_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000048_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000048_support case_000048_rank.val hlt
          case_000048_mask = case_000048_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000048_secondLine_eq]
  have case_000048_rowFirst :
      OppNegRow (FirstLineAt case_000048_support case_000048_rank.val hlt case_000048_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000048_firstLine, OppNegRow]
  have case_000048_fixedSecond :
      FixedRow (SecondLineAt case_000048_support case_000048_rank.val hlt case_000048_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000048_secondLine, FixedRow]
  exact ⟨case_000048_rowFirst, case_000048_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000048_sourceMatches :
    fam_015_desc.SourceMatches case_000048_rank.val case_000048_mask := by
  intro hlt
  have hrank :
      (⟨case_000048_rank.val, hlt⟩ : Fin numPairWords) = case_000048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_seq := by
    simpa [hrank] using case_000048_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000048_seq)
          fam_015_desc.firstIndex = some fam_015_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000048_seq)
          fam_015_desc.secondIndex = some fam_015_support.second := by
    decide
  have hchecks :
      SourceChecks fam_015_support case_000048_rank.val hlt case_000048_mask := by
    simp [SourceChecks, hseq, fam_015_support,
      checkTranslationConstraintSource, case_000048_seq, impactFace]
  exact ⟨
    by simpa [fam_015_desc, hseq] using hfirstIndex,
    by simpa [fam_015_desc, hseq] using hsecondIndex,
    by simpa [fam_015_desc] using hchecks
  ⟩

private theorem case_000048_applies :
    fam_015_desc.Applies case_000048_rank.val case_000048_mask := by
  exact ⟨
    case_000048_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_015_desc, fam_015_support, case_000048_support] using case_000048_rows
  ⟩

private theorem case_000048_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k075.toSourceIndexStateKey
      case_000048_rank.val case_000048_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000048_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_015_desc, fam_015_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000048_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_015_desc, fam_015_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000048_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_015_desc, fam_015_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support] using hs.2.2
    }

private theorem case_000048_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k075.toSourceIndexStateKey
      case_000048_rank.val case_000048_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support, case_000048_support] using case_000048_rows)

private theorem case_000048_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k075)
      case_000048_rank.val case_000048_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000048_selectorSourceFacts
    case_000048_selectorRowFacts

private theorem case_000048_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k075) =
      some ClassifierKey.k075 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k075

private def case_000049_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000049_mask : SignMask := ⟨18, by decide⟩
private def case_000049_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000049_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000049_b : Vec3 Rat := { x := (-236/27), y := (-364/27), z := (76/27) }
private def case_000049_firstLine : StrictLin2 := { a := -1, b := -1, c := (-85/59) }
private def case_000049_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000049_rankWord :
    rankPairWord? case_000049_word = some case_000049_rank := by
  decide

private theorem case_000049_unrank :
    unrankPairWord case_000049_rank = case_000049_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000049_word case_000049_rank).1
    case_000049_rankWord |>.symm

private theorem case_000049_seqChoice :
    translationChoiceSeq case_000049_word case_000049_mask = case_000049_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000049_seqAtRank :
    translationSeqAtRankMask case_000049_rank case_000049_mask = case_000049_seq := by
  rw [translationSeqAtRankMask, case_000049_unrank]
  exact case_000049_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000049_bAtRank :
    translationBAtRankMask case_000049_rank case_000049_mask = case_000049_b := by
  rw [translationBAtRankMask, case_000049_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000049_b, case_000049_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_firstLine_eq :
    case_000049_support.firstLine case_000049_seq case_000049_b = case_000049_firstLine := by
  norm_num [case_000049_firstLine, case_000049_support, case_000049_seq, case_000049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_secondLine_eq :
    case_000049_support.secondLine case_000049_seq case_000049_b = case_000049_secondLine := by
  norm_num [case_000049_secondLine, case_000049_support, case_000049_seq, case_000049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_rows :
    EqEqPosVarFirstRows case_000049_support case_000049_rank.val case_000049_mask := by
  intro hlt
  have hrank : (⟨case_000049_rank.val, hlt⟩ : Fin numPairWords) = case_000049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_seq := by
    simpa [hrank] using case_000049_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_b := by
    simpa [hrank] using case_000049_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000049_support case_000049_rank.val hlt
          case_000049_mask = case_000049_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000049_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000049_support case_000049_rank.val hlt
          case_000049_mask = case_000049_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000049_secondLine_eq]
  have case_000049_rowFirst :
      EqEqPosRow (FirstLineAt case_000049_support case_000049_rank.val hlt case_000049_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000049_firstLine, EqEqPosRow]
  have case_000049_fixedSecond :
      FixedRow (SecondLineAt case_000049_support case_000049_rank.val hlt case_000049_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000049_secondLine, FixedRow]
  exact ⟨case_000049_rowFirst, case_000049_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000049_sourceMatches :
    fam_000_desc.SourceMatches case_000049_rank.val case_000049_mask := by
  intro hlt
  have hrank :
      (⟨case_000049_rank.val, hlt⟩ : Fin numPairWords) = case_000049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_seq := by
    simpa [hrank] using case_000049_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000049_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000049_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000049_rank.val hlt case_000049_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000049_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000049_applies :
    fam_000_desc.Applies case_000049_rank.val case_000049_mask := by
  exact ⟨
    case_000049_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000049_support] using case_000049_rows
  ⟩

private theorem case_000049_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000049_rank.val case_000049_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000049_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000049_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000049_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000049_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000049_rank.val case_000049_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000049_support] using case_000049_rows)

private theorem case_000049_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000049_rank.val case_000049_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000049_selectorSourceFacts
    case_000049_selectorRowFacts

private theorem case_000049_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000050_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000050_mask : SignMask := ⟨22, by decide⟩
private def case_000050_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000050_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000050_b : Vec3 Rat := { x := (-124/27), y := (-284/27), z := (284/27) }
private def case_000050_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000050_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000050_rankWord :
    rankPairWord? case_000050_word = some case_000050_rank := by
  decide

private theorem case_000050_unrank :
    unrankPairWord case_000050_rank = case_000050_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000050_word case_000050_rank).1
    case_000050_rankWord |>.symm

private theorem case_000050_seqChoice :
    translationChoiceSeq case_000050_word case_000050_mask = case_000050_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000050_seqAtRank :
    translationSeqAtRankMask case_000050_rank case_000050_mask = case_000050_seq := by
  rw [translationSeqAtRankMask, case_000050_unrank]
  exact case_000050_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000050_bAtRank :
    translationBAtRankMask case_000050_rank case_000050_mask = case_000050_b := by
  rw [translationBAtRankMask, case_000050_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000050_b, case_000050_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_firstLine_eq :
    case_000050_support.firstLine case_000050_seq case_000050_b = case_000050_firstLine := by
  norm_num [case_000050_firstLine, case_000050_support, case_000050_seq, case_000050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_secondLine_eq :
    case_000050_support.secondLine case_000050_seq case_000050_b = case_000050_secondLine := by
  norm_num [case_000050_secondLine, case_000050_support, case_000050_seq, case_000050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_rows :
    EqEqPosVarFirstRows case_000050_support case_000050_rank.val case_000050_mask := by
  intro hlt
  have hrank : (⟨case_000050_rank.val, hlt⟩ : Fin numPairWords) = case_000050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_seq := by
    simpa [hrank] using case_000050_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_b := by
    simpa [hrank] using case_000050_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000050_support case_000050_rank.val hlt
          case_000050_mask = case_000050_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000050_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000050_support case_000050_rank.val hlt
          case_000050_mask = case_000050_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000050_secondLine_eq]
  have case_000050_rowFirst :
      EqEqPosRow (FirstLineAt case_000050_support case_000050_rank.val hlt case_000050_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000050_firstLine, EqEqPosRow]
  have case_000050_fixedSecond :
      FixedRow (SecondLineAt case_000050_support case_000050_rank.val hlt case_000050_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000050_secondLine, FixedRow]
  exact ⟨case_000050_rowFirst, case_000050_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000050_sourceMatches :
    fam_005_desc.SourceMatches case_000050_rank.val case_000050_mask := by
  intro hlt
  have hrank :
      (⟨case_000050_rank.val, hlt⟩ : Fin numPairWords) = case_000050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_seq := by
    simpa [hrank] using case_000050_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000050_seq)
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000050_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000050_rank.val hlt case_000050_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000050_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000050_applies :
    fam_005_desc.Applies case_000050_rank.val case_000050_mask := by
  exact ⟨
    case_000050_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000050_support] using case_000050_rows
  ⟩

private theorem case_000050_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k015.toSourceIndexStateKey
      case_000050_rank.val case_000050_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000050_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000050_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000050_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_005_desc, fam_005_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support] using hs.2.2
    }

private theorem case_000050_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k015.toSourceIndexStateKey
      case_000050_rank.val case_000050_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_015_support, case_000050_support] using case_000050_rows)

private theorem case_000050_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k015)
      case_000050_rank.val case_000050_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000050_selectorSourceFacts
    case_000050_selectorRowFacts

private theorem case_000050_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k015) =
      some ClassifierKey.k015 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k015

private def case_000051_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000051_mask : SignMask := ⟨24, by decide⟩
private def case_000051_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000051_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000051_b : Vec3 Rat := { x := (-380/27), y := (-220/27), z := (-284/27) }
private def case_000051_firstLine : StrictLin2 := { a := -1, b := -1, c := (-157/95) }
private def case_000051_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000051_rankWord :
    rankPairWord? case_000051_word = some case_000051_rank := by
  decide

private theorem case_000051_unrank :
    unrankPairWord case_000051_rank = case_000051_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000051_word case_000051_rank).1
    case_000051_rankWord |>.symm

private theorem case_000051_seqChoice :
    translationChoiceSeq case_000051_word case_000051_mask = case_000051_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000051_seqAtRank :
    translationSeqAtRankMask case_000051_rank case_000051_mask = case_000051_seq := by
  rw [translationSeqAtRankMask, case_000051_unrank]
  exact case_000051_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000051_bAtRank :
    translationBAtRankMask case_000051_rank case_000051_mask = case_000051_b := by
  rw [translationBAtRankMask, case_000051_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000051_b, case_000051_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_firstLine_eq :
    case_000051_support.firstLine case_000051_seq case_000051_b = case_000051_firstLine := by
  norm_num [case_000051_firstLine, case_000051_support, case_000051_seq, case_000051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_secondLine_eq :
    case_000051_support.secondLine case_000051_seq case_000051_b = case_000051_secondLine := by
  norm_num [case_000051_secondLine, case_000051_support, case_000051_seq, case_000051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_rows :
    EqEqPosVarFirstRows case_000051_support case_000051_rank.val case_000051_mask := by
  intro hlt
  have hrank : (⟨case_000051_rank.val, hlt⟩ : Fin numPairWords) = case_000051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_seq := by
    simpa [hrank] using case_000051_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_b := by
    simpa [hrank] using case_000051_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000051_support case_000051_rank.val hlt
          case_000051_mask = case_000051_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000051_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000051_support case_000051_rank.val hlt
          case_000051_mask = case_000051_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000051_secondLine_eq]
  have case_000051_rowFirst :
      EqEqPosRow (FirstLineAt case_000051_support case_000051_rank.val hlt case_000051_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000051_firstLine, EqEqPosRow]
  have case_000051_fixedSecond :
      FixedRow (SecondLineAt case_000051_support case_000051_rank.val hlt case_000051_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000051_secondLine, FixedRow]
  exact ⟨case_000051_rowFirst, case_000051_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000051_sourceMatches :
    fam_000_desc.SourceMatches case_000051_rank.val case_000051_mask := by
  intro hlt
  have hrank :
      (⟨case_000051_rank.val, hlt⟩ : Fin numPairWords) = case_000051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_seq := by
    simpa [hrank] using case_000051_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000051_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000051_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000051_rank.val hlt case_000051_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000051_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000051_applies :
    fam_000_desc.Applies case_000051_rank.val case_000051_mask := by
  exact ⟨
    case_000051_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000051_support] using case_000051_rows
  ⟩

private theorem case_000051_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000051_rank.val case_000051_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000051_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000051_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000051_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000051_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000051_rank.val case_000051_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000051_support] using case_000051_rows)

private theorem case_000051_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000051_rank.val case_000051_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000051_selectorSourceFacts
    case_000051_selectorRowFacts

private theorem case_000051_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000052_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000052_mask : SignMask := ⟨41, by decide⟩
private def case_000052_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000052_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000052_b : Vec3 Rat := { x := (-92/27), y := (284/27), z := (-284/27) }
private def case_000052_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000052_secondLine : StrictLin2 := { a := (-27/284), b := (-27/284), c := (-27/142) }

private theorem case_000052_rankWord :
    rankPairWord? case_000052_word = some case_000052_rank := by
  decide

private theorem case_000052_unrank :
    unrankPairWord case_000052_rank = case_000052_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000052_word case_000052_rank).1
    case_000052_rankWord |>.symm

private theorem case_000052_seqChoice :
    translationChoiceSeq case_000052_word case_000052_mask = case_000052_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000052_seqAtRank :
    translationSeqAtRankMask case_000052_rank case_000052_mask = case_000052_seq := by
  rw [translationSeqAtRankMask, case_000052_unrank]
  exact case_000052_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000052_bAtRank :
    translationBAtRankMask case_000052_rank case_000052_mask = case_000052_b := by
  rw [translationBAtRankMask, case_000052_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000052_b, case_000052_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_firstLine_eq :
    case_000052_support.firstLine case_000052_seq case_000052_b = case_000052_firstLine := by
  norm_num [case_000052_firstLine, case_000052_support, case_000052_seq, case_000052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_secondLine_eq :
    case_000052_support.secondLine case_000052_seq case_000052_b = case_000052_secondLine := by
  norm_num [case_000052_secondLine, case_000052_support, case_000052_seq, case_000052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_rows :
    EqEqPosVarSecondRows case_000052_support case_000052_rank.val case_000052_mask := by
  intro hlt
  have hrank : (⟨case_000052_rank.val, hlt⟩ : Fin numPairWords) = case_000052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_seq := by
    simpa [hrank] using case_000052_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_b := by
    simpa [hrank] using case_000052_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000052_support case_000052_rank.val hlt
          case_000052_mask = case_000052_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000052_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000052_support case_000052_rank.val hlt
          case_000052_mask = case_000052_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000052_secondLine_eq]
  have case_000052_fixedFirst :
      FixedRow (FirstLineAt case_000052_support case_000052_rank.val hlt case_000052_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000052_firstLine, FixedRow]
  have case_000052_rowSecond :
      EqEqPosRow (SecondLineAt case_000052_support case_000052_rank.val hlt case_000052_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000052_secondLine, EqEqPosRow]
  exact ⟨case_000052_fixedFirst, case_000052_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000052_sourceMatches :
    fam_002_desc.SourceMatches case_000052_rank.val case_000052_mask := by
  intro hlt
  have hrank :
      (⟨case_000052_rank.val, hlt⟩ : Fin numPairWords) = case_000052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_seq := by
    simpa [hrank] using case_000052_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000052_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000052_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000052_rank.val hlt case_000052_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000052_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000052_applies :
    fam_002_desc.Applies case_000052_rank.val case_000052_mask := by
  exact ⟨
    case_000052_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000052_support] using case_000052_rows
  ⟩

private theorem case_000052_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000052_rank.val case_000052_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000052_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000052_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000052_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000052_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000052_rank.val case_000052_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000052_support] using case_000052_rows)

private theorem case_000052_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000052_rank.val case_000052_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000052_selectorSourceFacts
    case_000052_selectorRowFacts

private theorem case_000052_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

private def case_000053_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000053_mask : SignMask := ⟨54, by decide⟩
private def case_000053_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000053_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_000053_b : Vec3 Rat := { x := (-76/27), y := (-44/27), z := (332/27) }
private def case_000053_firstLine : StrictLin2 := { a := -1, b := 1, c := (-169/19) }
private def case_000053_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000053_rankWord :
    rankPairWord? case_000053_word = some case_000053_rank := by
  decide

private theorem case_000053_unrank :
    unrankPairWord case_000053_rank = case_000053_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000053_word case_000053_rank).1
    case_000053_rankWord |>.symm

private theorem case_000053_seqChoice :
    translationChoiceSeq case_000053_word case_000053_mask = case_000053_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000053_seqAtRank :
    translationSeqAtRankMask case_000053_rank case_000053_mask = case_000053_seq := by
  rw [translationSeqAtRankMask, case_000053_unrank]
  exact case_000053_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000053_bAtRank :
    translationBAtRankMask case_000053_rank case_000053_mask = case_000053_b := by
  rw [translationBAtRankMask, case_000053_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000053_b, case_000053_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_firstLine_eq :
    case_000053_support.firstLine case_000053_seq case_000053_b = case_000053_firstLine := by
  norm_num [case_000053_firstLine, case_000053_support, case_000053_seq, case_000053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_secondLine_eq :
    case_000053_support.secondLine case_000053_seq case_000053_b = case_000053_secondLine := by
  norm_num [case_000053_secondLine, case_000053_support, case_000053_seq, case_000053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_rows :
    OppOneMinusVarFirstRows case_000053_support case_000053_rank.val case_000053_mask := by
  intro hlt
  have hrank : (⟨case_000053_rank.val, hlt⟩ : Fin numPairWords) = case_000053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_seq := by
    simpa [hrank] using case_000053_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_b := by
    simpa [hrank] using case_000053_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000053_support case_000053_rank.val hlt
          case_000053_mask = case_000053_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000053_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000053_support case_000053_rank.val hlt
          case_000053_mask = case_000053_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000053_secondLine_eq]
  have case_000053_rowFirst :
      OppPosRow (FirstLineAt case_000053_support case_000053_rank.val hlt case_000053_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000053_firstLine, OppPosRow]
  have case_000053_fixedSecond :
      FixedRow (SecondLineAt case_000053_support case_000053_rank.val hlt case_000053_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000053_secondLine, FixedRow]
  exact ⟨case_000053_rowFirst, case_000053_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000053_sourceMatches :
    fam_001_desc.SourceMatches case_000053_rank.val case_000053_mask := by
  intro hlt
  have hrank :
      (⟨case_000053_rank.val, hlt⟩ : Fin numPairWords) = case_000053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_seq := by
    simpa [hrank] using case_000053_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000053_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000053_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000053_rank.val hlt case_000053_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000053_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000053_applies :
    fam_001_desc.Applies case_000053_rank.val case_000053_mask := by
  exact ⟨
    case_000053_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000053_support] using case_000053_rows
  ⟩

private theorem case_000053_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000053_rank.val case_000053_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000053_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000053_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000053_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000053_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000053_rank.val case_000053_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000053_support] using case_000053_rows)

private theorem case_000053_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000053_rank.val case_000053_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000053_selectorSourceFacts
    case_000053_selectorRowFacts

private theorem case_000053_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000054_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000054_mask : SignMask := ⟨55, by decide⟩
private def case_000054_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000054_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_000054_b : Vec3 Rat := { x := (-76/27), y := (172/27), z := (332/27) }
private def case_000054_firstLine : StrictLin2 := { a := -1, b := 1, c := (-61/19) }
private def case_000054_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000054_rankWord :
    rankPairWord? case_000054_word = some case_000054_rank := by
  decide

private theorem case_000054_unrank :
    unrankPairWord case_000054_rank = case_000054_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000054_word case_000054_rank).1
    case_000054_rankWord |>.symm

private theorem case_000054_seqChoice :
    translationChoiceSeq case_000054_word case_000054_mask = case_000054_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000054_seqAtRank :
    translationSeqAtRankMask case_000054_rank case_000054_mask = case_000054_seq := by
  rw [translationSeqAtRankMask, case_000054_unrank]
  exact case_000054_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000054_bAtRank :
    translationBAtRankMask case_000054_rank case_000054_mask = case_000054_b := by
  rw [translationBAtRankMask, case_000054_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000054_b, case_000054_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_firstLine_eq :
    case_000054_support.firstLine case_000054_seq case_000054_b = case_000054_firstLine := by
  norm_num [case_000054_firstLine, case_000054_support, case_000054_seq, case_000054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_secondLine_eq :
    case_000054_support.secondLine case_000054_seq case_000054_b = case_000054_secondLine := by
  norm_num [case_000054_secondLine, case_000054_support, case_000054_seq, case_000054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_rows :
    OppOneMinusVarFirstRows case_000054_support case_000054_rank.val case_000054_mask := by
  intro hlt
  have hrank : (⟨case_000054_rank.val, hlt⟩ : Fin numPairWords) = case_000054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_seq := by
    simpa [hrank] using case_000054_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_b := by
    simpa [hrank] using case_000054_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000054_support case_000054_rank.val hlt
          case_000054_mask = case_000054_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000054_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000054_support case_000054_rank.val hlt
          case_000054_mask = case_000054_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000054_secondLine_eq]
  have case_000054_rowFirst :
      OppPosRow (FirstLineAt case_000054_support case_000054_rank.val hlt case_000054_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000054_firstLine, OppPosRow]
  have case_000054_fixedSecond :
      FixedRow (SecondLineAt case_000054_support case_000054_rank.val hlt case_000054_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000054_secondLine, FixedRow]
  exact ⟨case_000054_rowFirst, case_000054_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000054_sourceMatches :
    fam_001_desc.SourceMatches case_000054_rank.val case_000054_mask := by
  intro hlt
  have hrank :
      (⟨case_000054_rank.val, hlt⟩ : Fin numPairWords) = case_000054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_seq := by
    simpa [hrank] using case_000054_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000054_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000054_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000054_rank.val hlt case_000054_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000054_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000054_applies :
    fam_001_desc.Applies case_000054_rank.val case_000054_mask := by
  exact ⟨
    case_000054_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000054_support] using case_000054_rows
  ⟩

private theorem case_000054_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000054_rank.val case_000054_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000054_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000054_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000054_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000054_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000054_rank.val case_000054_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000054_support] using case_000054_rows)

private theorem case_000054_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000054_rank.val case_000054_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000054_selectorSourceFacts
    case_000054_selectorRowFacts

private theorem case_000054_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

private def case_000055_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000055_mask : SignMask := ⟨57, by decide⟩
private def case_000055_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000055_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000055_b : Vec3 Rat := { x := (-332/27), y := (236/27), z := (-236/27) }
private def case_000055_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000055_secondLine : StrictLin2 := { a := (-27/236), b := (-27/236), c := (-27/118) }

private theorem case_000055_rankWord :
    rankPairWord? case_000055_word = some case_000055_rank := by
  decide

private theorem case_000055_unrank :
    unrankPairWord case_000055_rank = case_000055_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000055_word case_000055_rank).1
    case_000055_rankWord |>.symm

private theorem case_000055_seqChoice :
    translationChoiceSeq case_000055_word case_000055_mask = case_000055_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000055_seqAtRank :
    translationSeqAtRankMask case_000055_rank case_000055_mask = case_000055_seq := by
  rw [translationSeqAtRankMask, case_000055_unrank]
  exact case_000055_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000055_bAtRank :
    translationBAtRankMask case_000055_rank case_000055_mask = case_000055_b := by
  rw [translationBAtRankMask, case_000055_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000055_b, case_000055_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_firstLine_eq :
    case_000055_support.firstLine case_000055_seq case_000055_b = case_000055_firstLine := by
  norm_num [case_000055_firstLine, case_000055_support, case_000055_seq, case_000055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_secondLine_eq :
    case_000055_support.secondLine case_000055_seq case_000055_b = case_000055_secondLine := by
  norm_num [case_000055_secondLine, case_000055_support, case_000055_seq, case_000055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_rows :
    EqEqPosVarSecondRows case_000055_support case_000055_rank.val case_000055_mask := by
  intro hlt
  have hrank : (⟨case_000055_rank.val, hlt⟩ : Fin numPairWords) = case_000055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_seq := by
    simpa [hrank] using case_000055_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_b := by
    simpa [hrank] using case_000055_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000055_support case_000055_rank.val hlt
          case_000055_mask = case_000055_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000055_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000055_support case_000055_rank.val hlt
          case_000055_mask = case_000055_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000055_secondLine_eq]
  have case_000055_fixedFirst :
      FixedRow (FirstLineAt case_000055_support case_000055_rank.val hlt case_000055_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000055_firstLine, FixedRow]
  have case_000055_rowSecond :
      EqEqPosRow (SecondLineAt case_000055_support case_000055_rank.val hlt case_000055_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000055_secondLine, EqEqPosRow]
  exact ⟨case_000055_fixedFirst, case_000055_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000055_sourceMatches :
    fam_002_desc.SourceMatches case_000055_rank.val case_000055_mask := by
  intro hlt
  have hrank :
      (⟨case_000055_rank.val, hlt⟩ : Fin numPairWords) = case_000055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_seq := by
    simpa [hrank] using case_000055_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000055_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000055_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000055_rank.val hlt case_000055_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000055_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000055_applies :
    fam_002_desc.Applies case_000055_rank.val case_000055_mask := by
  exact ⟨
    case_000055_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000055_support] using case_000055_rows
  ⟩

private theorem case_000055_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000055_rank.val case_000055_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000055_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000055_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000055_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_002_desc, fam_002_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support] using hs.2.2
    }

private theorem case_000055_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k003.toSourceIndexStateKey
      case_000055_rank.val case_000055_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_003_support, case_000055_support] using case_000055_rows)

private theorem case_000055_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003)
      case_000055_rank.val case_000055_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000055_selectorSourceFacts
    case_000055_selectorRowFacts

private theorem case_000055_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k003) =
      some ClassifierKey.k003 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k003

private def case_000056_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_000056_mask : SignMask := ⟨63, by decide⟩
private def case_000056_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000056_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000056_b : Vec3 Rat := { x := (-220/27), y := (316/27), z := (188/27) }
private def case_000056_firstLine : StrictLin2 := { a := (55/81), b := (-55/81), c := (-209/81) }
private def case_000056_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000056_rankWord :
    rankPairWord? case_000056_word = some case_000056_rank := by
  decide

private theorem case_000056_unrank :
    unrankPairWord case_000056_rank = case_000056_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000056_word case_000056_rank).1
    case_000056_rankWord |>.symm

private theorem case_000056_seqChoice :
    translationChoiceSeq case_000056_word case_000056_mask = case_000056_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000056_seqAtRank :
    translationSeqAtRankMask case_000056_rank case_000056_mask = case_000056_seq := by
  rw [translationSeqAtRankMask, case_000056_unrank]
  exact case_000056_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000056_bAtRank :
    translationBAtRankMask case_000056_rank case_000056_mask = case_000056_b := by
  rw [translationBAtRankMask, case_000056_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000056_b, case_000056_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_firstLine_eq :
    case_000056_support.firstLine case_000056_seq case_000056_b = case_000056_firstLine := by
  norm_num [case_000056_firstLine, case_000056_support, case_000056_seq, case_000056_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_secondLine_eq :
    case_000056_support.secondLine case_000056_seq case_000056_b = case_000056_secondLine := by
  norm_num [case_000056_secondLine, case_000056_support, case_000056_seq, case_000056_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_rows :
    OppMinusOneVarFirstRows case_000056_support case_000056_rank.val case_000056_mask := by
  intro hlt
  have hrank : (⟨case_000056_rank.val, hlt⟩ : Fin numPairWords) = case_000056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_seq := by
    simpa [hrank] using case_000056_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_b := by
    simpa [hrank] using case_000056_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000056_support case_000056_rank.val hlt
          case_000056_mask = case_000056_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000056_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000056_support case_000056_rank.val hlt
          case_000056_mask = case_000056_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000056_secondLine_eq]
  have case_000056_rowFirst :
      OppNegRow (FirstLineAt case_000056_support case_000056_rank.val hlt case_000056_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000056_firstLine, OppNegRow]
  have case_000056_fixedSecond :
      FixedRow (SecondLineAt case_000056_support case_000056_rank.val hlt case_000056_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000056_secondLine, FixedRow]
  exact ⟨case_000056_rowFirst, case_000056_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000056_sourceMatches :
    fam_015_desc.SourceMatches case_000056_rank.val case_000056_mask := by
  intro hlt
  have hrank :
      (⟨case_000056_rank.val, hlt⟩ : Fin numPairWords) = case_000056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_seq := by
    simpa [hrank] using case_000056_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000056_seq)
          fam_015_desc.firstIndex = some fam_015_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000056_seq)
          fam_015_desc.secondIndex = some fam_015_support.second := by
    decide
  have hchecks :
      SourceChecks fam_015_support case_000056_rank.val hlt case_000056_mask := by
    simp [SourceChecks, hseq, fam_015_support,
      checkTranslationConstraintSource, case_000056_seq, impactFace]
  exact ⟨
    by simpa [fam_015_desc, hseq] using hfirstIndex,
    by simpa [fam_015_desc, hseq] using hsecondIndex,
    by simpa [fam_015_desc] using hchecks
  ⟩

private theorem case_000056_applies :
    fam_015_desc.Applies case_000056_rank.val case_000056_mask := by
  exact ⟨
    case_000056_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_015_desc, fam_015_support, case_000056_support] using case_000056_rows
  ⟩

private theorem case_000056_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k075.toSourceIndexStateKey
      case_000056_rank.val case_000056_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000056_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_015_desc, fam_015_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000056_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_015_desc, fam_015_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000056_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_015_desc, fam_015_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support] using hs.2.2
    }

private theorem case_000056_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k075.toSourceIndexStateKey
      case_000056_rank.val case_000056_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_075_support, case_000056_support] using case_000056_rows)

private theorem case_000056_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k075)
      case_000056_rank.val case_000056_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000056_selectorSourceFacts
    case_000056_selectorRowFacts

private theorem case_000056_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k075) =
      some ClassifierKey.k075 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k075

private def case_000057_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000057_mask : SignMask := ⟨9, by decide⟩
private def case_000057_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000057_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000057_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000057_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000057_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000057_rankWord :
    rankPairWord? case_000057_word = some case_000057_rank := by
  decide

private theorem case_000057_unrank :
    unrankPairWord case_000057_rank = case_000057_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000057_word case_000057_rank).1
    case_000057_rankWord |>.symm

private theorem case_000057_seqChoice :
    translationChoiceSeq case_000057_word case_000057_mask = case_000057_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000057_seqAtRank :
    translationSeqAtRankMask case_000057_rank case_000057_mask = case_000057_seq := by
  rw [translationSeqAtRankMask, case_000057_unrank]
  exact case_000057_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000057_bAtRank :
    translationBAtRankMask case_000057_rank case_000057_mask = case_000057_b := by
  rw [translationBAtRankMask, case_000057_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000057_b, case_000057_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_firstLine_eq :
    case_000057_support.firstLine case_000057_seq case_000057_b = case_000057_firstLine := by
  norm_num [case_000057_firstLine, case_000057_support, case_000057_seq, case_000057_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_secondLine_eq :
    case_000057_support.secondLine case_000057_seq case_000057_b = case_000057_secondLine := by
  norm_num [case_000057_secondLine, case_000057_support, case_000057_seq, case_000057_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_rows :
    EqEqPosVarFirstRows case_000057_support case_000057_rank.val case_000057_mask := by
  intro hlt
  have hrank : (⟨case_000057_rank.val, hlt⟩ : Fin numPairWords) = case_000057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_seq := by
    simpa [hrank] using case_000057_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_b := by
    simpa [hrank] using case_000057_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000057_support case_000057_rank.val hlt
          case_000057_mask = case_000057_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000057_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000057_support case_000057_rank.val hlt
          case_000057_mask = case_000057_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000057_secondLine_eq]
  have case_000057_rowFirst :
      EqEqPosRow (FirstLineAt case_000057_support case_000057_rank.val hlt case_000057_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000057_firstLine, EqEqPosRow]
  have case_000057_fixedSecond :
      FixedRow (SecondLineAt case_000057_support case_000057_rank.val hlt case_000057_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000057_secondLine, FixedRow]
  exact ⟨case_000057_rowFirst, case_000057_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000057_sourceMatches :
    fam_000_desc.SourceMatches case_000057_rank.val case_000057_mask := by
  intro hlt
  have hrank :
      (⟨case_000057_rank.val, hlt⟩ : Fin numPairWords) = case_000057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_seq := by
    simpa [hrank] using case_000057_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000057_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000057_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000057_rank.val hlt case_000057_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000057_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000057_applies :
    fam_000_desc.Applies case_000057_rank.val case_000057_mask := by
  exact ⟨
    case_000057_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000057_support] using case_000057_rows
  ⟩

private theorem case_000057_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000057_rank.val case_000057_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000057_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000057_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000057_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000057_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000057_rank.val case_000057_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000057_support] using case_000057_rows)

private theorem case_000057_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000057_rank.val case_000057_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000057_selectorSourceFacts
    case_000057_selectorRowFacts

private theorem case_000057_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000058_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000058_mask : SignMask := ⟨16, by decide⟩
private def case_000058_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000058_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000058_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000058_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000058_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000058_rankWord :
    rankPairWord? case_000058_word = some case_000058_rank := by
  decide

private theorem case_000058_unrank :
    unrankPairWord case_000058_rank = case_000058_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000058_word case_000058_rank).1
    case_000058_rankWord |>.symm

private theorem case_000058_seqChoice :
    translationChoiceSeq case_000058_word case_000058_mask = case_000058_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000058_seqAtRank :
    translationSeqAtRankMask case_000058_rank case_000058_mask = case_000058_seq := by
  rw [translationSeqAtRankMask, case_000058_unrank]
  exact case_000058_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000058_bAtRank :
    translationBAtRankMask case_000058_rank case_000058_mask = case_000058_b := by
  rw [translationBAtRankMask, case_000058_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000058_b, case_000058_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000058_firstLine_eq :
    case_000058_support.firstLine case_000058_seq case_000058_b = case_000058_firstLine := by
  norm_num [case_000058_firstLine, case_000058_support, case_000058_seq, case_000058_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000058_secondLine_eq :
    case_000058_support.secondLine case_000058_seq case_000058_b = case_000058_secondLine := by
  norm_num [case_000058_secondLine, case_000058_support, case_000058_seq, case_000058_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000058_rows :
    EqEqPosVarFirstRows case_000058_support case_000058_rank.val case_000058_mask := by
  intro hlt
  have hrank : (⟨case_000058_rank.val, hlt⟩ : Fin numPairWords) = case_000058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_seq := by
    simpa [hrank] using case_000058_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_b := by
    simpa [hrank] using case_000058_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000058_support case_000058_rank.val hlt
          case_000058_mask = case_000058_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000058_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000058_support case_000058_rank.val hlt
          case_000058_mask = case_000058_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000058_secondLine_eq]
  have case_000058_rowFirst :
      EqEqPosRow (FirstLineAt case_000058_support case_000058_rank.val hlt case_000058_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000058_firstLine, EqEqPosRow]
  have case_000058_fixedSecond :
      FixedRow (SecondLineAt case_000058_support case_000058_rank.val hlt case_000058_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000058_secondLine, FixedRow]
  exact ⟨case_000058_rowFirst, case_000058_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000058_sourceMatches :
    fam_000_desc.SourceMatches case_000058_rank.val case_000058_mask := by
  intro hlt
  have hrank :
      (⟨case_000058_rank.val, hlt⟩ : Fin numPairWords) = case_000058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_seq := by
    simpa [hrank] using case_000058_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000058_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000058_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000058_rank.val hlt case_000058_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000058_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000058_applies :
    fam_000_desc.Applies case_000058_rank.val case_000058_mask := by
  exact ⟨
    case_000058_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000058_support] using case_000058_rows
  ⟩

private theorem case_000058_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000058_rank.val case_000058_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000058_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000058_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000058_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000058_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000058_rank.val case_000058_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000058_support] using case_000058_rows)

private theorem case_000058_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000058_rank.val case_000058_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000058_selectorSourceFacts
    case_000058_selectorRowFacts

private theorem case_000058_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000059_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000059_mask : SignMask := ⟨18, by decide⟩
private def case_000059_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000059_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000059_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (20/9) }
private def case_000059_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000059_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000059_rankWord :
    rankPairWord? case_000059_word = some case_000059_rank := by
  decide

private theorem case_000059_unrank :
    unrankPairWord case_000059_rank = case_000059_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000059_word case_000059_rank).1
    case_000059_rankWord |>.symm

private theorem case_000059_seqChoice :
    translationChoiceSeq case_000059_word case_000059_mask = case_000059_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000059_seqAtRank :
    translationSeqAtRankMask case_000059_rank case_000059_mask = case_000059_seq := by
  rw [translationSeqAtRankMask, case_000059_unrank]
  exact case_000059_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000059_bAtRank :
    translationBAtRankMask case_000059_rank case_000059_mask = case_000059_b := by
  rw [translationBAtRankMask, case_000059_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000059_b, case_000059_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000059_firstLine_eq :
    case_000059_support.firstLine case_000059_seq case_000059_b = case_000059_firstLine := by
  norm_num [case_000059_firstLine, case_000059_support, case_000059_seq, case_000059_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000059_secondLine_eq :
    case_000059_support.secondLine case_000059_seq case_000059_b = case_000059_secondLine := by
  norm_num [case_000059_secondLine, case_000059_support, case_000059_seq, case_000059_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000059_rows :
    EqEqPosVarFirstRows case_000059_support case_000059_rank.val case_000059_mask := by
  intro hlt
  have hrank : (⟨case_000059_rank.val, hlt⟩ : Fin numPairWords) = case_000059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_seq := by
    simpa [hrank] using case_000059_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_b := by
    simpa [hrank] using case_000059_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000059_support case_000059_rank.val hlt
          case_000059_mask = case_000059_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000059_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000059_support case_000059_rank.val hlt
          case_000059_mask = case_000059_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000059_secondLine_eq]
  have case_000059_rowFirst :
      EqEqPosRow (FirstLineAt case_000059_support case_000059_rank.val hlt case_000059_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000059_firstLine, EqEqPosRow]
  have case_000059_fixedSecond :
      FixedRow (SecondLineAt case_000059_support case_000059_rank.val hlt case_000059_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000059_secondLine, FixedRow]
  exact ⟨case_000059_rowFirst, case_000059_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000059_sourceMatches :
    fam_000_desc.SourceMatches case_000059_rank.val case_000059_mask := by
  intro hlt
  have hrank :
      (⟨case_000059_rank.val, hlt⟩ : Fin numPairWords) = case_000059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_seq := by
    simpa [hrank] using case_000059_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000059_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000059_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000059_rank.val hlt case_000059_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000059_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000059_applies :
    fam_000_desc.Applies case_000059_rank.val case_000059_mask := by
  exact ⟨
    case_000059_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000059_support] using case_000059_rows
  ⟩

private theorem case_000059_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000059_rank.val case_000059_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000059_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000059_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000059_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000059_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000059_rank.val case_000059_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000059_support] using case_000059_rows)

private theorem case_000059_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000059_rank.val case_000059_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000059_selectorSourceFacts
    case_000059_selectorRowFacts

private theorem case_000059_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000060_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000060_mask : SignMask := ⟨22, by decide⟩
private def case_000060_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000060_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000060_b : Vec3 Rat := { x := (-44/27), y := (-268/27), z := (268/27) }
private def case_000060_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000060_secondLine : StrictLin2 := { a := (-9/34), b := (-9/34), c := (-15/17) }

private theorem case_000060_rankWord :
    rankPairWord? case_000060_word = some case_000060_rank := by
  decide

private theorem case_000060_unrank :
    unrankPairWord case_000060_rank = case_000060_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000060_word case_000060_rank).1
    case_000060_rankWord |>.symm

private theorem case_000060_seqChoice :
    translationChoiceSeq case_000060_word case_000060_mask = case_000060_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000060_seqAtRank :
    translationSeqAtRankMask case_000060_rank case_000060_mask = case_000060_seq := by
  rw [translationSeqAtRankMask, case_000060_unrank]
  exact case_000060_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000060_bAtRank :
    translationBAtRankMask case_000060_rank case_000060_mask = case_000060_b := by
  rw [translationBAtRankMask, case_000060_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000060_b, case_000060_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000060_firstLine_eq :
    case_000060_support.firstLine case_000060_seq case_000060_b = case_000060_firstLine := by
  norm_num [case_000060_firstLine, case_000060_support, case_000060_seq, case_000060_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000060_secondLine_eq :
    case_000060_support.secondLine case_000060_seq case_000060_b = case_000060_secondLine := by
  norm_num [case_000060_secondLine, case_000060_support, case_000060_seq, case_000060_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000060_rows :
    EqEqPosVarSecondRows case_000060_support case_000060_rank.val case_000060_mask := by
  intro hlt
  have hrank : (⟨case_000060_rank.val, hlt⟩ : Fin numPairWords) = case_000060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_seq := by
    simpa [hrank] using case_000060_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_b := by
    simpa [hrank] using case_000060_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000060_support case_000060_rank.val hlt
          case_000060_mask = case_000060_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000060_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000060_support case_000060_rank.val hlt
          case_000060_mask = case_000060_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000060_secondLine_eq]
  have case_000060_fixedFirst :
      FixedRow (FirstLineAt case_000060_support case_000060_rank.val hlt case_000060_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000060_firstLine, FixedRow]
  have case_000060_rowSecond :
      EqEqPosRow (SecondLineAt case_000060_support case_000060_rank.val hlt case_000060_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000060_secondLine, EqEqPosRow]
  exact ⟨case_000060_fixedFirst, case_000060_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000060_sourceMatches :
    fam_003_desc.SourceMatches case_000060_rank.val case_000060_mask := by
  intro hlt
  have hrank :
      (⟨case_000060_rank.val, hlt⟩ : Fin numPairWords) = case_000060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_seq := by
    simpa [hrank] using case_000060_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000060_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000060_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000060_rank.val hlt case_000060_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000060_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000060_applies :
    fam_003_desc.Applies case_000060_rank.val case_000060_mask := by
  exact ⟨
    case_000060_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000060_support] using case_000060_rows
  ⟩

private theorem case_000060_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k008.toSourceIndexStateKey
      case_000060_rank.val case_000060_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000060_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_008_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000060_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_008_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000060_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_003_desc, fam_003_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_008_support] using hs.2.2
    }

private theorem case_000060_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k008.toSourceIndexStateKey
      case_000060_rank.val case_000060_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_008_support, case_000060_support] using case_000060_rows)

private theorem case_000060_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k008)
      case_000060_rank.val case_000060_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000060_selectorSourceFacts
    case_000060_selectorRowFacts

private theorem case_000060_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k008) =
      some ClassifierKey.k008 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k008

private def case_000061_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000061_mask : SignMask := ⟨24, by decide⟩
private def case_000061_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000061_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000061_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000061_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000061_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000061_rankWord :
    rankPairWord? case_000061_word = some case_000061_rank := by
  decide

private theorem case_000061_unrank :
    unrankPairWord case_000061_rank = case_000061_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000061_word case_000061_rank).1
    case_000061_rankWord |>.symm

private theorem case_000061_seqChoice :
    translationChoiceSeq case_000061_word case_000061_mask = case_000061_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000061_seqAtRank :
    translationSeqAtRankMask case_000061_rank case_000061_mask = case_000061_seq := by
  rw [translationSeqAtRankMask, case_000061_unrank]
  exact case_000061_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000061_bAtRank :
    translationBAtRankMask case_000061_rank case_000061_mask = case_000061_b := by
  rw [translationBAtRankMask, case_000061_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000061_b, case_000061_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000061_firstLine_eq :
    case_000061_support.firstLine case_000061_seq case_000061_b = case_000061_firstLine := by
  norm_num [case_000061_firstLine, case_000061_support, case_000061_seq, case_000061_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000061_secondLine_eq :
    case_000061_support.secondLine case_000061_seq case_000061_b = case_000061_secondLine := by
  norm_num [case_000061_secondLine, case_000061_support, case_000061_seq, case_000061_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000061_rows :
    EqEqPosVarFirstRows case_000061_support case_000061_rank.val case_000061_mask := by
  intro hlt
  have hrank : (⟨case_000061_rank.val, hlt⟩ : Fin numPairWords) = case_000061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_seq := by
    simpa [hrank] using case_000061_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_b := by
    simpa [hrank] using case_000061_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000061_support case_000061_rank.val hlt
          case_000061_mask = case_000061_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000061_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000061_support case_000061_rank.val hlt
          case_000061_mask = case_000061_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000061_secondLine_eq]
  have case_000061_rowFirst :
      EqEqPosRow (FirstLineAt case_000061_support case_000061_rank.val hlt case_000061_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000061_firstLine, EqEqPosRow]
  have case_000061_fixedSecond :
      FixedRow (SecondLineAt case_000061_support case_000061_rank.val hlt case_000061_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000061_secondLine, FixedRow]
  exact ⟨case_000061_rowFirst, case_000061_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000061_sourceMatches :
    fam_000_desc.SourceMatches case_000061_rank.val case_000061_mask := by
  intro hlt
  have hrank :
      (⟨case_000061_rank.val, hlt⟩ : Fin numPairWords) = case_000061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_seq := by
    simpa [hrank] using case_000061_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000061_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000061_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000061_rank.val hlt case_000061_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000061_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000061_applies :
    fam_000_desc.Applies case_000061_rank.val case_000061_mask := by
  exact ⟨
    case_000061_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000061_support] using case_000061_rows
  ⟩

private theorem case_000061_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000061_rank.val case_000061_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000061_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000061_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000061_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_000_desc, fam_000_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support] using hs.2.2
    }

private theorem case_000061_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k000.toSourceIndexStateKey
      case_000061_rank.val case_000061_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_000_support, case_000061_support] using case_000061_rows)

private theorem case_000061_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000)
      case_000061_rank.val case_000061_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000061_selectorSourceFacts
    case_000061_selectorRowFacts

private theorem case_000061_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k000) =
      some ClassifierKey.k000 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k000

private def case_000062_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000062_mask : SignMask := ⟨45, by decide⟩
private def case_000062_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000062_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000062_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000062_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000062_secondLine : StrictLin2 := { a := (-5/26), b := (5/26), c := (-12/13) }

private theorem case_000062_rankWord :
    rankPairWord? case_000062_word = some case_000062_rank := by
  decide

private theorem case_000062_unrank :
    unrankPairWord case_000062_rank = case_000062_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000062_word case_000062_rank).1
    case_000062_rankWord |>.symm

private theorem case_000062_seqChoice :
    translationChoiceSeq case_000062_word case_000062_mask = case_000062_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000062_seqAtRank :
    translationSeqAtRankMask case_000062_rank case_000062_mask = case_000062_seq := by
  rw [translationSeqAtRankMask, case_000062_unrank]
  exact case_000062_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000062_bAtRank :
    translationBAtRankMask case_000062_rank case_000062_mask = case_000062_b := by
  rw [translationBAtRankMask, case_000062_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000062_b, case_000062_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000062_firstLine_eq :
    case_000062_support.firstLine case_000062_seq case_000062_b = case_000062_firstLine := by
  norm_num [case_000062_firstLine, case_000062_support, case_000062_seq, case_000062_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000062_secondLine_eq :
    case_000062_support.secondLine case_000062_seq case_000062_b = case_000062_secondLine := by
  norm_num [case_000062_secondLine, case_000062_support, case_000062_seq, case_000062_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000062_rows :
    OppOneMinusVarSecondRows case_000062_support case_000062_rank.val case_000062_mask := by
  intro hlt
  have hrank : (⟨case_000062_rank.val, hlt⟩ : Fin numPairWords) = case_000062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_seq := by
    simpa [hrank] using case_000062_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_b := by
    simpa [hrank] using case_000062_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000062_support case_000062_rank.val hlt
          case_000062_mask = case_000062_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000062_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000062_support case_000062_rank.val hlt
          case_000062_mask = case_000062_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000062_secondLine_eq]
  have case_000062_fixedFirst :
      FixedRow (FirstLineAt case_000062_support case_000062_rank.val hlt case_000062_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000062_firstLine, FixedRow]
  have case_000062_rowSecond :
      OppPosRow (SecondLineAt case_000062_support case_000062_rank.val hlt case_000062_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000062_secondLine, OppPosRow]
  exact ⟨case_000062_fixedFirst, case_000062_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000062_sourceMatches :
    fam_018_desc.SourceMatches case_000062_rank.val case_000062_mask := by
  intro hlt
  have hrank :
      (⟨case_000062_rank.val, hlt⟩ : Fin numPairWords) = case_000062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_seq := by
    simpa [hrank] using case_000062_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000062_seq)
          fam_018_desc.firstIndex = some fam_018_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000062_seq)
          fam_018_desc.secondIndex = some fam_018_support.second := by
    decide
  have hchecks :
      SourceChecks fam_018_support case_000062_rank.val hlt case_000062_mask := by
    simp [SourceChecks, hseq, fam_018_support,
      checkTranslationConstraintSource, case_000062_seq, impactFace]
  exact ⟨
    by simpa [fam_018_desc, hseq] using hfirstIndex,
    by simpa [fam_018_desc, hseq] using hsecondIndex,
    by simpa [fam_018_desc] using hchecks
  ⟩

private theorem case_000062_applies :
    fam_018_desc.Applies case_000062_rank.val case_000062_mask := by
  exact ⟨
    case_000062_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_018_desc, fam_018_support, case_000062_support] using case_000062_rows
  ⟩

private theorem case_000062_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k040.toSourceIndexStateKey
      case_000062_rank.val case_000062_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000062_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_018_desc, fam_018_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_040_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000062_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_018_desc, fam_018_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_040_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000062_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_018_desc, fam_018_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_040_support] using hs.2.2
    }

private theorem case_000062_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k040.toSourceIndexStateKey
      case_000062_rank.val case_000062_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_040_support, case_000062_support] using case_000062_rows)

private theorem case_000062_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k040)
      case_000062_rank.val case_000062_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000062_selectorSourceFacts
    case_000062_selectorRowFacts

private theorem case_000062_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k040) =
      some ClassifierKey.k040 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k040

private def case_000063_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_000063_mask : SignMask := ⟨50, by decide⟩
private def case_000063_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000063_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000063_b : Vec3 Rat := { x := (-268/27), y := (-140/27), z := (140/27) }
private def case_000063_firstLine : StrictLin2 := { a := -1, b := 1, c := (-73/67) }
private def case_000063_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000063_rankWord :
    rankPairWord? case_000063_word = some case_000063_rank := by
  decide

private theorem case_000063_unrank :
    unrankPairWord case_000063_rank = case_000063_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000063_word case_000063_rank).1
    case_000063_rankWord |>.symm

private theorem case_000063_seqChoice :
    translationChoiceSeq case_000063_word case_000063_mask = case_000063_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000063_seqAtRank :
    translationSeqAtRankMask case_000063_rank case_000063_mask = case_000063_seq := by
  rw [translationSeqAtRankMask, case_000063_unrank]
  exact case_000063_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000063_bAtRank :
    translationBAtRankMask case_000063_rank case_000063_mask = case_000063_b := by
  rw [translationBAtRankMask, case_000063_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000063_b, case_000063_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000063_firstLine_eq :
    case_000063_support.firstLine case_000063_seq case_000063_b = case_000063_firstLine := by
  norm_num [case_000063_firstLine, case_000063_support, case_000063_seq, case_000063_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000063_secondLine_eq :
    case_000063_support.secondLine case_000063_seq case_000063_b = case_000063_secondLine := by
  norm_num [case_000063_secondLine, case_000063_support, case_000063_seq, case_000063_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000063_rows :
    OppOneMinusVarFirstRows case_000063_support case_000063_rank.val case_000063_mask := by
  intro hlt
  have hrank : (⟨case_000063_rank.val, hlt⟩ : Fin numPairWords) = case_000063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_seq := by
    simpa [hrank] using case_000063_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_b := by
    simpa [hrank] using case_000063_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000063_support case_000063_rank.val hlt
          case_000063_mask = case_000063_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000063_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000063_support case_000063_rank.val hlt
          case_000063_mask = case_000063_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000063_secondLine_eq]
  have case_000063_rowFirst :
      OppPosRow (FirstLineAt case_000063_support case_000063_rank.val hlt case_000063_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000063_firstLine, OppPosRow]
  have case_000063_fixedSecond :
      FixedRow (SecondLineAt case_000063_support case_000063_rank.val hlt case_000063_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000063_secondLine, FixedRow]
  exact ⟨case_000063_rowFirst, case_000063_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000063_sourceMatches :
    fam_001_desc.SourceMatches case_000063_rank.val case_000063_mask := by
  intro hlt
  have hrank :
      (⟨case_000063_rank.val, hlt⟩ : Fin numPairWords) = case_000063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_seq := by
    simpa [hrank] using case_000063_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000063_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000063_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000063_rank.val hlt case_000063_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000063_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000063_applies :
    fam_001_desc.Applies case_000063_rank.val case_000063_mask := by
  exact ⟨
    case_000063_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000063_support] using case_000063_rows
  ⟩

private theorem case_000063_selectorSourceFacts :
    SourceIndexStateSourceFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000063_rank.val case_000063_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000063_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000063_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000063_sourceMatches hlt
        simpa [ClassifierKey.toSourceIndexStateKey, fam_001_desc, fam_001_support,
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support] using hs.2.2
    }

private theorem case_000063_selectorRowFacts :
    SourceIndexStateRowFacts ClassifierKey.k001.toSourceIndexStateKey
      case_000063_rank.val case_000063_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [ClassifierKey.toSourceIndexStateKey, SourceIndexTemplate.Rows,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.fam_001_support, case_000063_support] using case_000063_rows)

private theorem case_000063_selectorSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k001)
      case_000063_rank.val case_000063_mask :=
  selectorCoordinateSourceRowFacts_of_key
    case_000063_selectorSourceFacts
    case_000063_selectorRowFacts

private theorem case_000063_selectorLookup :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey ClassifierKey.k001) =
      some ClassifierKey.k001 :=
  keyOfSelectorCoordinate?_selectorCoordinateOfKey ClassifierKey.k001

/-- Positive GoodDirection survivor cases represented in this shard. -/
inductive SelectorPositiveCase : Nat -> SignMask -> Prop
  | c000 : SelectorPositiveCase 899 (⟨24, by decide⟩ : SignMask)
  | c001 : SelectorPositiveCase 899 (⟨28, by decide⟩ : SignMask)
  | c002 : SelectorPositiveCase 899 (⟨29, by decide⟩ : SignMask)
  | c003 : SelectorPositiveCase 899 (⟨30, by decide⟩ : SignMask)
  | c004 : SelectorPositiveCase 899 (⟨31, by decide⟩ : SignMask)
  | c005 : SelectorPositiveCase 899 (⟨45, by decide⟩ : SignMask)
  | c006 : SelectorPositiveCase 899 (⟨47, by decide⟩ : SignMask)
  | c007 : SelectorPositiveCase 899 (⟨54, by decide⟩ : SignMask)
  | c008 : SelectorPositiveCase 899 (⟨55, by decide⟩ : SignMask)
  | c009 : SelectorPositiveCase 899 (⟨63, by decide⟩ : SignMask)
  | c010 : SelectorPositiveCase 903 (⟨18, by decide⟩ : SignMask)
  | c011 : SelectorPositiveCase 903 (⟨22, by decide⟩ : SignMask)
  | c012 : SelectorPositiveCase 903 (⟨24, by decide⟩ : SignMask)
  | c013 : SelectorPositiveCase 903 (⟨25, by decide⟩ : SignMask)
  | c014 : SelectorPositiveCase 903 (⟨54, by decide⟩ : SignMask)
  | c015 : SelectorPositiveCase 903 (⟨55, by decide⟩ : SignMask)
  | c016 : SelectorPositiveCase 903 (⟨63, by decide⟩ : SignMask)
  | c017 : SelectorPositiveCase 905 (⟨18, by decide⟩ : SignMask)
  | c018 : SelectorPositiveCase 905 (⟨22, by decide⟩ : SignMask)
  | c019 : SelectorPositiveCase 905 (⟨24, by decide⟩ : SignMask)
  | c020 : SelectorPositiveCase 905 (⟨41, by decide⟩ : SignMask)
  | c021 : SelectorPositiveCase 905 (⟨54, by decide⟩ : SignMask)
  | c022 : SelectorPositiveCase 905 (⟨55, by decide⟩ : SignMask)
  | c023 : SelectorPositiveCase 905 (⟨57, by decide⟩ : SignMask)
  | c024 : SelectorPositiveCase 905 (⟨63, by decide⟩ : SignMask)
  | c025 : SelectorPositiveCase 911 (⟨9, by decide⟩ : SignMask)
  | c026 : SelectorPositiveCase 911 (⟨16, by decide⟩ : SignMask)
  | c027 : SelectorPositiveCase 911 (⟨18, by decide⟩ : SignMask)
  | c028 : SelectorPositiveCase 911 (⟨22, by decide⟩ : SignMask)
  | c029 : SelectorPositiveCase 911 (⟨24, by decide⟩ : SignMask)
  | c030 : SelectorPositiveCase 911 (⟨45, by decide⟩ : SignMask)
  | c031 : SelectorPositiveCase 911 (⟨50, by decide⟩ : SignMask)

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
  | c010 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000042_selectorLookup⟩
  | c011 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000043_selectorLookup⟩
  | c012 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000044_selectorLookup⟩
  | c013 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000045_selectorLookup⟩
  | c014 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000046_selectorLookup⟩
  | c015 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000047_selectorLookup⟩
  | c016 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000048_selectorLookup⟩
  | c017 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000049_selectorLookup⟩
  | c018 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000050_selectorLookup⟩
  | c019 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000051_selectorLookup⟩
  | c020 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000052_selectorLookup⟩
  | c021 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000053_selectorLookup⟩
  | c022 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000054_selectorLookup⟩
  | c023 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000055_selectorLookup⟩
  | c024 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000056_selectorLookup⟩
  | c025 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000057_selectorLookup⟩
  | c026 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000058_selectorLookup⟩
  | c027 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000059_selectorLookup⟩
  | c028 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000060_selectorLookup⟩
  | c029 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000061_selectorLookup⟩
  | c030 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000062_selectorLookup⟩
  | c031 =>
      exact ⟨_, by simpa [selectorCoordAt] using case_000063_selectorLookup⟩

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
  | c010 =>
      simpa [selectorCoordAt, case_000042_rank, case_000042_mask] using case_000042_selectorSourceRowFacts
  | c011 =>
      simpa [selectorCoordAt, case_000043_rank, case_000043_mask] using case_000043_selectorSourceRowFacts
  | c012 =>
      simpa [selectorCoordAt, case_000044_rank, case_000044_mask] using case_000044_selectorSourceRowFacts
  | c013 =>
      simpa [selectorCoordAt, case_000045_rank, case_000045_mask] using case_000045_selectorSourceRowFacts
  | c014 =>
      simpa [selectorCoordAt, case_000046_rank, case_000046_mask] using case_000046_selectorSourceRowFacts
  | c015 =>
      simpa [selectorCoordAt, case_000047_rank, case_000047_mask] using case_000047_selectorSourceRowFacts
  | c016 =>
      simpa [selectorCoordAt, case_000048_rank, case_000048_mask] using case_000048_selectorSourceRowFacts
  | c017 =>
      simpa [selectorCoordAt, case_000049_rank, case_000049_mask] using case_000049_selectorSourceRowFacts
  | c018 =>
      simpa [selectorCoordAt, case_000050_rank, case_000050_mask] using case_000050_selectorSourceRowFacts
  | c019 =>
      simpa [selectorCoordAt, case_000051_rank, case_000051_mask] using case_000051_selectorSourceRowFacts
  | c020 =>
      simpa [selectorCoordAt, case_000052_rank, case_000052_mask] using case_000052_selectorSourceRowFacts
  | c021 =>
      simpa [selectorCoordAt, case_000053_rank, case_000053_mask] using case_000053_selectorSourceRowFacts
  | c022 =>
      simpa [selectorCoordAt, case_000054_rank, case_000054_mask] using case_000054_selectorSourceRowFacts
  | c023 =>
      simpa [selectorCoordAt, case_000055_rank, case_000055_mask] using case_000055_selectorSourceRowFacts
  | c024 =>
      simpa [selectorCoordAt, case_000056_rank, case_000056_mask] using case_000056_selectorSourceRowFacts
  | c025 =>
      simpa [selectorCoordAt, case_000057_rank, case_000057_mask] using case_000057_selectorSourceRowFacts
  | c026 =>
      simpa [selectorCoordAt, case_000058_rank, case_000058_mask] using case_000058_selectorSourceRowFacts
  | c027 =>
      simpa [selectorCoordAt, case_000059_rank, case_000059_mask] using case_000059_selectorSourceRowFacts
  | c028 =>
      simpa [selectorCoordAt, case_000060_rank, case_000060_mask] using case_000060_selectorSourceRowFacts
  | c029 =>
      simpa [selectorCoordAt, case_000061_rank, case_000061_mask] using case_000061_selectorSourceRowFacts
  | c030 =>
      simpa [selectorCoordAt, case_000062_rank, case_000062_mask] using case_000062_selectorSourceRowFacts
  | c031 =>
      simpa [selectorCoordAt, case_000063_rank, case_000063_mask] using case_000063_selectorSourceRowFacts

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard001
