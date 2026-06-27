import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerSmoke

/-!
Generated source-position + row producer glue smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. It imports the 8Y source-position producers and
the 8R row producers, then composes them into key facts and semantic
`TranslationGoodCaseKilled` theorems.
Phase: 6Z.6K.8AE.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option linter.unusedVariables false

/-- Source-position producer-glue family `01630a20f4bc0763aa95de21589f5f9c8b3363fb3730266afffd5b30c79f5714`.
Observed bounded GoodDirection cases: 497. -/
def fam_000_key : SourceIndexStateKey where
  firstIndex := 52
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

/-- Source-position producer-glue family `8fdf87b4a1e5d605f85018aae0772f29d4a32e98a10f9ac2559a073aa64bfee6`.
Observed bounded GoodDirection cases: 185. -/
def fam_001_key : SourceIndexStateKey where
  firstIndex := 51
  secondIndex := 1
  support := source_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_001_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_001_producer.Applies fam_001_key r mask) :
    SourceIndexStateKeyFacts fam_001_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_001_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `ad68f1bb9b0315772fae5e354b9b7ad4a3d53402b6aee2a888356422665afcf8`.
Observed bounded GoodDirection cases: 131. -/
def fam_002_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 0
  support := source_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_002_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_000_producer.Applies fam_002_key r mask) :
    SourceIndexStateKeyFacts fam_002_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_002_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `a0a84a8450ad0f1ba6ca9cb2f07a3cd3ec2ce8a4584354c6a0c481c00898ee9a`.
Observed bounded GoodDirection cases: 107. -/
def fam_003_key : SourceIndexStateKey where
  firstIndex := 50
  secondIndex := 2
  support := source_003_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_003_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_002_producer.Applies fam_003_key r mask) :
    SourceIndexStateKeyFacts fam_003_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_003_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `215d250904345a406f359e21d7279c48890a8382cbf9f4542b80af6541ea31e7`.
Observed bounded GoodDirection cases: 83. -/
def fam_004_key : SourceIndexStateKey where
  firstIndex := 70
  secondIndex := 2
  support := source_004_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_004_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_004_key r mask)
    (hrows : row_002_producer.Applies fam_004_key r mask) :
    SourceIndexStateKeyFacts fam_004_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_004_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `8091c0e1dc28305cd10a569ab32a31ad560134ee230e6f93c77595ef1620b33f`.
Observed bounded GoodDirection cases: 50. -/
def fam_005_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 11
  support := source_005_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_005_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_005_key r mask)
    (hrows : row_003_producer.Applies fam_005_key r mask) :
    SourceIndexStateKeyFacts fam_005_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_005_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `54e546a4bdb558dace5714844d7837c44ad6154f0336ec1ba619519c4ecbd5ea`.
Observed bounded GoodDirection cases: 36. -/
def fam_006_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 10
  support := source_006_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_006_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_006_key r mask)
    (hrows : row_005_producer.Applies fam_006_key r mask) :
    SourceIndexStateKeyFacts fam_006_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_006_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Source-position producer-glue family `fbadcb6b4d7876f5e23098783dd8173fca93b8b373cdbba7ae20d14bffb14fff`.
Observed bounded GoodDirection cases: 33. -/
def fam_007_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 14
  support := source_007_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_007_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_003_producer.Applies fam_007_key r mask) :
    SourceIndexStateKeyFacts fam_007_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_007_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `1e4b51557f977673d7b96e011cacc8e7fad17c5469b237589f0acb70bfb48421`.
Observed bounded GoodDirection cases: 30. -/
def fam_008_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 0
  support := source_010_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_008_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_008_key r mask)
    (hrows : row_000_producer.Applies fam_008_key r mask) :
    SourceIndexStateKeyFacts fam_008_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_010_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `45c7c17ea15024b7144eb0684c9a7a63344c888808b4afcc33b5cc6448dfac69`.
Observed bounded GoodDirection cases: 30. -/
def fam_009_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 12
  support := source_009_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_009_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_009_key r mask)
    (hrows : row_003_producer.Applies fam_009_key r mask) :
    SourceIndexStateKeyFacts fam_009_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_009_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `cc8ca5d0fc2c2db74ea8cf06ba88b6e33fd01b21b30be9cf8b02a8af1a6bc7eb`.
Observed bounded GoodDirection cases: 30. -/
def fam_010_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 15
  support := source_008_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_010_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_010_key r mask)
    (hrows : row_004_producer.Applies fam_010_key r mask) :
    SourceIndexStateKeyFacts fam_010_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_008_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `a340539b4a9b2de6e046ab2e1f0be8328761e0e3c7c229dd5c481f9f2d19c90e`.
Observed bounded GoodDirection cases: 29. -/
def fam_011_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 1
  support := source_011_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_011_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_011_key r mask)
    (hrows : row_001_producer.Applies fam_011_key r mask) :
    SourceIndexStateKeyFacts fam_011_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_011_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `1e7fea08c0f0687ccf3374a0decd7681fa8fa126c599606f3ddb4c546fab2a4b`.
Observed bounded GoodDirection cases: 28. -/
def fam_012_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 15
  support := source_013_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_012_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_012_key r mask)
    (hrows : row_003_producer.Applies fam_012_key r mask) :
    SourceIndexStateKeyFacts fam_012_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_013_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `54d9751320b2945766ccad09043b2fbd49fa7f68c11088ac95297208c3eaac97`.
Observed bounded GoodDirection cases: 28. -/
def fam_013_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := source_012_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_013_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_013_key r mask)
    (hrows : row_003_producer.Applies fam_013_key r mask) :
    SourceIndexStateKeyFacts fam_013_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_012_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `f0260915116830cdee4479e0ba120e2345afce1dd4b432687b3459ab0a8c7217`.
Observed bounded GoodDirection cases: 26. -/
def fam_014_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := source_014_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_014_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_014_key r mask)
    (hrows : row_000_producer.Applies fam_014_key r mask) :
    SourceIndexStateKeyFacts fam_014_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_014_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `a88d31452b0302cb0c43dfba7ced9a458beab5d560b2fc998fcc7ea1dcfa7170`.
Observed bounded GoodDirection cases: 25. -/
def fam_015_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 0
  support := source_017_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_015_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_015_key r mask)
    (hrows : row_000_producer.Applies fam_015_key r mask) :
    SourceIndexStateKeyFacts fam_015_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_017_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `db00d78c6f0f431fefe44ac0bd37328bf1a5b6554916b0ee2408f5aa436a30a2`.
Observed bounded GoodDirection cases: 25. -/
def fam_016_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := source_018_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_016_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_016_key r mask)
    (hrows : row_000_producer.Applies fam_016_key r mask) :
    SourceIndexStateKeyFacts fam_016_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_018_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `b6ed4a6c3471880f9c7efcd3dbc12c073964d261bc2e2dd65ba49e0bbfa2e0fc`.
Observed bounded GoodDirection cases: 25. -/
def fam_017_key : SourceIndexStateKey where
  firstIndex := 76
  secondIndex := 1
  support := source_015_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_017_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_017_key r mask)
    (hrows : row_001_producer.Applies fam_017_key r mask) :
    SourceIndexStateKeyFacts fam_017_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_015_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `1f99a51da0266b5f986c5abc34cd20986949fecc29ff21415b195d1ebbe71a75`.
Observed bounded GoodDirection cases: 25. -/
def fam_018_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 15
  support := source_016_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_018_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_018_key r mask)
    (hrows : row_005_producer.Applies fam_018_key r mask) :
    SourceIndexStateKeyFacts fam_018_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_016_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Source-position producer-glue family `2cc74ca6dcf453d30173de7ab6ba408c54fb8cc3211ebbaca2f91495312617ac`.
Observed bounded GoodDirection cases: 24. -/
def fam_019_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 12
  support := source_020_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_019_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_020_producer.Applies fam_019_key r mask)
    (hrows : row_004_producer.Applies fam_019_key r mask) :
    SourceIndexStateKeyFacts fam_019_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_020_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `b262fbb3ec3a90332364035f2306b73246563f9815da042889ecc813f517c606`.
Observed bounded GoodDirection cases: 24. -/
def fam_020_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := source_019_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_020_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_019_producer.Applies fam_020_key r mask)
    (hrows : row_004_producer.Applies fam_020_key r mask) :
    SourceIndexStateKeyFacts fam_020_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_019_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `aaf0c94ac777e38df6704e10e5b134474fbdaee67e45dbecaf0a75839e4051c4`.
Observed bounded GoodDirection cases: 23. -/
def fam_021_key : SourceIndexStateKey where
  firstIndex := 49
  secondIndex := 3
  support := source_021_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_021_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_021_producer.Applies fam_021_key r mask)
    (hrows : row_006_producer.Applies fam_021_key r mask) :
    SourceIndexStateKeyFacts fam_021_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_021_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `df22064af643aad235f9a9166e7b689a6734e88981457906fca0ca0ee09756fe`.
Observed bounded GoodDirection cases: 21. -/
def fam_022_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 1
  support := source_023_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_022_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_023_producer.Applies fam_022_key r mask)
    (hrows : row_001_producer.Applies fam_022_key r mask) :
    SourceIndexStateKeyFacts fam_022_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_023_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `f6372e655bd1e080f715a75f5998002a7c4eb5c48c53c25dce5244b50fc611b2`.
Observed bounded GoodDirection cases: 21. -/
def fam_023_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 12
  support := source_022_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_023_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_022_producer.Applies fam_023_key r mask)
    (hrows : row_005_producer.Applies fam_023_key r mask) :
    SourceIndexStateKeyFacts fam_023_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_022_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Source-position producer-glue family `a8ec4854eb063539742df8e5a71e443d2c6d8dc89461d041fb100f0c0980745a`.
Observed bounded GoodDirection cases: 19. -/
def fam_024_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 0
  support := source_024_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_024_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_024_producer.Applies fam_024_key r mask)
    (hrows : row_000_producer.Applies fam_024_key r mask) :
    SourceIndexStateKeyFacts fam_024_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_024_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `4fd2c6d716718d15e14268942ea542fa2c81953e23c6fbdc765850f7a971713c`.
Observed bounded GoodDirection cases: 18. -/
def fam_025_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := source_027_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_025_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_027_producer.Applies fam_025_key r mask)
    (hrows : row_000_producer.Applies fam_025_key r mask) :
    SourceIndexStateKeyFacts fam_025_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_027_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `8df102f5a0a90f97d60f2652976e91573fa50c98a41b8b39dfb807ce9a90185a`.
Observed bounded GoodDirection cases: 18. -/
def fam_026_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 0
  support := source_025_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_026_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_025_producer.Applies fam_026_key r mask)
    (hrows : row_000_producer.Applies fam_026_key r mask) :
    SourceIndexStateKeyFacts fam_026_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_025_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `4ddebe84b37b759c7c35af6b67962ca3122e8996e78c12dee46578cfefdbf6e6`.
Observed bounded GoodDirection cases: 18. -/
def fam_027_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 1
  support := source_026_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_027_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_026_producer.Applies fam_027_key r mask)
    (hrows : row_001_producer.Applies fam_027_key r mask) :
    SourceIndexStateKeyFacts fam_027_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_026_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `582ae5f7332e483b5b742a2b48608c35158bf2515b8a265aaf3d1ff06c7c2c78`.
Observed bounded GoodDirection cases: 17. -/
def fam_028_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := source_030_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_028_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_028_key r mask)
    (hrows : row_000_producer.Applies fam_028_key r mask) :
    SourceIndexStateKeyFacts fam_028_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_030_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `2439de6f0b777e4cc736c05012dc6ad5c4f965cbc1b24ed407455cf2737070f7`.
Observed bounded GoodDirection cases: 17. -/
def fam_029_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 13
  support := source_028_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_029_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_028_producer.Applies fam_029_key r mask)
    (hrows : row_004_producer.Applies fam_029_key r mask) :
    SourceIndexStateKeyFacts fam_029_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_028_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `c7daec541a59938059b6b7336130cf10dee6d86d506a0a8e8f1dd2a6eb207757`.
Observed bounded GoodDirection cases: 17. -/
def fam_030_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := source_029_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_030_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_029_producer.Applies fam_030_key r mask)
    (hrows : row_004_producer.Applies fam_030_key r mask) :
    SourceIndexStateKeyFacts fam_030_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_029_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `1f67765c3056fb95c85720f14cbecdf8ca17f0c763076273d8c85286126303dd`.
Observed bounded GoodDirection cases: 16. -/
def fam_031_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 10
  support := source_031_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_031_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_031_producer.Applies fam_031_key r mask)
    (hrows : row_003_producer.Applies fam_031_key r mask) :
    SourceIndexStateKeyFacts fam_031_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_031_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `d5fb70a848c7493d9a717a226ab641a4976a092c0a36b32962d2846ceec5177e`.
Observed bounded GoodDirection cases: 15. -/
def fam_032_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 1
  support := source_032_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_032_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_032_producer.Applies fam_032_key r mask)
    (hrows : row_001_producer.Applies fam_032_key r mask) :
    SourceIndexStateKeyFacts fam_032_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_032_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `4274bdafc404e0e1fecf6459ef92a7903f8f9e4dacc0b5d75d7a77305ffff4ea`.
Observed bounded GoodDirection cases: 14. -/
def fam_033_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 16
  support := source_035_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_033_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_035_producer.Applies fam_033_key r mask)
    (hrows : row_003_producer.Applies fam_033_key r mask) :
    SourceIndexStateKeyFacts fam_033_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_035_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Source-position producer-glue family `ce351c894c24d0e7934e685ded4df531a3fde648aa0b4af5b6c980817065e54a`.
Observed bounded GoodDirection cases: 14. -/
def fam_034_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 1
  support := source_036_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_034_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_036_producer.Applies fam_034_key r mask)
    (hrows : row_001_producer.Applies fam_034_key r mask) :
    SourceIndexStateKeyFacts fam_034_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_036_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `561c18e9c09f8b6b63975005dbb3f97e58761fac0cbe5e8ff8e448b41a1c3805`.
Observed bounded GoodDirection cases: 14. -/
def fam_035_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 14
  support := source_034_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_035_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_034_producer.Applies fam_035_key r mask)
    (hrows : row_005_producer.Applies fam_035_key r mask) :
    SourceIndexStateKeyFacts fam_035_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_034_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Source-position producer-glue family `f9b8992d74a2bab1f882aa9e4086b7c8119bb6223309678613400c81182d3f4d`.
Observed bounded GoodDirection cases: 13. -/
def fam_036_key : SourceIndexStateKey where
  firstIndex := 103
  secondIndex := 0
  support := source_038_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_036_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_038_producer.Applies fam_036_key r mask)
    (hrows : row_000_producer.Applies fam_036_key r mask) :
    SourceIndexStateKeyFacts fam_036_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_038_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `2b253f19b0568b2d787c036c76183c1aa727a0f469e235fbb42418bc8d844b84`.
Observed bounded GoodDirection cases: 13. -/
def fam_037_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 13
  support := source_037_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_037_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_037_producer.Applies fam_037_key r mask)
    (hrows : row_005_producer.Applies fam_037_key r mask) :
    SourceIndexStateKeyFacts fam_037_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_037_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Source-position producer-glue family `b1f315d3f9761f8e6db0cebf7739b59e499ff3066fa540d7f17a4b71f65af145`.
Observed bounded GoodDirection cases: 11. -/
def fam_038_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 0
  support := source_039_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_038_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_039_producer.Applies fam_038_key r mask)
    (hrows : row_000_producer.Applies fam_038_key r mask) :
    SourceIndexStateKeyFacts fam_038_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_039_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `84cbf583a8d3dad09d61d062b4f77758321b9574ea5c3d469d2fe7b9ff6500ef`.
Observed bounded GoodDirection cases: 11. -/
def fam_039_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 8
  support := source_033_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_039_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_039_key r mask)
    (hrows : row_007_producer.Applies fam_039_key r mask) :
    SourceIndexStateKeyFacts fam_039_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_033_producer.sourceFacts hsource)
    (row_007_producer.rowFacts hrows)

/-- Source-position producer-glue family `6b77eeef1471b90640a4845f2e7b7b4a3d02289c82b7c304ef9116544d18b9ad`.
Observed bounded GoodDirection cases: 11. -/
def fam_040_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 2
  support := source_040_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_040_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_040_producer.Applies fam_040_key r mask)
    (hrows : row_002_producer.Applies fam_040_key r mask) :
    SourceIndexStateKeyFacts fam_040_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_040_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `76d5d3ad3b190c9f6e119b8a88c041a9008a492b90dba38b5f0bdfa2c0b545ca`.
Observed bounded GoodDirection cases: 11. -/
def fam_041_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 2
  support := source_041_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_041_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_041_producer.Applies fam_041_key r mask)
    (hrows : row_002_producer.Applies fam_041_key r mask) :
    SourceIndexStateKeyFacts fam_041_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_041_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `33ae86e96c56e24d88c051575221526a33c0b89000b45938f30611ab5a4e41a6`.
Observed bounded GoodDirection cases: 9. -/
def fam_042_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 0
  support := source_044_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_042_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_044_producer.Applies fam_042_key r mask)
    (hrows : row_000_producer.Applies fam_042_key r mask) :
    SourceIndexStateKeyFacts fam_042_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_044_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `917a64473dc71e3b13a5fe31410ca315f01367affff4bb98206b476cf7fb8c0c`.
Observed bounded GoodDirection cases: 9. -/
def fam_043_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 0
  support := source_042_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_043_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_042_producer.Applies fam_043_key r mask)
    (hrows : row_000_producer.Applies fam_043_key r mask) :
    SourceIndexStateKeyFacts fam_043_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_042_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `7774b30a46b90263474d77dc6a2719b61517977b9e6fdab6ab7e98c1f7a4b6da`.
Observed bounded GoodDirection cases: 9. -/
def fam_044_key : SourceIndexStateKey where
  firstIndex := 70
  secondIndex := 1
  support := source_043_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_044_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_043_producer.Applies fam_044_key r mask)
    (hrows : row_001_producer.Applies fam_044_key r mask) :
    SourceIndexStateKeyFacts fam_044_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_043_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `6af2d41d3c2ee178f41f1e043d7b4c346ce2ba5b36e5152d9b0c67d6528bd6bc`.
Observed bounded GoodDirection cases: 8. -/
def fam_045_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 0
  support := source_045_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_045_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_045_producer.Applies fam_045_key r mask)
    (hrows : row_000_producer.Applies fam_045_key r mask) :
    SourceIndexStateKeyFacts fam_045_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_045_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `f0b753dfc3deda1191c063efe7934e2675b3263e4504222ab184c757c4b0da85`.
Observed bounded GoodDirection cases: 8. -/
def fam_046_key : SourceIndexStateKey where
  firstIndex := 107
  secondIndex := 0
  support := source_048_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_046_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_048_producer.Applies fam_046_key r mask)
    (hrows : row_000_producer.Applies fam_046_key r mask) :
    SourceIndexStateKeyFacts fam_046_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_048_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `c1136f3d6dcaf1282882f919bae09c48dd0cb7e7c1486fe27f92688bf5dd73cd`.
Observed bounded GoodDirection cases: 8. -/
def fam_047_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 1
  support := source_046_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_047_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_046_producer.Applies fam_047_key r mask)
    (hrows : row_001_producer.Applies fam_047_key r mask) :
    SourceIndexStateKeyFacts fam_047_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_046_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `60ede019af700f7f4cd0110f34256fe8ffc7dfdb1dc30add788ef06392ab0d22`.
Observed bounded GoodDirection cases: 8. -/
def fam_048_key : SourceIndexStateKey where
  firstIndex := 95
  secondIndex := 2
  support := source_047_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_048_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_047_producer.Applies fam_048_key r mask)
    (hrows : row_002_producer.Applies fam_048_key r mask) :
    SourceIndexStateKeyFacts fam_048_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_047_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `d7d264c0e3ad46aaf9b9b576e0654381201768312415e3f1a37f4245a134d5a2`.
Observed bounded GoodDirection cases: 7. -/
def fam_049_key : SourceIndexStateKey where
  firstIndex := 70
  secondIndex := 4
  support := source_052_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_049_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_052_producer.Applies fam_049_key r mask)
    (hrows : row_011_producer.Applies fam_049_key r mask) :
    SourceIndexStateKeyFacts fam_049_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_052_producer.sourceFacts hsource)
    (row_011_producer.rowFacts hrows)

/-- Source-position producer-glue family `375736f26d4c2eddd65c7402f9bd7e1e12036ad7fab7b73c152ce03e5af39b52`.
Observed bounded GoodDirection cases: 7. -/
def fam_050_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 1
  support := source_050_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_050_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_050_producer.Applies fam_050_key r mask)
    (hrows : row_001_producer.Applies fam_050_key r mask) :
    SourceIndexStateKeyFacts fam_050_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_050_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `56f164b10153fec1fc38a63bbd3e0e90892fbbcda01d6bdaf5e8aaadf94a1630`.
Observed bounded GoodDirection cases: 7. -/
def fam_051_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 1
  support := source_049_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_051_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_049_producer.Applies fam_051_key r mask)
    (hrows : row_001_producer.Applies fam_051_key r mask) :
    SourceIndexStateKeyFacts fam_051_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_049_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `fd750ba67415f9eb7fe69c3f1d2565eff175952a54d289265d0e5ca4ca6e002b`.
Observed bounded GoodDirection cases: 7. -/
def fam_052_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := source_051_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_052_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_051_producer.Applies fam_052_key r mask)
    (hrows : row_004_producer.Applies fam_052_key r mask) :
    SourceIndexStateKeyFacts fam_052_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_051_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Source-position producer-glue family `25e6873ca7c450b2c4bf7a2548883cfe32c017b9260e2a47aafb9217d4e29871`.
Observed bounded GoodDirection cases: 6. -/
def fam_053_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := source_053_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_053_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_053_producer.Applies fam_053_key r mask)
    (hrows : row_000_producer.Applies fam_053_key r mask) :
    SourceIndexStateKeyFacts fam_053_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_053_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `bd12e0674f599c36efe9cc8fd7020aa104c87901dbb70490d11e7116bde049fa`.
Observed bounded GoodDirection cases: 6. -/
def fam_054_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 0
  support := source_054_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_054_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_054_producer.Applies fam_054_key r mask)
    (hrows : row_000_producer.Applies fam_054_key r mask) :
    SourceIndexStateKeyFacts fam_054_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_054_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `fdcb921c6ebe7ecdd2123df586ceb90e441220452ab12763063432bab1d8ebf8`.
Observed bounded GoodDirection cases: 6. -/
def fam_055_key : SourceIndexStateKey where
  firstIndex := 105
  secondIndex := 0
  support := source_056_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_055_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_056_producer.Applies fam_055_key r mask)
    (hrows : row_000_producer.Applies fam_055_key r mask) :
    SourceIndexStateKeyFacts fam_055_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_056_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `11d95b2850994406b719844e1957d6fb11c787de83d20182bdfdf7196ee4358d`.
Observed bounded GoodDirection cases: 6. -/
def fam_056_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 2
  support := source_055_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_056_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_055_producer.Applies fam_056_key r mask)
    (hrows : row_002_producer.Applies fam_056_key r mask) :
    SourceIndexStateKeyFacts fam_056_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_055_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `0778794abff7963aa45155a23d08d63dcfd67784fce58a6c55db98e53c880497`.
Observed bounded GoodDirection cases: 5. -/
def fam_057_key : SourceIndexStateKey where
  firstIndex := 119
  secondIndex := 0
  support := source_057_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_057_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_057_producer.Applies fam_057_key r mask)
    (hrows : row_000_producer.Applies fam_057_key r mask) :
    SourceIndexStateKeyFacts fam_057_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_057_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `0c7becc7afaaffef44c6b08308dddf8d70981c3f52f18cdb8abbaa0124985429`.
Observed bounded GoodDirection cases: 5. -/
def fam_058_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 1
  support := source_059_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_058_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_059_producer.Applies fam_058_key r mask)
    (hrows : row_001_producer.Applies fam_058_key r mask) :
    SourceIndexStateKeyFacts fam_058_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_059_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `3aaf4a23dc13f1f0e44e262c79902cb6dd8604a2bb3ce8eb6952bdaa6df8736b`.
Observed bounded GoodDirection cases: 5. -/
def fam_059_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 1
  support := source_058_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_059_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_058_producer.Applies fam_059_key r mask)
    (hrows : row_001_producer.Applies fam_059_key r mask) :
    SourceIndexStateKeyFacts fam_059_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_058_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `3bfda27fc01458d2f389e7f2c54bc8b1ccbe1f08a7582d881305cbba7f775712`.
Observed bounded GoodDirection cases: 4. -/
def fam_060_key : SourceIndexStateKey where
  firstIndex := 101
  secondIndex := 4
  support := source_067_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_060_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_067_producer.Applies fam_060_key r mask)
    (hrows : row_013_producer.Applies fam_060_key r mask) :
    SourceIndexStateKeyFacts fam_060_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_067_producer.sourceFacts hsource)
    (row_013_producer.rowFacts hrows)

/-- Source-position producer-glue family `17977d6940b4f9b3cd69d726764fbc1b74e3cc88634752afc69080c10d28229e`.
Observed bounded GoodDirection cases: 4. -/
def fam_061_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 3
  support := source_063_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_061_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_063_producer.Applies fam_061_key r mask)
    (hrows : row_006_producer.Applies fam_061_key r mask) :
    SourceIndexStateKeyFacts fam_061_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_063_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `2b13ec450d4e16701ee460dbb55d845bd603427f2235572a3df3ee8e915caa6c`.
Observed bounded GoodDirection cases: 4. -/
def fam_062_key : SourceIndexStateKey where
  firstIndex := 92
  secondIndex := 3
  support := source_066_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_062_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_066_producer.Applies fam_062_key r mask)
    (hrows : row_006_producer.Applies fam_062_key r mask) :
    SourceIndexStateKeyFacts fam_062_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_066_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `8382ddd9bd9da8912d9a8e90d4b12f57e9d5a8174160d8ddfc87346c5e94d05d`.
Observed bounded GoodDirection cases: 4. -/
def fam_063_key : SourceIndexStateKey where
  firstIndex := 128
  secondIndex := 3
  support := source_069_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_063_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_069_producer.Applies fam_063_key r mask)
    (hrows : row_006_producer.Applies fam_063_key r mask) :
    SourceIndexStateKeyFacts fam_063_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_069_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `39004b075b2d62a7ab782a5bd13ffb6c869a6a98a769f9380559dbab6c97eb26`.
Observed bounded GoodDirection cases: 4. -/
def fam_064_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 11
  support := source_065_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_064_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_065_producer.Applies fam_064_key r mask)
    (hrows : row_009_producer.Applies fam_064_key r mask) :
    SourceIndexStateKeyFacts fam_064_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_065_producer.sourceFacts hsource)
    (row_009_producer.rowFacts hrows)

/-- Source-position producer-glue family `3a888576ba3bfcde7a8d90f15a809c0953309774e01d898ae3ca1bf3606a85ed`.
Observed bounded GoodDirection cases: 4. -/
def fam_065_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 10
  support := source_068_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_065_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_068_producer.Applies fam_065_key r mask)
    (hrows : row_009_producer.Applies fam_065_key r mask) :
    SourceIndexStateKeyFacts fam_065_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_068_producer.sourceFacts hsource)
    (row_009_producer.rowFacts hrows)

/-- Source-position producer-glue family `163648196897c06ef9d3da61435ef10e6cc3fdd49678b00a392ece04621568a4`.
Observed bounded GoodDirection cases: 4. -/
def fam_066_key : SourceIndexStateKey where
  firstIndex := 147
  secondIndex := 0
  support := source_061_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_066_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_061_producer.Applies fam_066_key r mask)
    (hrows : row_000_producer.Applies fam_066_key r mask) :
    SourceIndexStateKeyFacts fam_066_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_061_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `7a1e0cd0a6c58ec13f08757d346780672ca91ff5432cda2588fef008da40a32c`.
Observed bounded GoodDirection cases: 4. -/
def fam_067_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 0
  support := source_060_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_067_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_060_producer.Applies fam_067_key r mask)
    (hrows : row_000_producer.Applies fam_067_key r mask) :
    SourceIndexStateKeyFacts fam_067_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_060_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `770c17db81a00d2cc196f1c69403cf77853451677532a5501a7f235477ca92e8`.
Observed bounded GoodDirection cases: 4. -/
def fam_068_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 8
  support := source_033_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_068_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_068_key r mask)
    (hrows : row_008_producer.Applies fam_068_key r mask) :
    SourceIndexStateKeyFacts fam_068_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_033_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `328d73ce8a190744522e85bc8f47a707f38936922eb4b41db316b099fb887eb1`.
Observed bounded GoodDirection cases: 4. -/
def fam_069_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 1
  support := source_062_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_069_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_062_producer.Applies fam_069_key r mask)
    (hrows : row_001_producer.Applies fam_069_key r mask) :
    SourceIndexStateKeyFacts fam_069_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_062_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `6027493b9647f3827454b1c8fb782e3a3bb8516cea6a93c3c9a88a1edd1288dd`.
Observed bounded GoodDirection cases: 4. -/
def fam_070_key : SourceIndexStateKey where
  firstIndex := 168
  secondIndex := 1
  support := source_064_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_070_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_064_producer.Applies fam_070_key r mask)
    (hrows : row_001_producer.Applies fam_070_key r mask) :
    SourceIndexStateKeyFacts fam_070_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_064_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `b8abf83a701501202948c3cfb9cc50a419f9d23ff90c75b8eeba2f8faa967288`.
Observed bounded GoodDirection cases: 3. -/
def fam_071_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 3
  support := source_072_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_071_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_072_producer.Applies fam_071_key r mask)
    (hrows : row_006_producer.Applies fam_071_key r mask) :
    SourceIndexStateKeyFacts fam_071_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_072_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `c0a8bed3299f97c821eb8f330b39581b75a6d7d57458fdddb59020ed6f3e2ef1`.
Observed bounded GoodDirection cases: 3. -/
def fam_072_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 3
  support := source_073_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_072_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_073_producer.Applies fam_072_key r mask)
    (hrows : row_006_producer.Applies fam_072_key r mask) :
    SourceIndexStateKeyFacts fam_072_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_073_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `e3871a481d56fba6bedc69f62f83f3cb2b6631d5b3ea08fb09a295dbe1b4f6f1`.
Observed bounded GoodDirection cases: 3. -/
def fam_073_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 1
  support := source_071_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_073_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_071_producer.Applies fam_073_key r mask)
    (hrows : row_001_producer.Applies fam_073_key r mask) :
    SourceIndexStateKeyFacts fam_073_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_071_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `fe40eaf2bcebcb7eaed0568bb6a20fdf03226d067433b81a0f8226bf09be6a30`.
Observed bounded GoodDirection cases: 3. -/
def fam_074_key : SourceIndexStateKey where
  firstIndex := 184
  secondIndex := 1
  support := source_070_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_074_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_070_producer.Applies fam_074_key r mask)
    (hrows : row_001_producer.Applies fam_074_key r mask) :
    SourceIndexStateKeyFacts fam_074_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_070_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `53cd41bf3302a8a8cc8c551bfcc56a659913aaec03841da83a3b835370382133`.
Observed bounded GoodDirection cases: 3. -/
def fam_075_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 2
  support := source_074_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_075_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_074_producer.Applies fam_075_key r mask)
    (hrows : row_002_producer.Applies fam_075_key r mask) :
    SourceIndexStateKeyFacts fam_075_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_074_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `bae141b5dd11114ffab1e610b2bd7eac3fa9828745b16bd54c063c4fe626dab2`.
Observed bounded GoodDirection cases: 3. -/
def fam_076_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 2
  support := source_075_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_076_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_075_producer.Applies fam_076_key r mask)
    (hrows : row_002_producer.Applies fam_076_key r mask) :
    SourceIndexStateKeyFacts fam_076_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_075_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `307b518bdefa532ce9207f935557e93cb89dbbdbfb0929ac9f926eee7b7f88a7`.
Observed bounded GoodDirection cases: 3. -/
def fam_077_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 16
  support := source_076_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_077_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_076_producer.Applies fam_077_key r mask)
    (hrows : row_005_producer.Applies fam_077_key r mask) :
    SourceIndexStateKeyFacts fam_077_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_076_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Source-position producer-glue family `176a6f5cde928d4c056b2b27f4236130f38d8b4b1697cedc9d7872ca728c9dc0`.
Observed bounded GoodDirection cases: 2. -/
def fam_078_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 13
  support := source_092_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_078_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_092_producer.Applies fam_078_key r mask)
    (hrows : row_014_producer.Applies fam_078_key r mask) :
    SourceIndexStateKeyFacts fam_078_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_092_producer.sourceFacts hsource)
    (row_014_producer.rowFacts hrows)

/-- Source-position producer-glue family `a6a31f751351ebb4e60512e2b32d6628586215d4259dbfe9d2fe299bba1b8a1c`.
Observed bounded GoodDirection cases: 2. -/
def fam_079_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 12
  support := source_083_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_079_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_083_producer.Applies fam_079_key r mask)
    (hrows : row_016_producer.Applies fam_079_key r mask) :
    SourceIndexStateKeyFacts fam_079_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_083_producer.sourceFacts hsource)
    (row_016_producer.rowFacts hrows)

/-- Source-position producer-glue family `646c6bc7f18e68e95287ee82b7443b597812247d0cdf72e65e8c74347cff221c`.
Observed bounded GoodDirection cases: 2. -/
def fam_080_key : SourceIndexStateKey where
  firstIndex := 99
  secondIndex := 7
  support := source_093_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_080_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_093_producer.Applies fam_080_key r mask)
    (hrows : row_012_producer.Applies fam_080_key r mask) :
    SourceIndexStateKeyFacts fam_080_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_093_producer.sourceFacts hsource)
    (row_012_producer.rowFacts hrows)

/-- Source-position producer-glue family `bb557a47819ccd5bfcd16195b358e1dbdd60929380c98b284cb0b8d8188086a6`.
Observed bounded GoodDirection cases: 2. -/
def fam_081_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 6
  support := source_090_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_081_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_090_producer.Applies fam_081_key r mask)
    (hrows : row_015_producer.Applies fam_081_key r mask) :
    SourceIndexStateKeyFacts fam_081_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_090_producer.sourceFacts hsource)
    (row_015_producer.rowFacts hrows)

/-- Source-position producer-glue family `6d6f0e6c2872db37c306c1d0c15d180d34faf5817d71c829337c9f6066252ccf`.
Observed bounded GoodDirection cases: 2. -/
def fam_082_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 3
  support := source_081_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_082_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_081_producer.Applies fam_082_key r mask)
    (hrows : row_006_producer.Applies fam_082_key r mask) :
    SourceIndexStateKeyFacts fam_082_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_081_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `b29d18bb938d1e0b97d174ddfef79896e0171d7809c44b9931041bf951838947`.
Observed bounded GoodDirection cases: 2. -/
def fam_083_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 3
  support := source_089_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_083_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_089_producer.Applies fam_083_key r mask)
    (hrows : row_006_producer.Applies fam_083_key r mask) :
    SourceIndexStateKeyFacts fam_083_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_089_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `bf716cac2fc8e0d40e4382f654c5fae6f4510b2536c34193c531520fa82aa1e6`.
Observed bounded GoodDirection cases: 2. -/
def fam_084_key : SourceIndexStateKey where
  firstIndex := 132
  secondIndex := 0
  support := source_085_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_084_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_085_producer.Applies fam_084_key r mask)
    (hrows : row_000_producer.Applies fam_084_key r mask) :
    SourceIndexStateKeyFacts fam_084_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_085_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `48038dc101c048930f554be5a91e6fe62258d506fff57340597ff92e26ecfa21`.
Observed bounded GoodDirection cases: 2. -/
def fam_085_key : SourceIndexStateKey where
  firstIndex := 160
  secondIndex := 9
  support := source_088_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_085_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_088_producer.Applies fam_085_key r mask)
    (hrows : row_008_producer.Applies fam_085_key r mask) :
    SourceIndexStateKeyFacts fam_085_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_088_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `54abd5a283a8ebf0f7808b920e7326763748f6411dad3136fa5f8676ebf4327d`.
Observed bounded GoodDirection cases: 2. -/
def fam_086_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 10
  support := source_084_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_086_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_084_producer.Applies fam_086_key r mask)
    (hrows : row_008_producer.Applies fam_086_key r mask) :
    SourceIndexStateKeyFacts fam_086_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_084_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `a9acae98018f2876953edf07894ef6f663c7bac68c07a4d1bcfa1cec39be4b11`.
Observed bounded GoodDirection cases: 2. -/
def fam_087_key : SourceIndexStateKey where
  firstIndex := 152
  secondIndex := 9
  support := source_086_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_087_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_086_producer.Applies fam_087_key r mask)
    (hrows : row_007_producer.Applies fam_087_key r mask) :
    SourceIndexStateKeyFacts fam_087_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_086_producer.sourceFacts hsource)
    (row_007_producer.rowFacts hrows)

/-- Source-position producer-glue family `0e085619323e511c868e6951154f492225320904b520d2caa33b7c57f3a455da`.
Observed bounded GoodDirection cases: 2. -/
def fam_088_key : SourceIndexStateKey where
  firstIndex := 170
  secondIndex := 1
  support := source_082_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_088_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_082_producer.Applies fam_088_key r mask)
    (hrows : row_001_producer.Applies fam_088_key r mask) :
    SourceIndexStateKeyFacts fam_088_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_082_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `7e4bd5a1d841b78bc92b42afc69d49e1218781f7afa213140d3312c870ed66b5`.
Observed bounded GoodDirection cases: 2. -/
def fam_089_key : SourceIndexStateKey where
  firstIndex := 118
  secondIndex := 1
  support := source_087_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_089_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_087_producer.Applies fam_089_key r mask)
    (hrows : row_001_producer.Applies fam_089_key r mask) :
    SourceIndexStateKeyFacts fam_089_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_087_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `a4e779f35722c820b078dd239298815fae71de8b9b9b79e7e766750f35c03be6`.
Observed bounded GoodDirection cases: 2. -/
def fam_090_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 1
  support := source_091_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_090_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_091_producer.Applies fam_090_key r mask)
    (hrows : row_001_producer.Applies fam_090_key r mask) :
    SourceIndexStateKeyFacts fam_090_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_091_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `3b12b6c3f181c7911dd6e6c306705dbca793915b3d792bed6f6b96f76da986fd`.
Observed bounded GoodDirection cases: 2. -/
def fam_091_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 2
  support := source_077_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_091_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_077_producer.Applies fam_091_key r mask)
    (hrows : row_002_producer.Applies fam_091_key r mask) :
    SourceIndexStateKeyFacts fam_091_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_077_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `3c4186faefc59d7714cb2ce7a5de0d25e1f37c12178a1720c25be74edfab60f4`.
Observed bounded GoodDirection cases: 2. -/
def fam_092_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 2
  support := source_078_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_092_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_078_producer.Applies fam_092_key r mask)
    (hrows : row_002_producer.Applies fam_092_key r mask) :
    SourceIndexStateKeyFacts fam_092_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_078_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `62cde10d5755a010df2d40ce24e0de7f19367d9ff063f6d52f46ca443cb41ae4`.
Observed bounded GoodDirection cases: 2. -/
def fam_093_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 2
  support := source_080_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_093_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_080_producer.Applies fam_093_key r mask)
    (hrows : row_002_producer.Applies fam_093_key r mask) :
    SourceIndexStateKeyFacts fam_093_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_080_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `636c01a26809afbda9a061eb37f65b50827f40ffffed1c7542fe2a86bf5bfae6`.
Observed bounded GoodDirection cases: 2. -/
def fam_094_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 2
  support := source_079_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_094_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_079_producer.Applies fam_094_key r mask)
    (hrows : row_002_producer.Applies fam_094_key r mask) :
    SourceIndexStateKeyFacts fam_094_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_079_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `71e3ad528373844c11c154df7a1c687f874e9406d9a35e40463e415d66404b66`.
Observed bounded GoodDirection cases: 1. -/
def fam_095_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 11
  support := source_107_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_095_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_107_producer.Applies fam_095_key r mask)
    (hrows : row_014_producer.Applies fam_095_key r mask) :
    SourceIndexStateKeyFacts fam_095_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_107_producer.sourceFacts hsource)
    (row_014_producer.rowFacts hrows)

/-- Source-position producer-glue family `adfd7e89c920e311d60870c08633b54c785db45d159b4fd2abdf7c89fe8cdb47`.
Observed bounded GoodDirection cases: 1. -/
def fam_096_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 15
  support := source_125_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_096_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_125_producer.Applies fam_096_key r mask)
    (hrows : row_014_producer.Applies fam_096_key r mask) :
    SourceIndexStateKeyFacts fam_096_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_125_producer.sourceFacts hsource)
    (row_014_producer.rowFacts hrows)

/-- Source-position producer-glue family `c0c4f8c4270ccb5fdb6be4c285762053c1e68378c304374a58b5a4defe3c393f`.
Observed bounded GoodDirection cases: 1. -/
def fam_097_key : SourceIndexStateKey where
  firstIndex := 165
  secondIndex := 4
  support := source_105_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_097_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_105_producer.Applies fam_097_key r mask)
    (hrows : row_013_producer.Applies fam_097_key r mask) :
    SourceIndexStateKeyFacts fam_097_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_105_producer.sourceFacts hsource)
    (row_013_producer.rowFacts hrows)

/-- Source-position producer-glue family `ea15f28d1c5665a8d2a9dc3b6db8d2fb91ff08b2b069103b426fc07c20e2cba9`.
Observed bounded GoodDirection cases: 1. -/
def fam_098_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 14
  support := source_116_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_098_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_116_producer.Applies fam_098_key r mask)
    (hrows : row_014_producer.Applies fam_098_key r mask) :
    SourceIndexStateKeyFacts fam_098_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_116_producer.sourceFacts hsource)
    (row_014_producer.rowFacts hrows)

/-- Source-position producer-glue family `2c872c6dbd1776a2b1dec52274fe2eb0c49bec62c8202bdc3b28f9bdbd5397e5`.
Observed bounded GoodDirection cases: 1. -/
def fam_099_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 7
  support := source_127_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_099_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_127_producer.Applies fam_099_key r mask)
    (hrows : row_012_producer.Applies fam_099_key r mask) :
    SourceIndexStateKeyFacts fam_099_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_127_producer.sourceFacts hsource)
    (row_012_producer.rowFacts hrows)

/-- Source-position producer-glue family `69bc7c3517157185f772d7d69611a7b13e98049ded09ed5cdadce666e18f9b52`.
Observed bounded GoodDirection cases: 1. -/
def fam_100_key : SourceIndexStateKey where
  firstIndex := 7
  secondIndex := 11
  support := source_128_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_100_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_128_producer.Applies fam_100_key r mask)
    (hrows : row_018_producer.Applies fam_100_key r mask) :
    SourceIndexStateKeyFacts fam_100_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_128_producer.sourceFacts hsource)
    (row_018_producer.rowFacts hrows)

/-- Source-position producer-glue family `af434ef1e28c4e9374e80e31bdac5132c4122299fdf6297c00b77e81462ef215`.
Observed bounded GoodDirection cases: 1. -/
def fam_101_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 12
  support := source_123_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_101_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_123_producer.Applies fam_101_key r mask)
    (hrows : row_017_producer.Applies fam_101_key r mask) :
    SourceIndexStateKeyFacts fam_101_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_123_producer.sourceFacts hsource)
    (row_017_producer.rowFacts hrows)

/-- Source-position producer-glue family `c8cabab02f21f094bfbcc9f8e6089f1a1dd557fd810e328ccdf8d15df743d5b0`.
Observed bounded GoodDirection cases: 1. -/
def fam_102_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 7
  support := source_099_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_102_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_099_producer.Applies fam_102_key r mask)
    (hrows : row_012_producer.Applies fam_102_key r mask) :
    SourceIndexStateKeyFacts fam_102_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_099_producer.sourceFacts hsource)
    (row_012_producer.rowFacts hrows)

/-- Source-position producer-glue family `ca84b89b0f6ddf05518b1edae25c6870b88d9fac02b265344bf98adf0431a536`.
Observed bounded GoodDirection cases: 1. -/
def fam_103_key : SourceIndexStateKey where
  firstIndex := 163
  secondIndex := 7
  support := source_133_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_103_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_133_producer.Applies fam_103_key r mask)
    (hrows : row_012_producer.Applies fam_103_key r mask) :
    SourceIndexStateKeyFacts fam_103_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_133_producer.sourceFacts hsource)
    (row_012_producer.rowFacts hrows)

/-- Source-position producer-glue family `3470de88c3bb9a115ac302df9a176bfee11086cf10630f460eac52948997c5dd`.
Observed bounded GoodDirection cases: 1. -/
def fam_104_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 3
  support := source_119_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_104_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_119_producer.Applies fam_104_key r mask)
    (hrows : row_006_producer.Applies fam_104_key r mask) :
    SourceIndexStateKeyFacts fam_104_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_119_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `7756892e1bbc5bf2e1f84a76378de3a1fb4a581c106d3ab4ed5f9be83c94a898`.
Observed bounded GoodDirection cases: 1. -/
def fam_105_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 3
  support := source_095_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_105_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_095_producer.Applies fam_105_key r mask)
    (hrows : row_006_producer.Applies fam_105_key r mask) :
    SourceIndexStateKeyFacts fam_105_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_095_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Source-position producer-glue family `6c41c02549ae4d2775d47f5e083cf12723ea4da308c4ba5294e6d2e42013e537`.
Observed bounded GoodDirection cases: 1. -/
def fam_106_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 12
  support := source_126_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_106_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_126_producer.Applies fam_106_key r mask)
    (hrows : row_009_producer.Applies fam_106_key r mask) :
    SourceIndexStateKeyFacts fam_106_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_126_producer.sourceFacts hsource)
    (row_009_producer.rowFacts hrows)

/-- Source-position producer-glue family `6feeb6884d5e0b667d64bdfb21d087168ae5b53bfbf4cc4ff400605a833e93ac`.
Observed bounded GoodDirection cases: 1. -/
def fam_107_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 13
  support := source_117_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_107_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_117_producer.Applies fam_107_key r mask)
    (hrows : row_009_producer.Applies fam_107_key r mask) :
    SourceIndexStateKeyFacts fam_107_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_117_producer.sourceFacts hsource)
    (row_009_producer.rowFacts hrows)

/-- Source-position producer-glue family `fe0d2c6fdbd1d260cde0f0ef6ef8c8ab6debf4bb5b70ceda4ae92266d21ce8d2`.
Observed bounded GoodDirection cases: 1. -/
def fam_108_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 14
  support := source_130_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_108_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_130_producer.Applies fam_108_key r mask)
    (hrows : row_009_producer.Applies fam_108_key r mask) :
    SourceIndexStateKeyFacts fam_108_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_130_producer.sourceFacts hsource)
    (row_009_producer.rowFacts hrows)

/-- Source-position producer-glue family `b0f0ca5a98035b6b28d04137c8ccc38f11ac1d979835852b354aeb5200758f8f`.
Observed bounded GoodDirection cases: 1. -/
def fam_109_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 0
  support := source_120_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_109_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_120_producer.Applies fam_109_key r mask)
    (hrows : row_000_producer.Applies fam_109_key r mask) :
    SourceIndexStateKeyFacts fam_109_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_120_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `c181ba9bc80ff1e0af2cb891a63228397f40a8cc53b0148a4d2ff9db5b15c352`.
Observed bounded GoodDirection cases: 1. -/
def fam_110_key : SourceIndexStateKey where
  firstIndex := 145
  secondIndex := 0
  support := source_134_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_110_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_134_producer.Applies fam_110_key r mask)
    (hrows : row_000_producer.Applies fam_110_key r mask) :
    SourceIndexStateKeyFacts fam_110_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_134_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `e7278ff9089a5d682777b11eb2c3af769e059c934a6a5e3488182bf47823624c`.
Observed bounded GoodDirection cases: 1. -/
def fam_111_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 0
  support := source_113_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_111_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_113_producer.Applies fam_111_key r mask)
    (hrows : row_000_producer.Applies fam_111_key r mask) :
    SourceIndexStateKeyFacts fam_111_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_113_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `ef0a95dd96247ea793a096835c8ac82b1f26f432b2913914cd43d44ef34770be`.
Observed bounded GoodDirection cases: 1. -/
def fam_112_key : SourceIndexStateKey where
  firstIndex := 133
  secondIndex := 0
  support := source_115_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_112_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_115_producer.Applies fam_112_key r mask)
    (hrows : row_000_producer.Applies fam_112_key r mask) :
    SourceIndexStateKeyFacts fam_112_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_115_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Source-position producer-glue family `02b127e3afcd56f6775e889cb82626bf61f0f0e26ca3fce84e1c8a0b89d4f727`.
Observed bounded GoodDirection cases: 1. -/
def fam_113_key : SourceIndexStateKey where
  firstIndex := 125
  secondIndex := 8
  support := source_121_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_113_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_121_producer.Applies fam_113_key r mask)
    (hrows : row_008_producer.Applies fam_113_key r mask) :
    SourceIndexStateKeyFacts fam_113_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_121_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `096c11a7f13d19ea5a6a4ab1463bd9f484b703b8a1f141e0db5cbd58289a8018`.
Observed bounded GoodDirection cases: 1. -/
def fam_114_key : SourceIndexStateKey where
  firstIndex := 16
  secondIndex := 10
  support := source_097_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_114_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_097_producer.Applies fam_114_key r mask)
    (hrows : row_008_producer.Applies fam_114_key r mask) :
    SourceIndexStateKeyFacts fam_114_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_097_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `1bf27e236f383e1d81ddc6f288a9df726aba812efff0325f683ca79ca4172c7b`.
Observed bounded GoodDirection cases: 1. -/
def fam_115_key : SourceIndexStateKey where
  firstIndex := 38
  secondIndex := 9
  support := source_101_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_115_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_101_producer.Applies fam_115_key r mask)
    (hrows : row_008_producer.Applies fam_115_key r mask) :
    SourceIndexStateKeyFacts fam_115_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_101_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `264b9cd7d7fcb257e5fce6e2479524e2d5771f79a2680568564ffb5a0f7151e4`.
Observed bounded GoodDirection cases: 1. -/
def fam_116_key : SourceIndexStateKey where
  firstIndex := 151
  secondIndex := 8
  support := source_108_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_116_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_108_producer.Applies fam_116_key r mask)
    (hrows : row_010_producer.Applies fam_116_key r mask) :
    SourceIndexStateKeyFacts fam_116_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_108_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Source-position producer-glue family `2d7aafa6d90a976cfbbdcec38eb55e5706411aa12f2c996088719de38bd31150`.
Observed bounded GoodDirection cases: 1. -/
def fam_117_key : SourceIndexStateKey where
  firstIndex := 115
  secondIndex := 10
  support := source_131_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_117_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_131_producer.Applies fam_117_key r mask)
    (hrows : row_010_producer.Applies fam_117_key r mask) :
    SourceIndexStateKeyFacts fam_117_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_131_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Source-position producer-glue family `314eee03483b488c04e72aafd9c8df371e25368287c67ecd85a4254c364733ad`.
Observed bounded GoodDirection cases: 1. -/
def fam_118_key : SourceIndexStateKey where
  firstIndex := 182
  secondIndex := 9
  support := source_096_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_118_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_096_producer.Applies fam_118_key r mask)
    (hrows : row_008_producer.Applies fam_118_key r mask) :
    SourceIndexStateKeyFacts fam_118_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_096_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `39ee2997250107122e7eea24dc0a941a697f6601faf64ab54cf0f400444dbf6a`.
Observed bounded GoodDirection cases: 1. -/
def fam_119_key : SourceIndexStateKey where
  firstIndex := 100
  secondIndex := 9
  support := source_094_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_119_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_094_producer.Applies fam_119_key r mask)
    (hrows : row_010_producer.Applies fam_119_key r mask) :
    SourceIndexStateKeyFacts fam_119_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_094_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Source-position producer-glue family `5eb0c3d816e9ae0244f9f8027a8608d0a114355a14521202f75873951bb8882c`.
Observed bounded GoodDirection cases: 1. -/
def fam_120_key : SourceIndexStateKey where
  firstIndex := 126
  secondIndex := 9
  support := source_114_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_120_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_114_producer.Applies fam_120_key r mask)
    (hrows : row_010_producer.Applies fam_120_key r mask) :
    SourceIndexStateKeyFacts fam_120_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_114_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Source-position producer-glue family `ab17eb62ebc9155177b5f3b559b923fcbe279d923845cf917f0575e00d74b0b3`.
Observed bounded GoodDirection cases: 1. -/
def fam_121_key : SourceIndexStateKey where
  firstIndex := 138
  secondIndex := 8
  support := source_104_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_121_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_104_producer.Applies fam_121_key r mask)
    (hrows : row_010_producer.Applies fam_121_key r mask) :
    SourceIndexStateKeyFacts fam_121_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_104_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Source-position producer-glue family `aba7fa5bfdfe17c46ab677e2d650fecb0bc52213a611e16ace70c35c8679d47a`.
Observed bounded GoodDirection cases: 1. -/
def fam_122_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 9
  support := source_102_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_122_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_102_producer.Applies fam_122_key r mask)
    (hrows : row_007_producer.Applies fam_122_key r mask) :
    SourceIndexStateKeyFacts fam_122_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_102_producer.sourceFacts hsource)
    (row_007_producer.rowFacts hrows)

/-- Source-position producer-glue family `b8248b1400ddb058def30d5ca482158301acec6ff5100850d22be74a6c079c75`.
Observed bounded GoodDirection cases: 1. -/
def fam_123_key : SourceIndexStateKey where
  firstIndex := 150
  secondIndex := 9
  support := source_100_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_123_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_100_producer.Applies fam_123_key r mask)
    (hrows : row_010_producer.Applies fam_123_key r mask) :
    SourceIndexStateKeyFacts fam_123_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_100_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Source-position producer-glue family `cb2e15e9246e382459d6da526a0cf8f3848c6b7f8c78755a67db3f1f3aa1aa6d`.
Observed bounded GoodDirection cases: 1. -/
def fam_124_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 12
  support := source_110_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_124_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_110_producer.Applies fam_124_key r mask)
    (hrows : row_010_producer.Applies fam_124_key r mask) :
    SourceIndexStateKeyFacts fam_124_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_110_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Source-position producer-glue family `f3c7a8ec44844a731c5fb1b73fad620f2beb88bd6d2401a81a56f7175b67c3b0`.
Observed bounded GoodDirection cases: 1. -/
def fam_125_key : SourceIndexStateKey where
  firstIndex := 85
  secondIndex := 8
  support := source_122_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_125_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_122_producer.Applies fam_125_key r mask)
    (hrows : row_008_producer.Applies fam_125_key r mask) :
    SourceIndexStateKeyFacts fam_125_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_122_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Source-position producer-glue family `0ef325aa5f194e8152bb2705a7ce4afd942ac91769581519a273ef2ec457b397`.
Observed bounded GoodDirection cases: 1. -/
def fam_126_key : SourceIndexStateKey where
  firstIndex := 82
  secondIndex := 1
  support := source_103_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_126_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_103_producer.Applies fam_126_key r mask)
    (hrows : row_001_producer.Applies fam_126_key r mask) :
    SourceIndexStateKeyFacts fam_126_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_103_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `68349f4960996eb872474e6425823c92d46ab71ea0403d8afb96cb9e1fb6c727`.
Observed bounded GoodDirection cases: 1. -/
def fam_127_key : SourceIndexStateKey where
  firstIndex := 120
  secondIndex := 1
  support := source_118_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_127_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_118_producer.Applies fam_127_key r mask)
    (hrows : row_001_producer.Applies fam_127_key r mask) :
    SourceIndexStateKeyFacts fam_127_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_118_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `bf3f56735c5b9f02d6ab2dc2b24b4bbca8f1e7c3e32701f49a0d2f16d06a3039`.
Observed bounded GoodDirection cases: 1. -/
def fam_128_key : SourceIndexStateKey where
  firstIndex := 156
  secondIndex := 1
  support := source_098_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_128_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_098_producer.Applies fam_128_key r mask)
    (hrows : row_001_producer.Applies fam_128_key r mask) :
    SourceIndexStateKeyFacts fam_128_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_098_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `ce62a5a32da0ce9b356319d9cc14d4301fa465fa4ed9fa9f592069cf587ab847`.
Observed bounded GoodDirection cases: 1. -/
def fam_129_key : SourceIndexStateKey where
  firstIndex := 132
  secondIndex := 1
  support := source_132_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_129_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_132_producer.Applies fam_129_key r mask)
    (hrows : row_001_producer.Applies fam_129_key r mask) :
    SourceIndexStateKeyFacts fam_129_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_132_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `f420382d3e753e535efd2c83096f0edacb2a1d4da789375289b021326989b18e`.
Observed bounded GoodDirection cases: 1. -/
def fam_130_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 1
  support := source_106_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_130_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_106_producer.Applies fam_130_key r mask)
    (hrows : row_001_producer.Applies fam_130_key r mask) :
    SourceIndexStateKeyFacts fam_130_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_106_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Source-position producer-glue family `17f7cba927576d1e3ce1e0f22719fdf34efbf487621330fb2634f56699f2d27b`.
Observed bounded GoodDirection cases: 1. -/
def fam_131_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 2
  support := source_109_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_131_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_109_producer.Applies fam_131_key r mask)
    (hrows : row_002_producer.Applies fam_131_key r mask) :
    SourceIndexStateKeyFacts fam_131_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_109_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `92d9193d31b543a801877c6f75375b5227fa136d33b657c03e9d44160efc21d2`.
Observed bounded GoodDirection cases: 1. -/
def fam_132_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 2
  support := source_112_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_132_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_112_producer.Applies fam_132_key r mask)
    (hrows : row_002_producer.Applies fam_132_key r mask) :
    SourceIndexStateKeyFacts fam_132_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_112_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `94bc8df8c46833a2fe7952fbbc9fc5a3641d8142061c5eb5f8307bd3f0c48ce7`.
Observed bounded GoodDirection cases: 1. -/
def fam_133_key : SourceIndexStateKey where
  firstIndex := 169
  secondIndex := 2
  support := source_111_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_133_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_111_producer.Applies fam_133_key r mask)
    (hrows : row_002_producer.Applies fam_133_key r mask) :
    SourceIndexStateKeyFacts fam_133_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_111_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `b1194ee972047bfa27cfb188b029f1ef4073b09adad7ba549ac65f1c74bd0542`.
Observed bounded GoodDirection cases: 1. -/
def fam_134_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 2
  support := source_129_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_134_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_129_producer.Applies fam_134_key r mask)
    (hrows : row_002_producer.Applies fam_134_key r mask) :
    SourceIndexStateKeyFacts fam_134_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_129_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Source-position producer-glue family `d0abb996a8c7c064d297e64339d5260e39d9936ed47ab5760d3a9be060927986`.
Observed bounded GoodDirection cases: 1. -/
def fam_135_key : SourceIndexStateKey where
  firstIndex := 119
  secondIndex := 2
  support := source_124_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_135_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_124_producer.Applies fam_135_key r mask)
    (hrows : row_002_producer.Applies fam_135_key r mask) :
    SourceIndexStateKeyFacts fam_135_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_124_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

inductive SourcePositionProducerGlueApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (hsource : source_000_producer.Applies fam_000_key r mask) (hrows : row_000_producer.Applies fam_000_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (hsource : source_001_producer.Applies fam_001_key r mask) (hrows : row_001_producer.Applies fam_001_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (hsource : source_002_producer.Applies fam_002_key r mask) (hrows : row_000_producer.Applies fam_002_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (hsource : source_003_producer.Applies fam_003_key r mask) (hrows : row_002_producer.Applies fam_003_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (hsource : source_004_producer.Applies fam_004_key r mask) (hrows : row_002_producer.Applies fam_004_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam005 {r : Nat} {mask : SignMask} (hsource : source_005_producer.Applies fam_005_key r mask) (hrows : row_003_producer.Applies fam_005_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam006 {r : Nat} {mask : SignMask} (hsource : source_006_producer.Applies fam_006_key r mask) (hrows : row_005_producer.Applies fam_006_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam007 {r : Nat} {mask : SignMask} (hsource : source_007_producer.Applies fam_007_key r mask) (hrows : row_003_producer.Applies fam_007_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam008 {r : Nat} {mask : SignMask} (hsource : source_010_producer.Applies fam_008_key r mask) (hrows : row_000_producer.Applies fam_008_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam009 {r : Nat} {mask : SignMask} (hsource : source_009_producer.Applies fam_009_key r mask) (hrows : row_003_producer.Applies fam_009_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam010 {r : Nat} {mask : SignMask} (hsource : source_008_producer.Applies fam_010_key r mask) (hrows : row_004_producer.Applies fam_010_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam011 {r : Nat} {mask : SignMask} (hsource : source_011_producer.Applies fam_011_key r mask) (hrows : row_001_producer.Applies fam_011_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam012 {r : Nat} {mask : SignMask} (hsource : source_013_producer.Applies fam_012_key r mask) (hrows : row_003_producer.Applies fam_012_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam013 {r : Nat} {mask : SignMask} (hsource : source_012_producer.Applies fam_013_key r mask) (hrows : row_003_producer.Applies fam_013_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam014 {r : Nat} {mask : SignMask} (hsource : source_014_producer.Applies fam_014_key r mask) (hrows : row_000_producer.Applies fam_014_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam015 {r : Nat} {mask : SignMask} (hsource : source_017_producer.Applies fam_015_key r mask) (hrows : row_000_producer.Applies fam_015_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam016 {r : Nat} {mask : SignMask} (hsource : source_018_producer.Applies fam_016_key r mask) (hrows : row_000_producer.Applies fam_016_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam017 {r : Nat} {mask : SignMask} (hsource : source_015_producer.Applies fam_017_key r mask) (hrows : row_001_producer.Applies fam_017_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam018 {r : Nat} {mask : SignMask} (hsource : source_016_producer.Applies fam_018_key r mask) (hrows : row_005_producer.Applies fam_018_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam019 {r : Nat} {mask : SignMask} (hsource : source_020_producer.Applies fam_019_key r mask) (hrows : row_004_producer.Applies fam_019_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam020 {r : Nat} {mask : SignMask} (hsource : source_019_producer.Applies fam_020_key r mask) (hrows : row_004_producer.Applies fam_020_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam021 {r : Nat} {mask : SignMask} (hsource : source_021_producer.Applies fam_021_key r mask) (hrows : row_006_producer.Applies fam_021_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam022 {r : Nat} {mask : SignMask} (hsource : source_023_producer.Applies fam_022_key r mask) (hrows : row_001_producer.Applies fam_022_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam023 {r : Nat} {mask : SignMask} (hsource : source_022_producer.Applies fam_023_key r mask) (hrows : row_005_producer.Applies fam_023_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam024 {r : Nat} {mask : SignMask} (hsource : source_024_producer.Applies fam_024_key r mask) (hrows : row_000_producer.Applies fam_024_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam025 {r : Nat} {mask : SignMask} (hsource : source_027_producer.Applies fam_025_key r mask) (hrows : row_000_producer.Applies fam_025_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam026 {r : Nat} {mask : SignMask} (hsource : source_025_producer.Applies fam_026_key r mask) (hrows : row_000_producer.Applies fam_026_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam027 {r : Nat} {mask : SignMask} (hsource : source_026_producer.Applies fam_027_key r mask) (hrows : row_001_producer.Applies fam_027_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam028 {r : Nat} {mask : SignMask} (hsource : source_030_producer.Applies fam_028_key r mask) (hrows : row_000_producer.Applies fam_028_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam029 {r : Nat} {mask : SignMask} (hsource : source_028_producer.Applies fam_029_key r mask) (hrows : row_004_producer.Applies fam_029_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam030 {r : Nat} {mask : SignMask} (hsource : source_029_producer.Applies fam_030_key r mask) (hrows : row_004_producer.Applies fam_030_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam031 {r : Nat} {mask : SignMask} (hsource : source_031_producer.Applies fam_031_key r mask) (hrows : row_003_producer.Applies fam_031_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam032 {r : Nat} {mask : SignMask} (hsource : source_032_producer.Applies fam_032_key r mask) (hrows : row_001_producer.Applies fam_032_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam033 {r : Nat} {mask : SignMask} (hsource : source_035_producer.Applies fam_033_key r mask) (hrows : row_003_producer.Applies fam_033_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam034 {r : Nat} {mask : SignMask} (hsource : source_036_producer.Applies fam_034_key r mask) (hrows : row_001_producer.Applies fam_034_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam035 {r : Nat} {mask : SignMask} (hsource : source_034_producer.Applies fam_035_key r mask) (hrows : row_005_producer.Applies fam_035_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam036 {r : Nat} {mask : SignMask} (hsource : source_038_producer.Applies fam_036_key r mask) (hrows : row_000_producer.Applies fam_036_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam037 {r : Nat} {mask : SignMask} (hsource : source_037_producer.Applies fam_037_key r mask) (hrows : row_005_producer.Applies fam_037_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam038 {r : Nat} {mask : SignMask} (hsource : source_039_producer.Applies fam_038_key r mask) (hrows : row_000_producer.Applies fam_038_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam039 {r : Nat} {mask : SignMask} (hsource : source_033_producer.Applies fam_039_key r mask) (hrows : row_007_producer.Applies fam_039_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam040 {r : Nat} {mask : SignMask} (hsource : source_040_producer.Applies fam_040_key r mask) (hrows : row_002_producer.Applies fam_040_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam041 {r : Nat} {mask : SignMask} (hsource : source_041_producer.Applies fam_041_key r mask) (hrows : row_002_producer.Applies fam_041_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam042 {r : Nat} {mask : SignMask} (hsource : source_044_producer.Applies fam_042_key r mask) (hrows : row_000_producer.Applies fam_042_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam043 {r : Nat} {mask : SignMask} (hsource : source_042_producer.Applies fam_043_key r mask) (hrows : row_000_producer.Applies fam_043_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam044 {r : Nat} {mask : SignMask} (hsource : source_043_producer.Applies fam_044_key r mask) (hrows : row_001_producer.Applies fam_044_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam045 {r : Nat} {mask : SignMask} (hsource : source_045_producer.Applies fam_045_key r mask) (hrows : row_000_producer.Applies fam_045_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam046 {r : Nat} {mask : SignMask} (hsource : source_048_producer.Applies fam_046_key r mask) (hrows : row_000_producer.Applies fam_046_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam047 {r : Nat} {mask : SignMask} (hsource : source_046_producer.Applies fam_047_key r mask) (hrows : row_001_producer.Applies fam_047_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam048 {r : Nat} {mask : SignMask} (hsource : source_047_producer.Applies fam_048_key r mask) (hrows : row_002_producer.Applies fam_048_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam049 {r : Nat} {mask : SignMask} (hsource : source_052_producer.Applies fam_049_key r mask) (hrows : row_011_producer.Applies fam_049_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam050 {r : Nat} {mask : SignMask} (hsource : source_050_producer.Applies fam_050_key r mask) (hrows : row_001_producer.Applies fam_050_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam051 {r : Nat} {mask : SignMask} (hsource : source_049_producer.Applies fam_051_key r mask) (hrows : row_001_producer.Applies fam_051_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam052 {r : Nat} {mask : SignMask} (hsource : source_051_producer.Applies fam_052_key r mask) (hrows : row_004_producer.Applies fam_052_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam053 {r : Nat} {mask : SignMask} (hsource : source_053_producer.Applies fam_053_key r mask) (hrows : row_000_producer.Applies fam_053_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam054 {r : Nat} {mask : SignMask} (hsource : source_054_producer.Applies fam_054_key r mask) (hrows : row_000_producer.Applies fam_054_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam055 {r : Nat} {mask : SignMask} (hsource : source_056_producer.Applies fam_055_key r mask) (hrows : row_000_producer.Applies fam_055_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam056 {r : Nat} {mask : SignMask} (hsource : source_055_producer.Applies fam_056_key r mask) (hrows : row_002_producer.Applies fam_056_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam057 {r : Nat} {mask : SignMask} (hsource : source_057_producer.Applies fam_057_key r mask) (hrows : row_000_producer.Applies fam_057_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam058 {r : Nat} {mask : SignMask} (hsource : source_059_producer.Applies fam_058_key r mask) (hrows : row_001_producer.Applies fam_058_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam059 {r : Nat} {mask : SignMask} (hsource : source_058_producer.Applies fam_059_key r mask) (hrows : row_001_producer.Applies fam_059_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam060 {r : Nat} {mask : SignMask} (hsource : source_067_producer.Applies fam_060_key r mask) (hrows : row_013_producer.Applies fam_060_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam061 {r : Nat} {mask : SignMask} (hsource : source_063_producer.Applies fam_061_key r mask) (hrows : row_006_producer.Applies fam_061_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam062 {r : Nat} {mask : SignMask} (hsource : source_066_producer.Applies fam_062_key r mask) (hrows : row_006_producer.Applies fam_062_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam063 {r : Nat} {mask : SignMask} (hsource : source_069_producer.Applies fam_063_key r mask) (hrows : row_006_producer.Applies fam_063_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam064 {r : Nat} {mask : SignMask} (hsource : source_065_producer.Applies fam_064_key r mask) (hrows : row_009_producer.Applies fam_064_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam065 {r : Nat} {mask : SignMask} (hsource : source_068_producer.Applies fam_065_key r mask) (hrows : row_009_producer.Applies fam_065_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam066 {r : Nat} {mask : SignMask} (hsource : source_061_producer.Applies fam_066_key r mask) (hrows : row_000_producer.Applies fam_066_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam067 {r : Nat} {mask : SignMask} (hsource : source_060_producer.Applies fam_067_key r mask) (hrows : row_000_producer.Applies fam_067_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam068 {r : Nat} {mask : SignMask} (hsource : source_033_producer.Applies fam_068_key r mask) (hrows : row_008_producer.Applies fam_068_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam069 {r : Nat} {mask : SignMask} (hsource : source_062_producer.Applies fam_069_key r mask) (hrows : row_001_producer.Applies fam_069_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam070 {r : Nat} {mask : SignMask} (hsource : source_064_producer.Applies fam_070_key r mask) (hrows : row_001_producer.Applies fam_070_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam071 {r : Nat} {mask : SignMask} (hsource : source_072_producer.Applies fam_071_key r mask) (hrows : row_006_producer.Applies fam_071_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam072 {r : Nat} {mask : SignMask} (hsource : source_073_producer.Applies fam_072_key r mask) (hrows : row_006_producer.Applies fam_072_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam073 {r : Nat} {mask : SignMask} (hsource : source_071_producer.Applies fam_073_key r mask) (hrows : row_001_producer.Applies fam_073_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam074 {r : Nat} {mask : SignMask} (hsource : source_070_producer.Applies fam_074_key r mask) (hrows : row_001_producer.Applies fam_074_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam075 {r : Nat} {mask : SignMask} (hsource : source_074_producer.Applies fam_075_key r mask) (hrows : row_002_producer.Applies fam_075_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam076 {r : Nat} {mask : SignMask} (hsource : source_075_producer.Applies fam_076_key r mask) (hrows : row_002_producer.Applies fam_076_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam077 {r : Nat} {mask : SignMask} (hsource : source_076_producer.Applies fam_077_key r mask) (hrows : row_005_producer.Applies fam_077_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam078 {r : Nat} {mask : SignMask} (hsource : source_092_producer.Applies fam_078_key r mask) (hrows : row_014_producer.Applies fam_078_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam079 {r : Nat} {mask : SignMask} (hsource : source_083_producer.Applies fam_079_key r mask) (hrows : row_016_producer.Applies fam_079_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam080 {r : Nat} {mask : SignMask} (hsource : source_093_producer.Applies fam_080_key r mask) (hrows : row_012_producer.Applies fam_080_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam081 {r : Nat} {mask : SignMask} (hsource : source_090_producer.Applies fam_081_key r mask) (hrows : row_015_producer.Applies fam_081_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam082 {r : Nat} {mask : SignMask} (hsource : source_081_producer.Applies fam_082_key r mask) (hrows : row_006_producer.Applies fam_082_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam083 {r : Nat} {mask : SignMask} (hsource : source_089_producer.Applies fam_083_key r mask) (hrows : row_006_producer.Applies fam_083_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam084 {r : Nat} {mask : SignMask} (hsource : source_085_producer.Applies fam_084_key r mask) (hrows : row_000_producer.Applies fam_084_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam085 {r : Nat} {mask : SignMask} (hsource : source_088_producer.Applies fam_085_key r mask) (hrows : row_008_producer.Applies fam_085_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam086 {r : Nat} {mask : SignMask} (hsource : source_084_producer.Applies fam_086_key r mask) (hrows : row_008_producer.Applies fam_086_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam087 {r : Nat} {mask : SignMask} (hsource : source_086_producer.Applies fam_087_key r mask) (hrows : row_007_producer.Applies fam_087_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam088 {r : Nat} {mask : SignMask} (hsource : source_082_producer.Applies fam_088_key r mask) (hrows : row_001_producer.Applies fam_088_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam089 {r : Nat} {mask : SignMask} (hsource : source_087_producer.Applies fam_089_key r mask) (hrows : row_001_producer.Applies fam_089_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam090 {r : Nat} {mask : SignMask} (hsource : source_091_producer.Applies fam_090_key r mask) (hrows : row_001_producer.Applies fam_090_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam091 {r : Nat} {mask : SignMask} (hsource : source_077_producer.Applies fam_091_key r mask) (hrows : row_002_producer.Applies fam_091_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam092 {r : Nat} {mask : SignMask} (hsource : source_078_producer.Applies fam_092_key r mask) (hrows : row_002_producer.Applies fam_092_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam093 {r : Nat} {mask : SignMask} (hsource : source_080_producer.Applies fam_093_key r mask) (hrows : row_002_producer.Applies fam_093_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam094 {r : Nat} {mask : SignMask} (hsource : source_079_producer.Applies fam_094_key r mask) (hrows : row_002_producer.Applies fam_094_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam095 {r : Nat} {mask : SignMask} (hsource : source_107_producer.Applies fam_095_key r mask) (hrows : row_014_producer.Applies fam_095_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam096 {r : Nat} {mask : SignMask} (hsource : source_125_producer.Applies fam_096_key r mask) (hrows : row_014_producer.Applies fam_096_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam097 {r : Nat} {mask : SignMask} (hsource : source_105_producer.Applies fam_097_key r mask) (hrows : row_013_producer.Applies fam_097_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam098 {r : Nat} {mask : SignMask} (hsource : source_116_producer.Applies fam_098_key r mask) (hrows : row_014_producer.Applies fam_098_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam099 {r : Nat} {mask : SignMask} (hsource : source_127_producer.Applies fam_099_key r mask) (hrows : row_012_producer.Applies fam_099_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam100 {r : Nat} {mask : SignMask} (hsource : source_128_producer.Applies fam_100_key r mask) (hrows : row_018_producer.Applies fam_100_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam101 {r : Nat} {mask : SignMask} (hsource : source_123_producer.Applies fam_101_key r mask) (hrows : row_017_producer.Applies fam_101_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam102 {r : Nat} {mask : SignMask} (hsource : source_099_producer.Applies fam_102_key r mask) (hrows : row_012_producer.Applies fam_102_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam103 {r : Nat} {mask : SignMask} (hsource : source_133_producer.Applies fam_103_key r mask) (hrows : row_012_producer.Applies fam_103_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam104 {r : Nat} {mask : SignMask} (hsource : source_119_producer.Applies fam_104_key r mask) (hrows : row_006_producer.Applies fam_104_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam105 {r : Nat} {mask : SignMask} (hsource : source_095_producer.Applies fam_105_key r mask) (hrows : row_006_producer.Applies fam_105_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam106 {r : Nat} {mask : SignMask} (hsource : source_126_producer.Applies fam_106_key r mask) (hrows : row_009_producer.Applies fam_106_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam107 {r : Nat} {mask : SignMask} (hsource : source_117_producer.Applies fam_107_key r mask) (hrows : row_009_producer.Applies fam_107_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam108 {r : Nat} {mask : SignMask} (hsource : source_130_producer.Applies fam_108_key r mask) (hrows : row_009_producer.Applies fam_108_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam109 {r : Nat} {mask : SignMask} (hsource : source_120_producer.Applies fam_109_key r mask) (hrows : row_000_producer.Applies fam_109_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam110 {r : Nat} {mask : SignMask} (hsource : source_134_producer.Applies fam_110_key r mask) (hrows : row_000_producer.Applies fam_110_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam111 {r : Nat} {mask : SignMask} (hsource : source_113_producer.Applies fam_111_key r mask) (hrows : row_000_producer.Applies fam_111_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam112 {r : Nat} {mask : SignMask} (hsource : source_115_producer.Applies fam_112_key r mask) (hrows : row_000_producer.Applies fam_112_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam113 {r : Nat} {mask : SignMask} (hsource : source_121_producer.Applies fam_113_key r mask) (hrows : row_008_producer.Applies fam_113_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam114 {r : Nat} {mask : SignMask} (hsource : source_097_producer.Applies fam_114_key r mask) (hrows : row_008_producer.Applies fam_114_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam115 {r : Nat} {mask : SignMask} (hsource : source_101_producer.Applies fam_115_key r mask) (hrows : row_008_producer.Applies fam_115_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam116 {r : Nat} {mask : SignMask} (hsource : source_108_producer.Applies fam_116_key r mask) (hrows : row_010_producer.Applies fam_116_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam117 {r : Nat} {mask : SignMask} (hsource : source_131_producer.Applies fam_117_key r mask) (hrows : row_010_producer.Applies fam_117_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam118 {r : Nat} {mask : SignMask} (hsource : source_096_producer.Applies fam_118_key r mask) (hrows : row_008_producer.Applies fam_118_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam119 {r : Nat} {mask : SignMask} (hsource : source_094_producer.Applies fam_119_key r mask) (hrows : row_010_producer.Applies fam_119_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam120 {r : Nat} {mask : SignMask} (hsource : source_114_producer.Applies fam_120_key r mask) (hrows : row_010_producer.Applies fam_120_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam121 {r : Nat} {mask : SignMask} (hsource : source_104_producer.Applies fam_121_key r mask) (hrows : row_010_producer.Applies fam_121_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam122 {r : Nat} {mask : SignMask} (hsource : source_102_producer.Applies fam_122_key r mask) (hrows : row_007_producer.Applies fam_122_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam123 {r : Nat} {mask : SignMask} (hsource : source_100_producer.Applies fam_123_key r mask) (hrows : row_010_producer.Applies fam_123_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam124 {r : Nat} {mask : SignMask} (hsource : source_110_producer.Applies fam_124_key r mask) (hrows : row_010_producer.Applies fam_124_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam125 {r : Nat} {mask : SignMask} (hsource : source_122_producer.Applies fam_125_key r mask) (hrows : row_008_producer.Applies fam_125_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam126 {r : Nat} {mask : SignMask} (hsource : source_103_producer.Applies fam_126_key r mask) (hrows : row_001_producer.Applies fam_126_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam127 {r : Nat} {mask : SignMask} (hsource : source_118_producer.Applies fam_127_key r mask) (hrows : row_001_producer.Applies fam_127_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam128 {r : Nat} {mask : SignMask} (hsource : source_098_producer.Applies fam_128_key r mask) (hrows : row_001_producer.Applies fam_128_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam129 {r : Nat} {mask : SignMask} (hsource : source_132_producer.Applies fam_129_key r mask) (hrows : row_001_producer.Applies fam_129_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam130 {r : Nat} {mask : SignMask} (hsource : source_106_producer.Applies fam_130_key r mask) (hrows : row_001_producer.Applies fam_130_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam131 {r : Nat} {mask : SignMask} (hsource : source_109_producer.Applies fam_131_key r mask) (hrows : row_002_producer.Applies fam_131_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam132 {r : Nat} {mask : SignMask} (hsource : source_112_producer.Applies fam_132_key r mask) (hrows : row_002_producer.Applies fam_132_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam133 {r : Nat} {mask : SignMask} (hsource : source_111_producer.Applies fam_133_key r mask) (hrows : row_002_producer.Applies fam_133_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam134 {r : Nat} {mask : SignMask} (hsource : source_129_producer.Applies fam_134_key r mask) (hrows : row_002_producer.Applies fam_134_key r mask) : SourcePositionProducerGlueApplies r mask
  | fam135 {r : Nat} {mask : SignMask} (hsource : source_124_producer.Applies fam_135_key r mask) (hrows : row_002_producer.Applies fam_135_key r mask) : SourcePositionProducerGlueApplies r mask

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
    | fam019 hsource hrows =>
        exact fam_019_key.covered_of_facts
          (fam_019_producerFactsImplyKeyFacts hsource hrows)
    | fam020 hsource hrows =>
        exact fam_020_key.covered_of_facts
          (fam_020_producerFactsImplyKeyFacts hsource hrows)
    | fam021 hsource hrows =>
        exact fam_021_key.covered_of_facts
          (fam_021_producerFactsImplyKeyFacts hsource hrows)
    | fam022 hsource hrows =>
        exact fam_022_key.covered_of_facts
          (fam_022_producerFactsImplyKeyFacts hsource hrows)
    | fam023 hsource hrows =>
        exact fam_023_key.covered_of_facts
          (fam_023_producerFactsImplyKeyFacts hsource hrows)
    | fam024 hsource hrows =>
        exact fam_024_key.covered_of_facts
          (fam_024_producerFactsImplyKeyFacts hsource hrows)
    | fam025 hsource hrows =>
        exact fam_025_key.covered_of_facts
          (fam_025_producerFactsImplyKeyFacts hsource hrows)
    | fam026 hsource hrows =>
        exact fam_026_key.covered_of_facts
          (fam_026_producerFactsImplyKeyFacts hsource hrows)
    | fam027 hsource hrows =>
        exact fam_027_key.covered_of_facts
          (fam_027_producerFactsImplyKeyFacts hsource hrows)
    | fam028 hsource hrows =>
        exact fam_028_key.covered_of_facts
          (fam_028_producerFactsImplyKeyFacts hsource hrows)
    | fam029 hsource hrows =>
        exact fam_029_key.covered_of_facts
          (fam_029_producerFactsImplyKeyFacts hsource hrows)
    | fam030 hsource hrows =>
        exact fam_030_key.covered_of_facts
          (fam_030_producerFactsImplyKeyFacts hsource hrows)
    | fam031 hsource hrows =>
        exact fam_031_key.covered_of_facts
          (fam_031_producerFactsImplyKeyFacts hsource hrows)
    | fam032 hsource hrows =>
        exact fam_032_key.covered_of_facts
          (fam_032_producerFactsImplyKeyFacts hsource hrows)
    | fam033 hsource hrows =>
        exact fam_033_key.covered_of_facts
          (fam_033_producerFactsImplyKeyFacts hsource hrows)
    | fam034 hsource hrows =>
        exact fam_034_key.covered_of_facts
          (fam_034_producerFactsImplyKeyFacts hsource hrows)
    | fam035 hsource hrows =>
        exact fam_035_key.covered_of_facts
          (fam_035_producerFactsImplyKeyFacts hsource hrows)
    | fam036 hsource hrows =>
        exact fam_036_key.covered_of_facts
          (fam_036_producerFactsImplyKeyFacts hsource hrows)
    | fam037 hsource hrows =>
        exact fam_037_key.covered_of_facts
          (fam_037_producerFactsImplyKeyFacts hsource hrows)
    | fam038 hsource hrows =>
        exact fam_038_key.covered_of_facts
          (fam_038_producerFactsImplyKeyFacts hsource hrows)
    | fam039 hsource hrows =>
        exact fam_039_key.covered_of_facts
          (fam_039_producerFactsImplyKeyFacts hsource hrows)
    | fam040 hsource hrows =>
        exact fam_040_key.covered_of_facts
          (fam_040_producerFactsImplyKeyFacts hsource hrows)
    | fam041 hsource hrows =>
        exact fam_041_key.covered_of_facts
          (fam_041_producerFactsImplyKeyFacts hsource hrows)
    | fam042 hsource hrows =>
        exact fam_042_key.covered_of_facts
          (fam_042_producerFactsImplyKeyFacts hsource hrows)
    | fam043 hsource hrows =>
        exact fam_043_key.covered_of_facts
          (fam_043_producerFactsImplyKeyFacts hsource hrows)
    | fam044 hsource hrows =>
        exact fam_044_key.covered_of_facts
          (fam_044_producerFactsImplyKeyFacts hsource hrows)
    | fam045 hsource hrows =>
        exact fam_045_key.covered_of_facts
          (fam_045_producerFactsImplyKeyFacts hsource hrows)
    | fam046 hsource hrows =>
        exact fam_046_key.covered_of_facts
          (fam_046_producerFactsImplyKeyFacts hsource hrows)
    | fam047 hsource hrows =>
        exact fam_047_key.covered_of_facts
          (fam_047_producerFactsImplyKeyFacts hsource hrows)
    | fam048 hsource hrows =>
        exact fam_048_key.covered_of_facts
          (fam_048_producerFactsImplyKeyFacts hsource hrows)
    | fam049 hsource hrows =>
        exact fam_049_key.covered_of_facts
          (fam_049_producerFactsImplyKeyFacts hsource hrows)
    | fam050 hsource hrows =>
        exact fam_050_key.covered_of_facts
          (fam_050_producerFactsImplyKeyFacts hsource hrows)
    | fam051 hsource hrows =>
        exact fam_051_key.covered_of_facts
          (fam_051_producerFactsImplyKeyFacts hsource hrows)
    | fam052 hsource hrows =>
        exact fam_052_key.covered_of_facts
          (fam_052_producerFactsImplyKeyFacts hsource hrows)
    | fam053 hsource hrows =>
        exact fam_053_key.covered_of_facts
          (fam_053_producerFactsImplyKeyFacts hsource hrows)
    | fam054 hsource hrows =>
        exact fam_054_key.covered_of_facts
          (fam_054_producerFactsImplyKeyFacts hsource hrows)
    | fam055 hsource hrows =>
        exact fam_055_key.covered_of_facts
          (fam_055_producerFactsImplyKeyFacts hsource hrows)
    | fam056 hsource hrows =>
        exact fam_056_key.covered_of_facts
          (fam_056_producerFactsImplyKeyFacts hsource hrows)
    | fam057 hsource hrows =>
        exact fam_057_key.covered_of_facts
          (fam_057_producerFactsImplyKeyFacts hsource hrows)
    | fam058 hsource hrows =>
        exact fam_058_key.covered_of_facts
          (fam_058_producerFactsImplyKeyFacts hsource hrows)
    | fam059 hsource hrows =>
        exact fam_059_key.covered_of_facts
          (fam_059_producerFactsImplyKeyFacts hsource hrows)
    | fam060 hsource hrows =>
        exact fam_060_key.covered_of_facts
          (fam_060_producerFactsImplyKeyFacts hsource hrows)
    | fam061 hsource hrows =>
        exact fam_061_key.covered_of_facts
          (fam_061_producerFactsImplyKeyFacts hsource hrows)
    | fam062 hsource hrows =>
        exact fam_062_key.covered_of_facts
          (fam_062_producerFactsImplyKeyFacts hsource hrows)
    | fam063 hsource hrows =>
        exact fam_063_key.covered_of_facts
          (fam_063_producerFactsImplyKeyFacts hsource hrows)
    | fam064 hsource hrows =>
        exact fam_064_key.covered_of_facts
          (fam_064_producerFactsImplyKeyFacts hsource hrows)
    | fam065 hsource hrows =>
        exact fam_065_key.covered_of_facts
          (fam_065_producerFactsImplyKeyFacts hsource hrows)
    | fam066 hsource hrows =>
        exact fam_066_key.covered_of_facts
          (fam_066_producerFactsImplyKeyFacts hsource hrows)
    | fam067 hsource hrows =>
        exact fam_067_key.covered_of_facts
          (fam_067_producerFactsImplyKeyFacts hsource hrows)
    | fam068 hsource hrows =>
        exact fam_068_key.covered_of_facts
          (fam_068_producerFactsImplyKeyFacts hsource hrows)
    | fam069 hsource hrows =>
        exact fam_069_key.covered_of_facts
          (fam_069_producerFactsImplyKeyFacts hsource hrows)
    | fam070 hsource hrows =>
        exact fam_070_key.covered_of_facts
          (fam_070_producerFactsImplyKeyFacts hsource hrows)
    | fam071 hsource hrows =>
        exact fam_071_key.covered_of_facts
          (fam_071_producerFactsImplyKeyFacts hsource hrows)
    | fam072 hsource hrows =>
        exact fam_072_key.covered_of_facts
          (fam_072_producerFactsImplyKeyFacts hsource hrows)
    | fam073 hsource hrows =>
        exact fam_073_key.covered_of_facts
          (fam_073_producerFactsImplyKeyFacts hsource hrows)
    | fam074 hsource hrows =>
        exact fam_074_key.covered_of_facts
          (fam_074_producerFactsImplyKeyFacts hsource hrows)
    | fam075 hsource hrows =>
        exact fam_075_key.covered_of_facts
          (fam_075_producerFactsImplyKeyFacts hsource hrows)
    | fam076 hsource hrows =>
        exact fam_076_key.covered_of_facts
          (fam_076_producerFactsImplyKeyFacts hsource hrows)
    | fam077 hsource hrows =>
        exact fam_077_key.covered_of_facts
          (fam_077_producerFactsImplyKeyFacts hsource hrows)
    | fam078 hsource hrows =>
        exact fam_078_key.covered_of_facts
          (fam_078_producerFactsImplyKeyFacts hsource hrows)
    | fam079 hsource hrows =>
        exact fam_079_key.covered_of_facts
          (fam_079_producerFactsImplyKeyFacts hsource hrows)
    | fam080 hsource hrows =>
        exact fam_080_key.covered_of_facts
          (fam_080_producerFactsImplyKeyFacts hsource hrows)
    | fam081 hsource hrows =>
        exact fam_081_key.covered_of_facts
          (fam_081_producerFactsImplyKeyFacts hsource hrows)
    | fam082 hsource hrows =>
        exact fam_082_key.covered_of_facts
          (fam_082_producerFactsImplyKeyFacts hsource hrows)
    | fam083 hsource hrows =>
        exact fam_083_key.covered_of_facts
          (fam_083_producerFactsImplyKeyFacts hsource hrows)
    | fam084 hsource hrows =>
        exact fam_084_key.covered_of_facts
          (fam_084_producerFactsImplyKeyFacts hsource hrows)
    | fam085 hsource hrows =>
        exact fam_085_key.covered_of_facts
          (fam_085_producerFactsImplyKeyFacts hsource hrows)
    | fam086 hsource hrows =>
        exact fam_086_key.covered_of_facts
          (fam_086_producerFactsImplyKeyFacts hsource hrows)
    | fam087 hsource hrows =>
        exact fam_087_key.covered_of_facts
          (fam_087_producerFactsImplyKeyFacts hsource hrows)
    | fam088 hsource hrows =>
        exact fam_088_key.covered_of_facts
          (fam_088_producerFactsImplyKeyFacts hsource hrows)
    | fam089 hsource hrows =>
        exact fam_089_key.covered_of_facts
          (fam_089_producerFactsImplyKeyFacts hsource hrows)
    | fam090 hsource hrows =>
        exact fam_090_key.covered_of_facts
          (fam_090_producerFactsImplyKeyFacts hsource hrows)
    | fam091 hsource hrows =>
        exact fam_091_key.covered_of_facts
          (fam_091_producerFactsImplyKeyFacts hsource hrows)
    | fam092 hsource hrows =>
        exact fam_092_key.covered_of_facts
          (fam_092_producerFactsImplyKeyFacts hsource hrows)
    | fam093 hsource hrows =>
        exact fam_093_key.covered_of_facts
          (fam_093_producerFactsImplyKeyFacts hsource hrows)
    | fam094 hsource hrows =>
        exact fam_094_key.covered_of_facts
          (fam_094_producerFactsImplyKeyFacts hsource hrows)
    | fam095 hsource hrows =>
        exact fam_095_key.covered_of_facts
          (fam_095_producerFactsImplyKeyFacts hsource hrows)
    | fam096 hsource hrows =>
        exact fam_096_key.covered_of_facts
          (fam_096_producerFactsImplyKeyFacts hsource hrows)
    | fam097 hsource hrows =>
        exact fam_097_key.covered_of_facts
          (fam_097_producerFactsImplyKeyFacts hsource hrows)
    | fam098 hsource hrows =>
        exact fam_098_key.covered_of_facts
          (fam_098_producerFactsImplyKeyFacts hsource hrows)
    | fam099 hsource hrows =>
        exact fam_099_key.covered_of_facts
          (fam_099_producerFactsImplyKeyFacts hsource hrows)
    | fam100 hsource hrows =>
        exact fam_100_key.covered_of_facts
          (fam_100_producerFactsImplyKeyFacts hsource hrows)
    | fam101 hsource hrows =>
        exact fam_101_key.covered_of_facts
          (fam_101_producerFactsImplyKeyFacts hsource hrows)
    | fam102 hsource hrows =>
        exact fam_102_key.covered_of_facts
          (fam_102_producerFactsImplyKeyFacts hsource hrows)
    | fam103 hsource hrows =>
        exact fam_103_key.covered_of_facts
          (fam_103_producerFactsImplyKeyFacts hsource hrows)
    | fam104 hsource hrows =>
        exact fam_104_key.covered_of_facts
          (fam_104_producerFactsImplyKeyFacts hsource hrows)
    | fam105 hsource hrows =>
        exact fam_105_key.covered_of_facts
          (fam_105_producerFactsImplyKeyFacts hsource hrows)
    | fam106 hsource hrows =>
        exact fam_106_key.covered_of_facts
          (fam_106_producerFactsImplyKeyFacts hsource hrows)
    | fam107 hsource hrows =>
        exact fam_107_key.covered_of_facts
          (fam_107_producerFactsImplyKeyFacts hsource hrows)
    | fam108 hsource hrows =>
        exact fam_108_key.covered_of_facts
          (fam_108_producerFactsImplyKeyFacts hsource hrows)
    | fam109 hsource hrows =>
        exact fam_109_key.covered_of_facts
          (fam_109_producerFactsImplyKeyFacts hsource hrows)
    | fam110 hsource hrows =>
        exact fam_110_key.covered_of_facts
          (fam_110_producerFactsImplyKeyFacts hsource hrows)
    | fam111 hsource hrows =>
        exact fam_111_key.covered_of_facts
          (fam_111_producerFactsImplyKeyFacts hsource hrows)
    | fam112 hsource hrows =>
        exact fam_112_key.covered_of_facts
          (fam_112_producerFactsImplyKeyFacts hsource hrows)
    | fam113 hsource hrows =>
        exact fam_113_key.covered_of_facts
          (fam_113_producerFactsImplyKeyFacts hsource hrows)
    | fam114 hsource hrows =>
        exact fam_114_key.covered_of_facts
          (fam_114_producerFactsImplyKeyFacts hsource hrows)
    | fam115 hsource hrows =>
        exact fam_115_key.covered_of_facts
          (fam_115_producerFactsImplyKeyFacts hsource hrows)
    | fam116 hsource hrows =>
        exact fam_116_key.covered_of_facts
          (fam_116_producerFactsImplyKeyFacts hsource hrows)
    | fam117 hsource hrows =>
        exact fam_117_key.covered_of_facts
          (fam_117_producerFactsImplyKeyFacts hsource hrows)
    | fam118 hsource hrows =>
        exact fam_118_key.covered_of_facts
          (fam_118_producerFactsImplyKeyFacts hsource hrows)
    | fam119 hsource hrows =>
        exact fam_119_key.covered_of_facts
          (fam_119_producerFactsImplyKeyFacts hsource hrows)
    | fam120 hsource hrows =>
        exact fam_120_key.covered_of_facts
          (fam_120_producerFactsImplyKeyFacts hsource hrows)
    | fam121 hsource hrows =>
        exact fam_121_key.covered_of_facts
          (fam_121_producerFactsImplyKeyFacts hsource hrows)
    | fam122 hsource hrows =>
        exact fam_122_key.covered_of_facts
          (fam_122_producerFactsImplyKeyFacts hsource hrows)
    | fam123 hsource hrows =>
        exact fam_123_key.covered_of_facts
          (fam_123_producerFactsImplyKeyFacts hsource hrows)
    | fam124 hsource hrows =>
        exact fam_124_key.covered_of_facts
          (fam_124_producerFactsImplyKeyFacts hsource hrows)
    | fam125 hsource hrows =>
        exact fam_125_key.covered_of_facts
          (fam_125_producerFactsImplyKeyFacts hsource hrows)
    | fam126 hsource hrows =>
        exact fam_126_key.covered_of_facts
          (fam_126_producerFactsImplyKeyFacts hsource hrows)
    | fam127 hsource hrows =>
        exact fam_127_key.covered_of_facts
          (fam_127_producerFactsImplyKeyFacts hsource hrows)
    | fam128 hsource hrows =>
        exact fam_128_key.covered_of_facts
          (fam_128_producerFactsImplyKeyFacts hsource hrows)
    | fam129 hsource hrows =>
        exact fam_129_key.covered_of_facts
          (fam_129_producerFactsImplyKeyFacts hsource hrows)
    | fam130 hsource hrows =>
        exact fam_130_key.covered_of_facts
          (fam_130_producerFactsImplyKeyFacts hsource hrows)
    | fam131 hsource hrows =>
        exact fam_131_key.covered_of_facts
          (fam_131_producerFactsImplyKeyFacts hsource hrows)
    | fam132 hsource hrows =>
        exact fam_132_key.covered_of_facts
          (fam_132_producerFactsImplyKeyFacts hsource hrows)
    | fam133 hsource hrows =>
        exact fam_133_key.covered_of_facts
          (fam_133_producerFactsImplyKeyFacts hsource hrows)
    | fam134 hsource hrows =>
        exact fam_134_key.covered_of_facts
          (fam_134_producerFactsImplyKeyFacts hsource hrows)
    | fam135 hsource hrows =>
        exact fam_135_key.covered_of_facts
          (fam_135_producerFactsImplyKeyFacts hsource hrows)

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
    (hrows : row_001_producer.Applies fam_001_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam001 hsource hrows

theorem fam_001_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_001_producer.Applies fam_001_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_001_producerFactsImplyClassifier hsource hrows)

theorem fam_002_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_000_producer.Applies fam_002_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam002 hsource hrows

theorem fam_002_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_000_producer.Applies fam_002_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_002_producerFactsImplyClassifier hsource hrows)

theorem fam_003_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_002_producer.Applies fam_003_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam003 hsource hrows

theorem fam_003_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_002_producer.Applies fam_003_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_003_producerFactsImplyClassifier hsource hrows)

theorem fam_004_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_004_key r mask)
    (hrows : row_002_producer.Applies fam_004_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam004 hsource hrows

theorem fam_004_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_004_key r mask)
    (hrows : row_002_producer.Applies fam_004_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_004_producerFactsImplyClassifier hsource hrows)

theorem fam_005_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_005_key r mask)
    (hrows : row_003_producer.Applies fam_005_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam005 hsource hrows

theorem fam_005_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_005_key r mask)
    (hrows : row_003_producer.Applies fam_005_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_005_producerFactsImplyClassifier hsource hrows)

theorem fam_006_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_006_key r mask)
    (hrows : row_005_producer.Applies fam_006_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam006 hsource hrows

theorem fam_006_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_006_key r mask)
    (hrows : row_005_producer.Applies fam_006_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_006_producerFactsImplyClassifier hsource hrows)

theorem fam_007_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_003_producer.Applies fam_007_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam007 hsource hrows

theorem fam_007_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_003_producer.Applies fam_007_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_007_producerFactsImplyClassifier hsource hrows)

theorem fam_008_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_008_key r mask)
    (hrows : row_000_producer.Applies fam_008_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam008 hsource hrows

theorem fam_008_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_008_key r mask)
    (hrows : row_000_producer.Applies fam_008_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_008_producerFactsImplyClassifier hsource hrows)

theorem fam_009_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_009_key r mask)
    (hrows : row_003_producer.Applies fam_009_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam009 hsource hrows

theorem fam_009_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_009_key r mask)
    (hrows : row_003_producer.Applies fam_009_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_009_producerFactsImplyClassifier hsource hrows)

theorem fam_010_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_010_key r mask)
    (hrows : row_004_producer.Applies fam_010_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam010 hsource hrows

theorem fam_010_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_010_key r mask)
    (hrows : row_004_producer.Applies fam_010_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_010_producerFactsImplyClassifier hsource hrows)

theorem fam_011_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_011_key r mask)
    (hrows : row_001_producer.Applies fam_011_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam011 hsource hrows

theorem fam_011_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_011_key r mask)
    (hrows : row_001_producer.Applies fam_011_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_011_producerFactsImplyClassifier hsource hrows)

theorem fam_012_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_012_key r mask)
    (hrows : row_003_producer.Applies fam_012_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam012 hsource hrows

theorem fam_012_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_012_key r mask)
    (hrows : row_003_producer.Applies fam_012_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_012_producerFactsImplyClassifier hsource hrows)

theorem fam_013_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_013_key r mask)
    (hrows : row_003_producer.Applies fam_013_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam013 hsource hrows

theorem fam_013_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_013_key r mask)
    (hrows : row_003_producer.Applies fam_013_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_013_producerFactsImplyClassifier hsource hrows)

theorem fam_014_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_014_key r mask)
    (hrows : row_000_producer.Applies fam_014_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam014 hsource hrows

theorem fam_014_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_014_key r mask)
    (hrows : row_000_producer.Applies fam_014_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_014_producerFactsImplyClassifier hsource hrows)

theorem fam_015_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_015_key r mask)
    (hrows : row_000_producer.Applies fam_015_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam015 hsource hrows

theorem fam_015_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_015_key r mask)
    (hrows : row_000_producer.Applies fam_015_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_015_producerFactsImplyClassifier hsource hrows)

theorem fam_016_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_016_key r mask)
    (hrows : row_000_producer.Applies fam_016_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam016 hsource hrows

theorem fam_016_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_016_key r mask)
    (hrows : row_000_producer.Applies fam_016_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_016_producerFactsImplyClassifier hsource hrows)

theorem fam_017_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_017_key r mask)
    (hrows : row_001_producer.Applies fam_017_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam017 hsource hrows

theorem fam_017_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_017_key r mask)
    (hrows : row_001_producer.Applies fam_017_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_017_producerFactsImplyClassifier hsource hrows)

theorem fam_018_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_018_key r mask)
    (hrows : row_005_producer.Applies fam_018_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam018 hsource hrows

theorem fam_018_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_018_key r mask)
    (hrows : row_005_producer.Applies fam_018_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_018_producerFactsImplyClassifier hsource hrows)

theorem fam_019_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_020_producer.Applies fam_019_key r mask)
    (hrows : row_004_producer.Applies fam_019_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam019 hsource hrows

theorem fam_019_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_020_producer.Applies fam_019_key r mask)
    (hrows : row_004_producer.Applies fam_019_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_019_producerFactsImplyClassifier hsource hrows)

theorem fam_020_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_019_producer.Applies fam_020_key r mask)
    (hrows : row_004_producer.Applies fam_020_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam020 hsource hrows

theorem fam_020_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_019_producer.Applies fam_020_key r mask)
    (hrows : row_004_producer.Applies fam_020_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_020_producerFactsImplyClassifier hsource hrows)

theorem fam_021_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_021_producer.Applies fam_021_key r mask)
    (hrows : row_006_producer.Applies fam_021_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam021 hsource hrows

theorem fam_021_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_021_producer.Applies fam_021_key r mask)
    (hrows : row_006_producer.Applies fam_021_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_021_producerFactsImplyClassifier hsource hrows)

theorem fam_022_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_023_producer.Applies fam_022_key r mask)
    (hrows : row_001_producer.Applies fam_022_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam022 hsource hrows

theorem fam_022_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_023_producer.Applies fam_022_key r mask)
    (hrows : row_001_producer.Applies fam_022_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_022_producerFactsImplyClassifier hsource hrows)

theorem fam_023_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_022_producer.Applies fam_023_key r mask)
    (hrows : row_005_producer.Applies fam_023_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam023 hsource hrows

theorem fam_023_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_022_producer.Applies fam_023_key r mask)
    (hrows : row_005_producer.Applies fam_023_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_023_producerFactsImplyClassifier hsource hrows)

theorem fam_024_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_024_producer.Applies fam_024_key r mask)
    (hrows : row_000_producer.Applies fam_024_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam024 hsource hrows

theorem fam_024_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_024_producer.Applies fam_024_key r mask)
    (hrows : row_000_producer.Applies fam_024_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_024_producerFactsImplyClassifier hsource hrows)

theorem fam_025_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_027_producer.Applies fam_025_key r mask)
    (hrows : row_000_producer.Applies fam_025_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam025 hsource hrows

theorem fam_025_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_027_producer.Applies fam_025_key r mask)
    (hrows : row_000_producer.Applies fam_025_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_025_producerFactsImplyClassifier hsource hrows)

theorem fam_026_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_025_producer.Applies fam_026_key r mask)
    (hrows : row_000_producer.Applies fam_026_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam026 hsource hrows

theorem fam_026_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_025_producer.Applies fam_026_key r mask)
    (hrows : row_000_producer.Applies fam_026_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_026_producerFactsImplyClassifier hsource hrows)

theorem fam_027_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_026_producer.Applies fam_027_key r mask)
    (hrows : row_001_producer.Applies fam_027_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam027 hsource hrows

theorem fam_027_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_026_producer.Applies fam_027_key r mask)
    (hrows : row_001_producer.Applies fam_027_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_027_producerFactsImplyClassifier hsource hrows)

theorem fam_028_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_028_key r mask)
    (hrows : row_000_producer.Applies fam_028_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam028 hsource hrows

theorem fam_028_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_028_key r mask)
    (hrows : row_000_producer.Applies fam_028_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_028_producerFactsImplyClassifier hsource hrows)

theorem fam_029_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_028_producer.Applies fam_029_key r mask)
    (hrows : row_004_producer.Applies fam_029_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam029 hsource hrows

theorem fam_029_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_028_producer.Applies fam_029_key r mask)
    (hrows : row_004_producer.Applies fam_029_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_029_producerFactsImplyClassifier hsource hrows)

theorem fam_030_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_029_producer.Applies fam_030_key r mask)
    (hrows : row_004_producer.Applies fam_030_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam030 hsource hrows

theorem fam_030_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_029_producer.Applies fam_030_key r mask)
    (hrows : row_004_producer.Applies fam_030_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_030_producerFactsImplyClassifier hsource hrows)

theorem fam_031_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_031_producer.Applies fam_031_key r mask)
    (hrows : row_003_producer.Applies fam_031_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam031 hsource hrows

theorem fam_031_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_031_producer.Applies fam_031_key r mask)
    (hrows : row_003_producer.Applies fam_031_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_031_producerFactsImplyClassifier hsource hrows)

theorem fam_032_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_032_producer.Applies fam_032_key r mask)
    (hrows : row_001_producer.Applies fam_032_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam032 hsource hrows

theorem fam_032_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_032_producer.Applies fam_032_key r mask)
    (hrows : row_001_producer.Applies fam_032_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_032_producerFactsImplyClassifier hsource hrows)

theorem fam_033_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_035_producer.Applies fam_033_key r mask)
    (hrows : row_003_producer.Applies fam_033_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam033 hsource hrows

theorem fam_033_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_035_producer.Applies fam_033_key r mask)
    (hrows : row_003_producer.Applies fam_033_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_033_producerFactsImplyClassifier hsource hrows)

theorem fam_034_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_036_producer.Applies fam_034_key r mask)
    (hrows : row_001_producer.Applies fam_034_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam034 hsource hrows

theorem fam_034_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_036_producer.Applies fam_034_key r mask)
    (hrows : row_001_producer.Applies fam_034_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_034_producerFactsImplyClassifier hsource hrows)

theorem fam_035_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_034_producer.Applies fam_035_key r mask)
    (hrows : row_005_producer.Applies fam_035_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam035 hsource hrows

theorem fam_035_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_034_producer.Applies fam_035_key r mask)
    (hrows : row_005_producer.Applies fam_035_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_035_producerFactsImplyClassifier hsource hrows)

theorem fam_036_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_038_producer.Applies fam_036_key r mask)
    (hrows : row_000_producer.Applies fam_036_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam036 hsource hrows

theorem fam_036_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_038_producer.Applies fam_036_key r mask)
    (hrows : row_000_producer.Applies fam_036_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_036_producerFactsImplyClassifier hsource hrows)

theorem fam_037_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_037_producer.Applies fam_037_key r mask)
    (hrows : row_005_producer.Applies fam_037_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam037 hsource hrows

theorem fam_037_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_037_producer.Applies fam_037_key r mask)
    (hrows : row_005_producer.Applies fam_037_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_037_producerFactsImplyClassifier hsource hrows)

theorem fam_038_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_039_producer.Applies fam_038_key r mask)
    (hrows : row_000_producer.Applies fam_038_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam038 hsource hrows

theorem fam_038_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_039_producer.Applies fam_038_key r mask)
    (hrows : row_000_producer.Applies fam_038_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_038_producerFactsImplyClassifier hsource hrows)

theorem fam_039_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_039_key r mask)
    (hrows : row_007_producer.Applies fam_039_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam039 hsource hrows

theorem fam_039_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_039_key r mask)
    (hrows : row_007_producer.Applies fam_039_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_039_producerFactsImplyClassifier hsource hrows)

theorem fam_040_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_040_producer.Applies fam_040_key r mask)
    (hrows : row_002_producer.Applies fam_040_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam040 hsource hrows

theorem fam_040_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_040_producer.Applies fam_040_key r mask)
    (hrows : row_002_producer.Applies fam_040_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_040_producerFactsImplyClassifier hsource hrows)

theorem fam_041_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_041_producer.Applies fam_041_key r mask)
    (hrows : row_002_producer.Applies fam_041_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam041 hsource hrows

theorem fam_041_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_041_producer.Applies fam_041_key r mask)
    (hrows : row_002_producer.Applies fam_041_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_041_producerFactsImplyClassifier hsource hrows)

theorem fam_042_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_044_producer.Applies fam_042_key r mask)
    (hrows : row_000_producer.Applies fam_042_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam042 hsource hrows

theorem fam_042_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_044_producer.Applies fam_042_key r mask)
    (hrows : row_000_producer.Applies fam_042_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_042_producerFactsImplyClassifier hsource hrows)

theorem fam_043_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_042_producer.Applies fam_043_key r mask)
    (hrows : row_000_producer.Applies fam_043_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam043 hsource hrows

theorem fam_043_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_042_producer.Applies fam_043_key r mask)
    (hrows : row_000_producer.Applies fam_043_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_043_producerFactsImplyClassifier hsource hrows)

theorem fam_044_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_043_producer.Applies fam_044_key r mask)
    (hrows : row_001_producer.Applies fam_044_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam044 hsource hrows

theorem fam_044_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_043_producer.Applies fam_044_key r mask)
    (hrows : row_001_producer.Applies fam_044_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_044_producerFactsImplyClassifier hsource hrows)

theorem fam_045_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_045_producer.Applies fam_045_key r mask)
    (hrows : row_000_producer.Applies fam_045_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam045 hsource hrows

theorem fam_045_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_045_producer.Applies fam_045_key r mask)
    (hrows : row_000_producer.Applies fam_045_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_045_producerFactsImplyClassifier hsource hrows)

theorem fam_046_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_048_producer.Applies fam_046_key r mask)
    (hrows : row_000_producer.Applies fam_046_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam046 hsource hrows

theorem fam_046_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_048_producer.Applies fam_046_key r mask)
    (hrows : row_000_producer.Applies fam_046_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_046_producerFactsImplyClassifier hsource hrows)

theorem fam_047_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_046_producer.Applies fam_047_key r mask)
    (hrows : row_001_producer.Applies fam_047_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam047 hsource hrows

theorem fam_047_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_046_producer.Applies fam_047_key r mask)
    (hrows : row_001_producer.Applies fam_047_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_047_producerFactsImplyClassifier hsource hrows)

theorem fam_048_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_047_producer.Applies fam_048_key r mask)
    (hrows : row_002_producer.Applies fam_048_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam048 hsource hrows

theorem fam_048_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_047_producer.Applies fam_048_key r mask)
    (hrows : row_002_producer.Applies fam_048_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_048_producerFactsImplyClassifier hsource hrows)

theorem fam_049_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_052_producer.Applies fam_049_key r mask)
    (hrows : row_011_producer.Applies fam_049_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam049 hsource hrows

theorem fam_049_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_052_producer.Applies fam_049_key r mask)
    (hrows : row_011_producer.Applies fam_049_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_049_producerFactsImplyClassifier hsource hrows)

theorem fam_050_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_050_producer.Applies fam_050_key r mask)
    (hrows : row_001_producer.Applies fam_050_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam050 hsource hrows

theorem fam_050_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_050_producer.Applies fam_050_key r mask)
    (hrows : row_001_producer.Applies fam_050_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_050_producerFactsImplyClassifier hsource hrows)

theorem fam_051_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_049_producer.Applies fam_051_key r mask)
    (hrows : row_001_producer.Applies fam_051_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam051 hsource hrows

theorem fam_051_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_049_producer.Applies fam_051_key r mask)
    (hrows : row_001_producer.Applies fam_051_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_051_producerFactsImplyClassifier hsource hrows)

theorem fam_052_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_051_producer.Applies fam_052_key r mask)
    (hrows : row_004_producer.Applies fam_052_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam052 hsource hrows

theorem fam_052_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_051_producer.Applies fam_052_key r mask)
    (hrows : row_004_producer.Applies fam_052_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_052_producerFactsImplyClassifier hsource hrows)

theorem fam_053_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_053_producer.Applies fam_053_key r mask)
    (hrows : row_000_producer.Applies fam_053_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam053 hsource hrows

theorem fam_053_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_053_producer.Applies fam_053_key r mask)
    (hrows : row_000_producer.Applies fam_053_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_053_producerFactsImplyClassifier hsource hrows)

theorem fam_054_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_054_producer.Applies fam_054_key r mask)
    (hrows : row_000_producer.Applies fam_054_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam054 hsource hrows

theorem fam_054_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_054_producer.Applies fam_054_key r mask)
    (hrows : row_000_producer.Applies fam_054_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_054_producerFactsImplyClassifier hsource hrows)

theorem fam_055_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_056_producer.Applies fam_055_key r mask)
    (hrows : row_000_producer.Applies fam_055_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam055 hsource hrows

theorem fam_055_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_056_producer.Applies fam_055_key r mask)
    (hrows : row_000_producer.Applies fam_055_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_055_producerFactsImplyClassifier hsource hrows)

theorem fam_056_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_055_producer.Applies fam_056_key r mask)
    (hrows : row_002_producer.Applies fam_056_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam056 hsource hrows

theorem fam_056_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_055_producer.Applies fam_056_key r mask)
    (hrows : row_002_producer.Applies fam_056_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_056_producerFactsImplyClassifier hsource hrows)

theorem fam_057_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_057_producer.Applies fam_057_key r mask)
    (hrows : row_000_producer.Applies fam_057_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam057 hsource hrows

theorem fam_057_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_057_producer.Applies fam_057_key r mask)
    (hrows : row_000_producer.Applies fam_057_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_057_producerFactsImplyClassifier hsource hrows)

theorem fam_058_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_059_producer.Applies fam_058_key r mask)
    (hrows : row_001_producer.Applies fam_058_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam058 hsource hrows

theorem fam_058_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_059_producer.Applies fam_058_key r mask)
    (hrows : row_001_producer.Applies fam_058_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_058_producerFactsImplyClassifier hsource hrows)

theorem fam_059_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_058_producer.Applies fam_059_key r mask)
    (hrows : row_001_producer.Applies fam_059_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam059 hsource hrows

theorem fam_059_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_058_producer.Applies fam_059_key r mask)
    (hrows : row_001_producer.Applies fam_059_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_059_producerFactsImplyClassifier hsource hrows)

theorem fam_060_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_067_producer.Applies fam_060_key r mask)
    (hrows : row_013_producer.Applies fam_060_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam060 hsource hrows

theorem fam_060_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_067_producer.Applies fam_060_key r mask)
    (hrows : row_013_producer.Applies fam_060_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_060_producerFactsImplyClassifier hsource hrows)

theorem fam_061_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_063_producer.Applies fam_061_key r mask)
    (hrows : row_006_producer.Applies fam_061_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam061 hsource hrows

theorem fam_061_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_063_producer.Applies fam_061_key r mask)
    (hrows : row_006_producer.Applies fam_061_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_061_producerFactsImplyClassifier hsource hrows)

theorem fam_062_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_066_producer.Applies fam_062_key r mask)
    (hrows : row_006_producer.Applies fam_062_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam062 hsource hrows

theorem fam_062_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_066_producer.Applies fam_062_key r mask)
    (hrows : row_006_producer.Applies fam_062_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_062_producerFactsImplyClassifier hsource hrows)

theorem fam_063_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_069_producer.Applies fam_063_key r mask)
    (hrows : row_006_producer.Applies fam_063_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam063 hsource hrows

theorem fam_063_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_069_producer.Applies fam_063_key r mask)
    (hrows : row_006_producer.Applies fam_063_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_063_producerFactsImplyClassifier hsource hrows)

theorem fam_064_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_065_producer.Applies fam_064_key r mask)
    (hrows : row_009_producer.Applies fam_064_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam064 hsource hrows

theorem fam_064_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_065_producer.Applies fam_064_key r mask)
    (hrows : row_009_producer.Applies fam_064_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_064_producerFactsImplyClassifier hsource hrows)

theorem fam_065_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_068_producer.Applies fam_065_key r mask)
    (hrows : row_009_producer.Applies fam_065_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam065 hsource hrows

theorem fam_065_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_068_producer.Applies fam_065_key r mask)
    (hrows : row_009_producer.Applies fam_065_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_065_producerFactsImplyClassifier hsource hrows)

theorem fam_066_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_061_producer.Applies fam_066_key r mask)
    (hrows : row_000_producer.Applies fam_066_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam066 hsource hrows

theorem fam_066_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_061_producer.Applies fam_066_key r mask)
    (hrows : row_000_producer.Applies fam_066_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_066_producerFactsImplyClassifier hsource hrows)

theorem fam_067_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_060_producer.Applies fam_067_key r mask)
    (hrows : row_000_producer.Applies fam_067_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam067 hsource hrows

theorem fam_067_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_060_producer.Applies fam_067_key r mask)
    (hrows : row_000_producer.Applies fam_067_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_067_producerFactsImplyClassifier hsource hrows)

theorem fam_068_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_068_key r mask)
    (hrows : row_008_producer.Applies fam_068_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam068 hsource hrows

theorem fam_068_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_068_key r mask)
    (hrows : row_008_producer.Applies fam_068_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_068_producerFactsImplyClassifier hsource hrows)

theorem fam_069_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_062_producer.Applies fam_069_key r mask)
    (hrows : row_001_producer.Applies fam_069_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam069 hsource hrows

theorem fam_069_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_062_producer.Applies fam_069_key r mask)
    (hrows : row_001_producer.Applies fam_069_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_069_producerFactsImplyClassifier hsource hrows)

theorem fam_070_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_064_producer.Applies fam_070_key r mask)
    (hrows : row_001_producer.Applies fam_070_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam070 hsource hrows

theorem fam_070_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_064_producer.Applies fam_070_key r mask)
    (hrows : row_001_producer.Applies fam_070_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_070_producerFactsImplyClassifier hsource hrows)

theorem fam_071_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_072_producer.Applies fam_071_key r mask)
    (hrows : row_006_producer.Applies fam_071_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam071 hsource hrows

theorem fam_071_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_072_producer.Applies fam_071_key r mask)
    (hrows : row_006_producer.Applies fam_071_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_071_producerFactsImplyClassifier hsource hrows)

theorem fam_072_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_073_producer.Applies fam_072_key r mask)
    (hrows : row_006_producer.Applies fam_072_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam072 hsource hrows

theorem fam_072_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_073_producer.Applies fam_072_key r mask)
    (hrows : row_006_producer.Applies fam_072_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_072_producerFactsImplyClassifier hsource hrows)

theorem fam_073_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_071_producer.Applies fam_073_key r mask)
    (hrows : row_001_producer.Applies fam_073_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam073 hsource hrows

theorem fam_073_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_071_producer.Applies fam_073_key r mask)
    (hrows : row_001_producer.Applies fam_073_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_073_producerFactsImplyClassifier hsource hrows)

theorem fam_074_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_070_producer.Applies fam_074_key r mask)
    (hrows : row_001_producer.Applies fam_074_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam074 hsource hrows

theorem fam_074_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_070_producer.Applies fam_074_key r mask)
    (hrows : row_001_producer.Applies fam_074_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_074_producerFactsImplyClassifier hsource hrows)

theorem fam_075_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_074_producer.Applies fam_075_key r mask)
    (hrows : row_002_producer.Applies fam_075_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam075 hsource hrows

theorem fam_075_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_074_producer.Applies fam_075_key r mask)
    (hrows : row_002_producer.Applies fam_075_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_075_producerFactsImplyClassifier hsource hrows)

theorem fam_076_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_075_producer.Applies fam_076_key r mask)
    (hrows : row_002_producer.Applies fam_076_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam076 hsource hrows

theorem fam_076_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_075_producer.Applies fam_076_key r mask)
    (hrows : row_002_producer.Applies fam_076_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_076_producerFactsImplyClassifier hsource hrows)

theorem fam_077_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_076_producer.Applies fam_077_key r mask)
    (hrows : row_005_producer.Applies fam_077_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam077 hsource hrows

theorem fam_077_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_076_producer.Applies fam_077_key r mask)
    (hrows : row_005_producer.Applies fam_077_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_077_producerFactsImplyClassifier hsource hrows)

theorem fam_078_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_092_producer.Applies fam_078_key r mask)
    (hrows : row_014_producer.Applies fam_078_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam078 hsource hrows

theorem fam_078_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_092_producer.Applies fam_078_key r mask)
    (hrows : row_014_producer.Applies fam_078_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_078_producerFactsImplyClassifier hsource hrows)

theorem fam_079_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_083_producer.Applies fam_079_key r mask)
    (hrows : row_016_producer.Applies fam_079_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam079 hsource hrows

theorem fam_079_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_083_producer.Applies fam_079_key r mask)
    (hrows : row_016_producer.Applies fam_079_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_079_producerFactsImplyClassifier hsource hrows)

theorem fam_080_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_093_producer.Applies fam_080_key r mask)
    (hrows : row_012_producer.Applies fam_080_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam080 hsource hrows

theorem fam_080_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_093_producer.Applies fam_080_key r mask)
    (hrows : row_012_producer.Applies fam_080_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_080_producerFactsImplyClassifier hsource hrows)

theorem fam_081_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_090_producer.Applies fam_081_key r mask)
    (hrows : row_015_producer.Applies fam_081_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam081 hsource hrows

theorem fam_081_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_090_producer.Applies fam_081_key r mask)
    (hrows : row_015_producer.Applies fam_081_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_081_producerFactsImplyClassifier hsource hrows)

theorem fam_082_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_081_producer.Applies fam_082_key r mask)
    (hrows : row_006_producer.Applies fam_082_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam082 hsource hrows

theorem fam_082_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_081_producer.Applies fam_082_key r mask)
    (hrows : row_006_producer.Applies fam_082_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_082_producerFactsImplyClassifier hsource hrows)

theorem fam_083_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_089_producer.Applies fam_083_key r mask)
    (hrows : row_006_producer.Applies fam_083_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam083 hsource hrows

theorem fam_083_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_089_producer.Applies fam_083_key r mask)
    (hrows : row_006_producer.Applies fam_083_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_083_producerFactsImplyClassifier hsource hrows)

theorem fam_084_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_085_producer.Applies fam_084_key r mask)
    (hrows : row_000_producer.Applies fam_084_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam084 hsource hrows

theorem fam_084_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_085_producer.Applies fam_084_key r mask)
    (hrows : row_000_producer.Applies fam_084_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_084_producerFactsImplyClassifier hsource hrows)

theorem fam_085_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_088_producer.Applies fam_085_key r mask)
    (hrows : row_008_producer.Applies fam_085_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam085 hsource hrows

theorem fam_085_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_088_producer.Applies fam_085_key r mask)
    (hrows : row_008_producer.Applies fam_085_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_085_producerFactsImplyClassifier hsource hrows)

theorem fam_086_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_084_producer.Applies fam_086_key r mask)
    (hrows : row_008_producer.Applies fam_086_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam086 hsource hrows

theorem fam_086_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_084_producer.Applies fam_086_key r mask)
    (hrows : row_008_producer.Applies fam_086_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_086_producerFactsImplyClassifier hsource hrows)

theorem fam_087_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_086_producer.Applies fam_087_key r mask)
    (hrows : row_007_producer.Applies fam_087_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam087 hsource hrows

theorem fam_087_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_086_producer.Applies fam_087_key r mask)
    (hrows : row_007_producer.Applies fam_087_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_087_producerFactsImplyClassifier hsource hrows)

theorem fam_088_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_082_producer.Applies fam_088_key r mask)
    (hrows : row_001_producer.Applies fam_088_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam088 hsource hrows

theorem fam_088_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_082_producer.Applies fam_088_key r mask)
    (hrows : row_001_producer.Applies fam_088_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_088_producerFactsImplyClassifier hsource hrows)

theorem fam_089_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_087_producer.Applies fam_089_key r mask)
    (hrows : row_001_producer.Applies fam_089_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam089 hsource hrows

theorem fam_089_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_087_producer.Applies fam_089_key r mask)
    (hrows : row_001_producer.Applies fam_089_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_089_producerFactsImplyClassifier hsource hrows)

theorem fam_090_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_091_producer.Applies fam_090_key r mask)
    (hrows : row_001_producer.Applies fam_090_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam090 hsource hrows

theorem fam_090_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_091_producer.Applies fam_090_key r mask)
    (hrows : row_001_producer.Applies fam_090_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_090_producerFactsImplyClassifier hsource hrows)

theorem fam_091_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_077_producer.Applies fam_091_key r mask)
    (hrows : row_002_producer.Applies fam_091_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam091 hsource hrows

theorem fam_091_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_077_producer.Applies fam_091_key r mask)
    (hrows : row_002_producer.Applies fam_091_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_091_producerFactsImplyClassifier hsource hrows)

theorem fam_092_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_078_producer.Applies fam_092_key r mask)
    (hrows : row_002_producer.Applies fam_092_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam092 hsource hrows

theorem fam_092_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_078_producer.Applies fam_092_key r mask)
    (hrows : row_002_producer.Applies fam_092_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_092_producerFactsImplyClassifier hsource hrows)

theorem fam_093_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_080_producer.Applies fam_093_key r mask)
    (hrows : row_002_producer.Applies fam_093_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam093 hsource hrows

theorem fam_093_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_080_producer.Applies fam_093_key r mask)
    (hrows : row_002_producer.Applies fam_093_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_093_producerFactsImplyClassifier hsource hrows)

theorem fam_094_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_079_producer.Applies fam_094_key r mask)
    (hrows : row_002_producer.Applies fam_094_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam094 hsource hrows

theorem fam_094_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_079_producer.Applies fam_094_key r mask)
    (hrows : row_002_producer.Applies fam_094_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_094_producerFactsImplyClassifier hsource hrows)

theorem fam_095_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_107_producer.Applies fam_095_key r mask)
    (hrows : row_014_producer.Applies fam_095_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam095 hsource hrows

theorem fam_095_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_107_producer.Applies fam_095_key r mask)
    (hrows : row_014_producer.Applies fam_095_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_095_producerFactsImplyClassifier hsource hrows)

theorem fam_096_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_125_producer.Applies fam_096_key r mask)
    (hrows : row_014_producer.Applies fam_096_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam096 hsource hrows

theorem fam_096_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_125_producer.Applies fam_096_key r mask)
    (hrows : row_014_producer.Applies fam_096_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_096_producerFactsImplyClassifier hsource hrows)

theorem fam_097_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_105_producer.Applies fam_097_key r mask)
    (hrows : row_013_producer.Applies fam_097_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam097 hsource hrows

theorem fam_097_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_105_producer.Applies fam_097_key r mask)
    (hrows : row_013_producer.Applies fam_097_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_097_producerFactsImplyClassifier hsource hrows)

theorem fam_098_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_116_producer.Applies fam_098_key r mask)
    (hrows : row_014_producer.Applies fam_098_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam098 hsource hrows

theorem fam_098_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_116_producer.Applies fam_098_key r mask)
    (hrows : row_014_producer.Applies fam_098_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_098_producerFactsImplyClassifier hsource hrows)

theorem fam_099_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_127_producer.Applies fam_099_key r mask)
    (hrows : row_012_producer.Applies fam_099_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam099 hsource hrows

theorem fam_099_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_127_producer.Applies fam_099_key r mask)
    (hrows : row_012_producer.Applies fam_099_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_099_producerFactsImplyClassifier hsource hrows)

theorem fam_100_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_128_producer.Applies fam_100_key r mask)
    (hrows : row_018_producer.Applies fam_100_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam100 hsource hrows

theorem fam_100_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_128_producer.Applies fam_100_key r mask)
    (hrows : row_018_producer.Applies fam_100_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_100_producerFactsImplyClassifier hsource hrows)

theorem fam_101_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_123_producer.Applies fam_101_key r mask)
    (hrows : row_017_producer.Applies fam_101_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam101 hsource hrows

theorem fam_101_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_123_producer.Applies fam_101_key r mask)
    (hrows : row_017_producer.Applies fam_101_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_101_producerFactsImplyClassifier hsource hrows)

theorem fam_102_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_099_producer.Applies fam_102_key r mask)
    (hrows : row_012_producer.Applies fam_102_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam102 hsource hrows

theorem fam_102_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_099_producer.Applies fam_102_key r mask)
    (hrows : row_012_producer.Applies fam_102_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_102_producerFactsImplyClassifier hsource hrows)

theorem fam_103_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_133_producer.Applies fam_103_key r mask)
    (hrows : row_012_producer.Applies fam_103_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam103 hsource hrows

theorem fam_103_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_133_producer.Applies fam_103_key r mask)
    (hrows : row_012_producer.Applies fam_103_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_103_producerFactsImplyClassifier hsource hrows)

theorem fam_104_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_119_producer.Applies fam_104_key r mask)
    (hrows : row_006_producer.Applies fam_104_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam104 hsource hrows

theorem fam_104_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_119_producer.Applies fam_104_key r mask)
    (hrows : row_006_producer.Applies fam_104_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_104_producerFactsImplyClassifier hsource hrows)

theorem fam_105_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_095_producer.Applies fam_105_key r mask)
    (hrows : row_006_producer.Applies fam_105_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam105 hsource hrows

theorem fam_105_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_095_producer.Applies fam_105_key r mask)
    (hrows : row_006_producer.Applies fam_105_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_105_producerFactsImplyClassifier hsource hrows)

theorem fam_106_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_126_producer.Applies fam_106_key r mask)
    (hrows : row_009_producer.Applies fam_106_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam106 hsource hrows

theorem fam_106_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_126_producer.Applies fam_106_key r mask)
    (hrows : row_009_producer.Applies fam_106_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_106_producerFactsImplyClassifier hsource hrows)

theorem fam_107_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_117_producer.Applies fam_107_key r mask)
    (hrows : row_009_producer.Applies fam_107_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam107 hsource hrows

theorem fam_107_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_117_producer.Applies fam_107_key r mask)
    (hrows : row_009_producer.Applies fam_107_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_107_producerFactsImplyClassifier hsource hrows)

theorem fam_108_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_130_producer.Applies fam_108_key r mask)
    (hrows : row_009_producer.Applies fam_108_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam108 hsource hrows

theorem fam_108_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_130_producer.Applies fam_108_key r mask)
    (hrows : row_009_producer.Applies fam_108_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_108_producerFactsImplyClassifier hsource hrows)

theorem fam_109_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_120_producer.Applies fam_109_key r mask)
    (hrows : row_000_producer.Applies fam_109_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam109 hsource hrows

theorem fam_109_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_120_producer.Applies fam_109_key r mask)
    (hrows : row_000_producer.Applies fam_109_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_109_producerFactsImplyClassifier hsource hrows)

theorem fam_110_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_134_producer.Applies fam_110_key r mask)
    (hrows : row_000_producer.Applies fam_110_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam110 hsource hrows

theorem fam_110_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_134_producer.Applies fam_110_key r mask)
    (hrows : row_000_producer.Applies fam_110_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_110_producerFactsImplyClassifier hsource hrows)

theorem fam_111_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_113_producer.Applies fam_111_key r mask)
    (hrows : row_000_producer.Applies fam_111_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam111 hsource hrows

theorem fam_111_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_113_producer.Applies fam_111_key r mask)
    (hrows : row_000_producer.Applies fam_111_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_111_producerFactsImplyClassifier hsource hrows)

theorem fam_112_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_115_producer.Applies fam_112_key r mask)
    (hrows : row_000_producer.Applies fam_112_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam112 hsource hrows

theorem fam_112_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_115_producer.Applies fam_112_key r mask)
    (hrows : row_000_producer.Applies fam_112_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_112_producerFactsImplyClassifier hsource hrows)

theorem fam_113_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_121_producer.Applies fam_113_key r mask)
    (hrows : row_008_producer.Applies fam_113_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam113 hsource hrows

theorem fam_113_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_121_producer.Applies fam_113_key r mask)
    (hrows : row_008_producer.Applies fam_113_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_113_producerFactsImplyClassifier hsource hrows)

theorem fam_114_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_097_producer.Applies fam_114_key r mask)
    (hrows : row_008_producer.Applies fam_114_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam114 hsource hrows

theorem fam_114_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_097_producer.Applies fam_114_key r mask)
    (hrows : row_008_producer.Applies fam_114_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_114_producerFactsImplyClassifier hsource hrows)

theorem fam_115_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_101_producer.Applies fam_115_key r mask)
    (hrows : row_008_producer.Applies fam_115_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam115 hsource hrows

theorem fam_115_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_101_producer.Applies fam_115_key r mask)
    (hrows : row_008_producer.Applies fam_115_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_115_producerFactsImplyClassifier hsource hrows)

theorem fam_116_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_108_producer.Applies fam_116_key r mask)
    (hrows : row_010_producer.Applies fam_116_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam116 hsource hrows

theorem fam_116_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_108_producer.Applies fam_116_key r mask)
    (hrows : row_010_producer.Applies fam_116_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_116_producerFactsImplyClassifier hsource hrows)

theorem fam_117_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_131_producer.Applies fam_117_key r mask)
    (hrows : row_010_producer.Applies fam_117_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam117 hsource hrows

theorem fam_117_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_131_producer.Applies fam_117_key r mask)
    (hrows : row_010_producer.Applies fam_117_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_117_producerFactsImplyClassifier hsource hrows)

theorem fam_118_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_096_producer.Applies fam_118_key r mask)
    (hrows : row_008_producer.Applies fam_118_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam118 hsource hrows

theorem fam_118_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_096_producer.Applies fam_118_key r mask)
    (hrows : row_008_producer.Applies fam_118_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_118_producerFactsImplyClassifier hsource hrows)

theorem fam_119_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_094_producer.Applies fam_119_key r mask)
    (hrows : row_010_producer.Applies fam_119_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam119 hsource hrows

theorem fam_119_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_094_producer.Applies fam_119_key r mask)
    (hrows : row_010_producer.Applies fam_119_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_119_producerFactsImplyClassifier hsource hrows)

theorem fam_120_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_114_producer.Applies fam_120_key r mask)
    (hrows : row_010_producer.Applies fam_120_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam120 hsource hrows

theorem fam_120_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_114_producer.Applies fam_120_key r mask)
    (hrows : row_010_producer.Applies fam_120_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_120_producerFactsImplyClassifier hsource hrows)

theorem fam_121_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_104_producer.Applies fam_121_key r mask)
    (hrows : row_010_producer.Applies fam_121_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam121 hsource hrows

theorem fam_121_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_104_producer.Applies fam_121_key r mask)
    (hrows : row_010_producer.Applies fam_121_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_121_producerFactsImplyClassifier hsource hrows)

theorem fam_122_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_102_producer.Applies fam_122_key r mask)
    (hrows : row_007_producer.Applies fam_122_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam122 hsource hrows

theorem fam_122_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_102_producer.Applies fam_122_key r mask)
    (hrows : row_007_producer.Applies fam_122_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_122_producerFactsImplyClassifier hsource hrows)

theorem fam_123_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_100_producer.Applies fam_123_key r mask)
    (hrows : row_010_producer.Applies fam_123_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam123 hsource hrows

theorem fam_123_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_100_producer.Applies fam_123_key r mask)
    (hrows : row_010_producer.Applies fam_123_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_123_producerFactsImplyClassifier hsource hrows)

theorem fam_124_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_110_producer.Applies fam_124_key r mask)
    (hrows : row_010_producer.Applies fam_124_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam124 hsource hrows

theorem fam_124_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_110_producer.Applies fam_124_key r mask)
    (hrows : row_010_producer.Applies fam_124_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_124_producerFactsImplyClassifier hsource hrows)

theorem fam_125_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_122_producer.Applies fam_125_key r mask)
    (hrows : row_008_producer.Applies fam_125_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam125 hsource hrows

theorem fam_125_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_122_producer.Applies fam_125_key r mask)
    (hrows : row_008_producer.Applies fam_125_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_125_producerFactsImplyClassifier hsource hrows)

theorem fam_126_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_103_producer.Applies fam_126_key r mask)
    (hrows : row_001_producer.Applies fam_126_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam126 hsource hrows

theorem fam_126_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_103_producer.Applies fam_126_key r mask)
    (hrows : row_001_producer.Applies fam_126_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_126_producerFactsImplyClassifier hsource hrows)

theorem fam_127_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_118_producer.Applies fam_127_key r mask)
    (hrows : row_001_producer.Applies fam_127_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam127 hsource hrows

theorem fam_127_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_118_producer.Applies fam_127_key r mask)
    (hrows : row_001_producer.Applies fam_127_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_127_producerFactsImplyClassifier hsource hrows)

theorem fam_128_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_098_producer.Applies fam_128_key r mask)
    (hrows : row_001_producer.Applies fam_128_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam128 hsource hrows

theorem fam_128_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_098_producer.Applies fam_128_key r mask)
    (hrows : row_001_producer.Applies fam_128_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_128_producerFactsImplyClassifier hsource hrows)

theorem fam_129_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_132_producer.Applies fam_129_key r mask)
    (hrows : row_001_producer.Applies fam_129_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam129 hsource hrows

theorem fam_129_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_132_producer.Applies fam_129_key r mask)
    (hrows : row_001_producer.Applies fam_129_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_129_producerFactsImplyClassifier hsource hrows)

theorem fam_130_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_106_producer.Applies fam_130_key r mask)
    (hrows : row_001_producer.Applies fam_130_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam130 hsource hrows

theorem fam_130_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_106_producer.Applies fam_130_key r mask)
    (hrows : row_001_producer.Applies fam_130_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_130_producerFactsImplyClassifier hsource hrows)

theorem fam_131_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_109_producer.Applies fam_131_key r mask)
    (hrows : row_002_producer.Applies fam_131_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam131 hsource hrows

theorem fam_131_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_109_producer.Applies fam_131_key r mask)
    (hrows : row_002_producer.Applies fam_131_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_131_producerFactsImplyClassifier hsource hrows)

theorem fam_132_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_112_producer.Applies fam_132_key r mask)
    (hrows : row_002_producer.Applies fam_132_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam132 hsource hrows

theorem fam_132_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_112_producer.Applies fam_132_key r mask)
    (hrows : row_002_producer.Applies fam_132_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_132_producerFactsImplyClassifier hsource hrows)

theorem fam_133_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_111_producer.Applies fam_133_key r mask)
    (hrows : row_002_producer.Applies fam_133_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam133 hsource hrows

theorem fam_133_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_111_producer.Applies fam_133_key r mask)
    (hrows : row_002_producer.Applies fam_133_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_133_producerFactsImplyClassifier hsource hrows)

theorem fam_134_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_129_producer.Applies fam_134_key r mask)
    (hrows : row_002_producer.Applies fam_134_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam134 hsource hrows

theorem fam_134_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_129_producer.Applies fam_134_key r mask)
    (hrows : row_002_producer.Applies fam_134_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_134_producerFactsImplyClassifier hsource hrows)

theorem fam_135_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_124_producer.Applies fam_135_key r mask)
    (hrows : row_002_producer.Applies fam_135_key r mask) :
    SourcePositionProducerGlueApplies r mask :=
  SourcePositionProducerGlueApplies.fam135 hsource hrows

theorem fam_135_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_124_producer.Applies fam_135_key r mask)
    (hrows : row_002_producer.Applies fam_135_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  sourcePositionProducerGlueKillsOn r hlt mask
    (fam_135_producerFactsImplyClassifier hsource hrows)

theorem sourcePositionProducerGlueSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueSmoke
