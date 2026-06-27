import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Shared pair-sign source producers.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AL.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option linter.unusedVariables false

/-- Source producer `7da0a70eeb26127085fa7422a04501b6f62db3389e10d3b3b8d218f38b141147`.
Observed bounded GoodDirection cases: 906. -/
def source_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_000_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 23 /\
      key.secondIndex = 0 /\
      key.support = source_000_support /\
      SourceIndexStateSourcePredicate
        23 0 source_000_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `8b3a3995294856088c7f47aef5c3bd8844c0ac044e09739dc93fc242d0a9ef41`.
Observed bounded GoodDirection cases: 497. -/
def source_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_001_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 52 /\
      key.secondIndex = 0 /\
      key.support = source_001_support /\
      SourceIndexStateSourcePredicate
        52 0 source_001_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `604b8ddbcb59507e14ec5d237ea5d79914e634db3c8960106673adc48dc114a0`.
Observed bounded GoodDirection cases: 390. -/
def source_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_002_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 24 /\
      key.secondIndex = 1 /\
      key.support = source_002_support /\
      SourceIndexStateSourcePredicate
        24 1 source_002_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4a0c5e158e345c0d7e7993b928b615657e77494bc31d65cbd2a47305f273afb1`.
Observed bounded GoodDirection cases: 278. -/
def source_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_003_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 0 /\
      key.support = source_003_support /\
      SourceIndexStateSourcePredicate
        83 0 source_003_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `80b1986cf3f00fdf9c127257de2eab91722dc2e21558505080f614b53fe4b1e3`.
Observed bounded GoodDirection cases: 226. -/
def source_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_004_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 7 /\
      key.support = source_004_support /\
      SourceIndexStateSourcePredicate
        0 7 source_004_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `406a25da4affd7d9f18fec47dcabb1626af3588a7834933d2976a1049ca94071`.
Observed bounded GoodDirection cases: 222. -/
def source_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_005_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 25 /\
      key.secondIndex = 2 /\
      key.support = source_005_support /\
      SourceIndexStateSourcePredicate
        25 2 source_005_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b1984127e635f9866c065edc87a5945b45d8d13d8e9795119e832266819c19d6`.
Observed bounded GoodDirection cases: 185. -/
def source_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_006_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 51 /\
      key.secondIndex = 1 /\
      key.support = source_006_support /\
      SourceIndexStateSourcePredicate
        51 1 source_006_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6659cf4a94e395d4bbacbad166231897f3d44abe9209d543d588346f5f00275c`.
Observed bounded GoodDirection cases: 156. -/
def source_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_007_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 1 /\
      key.support = source_007_support /\
      SourceIndexStateSourcePredicate
        83 1 source_007_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `caaabb1d2609b42cd99606f249651ae70078c1479a5c8bfd1159d868c1286ebc`.
Observed bounded GoodDirection cases: 114. -/
def source_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_008_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 11 /\
      key.support = source_008_support /\
      SourceIndexStateSourcePredicate
        0 11 source_008_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `1af4ad5c5a8f2bc9bcb59dd0f6eb1159ddf9a7cf586f392ce0a487e53b070127`.
Observed bounded GoodDirection cases: 109. -/
def source_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_009_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 50 /\
      key.secondIndex = 2 /\
      key.support = source_009_support /\
      SourceIndexStateSourcePredicate
        50 2 source_009_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `aa145e748362515bb1f5f25abe8e27d2c8fb7da216db879387ea5df98e557f76`.
Observed bounded GoodDirection cases: 108. -/
def source_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_010_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 15 /\
      key.support = source_010_support /\
      SourceIndexStateSourcePredicate
        0 15 source_010_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3c06e402bff7a3920e0c13a9febbceede49ed758336b959adb510e05e728efe4`.
Observed bounded GoodDirection cases: 92. -/
def source_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_011_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 10 /\
      key.support = source_011_support /\
      SourceIndexStateSourcePredicate
        0 10 source_011_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3fcd2221292f554295322121d811b40eeb21367cfc50ced8f31a6ab53a3e7673`.
Observed bounded GoodDirection cases: 92. -/
def source_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_012_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 13 /\
      key.support = source_012_support /\
      SourceIndexStateSourcePredicate
        0 13 source_012_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `506c0900cc34b9aa4c3383cb70825b16f40bee1df73637f7a807dff6f374aec1`.
Observed bounded GoodDirection cases: 83. -/
def source_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_013_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 70 /\
      key.secondIndex = 2 /\
      key.support = source_013_support /\
      SourceIndexStateSourcePredicate
        70 2 source_013_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `fb4710b24e527e12a705f595b8d1e2f741cba7340de80527dfbad4335015792f`.
Observed bounded GoodDirection cases: 74. -/
def source_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_014_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 14 /\
      key.support = source_014_support /\
      SourceIndexStateSourcePredicate
        0 14 source_014_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3b4ae49a0ee817a62a3d8f5d6d0e3a76b1f5753db5cd8b3f9fd34564dfa3208a`.
Observed bounded GoodDirection cases: 72. -/
def source_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_015_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 0 /\
      key.support = source_015_support /\
      SourceIndexStateSourcePredicate
        96 0 source_015_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `25874e96d5c17ac0b13ff49508c565c59aa6360accedd314aa7c19cae918b9fd`.
Observed bounded GoodDirection cases: 70. -/
def source_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_016_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 12 /\
      key.support = source_016_support /\
      SourceIndexStateSourcePredicate
        0 12 source_016_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `19c25d8d5cad596fb3ebbfe7e09156d0f5f62a610254ca96d9f0810584bdb693`.
Observed bounded GoodDirection cases: 69. -/
def source_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_017_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 10 /\
      key.support = source_017_support /\
      SourceIndexStateSourcePredicate
        1 10 source_017_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `157d9052bf07c9f7d9b8810ff9124b6ae2373e39b3587da2c6596db3be06ea4f`.
Observed bounded GoodDirection cases: 65. -/
def source_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_018_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 15 /\
      key.support = source_018_support /\
      SourceIndexStateSourcePredicate
        1 15 source_018_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b07212747cab5800d99f8f10c72ae18b5114a0a77a566e2429a2f0f1d9c07bf6`.
Observed bounded GoodDirection cases: 62. -/
def source_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_019_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 26 /\
      key.secondIndex = 3 /\
      key.support = source_019_support /\
      SourceIndexStateSourcePredicate
        26 3 source_019_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ef6db69fe0ceda566b30598423e47dcbdb896d8a2a7f959d42ef03b384b36f4c`.
Observed bounded GoodDirection cases: 61. -/
def source_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_020_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 0 /\
      key.support = source_020_support /\
      SourceIndexStateSourcePredicate
        109 0 source_020_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7139c41ee110af735bc230d04cab530a729c4a50730c2386433eb64489bde03a`.
Observed bounded GoodDirection cases: 57. -/
def source_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_021_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 0 /\
      key.support = source_021_support /\
      SourceIndexStateSourcePredicate
        162 0 source_021_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `caed8a1ff4529c4599cc65f8ac8fad52a8c1d04957d23a6a15ae5697b9a8c6ec`.
Observed bounded GoodDirection cases: 55. -/
def source_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_022_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 0 /\
      key.support = source_022_support /\
      SourceIndexStateSourcePredicate
        148 0 source_022_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ebeb430001384dbc677f155ad8891e64682109144f74cd9b44aa0fe6dd059d94`.
Observed bounded GoodDirection cases: 55. -/
def source_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_023_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 0 /\
      key.support = source_023_support /\
      SourceIndexStateSourcePredicate
        161 0 source_023_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `266777c70f35ad6d3ef78520a0e09a50e0bacae7029cf430d03d34844c1f0171`.
Observed bounded GoodDirection cases: 54. -/
def source_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_024_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 183 /\
      key.secondIndex = 0 /\
      key.support = source_024_support /\
      SourceIndexStateSourcePredicate
        183 0 source_024_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `607a37bb83cc9151a8eab08524891be9c074c2251738d1c2b916cfc0102d510f`.
Observed bounded GoodDirection cases: 48. -/
def source_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_025_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 10 /\
      key.support = source_025_support /\
      SourceIndexStateSourcePredicate
        2 10 source_025_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ac3c7747201b2e14616607bd43d09d5baedd0724eb8851674552d2c0ec340650`.
Observed bounded GoodDirection cases: 48. -/
def source_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_026_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 0 /\
      key.support = source_026_support /\
      SourceIndexStateSourcePredicate
        122 0 source_026_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `900c14b8e6f48d464dc8a824d993889afdade320b8ebb778ffc8d1440584ad1f`.
Observed bounded GoodDirection cases: 47. -/
def source_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_027_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 14 /\
      key.support = source_027_support /\
      SourceIndexStateSourcePredicate
        1 14 source_027_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7b7587516409f2addbfcb846f946a091b8bd0415bc5ebc8ea57f62f23728878f`.
Observed bounded GoodDirection cases: 46. -/
def source_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_028_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 13 /\
      key.support = source_028_support /\
      SourceIndexStateSourcePredicate
        1 13 source_028_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `81dc1c7aebd7326c3a98610a4135411af7a59e1fcbb3f871b18b353fe9852047`.
Observed bounded GoodDirection cases: 46. -/
def source_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def source_029_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 16 /\
      key.support = source_029_support /\
      SourceIndexStateSourcePredicate
        0 16 source_029_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `1cdefcf5c3f24bb7c82a2c012b4f5e23d4e7044298ddd26ae133718ae6f03c7a`.
Observed bounded GoodDirection cases: 45. -/
def source_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_030_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 12 /\
      key.support = source_030_support /\
      SourceIndexStateSourcePredicate
        1 12 source_030_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7bbf32dd808fc8e4d7c24a9cd2c36f96c1669e9fcd51a744171f3b144b40ddfe`.
Observed bounded GoodDirection cases: 44. -/
def source_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_031_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 15 /\
      key.support = source_031_support /\
      SourceIndexStateSourcePredicate
        2 15 source_031_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `55a888de18f4c38f5d23d8f6e64cffcc4c08ef301aaa0936c0e30268ed680d0e`.
Observed bounded GoodDirection cases: 43. -/
def source_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_032_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 0 /\
      key.support = source_032_support /\
      SourceIndexStateSourcePredicate
        136 0 source_032_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b84f66bec6e900b90371c30f5aa97737ddbfbb8a8b707e8057f22ebced44f61c`.
Observed bounded GoodDirection cases: 43. -/
def source_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_033_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 1 /\
      key.support = source_033_support /\
      SourceIndexStateSourcePredicate
        109 1 source_033_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `cc7beab48b13ee69e9029ca4d87bc27ba9f5e49411f31394e8717aaef644455d`.
Observed bounded GoodDirection cases: 43. -/
def source_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_034_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 1 /\
      key.support = source_034_support /\
      SourceIndexStateSourcePredicate
        162 1 source_034_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `92f113fab332ff077a09bcc53f5e440ce51aec9418249ac3835e9a4ca0dbcda8`.
Observed bounded GoodDirection cases: 42. -/
def source_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_035_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 0 /\
      key.support = source_035_support /\
      SourceIndexStateSourcePredicate
        84 0 source_035_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a432b73d619f05c44e43bd6b3f829778da82147262486b03611c9fc6ed0c92a9`.
Observed bounded GoodDirection cases: 41. -/
def source_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_036_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 7 /\
      key.support = source_036_support /\
      SourceIndexStateSourcePredicate
        1 7 source_036_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `89b594d4793d832a8f55f709e7fdc70f5da4e1cbaa417b6e5a9ffa81cf2f03fd`.
Observed bounded GoodDirection cases: 38. -/
def source_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_037_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 1 /\
      key.support = source_037_support /\
      SourceIndexStateSourcePredicate
        96 1 source_037_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b18d1f1dee3e979f902d772245dfcc0bad1f23c3af0d5525b62d9b7b9528b47b`.
Observed bounded GoodDirection cases: 36. -/
def source_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_038_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 7 /\
      key.support = source_038_support /\
      SourceIndexStateSourcePredicate
        2 7 source_038_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `412d930f1e53b8b886b50a50acf9076484b79a3db3df62a6158fdf70a9a55ec0`.
Observed bounded GoodDirection cases: 32. -/
def source_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_039_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 12 /\
      key.support = source_039_support /\
      SourceIndexStateSourcePredicate
        2 12 source_039_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `296e84ddb5ac7f9da1e0145df9561303b090f850ba0c5a9e65a08d6381fab3f1`.
Observed bounded GoodDirection cases: 31. -/
def source_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_040_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 11 /\
      key.support = source_040_support /\
      SourceIndexStateSourcePredicate
        1 11 source_040_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `8f3ab978cf31e8d646964dff7216ffcd06554448794092a50756be7c6f96583b`.
Observed bounded GoodDirection cases: 31. -/
def source_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_041_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 0 /\
      key.support = source_041_support /\
      SourceIndexStateSourcePredicate
        135 0 source_041_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `20cf6dccf38ba19b42607479582a95f18c74470d2604dae1e40ae5c038900b23`.
Observed bounded GoodDirection cases: 30. -/
def source_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_042_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 0 /\
      key.support = source_042_support /\
      SourceIndexStateSourcePredicate
        110 0 source_042_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `45c3e859e03cf68169e6f32c7d21bf7c4fd64a467c100145a7a0248cb4d2167b`.
Observed bounded GoodDirection cases: 30. -/
def source_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_043_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 0 /\
      key.support = source_043_support /\
      SourceIndexStateSourcePredicate
        175 0 source_043_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4668f52358de0c70bea9517053e631311b0d5dc4d33cbbc5b0a3abfdeefe73cc`.
Observed bounded GoodDirection cases: 30. -/
def source_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_044_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 1 /\
      key.support = source_044_support /\
      SourceIndexStateSourcePredicate
        84 1 source_044_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `0eb913a46c4d8d1b95ee796ece3054212278c129c6deb9e657035bd63127c296`.
Observed bounded GoodDirection cases: 29. -/
def source_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_045_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 2 /\
      key.support = source_045_support /\
      SourceIndexStateSourcePredicate
        84 2 source_045_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `430703853483dbd8b98be8e95e1399aa30dfbd61e2cc9b0d763e3590c516be07`.
Observed bounded GoodDirection cases: 28. -/
def source_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_046_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 1 /\
      key.support = source_046_support /\
      SourceIndexStateSourcePredicate
        161 1 source_046_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5ae274bcdccf59adc04b43720e6c5e0cc94efdc9d90b8b6f735252b7f8700ff2`.
Observed bounded GoodDirection cases: 28. -/
def source_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_047_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 13 /\
      key.support = source_047_support /\
      SourceIndexStateSourcePredicate
        2 13 source_047_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `52fb184559e7dbf5e0bc4dfa7217285fb77fdacb2afaeb5f3ccf6ba99cef9139`.
Observed bounded GoodDirection cases: 27. -/
def source_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_048_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 14 /\
      key.support = source_048_support /\
      SourceIndexStateSourcePredicate
        2 14 source_048_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3e2d58f307fd492a954f3bd5186190fd3b252fdad6e49f5683b5eccda63252ca`.
Observed bounded GoodDirection cases: 25. -/
def source_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_049_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 174 /\
      key.secondIndex = 0 /\
      key.support = source_049_support /\
      SourceIndexStateSourcePredicate
        174 0 source_049_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `791b4eeee4a798f89e68774844daa9e21c7cefb14170ceea7ad5a67007c69344`.
Observed bounded GoodDirection cases: 25. -/
def source_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_050_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 76 /\
      key.secondIndex = 1 /\
      key.support = source_050_support /\
      SourceIndexStateSourcePredicate
        76 1 source_050_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `dfb0ecbfd101bdd540ddf084f72f71a1dca4833da3130285ede2e0c8ea2f5f15`.
Observed bounded GoodDirection cases: 25. -/
def source_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_051_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 1 /\
      key.support = source_051_support /\
      SourceIndexStateSourcePredicate
        175 1 source_051_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b05c8732663906292617f1ec3bf454d87f3a8c695f84a21ab6e8d934b109f4e9`.
Observed bounded GoodDirection cases: 24. -/
def source_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def source_052_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 44 /\
      key.secondIndex = 5 /\
      key.support = source_052_support /\
      SourceIndexStateSourcePredicate
        44 5 source_052_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `0109e1111871de920ac77ab256021be97d28c210a88b22735631824da73af4e3`.
Observed bounded GoodDirection cases: 23. -/
def source_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_053_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 2 /\
      key.support = source_053_support /\
      SourceIndexStateSourcePredicate
        83 2 source_053_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `30fca16c2c09502e2ef1769568eab1750bda44ac5d71222fa2851d7861e5179f`.
Observed bounded GoodDirection cases: 23. -/
def source_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_054_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 49 /\
      key.secondIndex = 3 /\
      key.support = source_054_support /\
      SourceIndexStateSourcePredicate
        49 3 source_054_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4d3acd675c9fc3ac1512bb74ef8424a552b4dcd48fdda6e8499bcf4e57c6093d`.
Observed bounded GoodDirection cases: 22. -/
def source_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_055_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 1 /\
      key.support = source_055_support /\
      SourceIndexStateSourcePredicate
        136 1 source_055_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a7a32d5300aea41786bba7b64861e6b8838f94185caad3da68228d3bf09c03b1`.
Observed bounded GoodDirection cases: 22. -/
def source_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_056_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 18 /\
      key.secondIndex = 1 /\
      key.support = source_056_support /\
      SourceIndexStateSourcePredicate
        18 1 source_056_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ce9f8c568b2acb5f01957e36627829ce3c9cfb9fbf6deadbbd4ace29d61f6448`.
Observed bounded GoodDirection cases: 22. -/
def source_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_057_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 174 /\
      key.secondIndex = 1 /\
      key.support = source_057_support /\
      SourceIndexStateSourcePredicate
        174 1 source_057_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6ddc0b2a101b9193aed0b964063c6e5b2b18826fb5e1aa1f8d7985f5e407a586`.
Observed bounded GoodDirection cases: 21. -/
def source_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_058_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 6 /\
      key.support = source_058_support /\
      SourceIndexStateSourcePredicate
        0 6 source_058_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a4ae583894001bae87ac9806efb93472e73c967ea735f9e6470a3e0dbbcefde3`.
Observed bounded GoodDirection cases: 20. -/
def source_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def source_059_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 16 /\
      key.support = source_059_support /\
      SourceIndexStateSourcePredicate
        1 16 source_059_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c822d05b438293ce763c175a18c90e34b5c4edc6f88fdc697cd6afb9296b6b6c`.
Observed bounded GoodDirection cases: 20. -/
def source_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_060_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 11 /\
      key.support = source_060_support /\
      SourceIndexStateSourcePredicate
        2 11 source_060_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b1cfd1a100ea953e65bd579b2b53df83331aa03651b8b8b658da43e4c979453b`.
Observed bounded GoodDirection cases: 19. -/
def source_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_061_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 11 /\
      key.support = source_061_support /\
      SourceIndexStateSourcePredicate
        3 11 source_061_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6ec2cc92527d6d9ae1894ab228a9e4a58e8fa015ca0a9c95015fe0554bdcd18d`.
Observed bounded GoodDirection cases: 18. -/
def source_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_062_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 1 /\
      key.support = source_062_support /\
      SourceIndexStateSourcePredicate
        122 1 source_062_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b2a3a80c9f5d5173f289dc32b3d2f512032c2de5907e881bc96aecf2285cd2fd`.
Observed bounded GoodDirection cases: 17. -/
def source_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_063_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 1 /\
      key.support = source_063_support /\
      SourceIndexStateSourcePredicate
        135 1 source_063_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4048c6cdd90cdfc6908b4a1d9312773d5bdcbe825e0c2e0199744dddd320f157`.
Observed bounded GoodDirection cases: 16. -/
def source_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_064_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 2 /\
      key.support = source_064_support /\
      SourceIndexStateSourcePredicate
        136 2 source_064_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e39fa1336fb1e67003bec891819f5f73aefec9e592573bc9cec2f9f73f3ec9dc`.
Observed bounded GoodDirection cases: 16. -/
def source_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_065_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 10 /\
      key.support = source_065_support /\
      SourceIndexStateSourcePredicate
        3 10 source_065_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `01c200caf6319ce9d903868c638f3658171095b56526c72829ee3975952712bc`.
Observed bounded GoodDirection cases: 15. -/
def source_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_066_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 0 /\
      key.support = source_066_support /\
      SourceIndexStateSourcePredicate
        149 0 source_066_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `1ed00c632cb83fe66fc58e8eb9f515ee363ae11f0e768154cc9543542e0e1cad`.
Observed bounded GoodDirection cases: 15. -/
def source_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_067_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 95 /\
      key.secondIndex = 0 /\
      key.support = source_067_support /\
      SourceIndexStateSourcePredicate
        95 0 source_067_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e007cc7d5707c39dac5100ab4c4aed34a678e072dcd71708dd9497d52088e8ea`.
Observed bounded GoodDirection cases: 15. -/
def source_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_068_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 5 /\
      key.secondIndex = 8 /\
      key.support = source_068_support /\
      SourceIndexStateSourcePredicate
        5 8 source_068_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `1508810e8251cefe2fd644f9e433e572b1a24845d4e8e34ad42aa4c54ef1b7b5`.
Observed bounded GoodDirection cases: 14. -/
def source_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_069_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 184 /\
      key.secondIndex = 1 /\
      key.support = source_069_support /\
      SourceIndexStateSourcePredicate
        184 1 source_069_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7b69ca62207e8007c1443e19305628382ec2258ff7fe7a06123b78884cf2ebf3`.
Observed bounded GoodDirection cases: 14. -/
def source_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_070_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 2 /\
      key.support = source_070_support /\
      SourceIndexStateSourcePredicate
        162 2 source_070_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f148a09a6f424d2231d7238809529fe1178d3ed5be075e4b5aa2a5821cd23bfe`.
Observed bounded GoodDirection cases: 14. -/
def source_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_071_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 2 /\
      key.support = source_071_support /\
      SourceIndexStateSourcePredicate
        109 2 source_071_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2fa832e68ab18598647264570c799116db72b3154a2da3414f4ee477ef804ad3`.
Observed bounded GoodDirection cases: 13. -/
def source_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_072_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 1 /\
      key.support = source_072_support /\
      SourceIndexStateSourcePredicate
        148 1 source_072_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7069835aeba8f59320947c6f2504cfd677666850107605fb8b5d2ddbb2f6cf09`.
Observed bounded GoodDirection cases: 13. -/
def source_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_073_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 3 /\
      key.support = source_073_support /\
      SourceIndexStateSourcePredicate
        83 3 source_073_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c6abba4e0f45c65831771cefc0279839188afb76820e7a3782641898fe4c6368`.
Observed bounded GoodDirection cases: 13. -/
def source_074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_074_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 103 /\
      key.secondIndex = 0 /\
      key.support = source_074_support /\
      SourceIndexStateSourcePredicate
        103 0 source_074_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f5f1000fd24bc8cecf92024019f98c71f35106f5522d8698d8703efcb69b5413`.
Observed bounded GoodDirection cases: 13. -/
def source_075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_075_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 0 /\
      key.support = source_075_support /\
      SourceIndexStateSourcePredicate
        97 0 source_075_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `1d697b2768e95e8b9c8568d5b69189432a63d193010a095da97b195b80b44bd1`.
Observed bounded GoodDirection cases: 12. -/
def source_076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_076_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 167 /\
      key.secondIndex = 0 /\
      key.support = source_076_support /\
      SourceIndexStateSourcePredicate
        167 0 source_076_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7a927787d027c5d33e783a46f85797607a07aa2cd3f41de8e49165df23dec2e5`.
Observed bounded GoodDirection cases: 12. -/
def source_077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_077_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 1 /\
      key.support = source_077_support /\
      SourceIndexStateSourcePredicate
        149 1 source_077_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `957ddbdae273683bac5f73c10ff7969833af0b1bb8181151b30dd50d36dca408`.
Observed bounded GoodDirection cases: 12. -/
def source_078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_078_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 2 /\
      key.support = source_078_support /\
      SourceIndexStateSourcePredicate
        96 2 source_078_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c27b891891d4f0362acbbb32b58039ccbf55fd49078b3e038380c0fa9ddcf099`.
Observed bounded GoodDirection cases: 12. -/
def source_079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_079_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 105 /\
      key.secondIndex = 0 /\
      key.support = source_079_support /\
      SourceIndexStateSourcePredicate
        105 0 source_079_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f5ce513cf0414aae9af695422ba3b918938dca7c30115d9f5313c34f8e0cf434`.
Observed bounded GoodDirection cases: 12. -/
def source_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_080_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 6 /\
      key.support = source_080_support /\
      SourceIndexStateSourcePredicate
        3 6 source_080_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `9a5af27213404aae93989cc5e515d89bef1185f12232a3b562a262b66a24a66b`.
Observed bounded GoodDirection cases: 11. -/
def source_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_081_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 13 /\
      key.support = source_081_support /\
      SourceIndexStateSourcePredicate
        3 13 source_081_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `22f6110f90d493658ba9202d80b4e4212946c9961b5d3092f3c9f85aaab1fe93`.
Observed bounded GoodDirection cases: 10. -/
def source_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_082_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 147 /\
      key.secondIndex = 0 /\
      key.support = source_082_support /\
      SourceIndexStateSourcePredicate
        147 0 source_082_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4c3295e4f03cb5b856512e501b3a184e72bc298d00922d360f4e7f96b3b5cb05`.
Observed bounded GoodDirection cases: 10. -/
def source_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_083_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 3 /\
      key.support = source_083_support /\
      SourceIndexStateSourcePredicate
        84 3 source_083_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `91fb3b55cd371101adcb7e41072a525a4ec5336335dfba118dff7ce4f5c37a18`.
Observed bounded GoodDirection cases: 10. -/
def source_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_084_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 123 /\
      key.secondIndex = 0 /\
      key.support = source_084_support /\
      SourceIndexStateSourcePredicate
        123 0 source_084_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `da12e353ea23ed00f9c7704e333b04ffe57255a2a604b1778975dd6d929e4d4d`.
Observed bounded GoodDirection cases: 10. -/
def source_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_085_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 2 /\
      key.support = source_085_support /\
      SourceIndexStateSourcePredicate
        110 2 source_085_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f2af8a183bdb1ce0ddc3bc0cf074369e1fa39d9fe79120afdc51c4ab8334bca0`.
Observed bounded GoodDirection cases: 10. -/
def source_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_086_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 128 /\
      key.secondIndex = 3 /\
      key.support = source_086_support /\
      SourceIndexStateSourcePredicate
        128 3 source_086_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d41e5cee657c9603412af272cbaa8bf438733bbde01ec33e088a67b428790aa6`.
Observed bounded GoodDirection cases: 9. -/
def source_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_087_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 70 /\
      key.secondIndex = 1 /\
      key.support = source_087_support /\
      SourceIndexStateSourcePredicate
        70 1 source_087_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2c06edfcc0730e881509b76f90ddc709ec9b9141c1decf551c983e41022fb391`.
Observed bounded GoodDirection cases: 8. -/
def source_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_088_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 121 /\
      key.secondIndex = 0 /\
      key.support = source_088_support /\
      SourceIndexStateSourcePredicate
        121 0 source_088_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4ba15bbb14045e8ca4da8f9c6aebe5fb8eba4015d276109414cf7fe2e9ecec80`.
Observed bounded GoodDirection cases: 8. -/
def source_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_089_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 1 /\
      key.support = source_089_support /\
      SourceIndexStateSourcePredicate
        97 1 source_089_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `576e1c5f3fee8120fc2f4c7c4d1f9d784c5b78e8d5253f18a7f49d1783b4e400`.
Observed bounded GoodDirection cases: 8. -/
def source_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_090_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 95 /\
      key.secondIndex = 2 /\
      key.support = source_090_support /\
      SourceIndexStateSourcePredicate
        95 2 source_090_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `82882d01effd03e71c78d134696634043e7fed4dfc4d94314dad745f334e3e60`.
Observed bounded GoodDirection cases: 8. -/
def source_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_091_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 107 /\
      key.secondIndex = 0 /\
      key.support = source_091_support /\
      SourceIndexStateSourcePredicate
        107 0 source_091_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `85c63ad75b4dcae07150a72b98d868660a0829fd0024b3a6ae8acbb65788c044`.
Observed bounded GoodDirection cases: 8. -/
def source_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_092_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 168 /\
      key.secondIndex = 1 /\
      key.support = source_092_support /\
      SourceIndexStateSourcePredicate
        168 1 source_092_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a33c12c03a411562b7344ae2ac73f3341c851994b2068e47adf27d2ecd771f9e`.
Observed bounded GoodDirection cases: 8. -/
def source_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_093_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 2 /\
      key.support = source_093_support /\
      SourceIndexStateSourcePredicate
        135 2 source_093_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `df6629c767963de633efa763753155ef4787ffa506b6948de7064feae111f0e7`.
Observed bounded GoodDirection cases: 8. -/
def source_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_094_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 15 /\
      key.support = source_094_support /\
      SourceIndexStateSourcePredicate
        3 15 source_094_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5a6291667f05d1c1fd358762fac9b3f38cc26f855b8d0d0aa6082245382c5d5f`.
Observed bounded GoodDirection cases: 7. -/
def source_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_095_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 92 /\
      key.secondIndex = 2 /\
      key.support = source_095_support /\
      SourceIndexStateSourcePredicate
        92 2 source_095_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `8003656c4f93c2bf284524f13125a5356394196a9110257757bca7c1606e6ded`.
Observed bounded GoodDirection cases: 7. -/
def source_096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_096_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 2 /\
      key.support = source_096_support /\
      SourceIndexStateSourcePredicate
        122 2 source_096_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ca9644595fe4dce968b0c84455c13c4730002d1db173c62bdaba10c96f3e5342`.
Observed bounded GoodDirection cases: 7. -/
def source_097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_097_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 2 /\
      key.support = source_097_support /\
      SourceIndexStateSourcePredicate
        148 2 source_097_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d25ecdc8196d879effc10eb3c004a55338671165328bec4a06e84a5ef0f16e0c`.
Observed bounded GoodDirection cases: 7. -/
def source_098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_098_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 12 /\
      key.support = source_098_support /\
      SourceIndexStateSourcePredicate
        3 12 source_098_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d30e4e9026cae04b1457e436dd0729831075dc2213823e169f2b03c6589cc596`.
Observed bounded GoodDirection cases: 7. -/
def source_099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_099_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 39 /\
      key.secondIndex = 8 /\
      key.support = source_099_support /\
      SourceIndexStateSourcePredicate
        39 8 source_099_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e613296a74559a537c126e625c912201585e26f701ccc105a036871756ecd84e`.
Observed bounded GoodDirection cases: 7. -/
def source_100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_100_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 2 /\
      key.support = source_100_support /\
      SourceIndexStateSourcePredicate
        149 2 source_100_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e68ce8f0b0b746095166ee7b0deee8f5a4033a2fc9c88db7c201b321f90f1af0`.
Observed bounded GoodDirection cases: 7. -/
def source_101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def source_101_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 70 /\
      key.secondIndex = 4 /\
      key.support = source_101_support /\
      SourceIndexStateSourcePredicate
        70 4 source_101_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `03f5847d0ea6aba4c940c2c4579c3f5b424c6cfda822dc55b062b19e69bf3a9f`.
Observed bounded GoodDirection cases: 6. -/
def source_102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_102_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 29 /\
      key.secondIndex = 2 /\
      key.support = source_102_support /\
      SourceIndexStateSourcePredicate
        29 2 source_102_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `1087ed3f675d105b299f7faae6d5149fbd930b779901829f3808faa4fa6ca41a`.
Observed bounded GoodDirection cases: 6. -/
def source_103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_103_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 115 /\
      key.secondIndex = 0 /\
      key.support = source_103_support /\
      SourceIndexStateSourcePredicate
        115 0 source_103_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ee0bc142f85459a111a06e92cb3324f0ad75f1dcd85189cc7a181026bbc2569d`.
Observed bounded GoodDirection cases: 6. -/
def source_104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_104_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 1 /\
      key.support = source_104_support /\
      SourceIndexStateSourcePredicate
        110 1 source_104_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4b2082a08b69a12ab588a7c5e22a0c8a3c2ce9b7364cb0daeb37f336b138c82a`.
Observed bounded GoodDirection cases: 5. -/
def source_105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_105_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 141 /\
      key.secondIndex = 0 /\
      key.support = source_105_support /\
      SourceIndexStateSourcePredicate
        141 0 source_105_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `9c57b47e9a127dda3b6f00f44d91a878885434dbc620ee4320ad2c973920eda3`.
Observed bounded GoodDirection cases: 5. -/
def source_106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_106_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 3 /\
      key.support = source_106_support /\
      SourceIndexStateSourcePredicate
        136 3 source_106_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a853d97ed75105608d0d92291d02cb70fa8a6331030df4dabe1b5a475eca042c`.
Observed bounded GoodDirection cases: 5. -/
def source_107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_107_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 19 /\
      key.secondIndex = 1 /\
      key.support = source_107_support /\
      SourceIndexStateSourcePredicate
        19 1 source_107_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a94a3c24d730f99e791af8ab0126f1c83f360dccbf57e313077c6571a314ad21`.
Observed bounded GoodDirection cases: 5. -/
def source_108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_108_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 87 /\
      key.secondIndex = 3 /\
      key.support = source_108_support /\
      SourceIndexStateSourcePredicate
        87 3 source_108_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `afc832b45ee758ab342f6c9e3b6be617b709c7b4ccbef2328af43cab9ef16db8`.
Observed bounded GoodDirection cases: 5. -/
def source_109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_109_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 119 /\
      key.secondIndex = 0 /\
      key.support = source_109_support /\
      SourceIndexStateSourcePredicate
        119 0 source_109_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `dba6d5fbcd9000b57b97f1ae0e00a7cb70517e463f7aa797ad0f7d123fb17826`.
Observed bounded GoodDirection cases: 5. -/
def source_110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def source_110_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 16 /\
      key.support = source_110_support /\
      SourceIndexStateSourcePredicate
        2 16 source_110_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e66b5ad9ee8bc9f491283f9a8eb955eb20483c08b360fff5072ee88e0f1e5a60`.
Observed bounded GoodDirection cases: 5. -/
def source_111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_111_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 14 /\
      key.support = source_111_support /\
      SourceIndexStateSourcePredicate
        3 14 source_111_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `288d92087bf9f147b09358eb28f35e23ac4fe5ddc7b39d1c000b3099010d8647`.
Observed bounded GoodDirection cases: 4. -/
def source_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_112_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 6 /\
      key.support = source_112_support /\
      SourceIndexStateSourcePredicate
        149 6 source_112_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2d1637cf0d068ebbdf9d2762c89f2517eedfad03d985e50030989ac1c85449ed`.
Observed bounded GoodDirection cases: 4. -/
def source_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_113_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 144 /\
      key.secondIndex = 1 /\
      key.support = source_113_support /\
      SourceIndexStateSourcePredicate
        144 1 source_113_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `403a58f58427487176b6d3373f466317cf4bf3d3eb0c9e798eabe4e6093b011b`.
Observed bounded GoodDirection cases: 4. -/
def source_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_114_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 131 /\
      key.secondIndex = 0 /\
      key.support = source_114_support /\
      SourceIndexStateSourcePredicate
        131 0 source_114_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a4949ae41a99dae54b52e22e62d9255bdf259b4fb78fe656b49f8bf0c3c6e3d1`.
Observed bounded GoodDirection cases: 4. -/
def source_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_115_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 3 /\
      key.support = source_115_support /\
      SourceIndexStateSourcePredicate
        175 3 source_115_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `afa86f21e72e864574daf4daf1e51ba5db5239a9b2d9b49f2bc8dea64f3f02a8`.
Observed bounded GoodDirection cases: 4. -/
def source_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_116_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 2 /\
      key.support = source_116_support /\
      SourceIndexStateSourcePredicate
        175 2 source_116_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c5978cd8fab956c63cbb542b3c5851d248e9e0068c7d47b5008630428bc25977`.
Observed bounded GoodDirection cases: 4. -/
def source_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_117_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 92 /\
      key.secondIndex = 3 /\
      key.support = source_117_support /\
      SourceIndexStateSourcePredicate
        92 3 source_117_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `cd2df694951a072f893d4a7e1ddb19d7d834d0530001ebf5e1442b4a5705a183`.
Observed bounded GoodDirection cases: 4. -/
def source_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def source_118_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 101 /\
      key.secondIndex = 4 /\
      key.support = source_118_support /\
      SourceIndexStateSourcePredicate
        101 4 source_118_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d2662d39d7900a563729a4daeece6f46ef8ef07a1cc464ad0ef08fc25bf0684c`.
Observed bounded GoodDirection cases: 4. -/
def source_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def source_119_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 16 /\
      key.secondIndex = 5 /\
      key.support = source_119_support /\
      SourceIndexStateSourcePredicate
        16 5 source_119_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d754266476573990aee606df2dc53152a30af4071e344286490ddaac6f4687a5`.
Observed bounded GoodDirection cases: 4. -/
def source_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_120_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 3 /\
      key.support = source_120_support /\
      SourceIndexStateSourcePredicate
        162 3 source_120_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e325648d35cf63782024580b8c4c315c0e0bc088ac4787d40a43e61e485e9c8f`.
Observed bounded GoodDirection cases: 4. -/
def source_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_121_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 94 /\
      key.secondIndex = 1 /\
      key.support = source_121_support /\
      SourceIndexStateSourcePredicate
        94 1 source_121_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e426d6cd07f4e0a4bafb15d4b319138e50f9c09763efa8a0c9eabb785b7ea562`.
Observed bounded GoodDirection cases: 4. -/
def source_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def source_122_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 63 /\
      key.secondIndex = 5 /\
      key.support = source_122_support /\
      SourceIndexStateSourcePredicate
        63 5 source_122_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ebbd8d38aa32efd28b7c373a7c7d1faf85d9250a66dd110fe2f036b378aed372`.
Observed bounded GoodDirection cases: 4. -/
def source_123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_123_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 5 /\
      key.secondIndex = 13 /\
      key.support = source_123_support /\
      SourceIndexStateSourcePredicate
        5 13 source_123_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `efb38cbfc23a8d420396479bdb26367029a9dfebcfdce6f750ad98a4c5d767b2`.
Observed bounded GoodDirection cases: 4. -/
def source_124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_124_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 123 /\
      key.secondIndex = 1 /\
      key.support = source_124_support /\
      SourceIndexStateSourcePredicate
        123 1 source_124_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `172430622e5639fda9483ca80ae4c91a82e622ee625c189fdc6988d054242e65`.
Observed bounded GoodDirection cases: 3. -/
def source_125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_125_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 130 /\
      key.secondIndex = 0 /\
      key.support = source_125_support /\
      SourceIndexStateSourcePredicate
        130 0 source_125_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `217c36e019ed6f7d0a32c479537f66b1f187ce6954790576e1d0cf8d54033e79`.
Observed bounded GoodDirection cases: 3. -/
def source_126_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_126_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 156 /\
      key.secondIndex = 1 /\
      key.support = source_126_support /\
      SourceIndexStateSourcePredicate
        156 1 source_126_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2eb07f8bbffa74698b5947ab0d79c29e80d960cd663d019bf5880aa5a0b6d597`.
Observed bounded GoodDirection cases: 3. -/
def source_127_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_127_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 107 /\
      key.secondIndex = 2 /\
      key.support = source_127_support /\
      SourceIndexStateSourcePredicate
        107 2 source_127_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3e4732fef5d65bcc5483d2ad1d9b4bf153e0df17891474227d24bfca91f86b9f`.
Observed bounded GoodDirection cases: 3. -/
def source_128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def source_128_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 5 /\
      key.support = source_128_support /\
      SourceIndexStateSourcePredicate
        3 5 source_128_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `68b2b7add25b8038f943e4004d49d6b17b7b5abc89b1b805b1ce13b28e14038b`.
Observed bounded GoodDirection cases: 3. -/
def source_129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_129_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 118 /\
      key.secondIndex = 0 /\
      key.support = source_129_support /\
      SourceIndexStateSourcePredicate
        118 0 source_129_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `76372db79833512eeff14437c8d8b12a94e743a246a891eaa3499cbf0e8ce204`.
Observed bounded GoodDirection cases: 3. -/
def source_130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_130_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 170 /\
      key.secondIndex = 1 /\
      key.support = source_130_support /\
      SourceIndexStateSourcePredicate
        170 1 source_130_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `84a7843e3335905ebbe60bbe0e3350f786df79683ee7b7eeb5c0c4802e569c93`.
Observed bounded GoodDirection cases: 3. -/
def source_131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_131_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 3 /\
      key.support = source_131_support /\
      SourceIndexStateSourcePredicate
        110 3 source_131_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a3893c9add25395d9886c58f871a616d784ea86728718c2cb9f85f2f70e7e9f2`.
Observed bounded GoodDirection cases: 3. -/
def source_132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_132_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 3 /\
      key.support = source_132_support /\
      SourceIndexStateSourcePredicate
        135 3 source_132_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `bb6943e4e70e043a6957a67e55ea4326d9219994b6d89f7eaaabbc8769bfa0f9`.
Observed bounded GoodDirection cases: 3. -/
def source_133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_133_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 106 /\
      key.secondIndex = 1 /\
      key.support = source_133_support /\
      SourceIndexStateSourcePredicate
        106 1 source_133_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c62305ccf305cf6543bd2c4752134fc57c7b06102bc2dbf6629f1398532c4f71`.
Observed bounded GoodDirection cases: 3. -/
def source_134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_134_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 170 /\
      key.secondIndex = 0 /\
      key.support = source_134_support /\
      SourceIndexStateSourcePredicate
        170 0 source_134_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e1215bf443d9d084a31ff80fa03f2288547115352e5c2c5389d87ee5804ef24a`.
Observed bounded GoodDirection cases: 3. -/
def source_135_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_135_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 123 /\
      key.secondIndex = 2 /\
      key.support = source_135_support /\
      SourceIndexStateSourcePredicate
        123 2 source_135_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f3962dda24e98bbf79e10ab47dff9ddb97d5c38ddd887ead212d152cf19b24dd`.
Observed bounded GoodDirection cases: 3. -/
def source_136_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_136_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 142 /\
      key.secondIndex = 1 /\
      key.support = source_136_support /\
      SourceIndexStateSourcePredicate
        142 1 source_136_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f9a7e8ff54279097e10bb74447e6daad337e4d0308c27df148662e42bcc50102`.
Observed bounded GoodDirection cases: 3. -/
def source_137_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_137_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 141 /\
      key.secondIndex = 1 /\
      key.support = source_137_support /\
      SourceIndexStateSourcePredicate
        141 1 source_137_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2370b30f5fab611a8049ebc43b6e1d3435e4f1c105b0abddca2565f7158e3b40`.
Observed bounded GoodDirection cases: 2. -/
def source_138_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_138_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 144 /\
      key.secondIndex = 0 /\
      key.support = source_138_support /\
      SourceIndexStateSourcePredicate
        144 0 source_138_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2b800b862b14b126db7da5de8ecb366b3046899e5bf665d7b4f7caa4263121e3`.
Observed bounded GoodDirection cases: 2. -/
def source_139_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_139_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 15 /\
      key.secondIndex = 9 /\
      key.support = source_139_support /\
      SourceIndexStateSourcePredicate
        15 9 source_139_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3371e2ac828a904f5dcb78b1b0eeb753f9de6a3209aaf636ee45afa501abc866`.
Observed bounded GoodDirection cases: 2. -/
def source_140_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_140_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 167 /\
      key.secondIndex = 1 /\
      key.support = source_140_support /\
      SourceIndexStateSourcePredicate
        167 1 source_140_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3905087ced9678f8f9b1a5cfb721f4e719283462b32c5946f248166875219260`.
Observed bounded GoodDirection cases: 2. -/
def source_141_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_141_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 170 /\
      key.secondIndex = 1 /\
      key.support = source_141_support /\
      SourceIndexStateSourcePredicate
        170 1 source_141_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3ce3259d8e5d56e03729949a3231d9adca4c7b1bb53e21378403357c222fc0c1`.
Observed bounded GoodDirection cases: 2. -/
def source_142_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_142_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 2 /\
      key.support = source_142_support /\
      SourceIndexStateSourcePredicate
        97 2 source_142_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4d6a6bc6905c8ca65fcccae563923fd4e24b36b386207f843ac2530ae0bb95f8`.
Observed bounded GoodDirection cases: 2. -/
def source_143_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_143_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 157 /\
      key.secondIndex = 0 /\
      key.support = source_143_support /\
      SourceIndexStateSourcePredicate
        157 0 source_143_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4de69e9f418418a228be3bad24d66db8274e35219d4100aa6ad36f81482df03e`.
Observed bounded GoodDirection cases: 2. -/
def source_144_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_144_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 2 /\
      key.support = source_144_support /\
      SourceIndexStateSourcePredicate
        161 2 source_144_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4ff7d1cb1c9c0983b8e7079af5b10bad51399b02762973c8c96494042d3522f7`.
Observed bounded GoodDirection cases: 2. -/
def source_145_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_145_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 167 /\
      key.secondIndex = 2 /\
      key.support = source_145_support /\
      SourceIndexStateSourcePredicate
        167 2 source_145_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `53c3c509e781b370b4ecfcde958deb234903a4d307c29cc1a9148f25164f18a1`.
Observed bounded GoodDirection cases: 2. -/
def source_146_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_146_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 3 /\
      key.support = source_146_support /\
      SourceIndexStateSourcePredicate
        149 3 source_146_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `61bd8e5ffcd3632b1383b22e06d7a341d12ab9555f757fee4f1f3506760ac3ba`.
Observed bounded GoodDirection cases: 2. -/
def source_147_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_147_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 3 /\
      key.support = source_147_support /\
      SourceIndexStateSourcePredicate
        97 3 source_147_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `79c18162a2ee6e84181bd85c8fdbd492c838edb3d2417f5a256019180b317093`.
Observed bounded GoodDirection cases: 2. -/
def source_148_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_148_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 12 /\
      key.support = source_148_support /\
      SourceIndexStateSourcePredicate
        4 12 source_148_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7af805eddd224a144c728043d5af9e592a7d2316b03476644ce010f9f3dfa1f2`.
Observed bounded GoodDirection cases: 2. -/
def source_149_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_149_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 166 /\
      key.secondIndex = 10 /\
      key.support = source_149_support /\
      SourceIndexStateSourcePredicate
        166 10 source_149_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7c552bbd573d2df4184302c5b95eca633ac41dfa57def480c51d1a0acbdbee25`.
Observed bounded GoodDirection cases: 2. -/
def source_150_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_150_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 40 /\
      key.secondIndex = 9 /\
      key.support = source_150_support /\
      SourceIndexStateSourcePredicate
        40 9 source_150_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7d359bfa449a860cde4f4b129df89d75868094b6a99e84ab972800f16a8e4d80`.
Observed bounded GoodDirection cases: 2. -/
def source_151_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_151_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 132 /\
      key.secondIndex = 0 /\
      key.support = source_151_support /\
      SourceIndexStateSourcePredicate
        132 0 source_151_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `8d01ffb1214b5db411996120696b80f74da7f9d53f6e96db67f6774dd1eb5ef6`.
Observed bounded GoodDirection cases: 2. -/
def source_152_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_152_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 152 /\
      key.secondIndex = 9 /\
      key.support = source_152_support /\
      SourceIndexStateSourcePredicate
        152 9 source_152_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `931e02d27d2ae682f321421a2f36a7de30d2a55deccfa2da7ec733d2a044865a`.
Observed bounded GoodDirection cases: 2. -/
def source_153_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_153_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 118 /\
      key.secondIndex = 1 /\
      key.support = source_153_support /\
      SourceIndexStateSourcePredicate
        118 1 source_153_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `95855ad18390ed883a31d5a34d6686608eb2c1b8a9dcfa22baed3cd1b19a02e9`.
Observed bounded GoodDirection cases: 2. -/
def source_154_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_154_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 154 /\
      key.secondIndex = 3 /\
      key.support = source_154_support /\
      SourceIndexStateSourcePredicate
        154 3 source_154_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a37f8101dcae03099f78cfc4669c4f609149b66822b47473087e6f3be7fab299`.
Observed bounded GoodDirection cases: 2. -/
def source_155_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_155_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 120 /\
      key.secondIndex = 1 /\
      key.support = source_155_support /\
      SourceIndexStateSourcePredicate
        120 1 source_155_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b4bcbfb28fcb21877300697d2450d0c20cde55f3d31bd52298edbfdb863de2f8`.
Observed bounded GoodDirection cases: 2. -/
def source_156_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def source_156_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 15 /\
      key.secondIndex = 5 /\
      key.support = source_156_support /\
      SourceIndexStateSourcePredicate
        15 5 source_156_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `be57b73d48efebe1d5e1a99b5d11961545d2d2850a72072aa6ce176e7931a72d`.
Observed bounded GoodDirection cases: 2. -/
def source_157_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_157_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 160 /\
      key.secondIndex = 9 /\
      key.support = source_157_support /\
      SourceIndexStateSourcePredicate
        160 9 source_157_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `cfbfcb8269d8f8250a9e0fbad75928493b9a833b4792ce6572377b11f378dfed`.
Observed bounded GoodDirection cases: 2. -/
def source_158_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_158_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 111 /\
      key.secondIndex = 0 /\
      key.support = source_158_support /\
      SourceIndexStateSourcePredicate
        111 0 source_158_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d4427edea936fbc0530521849fc4cd283e474d0b5c2f717f0d439f1fe61ff26c`.
Observed bounded GoodDirection cases: 2. -/
def source_159_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_159_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 129 /\
      key.secondIndex = 2 /\
      key.support = source_159_support /\
      SourceIndexStateSourcePredicate
        129 2 source_159_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d9906a32715c49db183a461e33e7a076c6f5a717e7b32e49f9554bcfdf33f2b5`.
Observed bounded GoodDirection cases: 2. -/
def source_160_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_160_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 105 /\
      key.secondIndex = 1 /\
      key.support = source_160_support /\
      SourceIndexStateSourcePredicate
        105 1 source_160_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `dfe287361bc22ac35e8bd46e60fe58fcbdb6731901aed5081bf46431793a3f0c`.
Observed bounded GoodDirection cases: 2. -/
def source_161_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_161_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 6 /\
      key.support = source_161_support /\
      SourceIndexStateSourcePredicate
        175 6 source_161_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f7e0ae8bf6c31b41ebdd185b6a945916a51df58eb6488096643f50c2bc5c864f`.
Observed bounded GoodDirection cases: 2. -/
def source_162_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_162_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 13 /\
      key.support = source_162_support /\
      SourceIndexStateSourcePredicate
        4 13 source_162_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `fd8087fd5e8a465ecba0f227af56206de438fb9a9c9010c17e50ec1757079960`.
Observed bounded GoodDirection cases: 2. -/
def source_163_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_163_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 99 /\
      key.secondIndex = 7 /\
      key.support = source_163_support /\
      SourceIndexStateSourcePredicate
        99 7 source_163_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ffadcfff2514609ff9f63a4f32141525ad19d1c4763db26479e10c11bc1d8756`.
Observed bounded GoodDirection cases: 2. -/
def source_164_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_164_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 130 /\
      key.secondIndex = 1 /\
      key.support = source_164_support /\
      SourceIndexStateSourcePredicate
        130 1 source_164_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `06f702b9fba61793692ea05292bc21fddc9d73b01e1a69cc3ea1fd94da3a2757`.
Observed bounded GoodDirection cases: 1. -/
def source_165_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_165_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 18 /\
      key.secondIndex = 2 /\
      key.support = source_165_support /\
      SourceIndexStateSourcePredicate
        18 2 source_165_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `078a4143221331a25a3bd84b77a80f01cbe816f0f6c06321a838fa7ba9ff4d91`.
Observed bounded GoodDirection cases: 1. -/
def source_166_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_166_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 100 /\
      key.secondIndex = 9 /\
      key.support = source_166_support /\
      SourceIndexStateSourcePredicate
        100 9 source_166_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `083583658331af406fd39ee8ee1166ef14b20485d1fcb92bf7d37f2ba1bab8dd`.
Observed bounded GoodDirection cases: 1. -/
def source_167_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_167_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 3 /\
      key.support = source_167_support /\
      SourceIndexStateSourcePredicate
        96 3 source_167_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `0cbdf040446a657cf691067225069c0d9b959a15b222004c311445dc3387baee`.
Observed bounded GoodDirection cases: 1. -/
def source_168_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_168_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 182 /\
      key.secondIndex = 9 /\
      key.support = source_168_support /\
      SourceIndexStateSourcePredicate
        182 9 source_168_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `167188b255e3e51d049fbc8da0d957bf98e091a569fd077a6ba12597e12d12a4`.
Observed bounded GoodDirection cases: 1. -/
def source_169_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def source_169_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 14 /\
      key.secondIndex = 5 /\
      key.support = source_169_support /\
      SourceIndexStateSourcePredicate
        14 5 source_169_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `171e5dcb64aee3fe0b299d0ab9f00a5b0037807b07a8ca3b3dac2a1d6b619826`.
Observed bounded GoodDirection cases: 1. -/
def source_170_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_170_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 123 /\
      key.secondIndex = 3 /\
      key.support = source_170_support /\
      SourceIndexStateSourcePredicate
        123 3 source_170_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `1edcb023ddde23db52c39ae28a0a3a90b0204801f2c872f795ac32dd7463ed1d`.
Observed bounded GoodDirection cases: 1. -/
def source_171_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_171_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 16 /\
      key.secondIndex = 10 /\
      key.support = source_171_support /\
      SourceIndexStateSourcePredicate
        16 10 source_171_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `247a0efb54e2bfe0301ab8f436270bd311ce5973f8dd47bebbc28ee388c7cdb9`.
Observed bounded GoodDirection cases: 1. -/
def source_172_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_172_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 14 /\
      key.secondIndex = 7 /\
      key.support = source_172_support /\
      SourceIndexStateSourcePredicate
        14 7 source_172_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `28e94bbc656b4bf785074e42ed51d5448c7350a6c00b18d3d1cfbf567505af31`.
Observed bounded GoodDirection cases: 1. -/
def source_173_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_173_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 150 /\
      key.secondIndex = 9 /\
      key.support = source_173_support /\
      SourceIndexStateSourcePredicate
        150 9 source_173_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2b17018e89c6269e9df0ff9a8274e8fc8adacfe3039b3bf317ba07eecc20c864`.
Observed bounded GoodDirection cases: 1. -/
def source_174_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_174_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 9 /\
      key.support = source_174_support /\
      SourceIndexStateSourcePredicate
        97 9 source_174_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2b6388ede33291ea96602d9c9e2a9fc270db0867cb59444b39bcb314c1c9014f`.
Observed bounded GoodDirection cases: 1. -/
def source_175_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_175_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 38 /\
      key.secondIndex = 9 /\
      key.support = source_175_support /\
      SourceIndexStateSourcePredicate
        38 9 source_175_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `36df3c847772960257057fa920cd6c397925f51fe352ce39d335e3fc633825f3`.
Observed bounded GoodDirection cases: 1. -/
def source_176_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_176_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 82 /\
      key.secondIndex = 1 /\
      key.support = source_176_support /\
      SourceIndexStateSourcePredicate
        82 1 source_176_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `375578dd1ac1c5ee5a6828462c57f22e1a195d988cf3ba7dfd744b937a7de1a2`.
Observed bounded GoodDirection cases: 1. -/
def source_177_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_177_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 3 /\
      key.support = source_177_support /\
      SourceIndexStateSourcePredicate
        148 3 source_177_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3f8a319af6582efebd4f4fca3a674921d63316df6320a6aa26fd04582a6b4c14`.
Observed bounded GoodDirection cases: 1. -/
def source_178_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_178_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 95 /\
      key.secondIndex = 1 /\
      key.support = source_178_support /\
      SourceIndexStateSourcePredicate
        95 1 source_178_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `416cda04f1c39124bd93ada6f71b08b7fd0fff85d6c326fb28fb96586eed98e8`.
Observed bounded GoodDirection cases: 1. -/
def source_179_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_179_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 7 /\
      key.support = source_179_support /\
      SourceIndexStateSourcePredicate
        3 7 source_179_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `42f4a2d767e7862126b081f80a394873f4a2d900b0a44ffb2119afe384e724e3`.
Observed bounded GoodDirection cases: 1. -/
def source_180_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
def source_180_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 70 /\
      key.support = source_180_support /\
      SourceIndexStateSourcePredicate
        97 70 source_180_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5014487eb8c843bc96ada3214f7a6862fc148ed1196c9196f3bb05a07e0ccc49`.
Observed bounded GoodDirection cases: 1. -/
def source_181_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_181_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 154 /\
      key.secondIndex = 6 /\
      key.support = source_181_support /\
      SourceIndexStateSourcePredicate
        154 6 source_181_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `523bb476eef61b7330d4207421c4d134f0935fbbecbca2a580ead434af871777`.
Observed bounded GoodDirection cases: 1. -/
def source_182_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_182_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 113 /\
      key.secondIndex = 8 /\
      key.support = source_182_support /\
      SourceIndexStateSourcePredicate
        113 8 source_182_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5535ce49785e5132c8b6424b15bb91979e02f8238c0c4865498b05e7e6dec6e9`.
Observed bounded GoodDirection cases: 1. -/
def source_183_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_183_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 6 /\
      key.support = source_183_support /\
      SourceIndexStateSourcePredicate
        110 6 source_183_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5cd2b8d249b8440a0fd569c0fd03684b4d78dde764124d44387d52f12bdc90a7`.
Observed bounded GoodDirection cases: 1. -/
def source_184_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_184_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 138 /\
      key.secondIndex = 8 /\
      key.support = source_184_support /\
      SourceIndexStateSourcePredicate
        138 8 source_184_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5cffa1f9d10d457647e00df7b6dda649f10ed5980c09083fb2b3783d019dfe42`.
Observed bounded GoodDirection cases: 1. -/
def source_185_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def source_185_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 165 /\
      key.secondIndex = 4 /\
      key.support = source_185_support /\
      SourceIndexStateSourcePredicate
        165 4 source_185_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5e138057b829d945f590e286ebfc637dcc131b2f60afd24f4d2aadf0ba731042`.
Observed bounded GoodDirection cases: 1. -/
def source_186_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_186_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 165 /\
      key.secondIndex = 8 /\
      key.support = source_186_support /\
      SourceIndexStateSourcePredicate
        165 8 source_186_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `66c62bb80c8b920c2bf4bdba22fa74ee15747f7b1543bde9836f91383a70d540`.
Observed bounded GoodDirection cases: 1. -/
def source_187_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_187_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 144 /\
      key.secondIndex = 1 /\
      key.support = source_187_support /\
      SourceIndexStateSourcePredicate
        144 1 source_187_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `69513940d46cde472b4471017c0bfa61111c9c3ee24ea1373d7766e706437d1d`.
Observed bounded GoodDirection cases: 1. -/
def source_188_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_188_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 11 /\
      key.support = source_188_support /\
      SourceIndexStateSourcePredicate
        4 11 source_188_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `69ae21287168a494ba19b46242f11ab212bfdc14e78b2aee162d27e353bd2703`.
Observed bounded GoodDirection cases: 1. -/
def source_189_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_189_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 154 /\
      key.secondIndex = 6 /\
      key.support = source_189_support /\
      SourceIndexStateSourcePredicate
        154 6 source_189_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6ea38ac48148067a3b98668b48735d359bd3e05ad35cfd6d0b3a68b6ecdfaa91`.
Observed bounded GoodDirection cases: 1. -/
def source_190_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_190_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 151 /\
      key.secondIndex = 8 /\
      key.support = source_190_support /\
      SourceIndexStateSourcePredicate
        151 8 source_190_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6f5fb047b666007a06f1ce9377f21b8da117bad4208df549a69be8296a5b9778`.
Observed bounded GoodDirection cases: 1. -/
def source_191_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_191_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 131 /\
      key.secondIndex = 2 /\
      key.support = source_191_support /\
      SourceIndexStateSourcePredicate
        131 2 source_191_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6fd8f7fa0a3905384c7bfff56f868f6bf2c82b91f7d0d67959358a12eaed7990`.
Observed bounded GoodDirection cases: 1. -/
def source_192_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_192_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 71 /\
      key.secondIndex = 1 /\
      key.support = source_192_support /\
      SourceIndexStateSourcePredicate
        71 1 source_192_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `71bed1c91550624ac161fb5f95be4a0e23db6d7cf0d4771b0f808c232f5d5279`.
Observed bounded GoodDirection cases: 1. -/
def source_193_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_193_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 166 /\
      key.secondIndex = 12 /\
      key.support = source_193_support /\
      SourceIndexStateSourcePredicate
        166 12 source_193_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `79ef97fb6d666e7a87dc049783bccbe5ea137ec584e5d69661d2643c96df42f5`.
Observed bounded GoodDirection cases: 1. -/
def source_194_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_194_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 169 /\
      key.secondIndex = 2 /\
      key.support = source_194_support /\
      SourceIndexStateSourcePredicate
        169 2 source_194_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `82b4c903b618d8f6af6604c611115dc1afabbd41d7fadc71f5af86b33a1296a8`.
Observed bounded GoodDirection cases: 1. -/
def source_195_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_195_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 129 /\
      key.secondIndex = 0 /\
      key.support = source_195_support /\
      SourceIndexStateSourcePredicate
        129 0 source_195_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `82ca02b3269cf86014fb2c57845f17d7ed0112922ae596f337641c4a7abb871f`.
Observed bounded GoodDirection cases: 1. -/
def source_196_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_196_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 126 /\
      key.secondIndex = 9 /\
      key.support = source_196_support /\
      SourceIndexStateSourcePredicate
        126 9 source_196_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `86109a16e6ccaeddc3fec2f8c927f4a8525fc491c31d003987171de3c4be4f44`.
Observed bounded GoodDirection cases: 1. -/
def source_197_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_197_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 133 /\
      key.secondIndex = 0 /\
      key.support = source_197_support /\
      SourceIndexStateSourcePredicate
        133 0 source_197_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `8c1c78457703093cfe808408313cc2a186129cf973d5cd76adfd8ba4b357975c`.
Observed bounded GoodDirection cases: 1. -/
def source_198_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_198_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 102 /\
      key.secondIndex = 2 /\
      key.support = source_198_support /\
      SourceIndexStateSourcePredicate
        102 2 source_198_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `908c45896579038152393b0266e124f043f87d2ef611acdcdacf099605c0c975`.
Observed bounded GoodDirection cases: 1. -/
def source_199_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_199_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 14 /\
      key.support = source_199_support /\
      SourceIndexStateSourcePredicate
        4 14 source_199_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a4070f15a7c120030b5f3e0f89f081b37e0af74213655cdc8443e0f55a6d2fb6`.
Observed bounded GoodDirection cases: 1. -/
def source_200_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_200_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 34 /\
      key.secondIndex = 8 /\
      key.support = source_200_support /\
      SourceIndexStateSourcePredicate
        34 8 source_200_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a742dfdf7f812d9324a28b43415964c0399f8f1b646b65cefdc509855e8d2a22`.
Observed bounded GoodDirection cases: 1. -/
def source_201_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_201_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 131 /\
      key.secondIndex = 0 /\
      key.support = source_201_support /\
      SourceIndexStateSourcePredicate
        131 0 source_201_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `aa82df9de7e08dd9beacedc319c0bdcc85192a038af78bd9183d6c8706441b84`.
Observed bounded GoodDirection cases: 1. -/
def source_202_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_202_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 121 /\
      key.secondIndex = 1 /\
      key.support = source_202_support /\
      SourceIndexStateSourcePredicate
        121 1 source_202_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `aac6e5fb318f8067186acfd789e84dbfb1c291f1f2b0918f2bcf57263aa12723`.
Observed bounded GoodDirection cases: 1. -/
def source_203_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_203_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 34 /\
      key.secondIndex = 2 /\
      key.support = source_203_support /\
      SourceIndexStateSourcePredicate
        34 2 source_203_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `aecb5b8169d3418ca3e0c8722a6ef8424a85aa067cf993b94afabb5b92a7fa74`.
Observed bounded GoodDirection cases: 1. -/
def source_204_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_204_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 125 /\
      key.secondIndex = 8 /\
      key.support = source_204_support /\
      SourceIndexStateSourcePredicate
        125 8 source_204_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b10e2bbb0772695bdafddca25469716e7670462e3dab6f8ff62c6149dc98c933`.
Observed bounded GoodDirection cases: 1. -/
def source_205_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_205_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 35 /\
      key.secondIndex = 8 /\
      key.support = source_205_support /\
      SourceIndexStateSourcePredicate
        35 8 source_205_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b500fb86376e78b358b028a6bfe54f327cf8882e7638f4185b1a64573dc6922e`.
Observed bounded GoodDirection cases: 1. -/
def source_206_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_206_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 137 /\
      key.secondIndex = 0 /\
      key.support = source_206_support /\
      SourceIndexStateSourcePredicate
        137 0 source_206_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `bbcacfa6647a1c7b602608a9ac515cea3349bf61234ed02b039b868fb1f7f3dc`.
Observed bounded GoodDirection cases: 1. -/
def source_207_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨5, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_207_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 9 /\
      key.secondIndex = 13 /\
      key.support = source_207_support /\
      SourceIndexStateSourcePredicate
        9 13 source_207_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `bfe796d966fc10b168b1e9497975105f533ecf88108b0b72a97181d3b9a8b538`.
Observed bounded GoodDirection cases: 1. -/
def source_208_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_208_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 85 /\
      key.secondIndex = 8 /\
      key.support = source_208_support /\
      SourceIndexStateSourcePredicate
        85 8 source_208_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c772ed5260b826cac18768adff3db82bd5f563e6985c2588f042b86ca7c64056`.
Observed bounded GoodDirection cases: 1. -/
def source_209_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_209_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 143 /\
      key.secondIndex = 2 /\
      key.support = source_209_support /\
      SourceIndexStateSourcePredicate
        143 2 source_209_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c7d3b5b0b469a713c5ef760075fad7072ef47d94d0ba72707a2b8fe7c9456790`.
Observed bounded GoodDirection cases: 1. -/
def source_210_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_210_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 6 /\
      key.secondIndex = 12 /\
      key.support = source_210_support /\
      SourceIndexStateSourcePredicate
        6 12 source_210_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c9984edabb8f83019f9c9317d62b13bd3c7419396cc8eb4be68983de7b840999`.
Observed bounded GoodDirection cases: 1. -/
def source_211_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_211_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 5 /\
      key.secondIndex = 11 /\
      key.support = source_211_support /\
      SourceIndexStateSourcePredicate
        5 11 source_211_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `cc88066bdc34aec44c0a7edfa18a9ca47f8a324019dae922eeb0e429aa68a20c`.
Observed bounded GoodDirection cases: 1. -/
def source_212_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_212_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 119 /\
      key.secondIndex = 2 /\
      key.support = source_212_support /\
      SourceIndexStateSourcePredicate
        119 2 source_212_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d0464ace03d89ae4ae17473c7653bde5dc9482cd9b144f4030e1e06c5c22f10a`.
Observed bounded GoodDirection cases: 1. -/
def source_213_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_213_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 15 /\
      key.support = source_213_support /\
      SourceIndexStateSourcePredicate
        4 15 source_213_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d2c9da6ae3df0300b66c883e492054ad007db1c7555ac4fa81be774115911624`.
Observed bounded GoodDirection cases: 1. -/
def source_214_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_214_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 15 /\
      key.secondIndex = 7 /\
      key.support = source_214_support /\
      SourceIndexStateSourcePredicate
        15 7 source_214_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d326e342382dccd7971de54f908dc8f0ff3bb1439143b447c7951d7367caf629`.
Observed bounded GoodDirection cases: 1. -/
def source_215_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_215_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 7 /\
      key.secondIndex = 11 /\
      key.support = source_215_support /\
      SourceIndexStateSourcePredicate
        7 11 source_215_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d72a8cc8e1d03cb1b2d5414bd1754b9e9f99453c0a2d241b6153b79ac633ecd9`.
Observed bounded GoodDirection cases: 1. -/
def source_216_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_216_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 6 /\
      key.support = source_216_support /\
      SourceIndexStateSourcePredicate
        84 6 source_216_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d7a4c08e85787676c842f67fc3c2b5543f54e67e269e6c14891500db3e41211d`.
Observed bounded GoodDirection cases: 1. -/
def source_217_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_217_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 123 /\
      key.secondIndex = 6 /\
      key.support = source_217_support /\
      SourceIndexStateSourcePredicate
        123 6 source_217_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ea57b8df7c9c79fe346d21c843aff07ca506853234a886386b8ed6bd67ff84be`.
Observed bounded GoodDirection cases: 1. -/
def source_218_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_218_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 115 /\
      key.secondIndex = 10 /\
      key.support = source_218_support /\
      SourceIndexStateSourcePredicate
        115 10 source_218_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ecb47b35ad273124ccc8bec1c670d919f5225ba2002b63f76b9c404814ab9b83`.
Observed bounded GoodDirection cases: 1. -/
def source_219_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_219_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 132 /\
      key.secondIndex = 1 /\
      key.support = source_219_support /\
      SourceIndexStateSourcePredicate
        132 1 source_219_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ee25f3594790103a38515c50698017c02befa360e91304f18a83488956da6139`.
Observed bounded GoodDirection cases: 1. -/
def source_220_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_220_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 173 /\
      key.secondIndex = 6 /\
      key.support = source_220_support /\
      SourceIndexStateSourcePredicate
        173 6 source_220_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f3ac8209568d71d100ad319301bc9634237e90978c97dd35775deee03e8b49b9`.
Observed bounded GoodDirection cases: 1. -/
def source_221_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_221_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 6 /\
      key.secondIndex = 9 /\
      key.support = source_221_support /\
      SourceIndexStateSourcePredicate
        6 9 source_221_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `fb73ecf45c502e1e0bb73e03d74be50626881d28dd1aaec07a912e61c88e3ee0`.
Observed bounded GoodDirection cases: 1. -/
def source_222_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_222_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 163 /\
      key.secondIndex = 7 /\
      key.support = source_222_support /\
      SourceIndexStateSourcePredicate
        163 7 source_222_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `fc99020369b8383293235d56c1f64563f91705c0495987921fa1675f6247a8c3`.
Observed bounded GoodDirection cases: 1. -/
def source_223_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_223_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 145 /\
      key.secondIndex = 0 /\
      key.support = source_223_support /\
      SourceIndexStateSourcePredicate
        145 0 source_223_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `fe97e3e3f9cc6afe6885898499c3f68e5ab7e8d896d08e09023bb0fdbf28fcde`.
Observed bounded GoodDirection cases: 1. -/
def source_224_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_224_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 5 /\
      key.secondIndex = 9 /\
      key.support = source_224_support /\
      SourceIndexStateSourcePredicate
        5 9 source_224_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

theorem sourceProducers_build : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source
