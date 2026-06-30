import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerDU9IQSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerDU9IQSmoke

/-!
Generated source-position + row producer glue smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. It imports the 8Y source-position producers and
the 8R row producers, then composes them into key facts and semantic
`TranslationGoodCaseKilled` theorems.
Phase: 6Z.6K.8AP.16DU.9IQ source-position producer glue.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueDU9IQSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerDU9IQSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerDU9IQSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option linter.unusedVariables false

/-- Source-position producer-glue family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 20. -/
def fam_000_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := source_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_000_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_000_producer.Applies fam_000_key r mask)
    (hrows : row_000_producer.Applies fam_000_key r mask) :
    SourceIndexStateKeyFacts fam_000_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_000_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 9. -/
def fam_001_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := source_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_001_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_002_producer.Applies fam_001_key r mask) :
    SourceIndexStateKeyFacts fam_001_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_001_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 7. -/
def fam_002_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 7
  support := source_002_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_002_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_001_producer.Applies fam_002_key r mask) :
    SourceIndexStateKeyFacts fam_002_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_002_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 6. -/
def fam_003_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := source_003_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_003_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_001_producer.Applies fam_003_key r mask) :
    SourceIndexStateKeyFacts fam_003_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_003_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 3. -/
def fam_004_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := source_005_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_004_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_004_key r mask)
    (hrows : row_000_producer.Applies fam_004_key r mask) :
    SourceIndexStateKeyFacts fam_004_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_005_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 3. -/
def fam_005_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := source_004_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_005_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_005_key r mask)
    (hrows : row_000_producer.Applies fam_005_key r mask) :
    SourceIndexStateKeyFacts fam_005_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_004_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 3. -/
def fam_006_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := source_009_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_006_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_006_key r mask)
    (hrows : row_000_producer.Applies fam_006_key r mask) :
    SourceIndexStateKeyFacts fam_006_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_009_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 3. -/
def fam_007_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 1
  support := source_007_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_007_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_002_producer.Applies fam_007_key r mask) :
    SourceIndexStateKeyFacts fam_007_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_007_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 3. -/
def fam_008_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 2
  support := source_008_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_008_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_008_key r mask)
    (hrows : row_003_producer.Applies fam_008_key r mask) :
    SourceIndexStateKeyFacts fam_008_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_008_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 3. -/
def fam_009_key : SourceIndexStateKey where
  firstIndex := 25
  secondIndex := 2
  support := source_006_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_009_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_009_key r mask)
    (hrows : row_003_producer.Applies fam_009_key r mask) :
    SourceIndexStateKeyFacts fam_009_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_006_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 2. -/
def fam_010_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 3
  support := source_011_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_010_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_010_key r mask)
    (hrows : row_005_producer.Applies fam_010_key r mask) :
    SourceIndexStateKeyFacts fam_010_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_011_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Source-position producer-glue family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 2. -/
def fam_011_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 0
  support := source_010_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_011_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_011_key r mask)
    (hrows : row_000_producer.Applies fam_011_key r mask) :
    SourceIndexStateKeyFacts fam_011_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_010_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 2. -/
def fam_012_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := source_015_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_012_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_012_key r mask)
    (hrows : row_000_producer.Applies fam_012_key r mask) :
    SourceIndexStateKeyFacts fam_012_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_015_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 2. -/
def fam_013_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := source_012_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_013_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_013_key r mask)
    (hrows : row_004_producer.Applies fam_013_key r mask) :
    SourceIndexStateKeyFacts fam_013_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_012_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 2. -/
def fam_014_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := source_013_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_014_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_014_key r mask)
    (hrows : row_004_producer.Applies fam_014_key r mask) :
    SourceIndexStateKeyFacts fam_014_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_013_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 2. -/
def fam_015_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 2
  support := source_014_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_015_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_015_key r mask)
    (hrows : row_003_producer.Applies fam_015_key r mask) :
    SourceIndexStateKeyFacts fam_015_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_014_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 1. -/
def fam_016_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := source_016_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_016_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_016_key r mask)
    (hrows : row_006_producer.Applies fam_016_key r mask) :
    SourceIndexStateKeyFacts fam_016_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_016_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 1. -/
def fam_017_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := source_017_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_017_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_017_key r mask)
    (hrows : row_000_producer.Applies fam_017_key r mask) :
    SourceIndexStateKeyFacts fam_017_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_017_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 1. -/
def fam_018_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := source_018_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_018_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_018_key r mask)
    (hrows : row_004_producer.Applies fam_018_key r mask) :
    SourceIndexStateKeyFacts fam_018_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_018_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

inductive SourcePositionProducerGlueApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (hsource : source_000_producer.Applies fam_000_key r mask) (hrows : row_000_producer.Applies fam_000_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (hsource : source_001_producer.Applies fam_001_key r mask) (hrows : row_002_producer.Applies fam_001_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (hsource : source_002_producer.Applies fam_002_key r mask) (hrows : row_001_producer.Applies fam_002_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (hsource : source_003_producer.Applies fam_003_key r mask) (hrows : row_001_producer.Applies fam_003_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (hsource : source_005_producer.Applies fam_004_key r mask) (hrows : row_000_producer.Applies fam_004_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam005 {r : Nat} {mask : SignMask} (hsource : source_004_producer.Applies fam_005_key r mask) (hrows : row_000_producer.Applies fam_005_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam006 {r : Nat} {mask : SignMask} (hsource : source_009_producer.Applies fam_006_key r mask) (hrows : row_000_producer.Applies fam_006_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam007 {r : Nat} {mask : SignMask} (hsource : source_007_producer.Applies fam_007_key r mask) (hrows : row_002_producer.Applies fam_007_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam008 {r : Nat} {mask : SignMask} (hsource : source_008_producer.Applies fam_008_key r mask) (hrows : row_003_producer.Applies fam_008_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam009 {r : Nat} {mask : SignMask} (hsource : source_006_producer.Applies fam_009_key r mask) (hrows : row_003_producer.Applies fam_009_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam010 {r : Nat} {mask : SignMask} (hsource : source_011_producer.Applies fam_010_key r mask) (hrows : row_005_producer.Applies fam_010_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam011 {r : Nat} {mask : SignMask} (hsource : source_010_producer.Applies fam_011_key r mask) (hrows : row_000_producer.Applies fam_011_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam012 {r : Nat} {mask : SignMask} (hsource : source_015_producer.Applies fam_012_key r mask) (hrows : row_000_producer.Applies fam_012_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam013 {r : Nat} {mask : SignMask} (hsource : source_012_producer.Applies fam_013_key r mask) (hrows : row_004_producer.Applies fam_013_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam014 {r : Nat} {mask : SignMask} (hsource : source_013_producer.Applies fam_014_key r mask) (hrows : row_004_producer.Applies fam_014_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam015 {r : Nat} {mask : SignMask} (hsource : source_014_producer.Applies fam_015_key r mask) (hrows : row_003_producer.Applies fam_015_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam016 {r : Nat} {mask : SignMask} (hsource : source_016_producer.Applies fam_016_key r mask) (hrows : row_006_producer.Applies fam_016_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam017 {r : Nat} {mask : SignMask} (hsource : source_017_producer.Applies fam_017_key r mask) (hrows : row_000_producer.Applies fam_017_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam018 {r : Nat} {mask : SignMask} (hsource : source_018_producer.Applies fam_018_key r mask) (hrows : row_004_producer.Applies fam_018_key r mask) : SourcePositionProducerGlueApplies r mask

def sourcePositionProducerGlueFamily : RowPropertyMembershipFamily where
  Applies := SourcePositionProducerGlueApplies
  covered := by
    intro r mask h
    cases h with
    | fam000 hsource hrows =>
        exact fam_000_key.covered_of_facts
          (fam_000_producerFactsImplyKeyFacts hsource hrows)
    | fam001 hsource hrows =>
        exact fam_001_key.covered_of_facts
          (fam_001_producerFactsImplyKeyFacts hsource hrows)
    | fam002 hsource hrows =>
        exact fam_002_key.covered_of_facts
          (fam_002_producerFactsImplyKeyFacts hsource hrows)
    | fam003 hsource hrows =>
        exact fam_003_key.covered_of_facts
          (fam_003_producerFactsImplyKeyFacts hsource hrows)
    | fam004 hsource hrows =>
        exact fam_004_key.covered_of_facts
          (fam_004_producerFactsImplyKeyFacts hsource hrows)
    | fam005 hsource hrows =>
        exact fam_005_key.covered_of_facts
          (fam_005_producerFactsImplyKeyFacts hsource hrows)
    | fam006 hsource hrows =>
        exact fam_006_key.covered_of_facts
          (fam_006_producerFactsImplyKeyFacts hsource hrows)
    | fam007 hsource hrows =>
        exact fam_007_key.covered_of_facts
          (fam_007_producerFactsImplyKeyFacts hsource hrows)
    | fam008 hsource hrows =>
        exact fam_008_key.covered_of_facts
          (fam_008_producerFactsImplyKeyFacts hsource hrows)
    | fam009 hsource hrows =>
        exact fam_009_key.covered_of_facts
          (fam_009_producerFactsImplyKeyFacts hsource hrows)
    | fam010 hsource hrows =>
        exact fam_010_key.covered_of_facts
          (fam_010_producerFactsImplyKeyFacts hsource hrows)
    | fam011 hsource hrows =>
        exact fam_011_key.covered_of_facts
          (fam_011_producerFactsImplyKeyFacts hsource hrows)
    | fam012 hsource hrows =>
        exact fam_012_key.covered_of_facts
          (fam_012_producerFactsImplyKeyFacts hsource hrows)
    | fam013 hsource hrows =>
        exact fam_013_key.covered_of_facts
          (fam_013_producerFactsImplyKeyFacts hsource hrows)
    | fam014 hsource hrows =>
        exact fam_014_key.covered_of_facts
          (fam_014_producerFactsImplyKeyFacts hsource hrows)
    | fam015 hsource hrows =>
        exact fam_015_key.covered_of_facts
          (fam_015_producerFactsImplyKeyFacts hsource hrows)
    | fam016 hsource hrows =>
        exact fam_016_key.covered_of_facts
          (fam_016_producerFactsImplyKeyFacts hsource hrows)
    | fam017 hsource hrows =>
        exact fam_017_key.covered_of_facts
          (fam_017_producerFactsImplyKeyFacts hsource hrows)
    | fam018 hsource hrows =>
        exact fam_018_key.covered_of_facts
          (fam_018_producerFactsImplyKeyFacts hsource hrows)

theorem sourcePositionProducerGlueKillsOn :
    sourcePositionProducerGlueFamily.KillsOn :=
  sourcePositionProducerGlueFamily.killsOn

theorem fam_000_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_000_producer.Applies fam_000_key r mask)
    (hrows : row_000_producer.Applies fam_000_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam000 hsource hrows

theorem fam_000_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_000_producer.Applies fam_000_key r mask)
    (hrows : row_000_producer.Applies fam_000_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_000_producerFactsImplyClassifier hsource hrows)

theorem fam_001_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_002_producer.Applies fam_001_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam001 hsource hrows

theorem fam_001_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_002_producer.Applies fam_001_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_001_producerFactsImplyClassifier hsource hrows)

theorem fam_002_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_001_producer.Applies fam_002_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam002 hsource hrows

theorem fam_002_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_001_producer.Applies fam_002_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_002_producerFactsImplyClassifier hsource hrows)

theorem fam_003_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_001_producer.Applies fam_003_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam003 hsource hrows

theorem fam_003_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_001_producer.Applies fam_003_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_003_producerFactsImplyClassifier hsource hrows)

theorem fam_004_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_004_key r mask)
    (hrows : row_000_producer.Applies fam_004_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam004 hsource hrows

theorem fam_004_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_004_key r mask)
    (hrows : row_000_producer.Applies fam_004_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_004_producerFactsImplyClassifier hsource hrows)

theorem fam_005_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_005_key r mask)
    (hrows : row_000_producer.Applies fam_005_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam005 hsource hrows

theorem fam_005_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_005_key r mask)
    (hrows : row_000_producer.Applies fam_005_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_005_producerFactsImplyClassifier hsource hrows)

theorem fam_006_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_006_key r mask)
    (hrows : row_000_producer.Applies fam_006_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam006 hsource hrows

theorem fam_006_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_006_key r mask)
    (hrows : row_000_producer.Applies fam_006_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_006_producerFactsImplyClassifier hsource hrows)

theorem fam_007_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_002_producer.Applies fam_007_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam007 hsource hrows

theorem fam_007_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_002_producer.Applies fam_007_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_007_producerFactsImplyClassifier hsource hrows)

theorem fam_008_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_008_key r mask)
    (hrows : row_003_producer.Applies fam_008_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam008 hsource hrows

theorem fam_008_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_008_key r mask)
    (hrows : row_003_producer.Applies fam_008_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_008_producerFactsImplyClassifier hsource hrows)

theorem fam_009_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_009_key r mask)
    (hrows : row_003_producer.Applies fam_009_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam009 hsource hrows

theorem fam_009_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_009_key r mask)
    (hrows : row_003_producer.Applies fam_009_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_009_producerFactsImplyClassifier hsource hrows)

theorem fam_010_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_010_key r mask)
    (hrows : row_005_producer.Applies fam_010_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam010 hsource hrows

theorem fam_010_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_010_key r mask)
    (hrows : row_005_producer.Applies fam_010_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_010_producerFactsImplyClassifier hsource hrows)

theorem fam_011_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_011_key r mask)
    (hrows : row_000_producer.Applies fam_011_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam011 hsource hrows

theorem fam_011_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_011_key r mask)
    (hrows : row_000_producer.Applies fam_011_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_011_producerFactsImplyClassifier hsource hrows)

theorem fam_012_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_012_key r mask)
    (hrows : row_000_producer.Applies fam_012_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam012 hsource hrows

theorem fam_012_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_012_key r mask)
    (hrows : row_000_producer.Applies fam_012_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_012_producerFactsImplyClassifier hsource hrows)

theorem fam_013_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_013_key r mask)
    (hrows : row_004_producer.Applies fam_013_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam013 hsource hrows

theorem fam_013_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_013_key r mask)
    (hrows : row_004_producer.Applies fam_013_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_013_producerFactsImplyClassifier hsource hrows)

theorem fam_014_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_014_key r mask)
    (hrows : row_004_producer.Applies fam_014_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam014 hsource hrows

theorem fam_014_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_014_key r mask)
    (hrows : row_004_producer.Applies fam_014_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_014_producerFactsImplyClassifier hsource hrows)

theorem fam_015_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_015_key r mask)
    (hrows : row_003_producer.Applies fam_015_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam015 hsource hrows

theorem fam_015_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_015_key r mask)
    (hrows : row_003_producer.Applies fam_015_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_015_producerFactsImplyClassifier hsource hrows)

theorem fam_016_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_016_key r mask)
    (hrows : row_006_producer.Applies fam_016_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam016 hsource hrows

theorem fam_016_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_016_key r mask)
    (hrows : row_006_producer.Applies fam_016_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_016_producerFactsImplyClassifier hsource hrows)

theorem fam_017_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_017_key r mask)
    (hrows : row_000_producer.Applies fam_017_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam017 hsource hrows

theorem fam_017_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_017_key r mask)
    (hrows : row_000_producer.Applies fam_017_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_017_producerFactsImplyClassifier hsource hrows)

theorem fam_018_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_018_key r mask)
    (hrows : row_004_producer.Applies fam_018_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam018 hsource hrows

theorem fam_018_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_018_key r mask)
    (hrows : row_004_producer.Applies fam_018_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_018_producerFactsImplyClassifier hsource hrows)

theorem sourcePositionProducerGlueSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueDU9IQSmoke
