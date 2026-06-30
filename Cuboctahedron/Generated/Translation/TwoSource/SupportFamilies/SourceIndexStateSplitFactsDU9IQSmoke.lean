import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge

/-!
Generated split source/row facts smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded replay proof. It proves that separately supplied source facts and
row facts imply key facts and route to classifier branches.
Phase: 6Z.6K.8AP.16DU.9IQ semantic split-facts.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSplitFactsDU9IQSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

set_option linter.unusedVariables false

/-- Split-facts smoke family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 20. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 9. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_001_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 7. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_002_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 7
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 6. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_003_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 3. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_004_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 3. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_005_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := fam_005_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 3. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_006_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 3. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_007_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 1
  support := fam_007_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 3. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_008_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 2
  support := fam_008_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 3. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_009_key : SourceIndexStateKey where
  firstIndex := 25
  secondIndex := 2
  support := fam_009_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 2. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_010_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 3
  support := fam_010_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Split-facts smoke family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 2. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_011_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 0
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 2. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_012_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 2. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_013_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := fam_013_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 2. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_014_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := fam_014_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 2. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_015_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 2
  support := fam_015_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 1. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_016_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_016_support
  template := SourceIndexTemplate.axisAOnly

/-- Split-facts smoke family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 1. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_017_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := fam_017_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 1. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_018_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := fam_018_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

inductive SplitFactClassifierApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_000_key r mask) (hrows : SourceIndexStateRowFacts fam_000_key r mask) : SplitFactClassifierApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_001_key r mask) (hrows : SourceIndexStateRowFacts fam_001_key r mask) : SplitFactClassifierApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_002_key r mask) (hrows : SourceIndexStateRowFacts fam_002_key r mask) : SplitFactClassifierApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_003_key r mask) (hrows : SourceIndexStateRowFacts fam_003_key r mask) : SplitFactClassifierApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_004_key r mask) (hrows : SourceIndexStateRowFacts fam_004_key r mask) : SplitFactClassifierApplies r mask
  | fam005 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_005_key r mask) (hrows : SourceIndexStateRowFacts fam_005_key r mask) : SplitFactClassifierApplies r mask
  | fam006 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_006_key r mask) (hrows : SourceIndexStateRowFacts fam_006_key r mask) : SplitFactClassifierApplies r mask
  | fam007 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_007_key r mask) (hrows : SourceIndexStateRowFacts fam_007_key r mask) : SplitFactClassifierApplies r mask
  | fam008 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_008_key r mask) (hrows : SourceIndexStateRowFacts fam_008_key r mask) : SplitFactClassifierApplies r mask
  | fam009 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_009_key r mask) (hrows : SourceIndexStateRowFacts fam_009_key r mask) : SplitFactClassifierApplies r mask
  | fam010 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_010_key r mask) (hrows : SourceIndexStateRowFacts fam_010_key r mask) : SplitFactClassifierApplies r mask
  | fam011 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_011_key r mask) (hrows : SourceIndexStateRowFacts fam_011_key r mask) : SplitFactClassifierApplies r mask
  | fam012 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_012_key r mask) (hrows : SourceIndexStateRowFacts fam_012_key r mask) : SplitFactClassifierApplies r mask
  | fam013 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_013_key r mask) (hrows : SourceIndexStateRowFacts fam_013_key r mask) : SplitFactClassifierApplies r mask
  | fam014 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_014_key r mask) (hrows : SourceIndexStateRowFacts fam_014_key r mask) : SplitFactClassifierApplies r mask
  | fam015 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_015_key r mask) (hrows : SourceIndexStateRowFacts fam_015_key r mask) : SplitFactClassifierApplies r mask
  | fam016 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_016_key r mask) (hrows : SourceIndexStateRowFacts fam_016_key r mask) : SplitFactClassifierApplies r mask
  | fam017 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_017_key r mask) (hrows : SourceIndexStateRowFacts fam_017_key r mask) : SplitFactClassifierApplies r mask
  | fam018 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_018_key r mask) (hrows : SourceIndexStateRowFacts fam_018_key r mask) : SplitFactClassifierApplies r mask

def splitFactClassifierFamily : RowPropertyMembershipFamily where
  Applies := SplitFactClassifierApplies
  covered := by
    intro r mask h
    cases h with
    | fam000 hsource hrows =>
        exact fam_000_key.covered_of_source_row hsource hrows
    | fam001 hsource hrows =>
        exact fam_001_key.covered_of_source_row hsource hrows
    | fam002 hsource hrows =>
        exact fam_002_key.covered_of_source_row hsource hrows
    | fam003 hsource hrows =>
        exact fam_003_key.covered_of_source_row hsource hrows
    | fam004 hsource hrows =>
        exact fam_004_key.covered_of_source_row hsource hrows
    | fam005 hsource hrows =>
        exact fam_005_key.covered_of_source_row hsource hrows
    | fam006 hsource hrows =>
        exact fam_006_key.covered_of_source_row hsource hrows
    | fam007 hsource hrows =>
        exact fam_007_key.covered_of_source_row hsource hrows
    | fam008 hsource hrows =>
        exact fam_008_key.covered_of_source_row hsource hrows
    | fam009 hsource hrows =>
        exact fam_009_key.covered_of_source_row hsource hrows
    | fam010 hsource hrows =>
        exact fam_010_key.covered_of_source_row hsource hrows
    | fam011 hsource hrows =>
        exact fam_011_key.covered_of_source_row hsource hrows
    | fam012 hsource hrows =>
        exact fam_012_key.covered_of_source_row hsource hrows
    | fam013 hsource hrows =>
        exact fam_013_key.covered_of_source_row hsource hrows
    | fam014 hsource hrows =>
        exact fam_014_key.covered_of_source_row hsource hrows
    | fam015 hsource hrows =>
        exact fam_015_key.covered_of_source_row hsource hrows
    | fam016 hsource hrows =>
        exact fam_016_key.covered_of_source_row hsource hrows
    | fam017 hsource hrows =>
        exact fam_017_key.covered_of_source_row hsource hrows
    | fam018 hsource hrows =>
        exact fam_018_key.covered_of_source_row hsource hrows

theorem splitFactClassifierKillsOn : splitFactClassifierFamily.KillsOn :=
  splitFactClassifierFamily.killsOn

theorem fam_000_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_000_key r mask)
    (hrows : SourceIndexStateRowFacts fam_000_key r mask) :
    SourceIndexStateKeyFacts fam_000_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_000_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_000_key r mask)
    (hrows : SourceIndexStateRowFacts fam_000_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam000 hsource hrows

theorem fam_000_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_000_key r mask)
    (hrows : SourceIndexStateRowFacts fam_000_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_000_splitFactsImplyClassifier hsource hrows)

theorem fam_001_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_001_key r mask)
    (hrows : SourceIndexStateRowFacts fam_001_key r mask) :
    SourceIndexStateKeyFacts fam_001_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_001_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_001_key r mask)
    (hrows : SourceIndexStateRowFacts fam_001_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam001 hsource hrows

theorem fam_001_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_001_key r mask)
    (hrows : SourceIndexStateRowFacts fam_001_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_001_splitFactsImplyClassifier hsource hrows)

theorem fam_002_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_002_key r mask)
    (hrows : SourceIndexStateRowFacts fam_002_key r mask) :
    SourceIndexStateKeyFacts fam_002_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_002_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_002_key r mask)
    (hrows : SourceIndexStateRowFacts fam_002_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam002 hsource hrows

theorem fam_002_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_002_key r mask)
    (hrows : SourceIndexStateRowFacts fam_002_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_002_splitFactsImplyClassifier hsource hrows)

theorem fam_003_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_003_key r mask)
    (hrows : SourceIndexStateRowFacts fam_003_key r mask) :
    SourceIndexStateKeyFacts fam_003_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_003_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_003_key r mask)
    (hrows : SourceIndexStateRowFacts fam_003_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam003 hsource hrows

theorem fam_003_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_003_key r mask)
    (hrows : SourceIndexStateRowFacts fam_003_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_003_splitFactsImplyClassifier hsource hrows)

theorem fam_004_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_004_key r mask)
    (hrows : SourceIndexStateRowFacts fam_004_key r mask) :
    SourceIndexStateKeyFacts fam_004_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_004_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_004_key r mask)
    (hrows : SourceIndexStateRowFacts fam_004_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam004 hsource hrows

theorem fam_004_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_004_key r mask)
    (hrows : SourceIndexStateRowFacts fam_004_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_004_splitFactsImplyClassifier hsource hrows)

theorem fam_005_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_005_key r mask)
    (hrows : SourceIndexStateRowFacts fam_005_key r mask) :
    SourceIndexStateKeyFacts fam_005_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_005_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_005_key r mask)
    (hrows : SourceIndexStateRowFacts fam_005_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam005 hsource hrows

theorem fam_005_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_005_key r mask)
    (hrows : SourceIndexStateRowFacts fam_005_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_005_splitFactsImplyClassifier hsource hrows)

theorem fam_006_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_006_key r mask)
    (hrows : SourceIndexStateRowFacts fam_006_key r mask) :
    SourceIndexStateKeyFacts fam_006_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_006_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_006_key r mask)
    (hrows : SourceIndexStateRowFacts fam_006_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam006 hsource hrows

theorem fam_006_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_006_key r mask)
    (hrows : SourceIndexStateRowFacts fam_006_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_006_splitFactsImplyClassifier hsource hrows)

theorem fam_007_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_007_key r mask)
    (hrows : SourceIndexStateRowFacts fam_007_key r mask) :
    SourceIndexStateKeyFacts fam_007_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_007_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_007_key r mask)
    (hrows : SourceIndexStateRowFacts fam_007_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam007 hsource hrows

theorem fam_007_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_007_key r mask)
    (hrows : SourceIndexStateRowFacts fam_007_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_007_splitFactsImplyClassifier hsource hrows)

theorem fam_008_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_008_key r mask)
    (hrows : SourceIndexStateRowFacts fam_008_key r mask) :
    SourceIndexStateKeyFacts fam_008_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_008_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_008_key r mask)
    (hrows : SourceIndexStateRowFacts fam_008_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam008 hsource hrows

theorem fam_008_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_008_key r mask)
    (hrows : SourceIndexStateRowFacts fam_008_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_008_splitFactsImplyClassifier hsource hrows)

theorem fam_009_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_009_key r mask)
    (hrows : SourceIndexStateRowFacts fam_009_key r mask) :
    SourceIndexStateKeyFacts fam_009_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_009_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_009_key r mask)
    (hrows : SourceIndexStateRowFacts fam_009_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam009 hsource hrows

theorem fam_009_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_009_key r mask)
    (hrows : SourceIndexStateRowFacts fam_009_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_009_splitFactsImplyClassifier hsource hrows)

theorem fam_010_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_010_key r mask)
    (hrows : SourceIndexStateRowFacts fam_010_key r mask) :
    SourceIndexStateKeyFacts fam_010_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_010_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_010_key r mask)
    (hrows : SourceIndexStateRowFacts fam_010_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam010 hsource hrows

theorem fam_010_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_010_key r mask)
    (hrows : SourceIndexStateRowFacts fam_010_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_010_splitFactsImplyClassifier hsource hrows)

theorem fam_011_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_011_key r mask)
    (hrows : SourceIndexStateRowFacts fam_011_key r mask) :
    SourceIndexStateKeyFacts fam_011_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_011_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_011_key r mask)
    (hrows : SourceIndexStateRowFacts fam_011_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam011 hsource hrows

theorem fam_011_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_011_key r mask)
    (hrows : SourceIndexStateRowFacts fam_011_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_011_splitFactsImplyClassifier hsource hrows)

theorem fam_012_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_012_key r mask)
    (hrows : SourceIndexStateRowFacts fam_012_key r mask) :
    SourceIndexStateKeyFacts fam_012_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_012_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_012_key r mask)
    (hrows : SourceIndexStateRowFacts fam_012_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam012 hsource hrows

theorem fam_012_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_012_key r mask)
    (hrows : SourceIndexStateRowFacts fam_012_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_012_splitFactsImplyClassifier hsource hrows)

theorem fam_013_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_013_key r mask)
    (hrows : SourceIndexStateRowFacts fam_013_key r mask) :
    SourceIndexStateKeyFacts fam_013_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_013_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_013_key r mask)
    (hrows : SourceIndexStateRowFacts fam_013_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam013 hsource hrows

theorem fam_013_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_013_key r mask)
    (hrows : SourceIndexStateRowFacts fam_013_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_013_splitFactsImplyClassifier hsource hrows)

theorem fam_014_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_014_key r mask)
    (hrows : SourceIndexStateRowFacts fam_014_key r mask) :
    SourceIndexStateKeyFacts fam_014_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_014_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_014_key r mask)
    (hrows : SourceIndexStateRowFacts fam_014_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam014 hsource hrows

theorem fam_014_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_014_key r mask)
    (hrows : SourceIndexStateRowFacts fam_014_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_014_splitFactsImplyClassifier hsource hrows)

theorem fam_015_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_015_key r mask)
    (hrows : SourceIndexStateRowFacts fam_015_key r mask) :
    SourceIndexStateKeyFacts fam_015_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_015_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_015_key r mask)
    (hrows : SourceIndexStateRowFacts fam_015_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam015 hsource hrows

theorem fam_015_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_015_key r mask)
    (hrows : SourceIndexStateRowFacts fam_015_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_015_splitFactsImplyClassifier hsource hrows)

theorem fam_016_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_016_key r mask)
    (hrows : SourceIndexStateRowFacts fam_016_key r mask) :
    SourceIndexStateKeyFacts fam_016_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_016_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_016_key r mask)
    (hrows : SourceIndexStateRowFacts fam_016_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam016 hsource hrows

theorem fam_016_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_016_key r mask)
    (hrows : SourceIndexStateRowFacts fam_016_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_016_splitFactsImplyClassifier hsource hrows)

theorem fam_017_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_017_key r mask)
    (hrows : SourceIndexStateRowFacts fam_017_key r mask) :
    SourceIndexStateKeyFacts fam_017_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_017_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_017_key r mask)
    (hrows : SourceIndexStateRowFacts fam_017_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam017 hsource hrows

theorem fam_017_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_017_key r mask)
    (hrows : SourceIndexStateRowFacts fam_017_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_017_splitFactsImplyClassifier hsource hrows)

theorem fam_018_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_018_key r mask)
    (hrows : SourceIndexStateRowFacts fam_018_key r mask) :
    SourceIndexStateKeyFacts fam_018_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_018_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_018_key r mask)
    (hrows : SourceIndexStateRowFacts fam_018_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam018 hsource hrows

theorem fam_018_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_018_key r mask)
    (hrows : SourceIndexStateRowFacts fam_018_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_018_splitFactsImplyClassifier hsource hrows)

theorem splitFactAllGoodCoverage_of_existsSourceRow
    {lo hi : Nat}
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                exists key : SourceIndexStateKey,
                  SourceIndexStateSourceFacts key rank mask /\
                    SourceIndexStateRowFacts key rank mask) :
    AllTranslationGoodCoverageOnRange lo hi :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    (RowPropertyParametricCoverageOnIdentityRange.of_exists_source_row hcomplete)

theorem sourceIndexStateSplitFactsSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSplitFactsDU9IQSmoke
