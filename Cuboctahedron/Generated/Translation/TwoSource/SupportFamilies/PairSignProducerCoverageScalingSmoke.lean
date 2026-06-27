import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated pair-sign producer-coverage smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. It composes reusable source producers and row
producers into `SourceIndexStateKeyFacts` and
`TranslationGoodCaseKilled` for representative pair-sign descriptor keys.
Phase: 6Z.6K.8AK.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option linter.unusedVariables false

/-- Source producer `7da0a70eeb26127085fa7422a04501b6f62db3389e10d3b3b8d218f38b141147`.
Observed bounded GoodDirection cases: 906. -/
private def source_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_000_producer : SourceIndexStateSourceProducer where
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
private def source_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_001_producer : SourceIndexStateSourceProducer where
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
private def source_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_002_producer : SourceIndexStateSourceProducer where
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
private def source_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_003_producer : SourceIndexStateSourceProducer where
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
private def source_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_004_producer : SourceIndexStateSourceProducer where
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
private def source_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_005_producer : SourceIndexStateSourceProducer where
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
private def source_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_006_producer : SourceIndexStateSourceProducer where
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
private def source_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_007_producer : SourceIndexStateSourceProducer where
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
private def source_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_008_producer : SourceIndexStateSourceProducer where
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
private def source_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_009_producer : SourceIndexStateSourceProducer where
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
private def source_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_010_producer : SourceIndexStateSourceProducer where
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
private def source_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_011_producer : SourceIndexStateSourceProducer where
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
private def source_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_012_producer : SourceIndexStateSourceProducer where
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
private def source_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_013_producer : SourceIndexStateSourceProducer where
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
private def source_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_014_producer : SourceIndexStateSourceProducer where
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
private def source_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_015_producer : SourceIndexStateSourceProducer where
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
private def source_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_016_producer : SourceIndexStateSourceProducer where
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
private def source_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_017_producer : SourceIndexStateSourceProducer where
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
private def source_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_018_producer : SourceIndexStateSourceProducer where
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
private def source_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_019_producer : SourceIndexStateSourceProducer where
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
private def source_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_020_producer : SourceIndexStateSourceProducer where
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
private def source_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_021_producer : SourceIndexStateSourceProducer where
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
private def source_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_022_producer : SourceIndexStateSourceProducer where
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
private def source_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_023_producer : SourceIndexStateSourceProducer where
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
private def source_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_024_producer : SourceIndexStateSourceProducer where
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
private def source_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_025_producer : SourceIndexStateSourceProducer where
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
private def source_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_026_producer : SourceIndexStateSourceProducer where
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
private def source_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_027_producer : SourceIndexStateSourceProducer where
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
private def source_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_028_producer : SourceIndexStateSourceProducer where
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
private def source_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def source_029_producer : SourceIndexStateSourceProducer where
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
private def source_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_030_producer : SourceIndexStateSourceProducer where
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
private def source_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_031_producer : SourceIndexStateSourceProducer where
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
private def source_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_032_producer : SourceIndexStateSourceProducer where
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
private def source_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_033_producer : SourceIndexStateSourceProducer where
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
private def source_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_034_producer : SourceIndexStateSourceProducer where
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
private def source_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_035_producer : SourceIndexStateSourceProducer where
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
private def source_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_036_producer : SourceIndexStateSourceProducer where
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
private def source_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_037_producer : SourceIndexStateSourceProducer where
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
private def source_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_038_producer : SourceIndexStateSourceProducer where
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
private def source_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_039_producer : SourceIndexStateSourceProducer where
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
private def source_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_040_producer : SourceIndexStateSourceProducer where
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
private def source_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_041_producer : SourceIndexStateSourceProducer where
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
private def source_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_042_producer : SourceIndexStateSourceProducer where
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
private def source_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_043_producer : SourceIndexStateSourceProducer where
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
private def source_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_044_producer : SourceIndexStateSourceProducer where
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
private def source_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_045_producer : SourceIndexStateSourceProducer where
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
private def source_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_046_producer : SourceIndexStateSourceProducer where
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
private def source_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_047_producer : SourceIndexStateSourceProducer where
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
private def source_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_048_producer : SourceIndexStateSourceProducer where
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
private def source_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_049_producer : SourceIndexStateSourceProducer where
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
private def source_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_050_producer : SourceIndexStateSourceProducer where
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
private def source_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_051_producer : SourceIndexStateSourceProducer where
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
private def source_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_052_producer : SourceIndexStateSourceProducer where
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
private def source_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_053_producer : SourceIndexStateSourceProducer where
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
private def source_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_054_producer : SourceIndexStateSourceProducer where
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
private def source_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_055_producer : SourceIndexStateSourceProducer where
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
private def source_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_056_producer : SourceIndexStateSourceProducer where
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
private def source_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_057_producer : SourceIndexStateSourceProducer where
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
private def source_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_058_producer : SourceIndexStateSourceProducer where
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
private def source_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def source_059_producer : SourceIndexStateSourceProducer where
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
private def source_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_060_producer : SourceIndexStateSourceProducer where
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
private def source_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_061_producer : SourceIndexStateSourceProducer where
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
private def source_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_062_producer : SourceIndexStateSourceProducer where
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
private def source_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_063_producer : SourceIndexStateSourceProducer where
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
private def source_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_064_producer : SourceIndexStateSourceProducer where
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
private def source_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_065_producer : SourceIndexStateSourceProducer where
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
private def source_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_066_producer : SourceIndexStateSourceProducer where
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
private def source_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_067_producer : SourceIndexStateSourceProducer where
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
private def source_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_068_producer : SourceIndexStateSourceProducer where
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
private def source_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_069_producer : SourceIndexStateSourceProducer where
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
private def source_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_070_producer : SourceIndexStateSourceProducer where
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
private def source_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_071_producer : SourceIndexStateSourceProducer where
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
private def source_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_072_producer : SourceIndexStateSourceProducer where
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
private def source_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_073_producer : SourceIndexStateSourceProducer where
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
private def source_074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_074_producer : SourceIndexStateSourceProducer where
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
private def source_075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_075_producer : SourceIndexStateSourceProducer where
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
private def source_076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_076_producer : SourceIndexStateSourceProducer where
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
private def source_077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_077_producer : SourceIndexStateSourceProducer where
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
private def source_078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_078_producer : SourceIndexStateSourceProducer where
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
private def source_079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_079_producer : SourceIndexStateSourceProducer where
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
private def source_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_080_producer : SourceIndexStateSourceProducer where
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
private def source_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_081_producer : SourceIndexStateSourceProducer where
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
private def source_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_082_producer : SourceIndexStateSourceProducer where
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
private def source_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_083_producer : SourceIndexStateSourceProducer where
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
private def source_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_084_producer : SourceIndexStateSourceProducer where
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
private def source_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_085_producer : SourceIndexStateSourceProducer where
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
private def source_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_086_producer : SourceIndexStateSourceProducer where
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
private def source_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_087_producer : SourceIndexStateSourceProducer where
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
private def source_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_088_producer : SourceIndexStateSourceProducer where
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
private def source_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_089_producer : SourceIndexStateSourceProducer where
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
private def source_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_090_producer : SourceIndexStateSourceProducer where
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
private def source_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_091_producer : SourceIndexStateSourceProducer where
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
private def source_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_092_producer : SourceIndexStateSourceProducer where
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
private def source_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_093_producer : SourceIndexStateSourceProducer where
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
private def source_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_094_producer : SourceIndexStateSourceProducer where
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
private def source_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_095_producer : SourceIndexStateSourceProducer where
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
private def source_096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_096_producer : SourceIndexStateSourceProducer where
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
private def source_097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_097_producer : SourceIndexStateSourceProducer where
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
private def source_098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_098_producer : SourceIndexStateSourceProducer where
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
private def source_099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_099_producer : SourceIndexStateSourceProducer where
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
private def source_100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_100_producer : SourceIndexStateSourceProducer where
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
private def source_101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def source_101_producer : SourceIndexStateSourceProducer where
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
private def source_102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_102_producer : SourceIndexStateSourceProducer where
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
private def source_103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_103_producer : SourceIndexStateSourceProducer where
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
private def source_104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_104_producer : SourceIndexStateSourceProducer where
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
private def source_105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_105_producer : SourceIndexStateSourceProducer where
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
private def source_106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_106_producer : SourceIndexStateSourceProducer where
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
private def source_107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_107_producer : SourceIndexStateSourceProducer where
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
private def source_108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_108_producer : SourceIndexStateSourceProducer where
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
private def source_109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_109_producer : SourceIndexStateSourceProducer where
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
private def source_110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def source_110_producer : SourceIndexStateSourceProducer where
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
private def source_111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_111_producer : SourceIndexStateSourceProducer where
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
private def source_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_112_producer : SourceIndexStateSourceProducer where
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
private def source_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_113_producer : SourceIndexStateSourceProducer where
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
private def source_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_114_producer : SourceIndexStateSourceProducer where
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
private def source_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_115_producer : SourceIndexStateSourceProducer where
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
private def source_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_116_producer : SourceIndexStateSourceProducer where
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
private def source_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_117_producer : SourceIndexStateSourceProducer where
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
private def source_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def source_118_producer : SourceIndexStateSourceProducer where
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
private def source_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_119_producer : SourceIndexStateSourceProducer where
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
private def source_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_120_producer : SourceIndexStateSourceProducer where
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
private def source_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_121_producer : SourceIndexStateSourceProducer where
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
private def source_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_122_producer : SourceIndexStateSourceProducer where
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
private def source_123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_123_producer : SourceIndexStateSourceProducer where
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
private def source_124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_124_producer : SourceIndexStateSourceProducer where
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
private def source_125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_125_producer : SourceIndexStateSourceProducer where
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
private def source_126_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_126_producer : SourceIndexStateSourceProducer where
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
private def source_127_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_127_producer : SourceIndexStateSourceProducer where
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
private def source_128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_128_producer : SourceIndexStateSourceProducer where
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
private def source_129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_129_producer : SourceIndexStateSourceProducer where
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
private def source_130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_130_producer : SourceIndexStateSourceProducer where
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
private def source_131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_131_producer : SourceIndexStateSourceProducer where
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
private def source_132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_132_producer : SourceIndexStateSourceProducer where
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
private def source_133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_133_producer : SourceIndexStateSourceProducer where
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
private def source_134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_134_producer : SourceIndexStateSourceProducer where
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
private def source_135_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_135_producer : SourceIndexStateSourceProducer where
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
private def source_136_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_136_producer : SourceIndexStateSourceProducer where
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
private def source_137_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_137_producer : SourceIndexStateSourceProducer where
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
private def source_138_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_138_producer : SourceIndexStateSourceProducer where
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
private def source_139_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_139_producer : SourceIndexStateSourceProducer where
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
private def source_140_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_140_producer : SourceIndexStateSourceProducer where
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
private def source_141_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_141_producer : SourceIndexStateSourceProducer where
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
private def source_142_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_142_producer : SourceIndexStateSourceProducer where
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
private def source_143_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_143_producer : SourceIndexStateSourceProducer where
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
private def source_144_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_144_producer : SourceIndexStateSourceProducer where
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
private def source_145_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_145_producer : SourceIndexStateSourceProducer where
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
private def source_146_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_146_producer : SourceIndexStateSourceProducer where
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
private def source_147_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_147_producer : SourceIndexStateSourceProducer where
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
private def source_148_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_148_producer : SourceIndexStateSourceProducer where
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
private def source_149_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_149_producer : SourceIndexStateSourceProducer where
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
private def source_150_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_150_producer : SourceIndexStateSourceProducer where
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
private def source_151_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_151_producer : SourceIndexStateSourceProducer where
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
private def source_152_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_152_producer : SourceIndexStateSourceProducer where
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
private def source_153_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_153_producer : SourceIndexStateSourceProducer where
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
private def source_154_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_154_producer : SourceIndexStateSourceProducer where
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
private def source_155_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_155_producer : SourceIndexStateSourceProducer where
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
private def source_156_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_156_producer : SourceIndexStateSourceProducer where
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
private def source_157_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_157_producer : SourceIndexStateSourceProducer where
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
private def source_158_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_158_producer : SourceIndexStateSourceProducer where
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
private def source_159_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_159_producer : SourceIndexStateSourceProducer where
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
private def source_160_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_160_producer : SourceIndexStateSourceProducer where
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
private def source_161_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_161_producer : SourceIndexStateSourceProducer where
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
private def source_162_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_162_producer : SourceIndexStateSourceProducer where
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
private def source_163_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_163_producer : SourceIndexStateSourceProducer where
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
private def source_164_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_164_producer : SourceIndexStateSourceProducer where
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
private def source_165_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_165_producer : SourceIndexStateSourceProducer where
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
private def source_166_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_166_producer : SourceIndexStateSourceProducer where
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
private def source_167_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_167_producer : SourceIndexStateSourceProducer where
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
private def source_168_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_168_producer : SourceIndexStateSourceProducer where
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
private def source_169_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_169_producer : SourceIndexStateSourceProducer where
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
private def source_170_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_170_producer : SourceIndexStateSourceProducer where
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
private def source_171_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_171_producer : SourceIndexStateSourceProducer where
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
private def source_172_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_172_producer : SourceIndexStateSourceProducer where
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
private def source_173_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_173_producer : SourceIndexStateSourceProducer where
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
private def source_174_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_174_producer : SourceIndexStateSourceProducer where
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
private def source_175_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_175_producer : SourceIndexStateSourceProducer where
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
private def source_176_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_176_producer : SourceIndexStateSourceProducer where
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
private def source_177_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_177_producer : SourceIndexStateSourceProducer where
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
private def source_178_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_178_producer : SourceIndexStateSourceProducer where
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
private def source_179_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_179_producer : SourceIndexStateSourceProducer where
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
private def source_180_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
private def source_180_producer : SourceIndexStateSourceProducer where
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
private def source_181_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_181_producer : SourceIndexStateSourceProducer where
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
private def source_182_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_182_producer : SourceIndexStateSourceProducer where
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
private def source_183_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_183_producer : SourceIndexStateSourceProducer where
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
private def source_184_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_184_producer : SourceIndexStateSourceProducer where
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
private def source_185_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def source_185_producer : SourceIndexStateSourceProducer where
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
private def source_186_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_186_producer : SourceIndexStateSourceProducer where
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
private def source_187_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_187_producer : SourceIndexStateSourceProducer where
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
private def source_188_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_188_producer : SourceIndexStateSourceProducer where
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
private def source_189_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_189_producer : SourceIndexStateSourceProducer where
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
private def source_190_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_190_producer : SourceIndexStateSourceProducer where
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
private def source_191_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_191_producer : SourceIndexStateSourceProducer where
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
private def source_192_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_192_producer : SourceIndexStateSourceProducer where
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
private def source_193_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_193_producer : SourceIndexStateSourceProducer where
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
private def source_194_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_194_producer : SourceIndexStateSourceProducer where
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
private def source_195_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_195_producer : SourceIndexStateSourceProducer where
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
private def source_196_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_196_producer : SourceIndexStateSourceProducer where
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
private def source_197_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_197_producer : SourceIndexStateSourceProducer where
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
private def source_198_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_198_producer : SourceIndexStateSourceProducer where
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
private def source_199_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_199_producer : SourceIndexStateSourceProducer where
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
private def source_200_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_200_producer : SourceIndexStateSourceProducer where
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
private def source_201_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_201_producer : SourceIndexStateSourceProducer where
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
private def source_202_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_202_producer : SourceIndexStateSourceProducer where
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
private def source_203_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_203_producer : SourceIndexStateSourceProducer where
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
private def source_204_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_204_producer : SourceIndexStateSourceProducer where
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
private def source_205_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_205_producer : SourceIndexStateSourceProducer where
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
private def source_206_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_206_producer : SourceIndexStateSourceProducer where
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
private def source_207_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨5, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_207_producer : SourceIndexStateSourceProducer where
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
private def source_208_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def source_208_producer : SourceIndexStateSourceProducer where
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
private def source_209_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_209_producer : SourceIndexStateSourceProducer where
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
private def source_210_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_210_producer : SourceIndexStateSourceProducer where
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
private def source_211_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_211_producer : SourceIndexStateSourceProducer where
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
private def source_212_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_212_producer : SourceIndexStateSourceProducer where
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
private def source_213_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_213_producer : SourceIndexStateSourceProducer where
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
private def source_214_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_214_producer : SourceIndexStateSourceProducer where
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
private def source_215_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_215_producer : SourceIndexStateSourceProducer where
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
private def source_216_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_216_producer : SourceIndexStateSourceProducer where
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
private def source_217_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_217_producer : SourceIndexStateSourceProducer where
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
private def source_218_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_218_producer : SourceIndexStateSourceProducer where
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
private def source_219_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_219_producer : SourceIndexStateSourceProducer where
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
private def source_220_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def source_220_producer : SourceIndexStateSourceProducer where
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
private def source_221_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_221_producer : SourceIndexStateSourceProducer where
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
private def source_222_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_222_producer : SourceIndexStateSourceProducer where
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
private def source_223_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_223_producer : SourceIndexStateSourceProducer where
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
private def source_224_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def source_224_producer : SourceIndexStateSourceProducer where
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

/-- Row producer `27981d7fe4aff67a4b376d24bcb887dfcc7de046716ab6582858839111fd367d`.
Observed bounded GoodDirection cases: 2442. -/
private def row_000_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarFirst /\
      EqEqPosVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarFirst) h.1 h.2

/-- Row producer `b8de738ef91751c8edd6750009b155fcb173041087e4eb649c02101d7b981651`.
Observed bounded GoodDirection cases: 1184. -/
private def row_001_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarFirst /\
      OppOneMinusVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarFirst) h.1 h.2

/-- Row producer `a6659fc752d0d0dc0894d106bf45c0c40ea0229a7cea1c0408d3b2e9ae992906`.
Observed bounded GoodDirection cases: 843. -/
private def row_002_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarSecond /\
      EqEqPosVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarSecond) h.1 h.2

/-- Row producer `41d14fa5c54bdb86c8a57664c1c7350b32e408aad949d6f68791f765c07175e2`.
Observed bounded GoodDirection cases: 607. -/
private def row_003_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarFirst /\
      OppMinusOneVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarFirst) h.1 h.2

/-- Row producer `5866527521d1cd86b4d528c518448d7b3e40b2bfb8a72d71c5b40b9e48e93f7d`.
Observed bounded GoodDirection cases: 364. -/
private def row_004_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarSecond /\
      OppOneMinusVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarSecond) h.1 h.2

/-- Row producer `01ef342f8b3eccbcf838de2272e3e0a618591c1f735c69fabb94c6c2f2cedabf`.
Observed bounded GoodDirection cases: 240. -/
private def row_005_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarSecond /\
      OppMinusOneVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarSecond) h.1 h.2

/-- Row producer `ab58d270064eefa002683f651a0d6bfcfa613500a91016f81015c7bbfc9bfb9d`.
Observed bounded GoodDirection cases: 155. -/
private def row_006_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarFirst /\
      EqEqNegVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarFirst) h.1 h.2

/-- Row producer `aa6ee8c6fd34af113194c2f37bcaa4ecb38560551b8ab398bf66c361ff434dac`.
Observed bounded GoodDirection cases: 82. -/
private def row_007_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarSecond /\
      EqEqNegVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarSecond) h.1 h.2

/-- Row producer `562ff0c45e5c0528ea789ea204eba3b4146d73ffae0e9b54da6a3a710bde9c33`.
Observed bounded GoodDirection cases: 35. -/
private def row_008_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `523642c364059c21d649a28a5030e10f3e8d86c3905a4cc916d8562511e882f6`.
Observed bounded GoodDirection cases: 22. -/
private def row_009_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `2049ebbee6bbf2d1ded8999d1329c79130dca9db14a62ff0fcd41bc8b7a3fe3c`.
Observed bounded GoodDirection cases: 20. -/
private def row_010_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `7d9e6f246fd2ff58074eff2e9a128514417de91d61a5aaea2b2d365f8aaf48db`.
Observed bounded GoodDirection cases: 15. -/
private def row_011_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `7004acc1337b24940623e18b8c13c02b05202309d9ebace2dce850072f93a061`.
Observed bounded GoodDirection cases: 13. -/
private def row_012_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `00621f89fefce6223c8a4ba8320e9f078086f13412a5127e0f4f62e1fad6df16`.
Observed bounded GoodDirection cases: 5. -/
private def row_013_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

/-- Row producer `ef988bf5329f02fde86143eba244d2c48095d3772daffbcf05a3220e88bb6152`.
Observed bounded GoodDirection cases: 5. -/
private def row_014_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `05b5ea616b6c9601c4abb80744a9ce2720fe2348bd2266b926171141c3c65898`.
Observed bounded GoodDirection cases: 4. -/
private def row_015_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `3beed738f15a25af0630f30ade1b42fffce6993851c9692587843c0ee7214e89`.
Observed bounded GoodDirection cases: 4. -/
private def row_016_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `3810676fed6e48b30935a034db1cd780ca9c99af6375bf13a5537f3ed7c4ce40`.
Observed bounded GoodDirection cases: 2. -/
private def row_017_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

/-- Row producer `4e68ab662a028c0f92c81fe5711201eca3ffc425b51b8de8b00f42bd0edccefa`.
Observed bounded GoodDirection cases: 2. -/
private def row_018_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `bce8e3820f203988985fcedef0b4ac36116689c03e3296836cdbf6b3ae5f6234`.
Observed bounded GoodDirection cases: 2. -/
private def row_019_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `d44f94eb1867f97107b94cb154e946dee5feb29aace477abb538ee2f4d2fd2f0`.
Observed bounded GoodDirection cases: 1. -/
private def row_020_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

/-- Row producer `f9687380c0b6df0c13b296b9be6a7101c393a12ef6726f18f2431280e581af90`.
Observed bounded GoodDirection cases: 1. -/
private def row_021_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

/-- Pair-sign producer coverage key `a9c85d3d6e44b215a28bb60fdfa44d57307c74d1fef19ff6c080d2299a790531`.
Observed representative GoodDirection cases: 906. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_000_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        23 0 source_000_support r mask) :
    source_000_producer.Applies fam_000_key r mask := by
  unfold source_000_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_000_key, fam_000_support, source_000_support],
    hsource⟩⟩⟩

theorem fam_000_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_000_key.support r mask) :
    row_000_producer.Applies fam_000_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_000_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        23 0 source_000_support r mask)
    (hrows : EqEqPosVarFirstRows fam_000_key.support r mask) :
    SourceIndexStateKeyFacts fam_000_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_000_producer.sourceFacts
      (fam_000_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_000_rowApplies_of_rows hrows))

theorem fam_000_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        23 0 source_000_support r mask)
    (hrows : EqEqPosVarFirstRows fam_000_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_000_key.goodKilled_of_source_row
    (source_000_producer.sourceFacts
      (fam_000_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_000_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `01630a20f4bc0763aa95de21589f5f9c8b3363fb3730266afffd5b30c79f5714`.
Observed representative GoodDirection cases: 497. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_001_key : SourceIndexStateKey where
  firstIndex := 52
  secondIndex := 0
  support := fam_001_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_001_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 0 source_001_support r mask) :
    source_001_producer.Applies fam_001_key r mask := by
  unfold source_001_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_001_key, fam_001_support, source_001_support],
    hsource⟩⟩⟩

theorem fam_001_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_001_key.support r mask) :
    row_000_producer.Applies fam_001_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_001_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 0 source_001_support r mask)
    (hrows : EqEqPosVarFirstRows fam_001_key.support r mask) :
    SourceIndexStateKeyFacts fam_001_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_001_producer.sourceFacts
      (fam_001_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_001_rowApplies_of_rows hrows))

theorem fam_001_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 0 source_001_support r mask)
    (hrows : EqEqPosVarFirstRows fam_001_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_001_key.goodKilled_of_source_row
    (source_001_producer.sourceFacts
      (fam_001_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_001_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e69eef4a66ce47619b1bed30bd6a7b44c30d512546fd37bbd28d302f3b3819c0`.
Observed representative GoodDirection cases: 390. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_002_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := fam_002_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_002_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        24 1 source_002_support r mask) :
    source_002_producer.Applies fam_002_key r mask := by
  unfold source_002_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_002_key, fam_002_support, source_002_support],
    hsource⟩⟩⟩

theorem fam_002_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_002_key.support r mask) :
    row_001_producer.Applies fam_002_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_002_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        24 1 source_002_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_002_key.support r mask) :
    SourceIndexStateKeyFacts fam_002_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_002_producer.sourceFacts
      (fam_002_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_002_rowApplies_of_rows hrows))

theorem fam_002_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        24 1 source_002_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_002_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_002_key.goodKilled_of_source_row
    (source_002_producer.sourceFacts
      (fam_002_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_002_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ad68f1bb9b0315772fae5e354b9b7ad4a3d53402b6aee2a888356422665afcf8`.
Observed representative GoodDirection cases: 278. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_003_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 0
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_003_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 0 source_003_support r mask) :
    source_003_producer.Applies fam_003_key r mask := by
  unfold source_003_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_003_key, fam_003_support, source_003_support],
    hsource⟩⟩⟩

theorem fam_003_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_003_key.support r mask) :
    row_000_producer.Applies fam_003_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_003_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 0 source_003_support r mask)
    (hrows : EqEqPosVarFirstRows fam_003_key.support r mask) :
    SourceIndexStateKeyFacts fam_003_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_003_producer.sourceFacts
      (fam_003_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_003_rowApplies_of_rows hrows))

theorem fam_003_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 0 source_003_support r mask)
    (hrows : EqEqPosVarFirstRows fam_003_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_003_key.goodKilled_of_source_row
    (source_003_producer.sourceFacts
      (fam_003_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_003_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `91584f867c1a75c1aad2d359f27f17930c4b72d522aafc482d19d584e10b7a37`.
Observed representative GoodDirection cases: 226. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_004_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 7
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_004_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 7 source_004_support r mask) :
    source_004_producer.Applies fam_004_key r mask := by
  unfold source_004_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_004_key, fam_004_support, source_004_support],
    hsource⟩⟩⟩

theorem fam_004_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_004_key.support r mask) :
    row_002_producer.Applies fam_004_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_004_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 7 source_004_support r mask)
    (hrows : EqEqPosVarSecondRows fam_004_key.support r mask) :
    SourceIndexStateKeyFacts fam_004_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_004_producer.sourceFacts
      (fam_004_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_004_rowApplies_of_rows hrows))

theorem fam_004_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 7 source_004_support r mask)
    (hrows : EqEqPosVarSecondRows fam_004_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_004_key.goodKilled_of_source_row
    (source_004_producer.sourceFacts
      (fam_004_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_004_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b5f9d1e0e64a092f3819db8d161920f591f42c3405c959e580ed19a9bf1eaf38`.
Observed representative GoodDirection cases: 222. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_005_key : SourceIndexStateKey where
  firstIndex := 25
  secondIndex := 2
  support := fam_005_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_005_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        25 2 source_005_support r mask) :
    source_005_producer.Applies fam_005_key r mask := by
  unfold source_005_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_005_key, fam_005_support, source_005_support],
    hsource⟩⟩⟩

theorem fam_005_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_005_key.support r mask) :
    row_003_producer.Applies fam_005_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_005_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        25 2 source_005_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_005_key.support r mask) :
    SourceIndexStateKeyFacts fam_005_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_005_producer.sourceFacts
      (fam_005_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_005_rowApplies_of_rows hrows))

theorem fam_005_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        25 2 source_005_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_005_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_005_key.goodKilled_of_source_row
    (source_005_producer.sourceFacts
      (fam_005_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_005_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8fdf87b4a1e5d605f85018aae0772f29d4a32e98a10f9ac2559a073aa64bfee6`.
Observed representative GoodDirection cases: 185. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_006_key : SourceIndexStateKey where
  firstIndex := 51
  secondIndex := 1
  support := fam_006_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_006_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        51 1 source_006_support r mask) :
    source_006_producer.Applies fam_006_key r mask := by
  unfold source_006_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_006_key, fam_006_support, source_006_support],
    hsource⟩⟩⟩

theorem fam_006_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_006_key.support r mask) :
    row_001_producer.Applies fam_006_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_006_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        51 1 source_006_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_006_key.support r mask) :
    SourceIndexStateKeyFacts fam_006_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_006_producer.sourceFacts
      (fam_006_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_006_rowApplies_of_rows hrows))

theorem fam_006_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        51 1 source_006_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_006_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_006_key.goodKilled_of_source_row
    (source_006_producer.sourceFacts
      (fam_006_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_006_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a340539b4a9b2de6e046ab2e1f0be8328761e0e3c7c229dd5c481f9f2d19c90e`.
Observed representative GoodDirection cases: 156. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_007_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 1
  support := fam_007_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_007_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 1 source_007_support r mask) :
    source_007_producer.Applies fam_007_key r mask := by
  unfold source_007_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_007_key, fam_007_support, source_007_support],
    hsource⟩⟩⟩

theorem fam_007_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_007_key.support r mask) :
    row_001_producer.Applies fam_007_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_007_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 1 source_007_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_007_key.support r mask) :
    SourceIndexStateKeyFacts fam_007_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_007_producer.sourceFacts
      (fam_007_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_007_rowApplies_of_rows hrows))

theorem fam_007_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 1 source_007_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_007_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_007_key.goodKilled_of_source_row
    (source_007_producer.sourceFacts
      (fam_007_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_007_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8091c0e1dc28305cd10a569ab32a31ad560134ee230e6f93c77595ef1620b33f`.
Observed representative GoodDirection cases: 114. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_008_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 11
  support := fam_008_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_008_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 11 source_008_support r mask) :
    source_008_producer.Applies fam_008_key r mask := by
  unfold source_008_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_008_key, fam_008_support, source_008_support],
    hsource⟩⟩⟩

theorem fam_008_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_008_key.support r mask) :
    row_002_producer.Applies fam_008_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_008_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 11 source_008_support r mask)
    (hrows : EqEqPosVarSecondRows fam_008_key.support r mask) :
    SourceIndexStateKeyFacts fam_008_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_008_producer.sourceFacts
      (fam_008_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_008_rowApplies_of_rows hrows))

theorem fam_008_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 11 source_008_support r mask)
    (hrows : EqEqPosVarSecondRows fam_008_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_008_key.goodKilled_of_source_row
    (source_008_producer.sourceFacts
      (fam_008_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_008_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a0a84a8450ad0f1ba6ca9cb2f07a3cd3ec2ce8a4584354c6a0c481c00898ee9a`.
Observed representative GoodDirection cases: 109. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_009_key : SourceIndexStateKey where
  firstIndex := 50
  secondIndex := 2
  support := fam_009_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_009_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        50 2 source_009_support r mask) :
    source_009_producer.Applies fam_009_key r mask := by
  unfold source_009_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_009_key, fam_009_support, source_009_support],
    hsource⟩⟩⟩

theorem fam_009_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_009_key.support r mask) :
    row_003_producer.Applies fam_009_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_009_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        50 2 source_009_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_009_key.support r mask) :
    SourceIndexStateKeyFacts fam_009_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_009_producer.sourceFacts
      (fam_009_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_009_rowApplies_of_rows hrows))

theorem fam_009_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        50 2 source_009_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_009_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_009_key.goodKilled_of_source_row
    (source_009_producer.sourceFacts
      (fam_009_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_009_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1e7fea08c0f0687ccf3374a0decd7681fa8fa126c599606f3ddb4c546fab2a4b`.
Observed representative GoodDirection cases: 108. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_010_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 15
  support := fam_010_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_010_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 15 source_010_support r mask) :
    source_010_producer.Applies fam_010_key r mask := by
  unfold source_010_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_010_key, fam_010_support, source_010_support],
    hsource⟩⟩⟩

theorem fam_010_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_010_key.support r mask) :
    row_002_producer.Applies fam_010_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_010_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 15 source_010_support r mask)
    (hrows : EqEqPosVarSecondRows fam_010_key.support r mask) :
    SourceIndexStateKeyFacts fam_010_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_010_producer.sourceFacts
      (fam_010_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_010_rowApplies_of_rows hrows))

theorem fam_010_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 15 source_010_support r mask)
    (hrows : EqEqPosVarSecondRows fam_010_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_010_key.goodKilled_of_source_row
    (source_010_producer.sourceFacts
      (fam_010_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_010_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1f67765c3056fb95c85720f14cbecdf8ca17f0c763076273d8c85286126303dd`.
Observed representative GoodDirection cases: 92. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_011_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 10
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_011_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 10 source_011_support r mask) :
    source_011_producer.Applies fam_011_key r mask := by
  unfold source_011_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_011_key, fam_011_support, source_011_support],
    hsource⟩⟩⟩

theorem fam_011_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_011_key.support r mask) :
    row_002_producer.Applies fam_011_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_011_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 10 source_011_support r mask)
    (hrows : EqEqPosVarSecondRows fam_011_key.support r mask) :
    SourceIndexStateKeyFacts fam_011_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_011_producer.sourceFacts
      (fam_011_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_011_rowApplies_of_rows hrows))

theorem fam_011_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 10 source_011_support r mask)
    (hrows : EqEqPosVarSecondRows fam_011_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_011_key.goodKilled_of_source_row
    (source_011_producer.sourceFacts
      (fam_011_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_011_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `54d9751320b2945766ccad09043b2fbd49fa7f68c11088ac95297208c3eaac97`.
Observed representative GoodDirection cases: 92. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_012_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_012_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 13 source_012_support r mask) :
    source_012_producer.Applies fam_012_key r mask := by
  unfold source_012_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_012_key, fam_012_support, source_012_support],
    hsource⟩⟩⟩

theorem fam_012_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_012_key.support r mask) :
    row_002_producer.Applies fam_012_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_012_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 13 source_012_support r mask)
    (hrows : EqEqPosVarSecondRows fam_012_key.support r mask) :
    SourceIndexStateKeyFacts fam_012_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_012_producer.sourceFacts
      (fam_012_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_012_rowApplies_of_rows hrows))

theorem fam_012_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 13 source_012_support r mask)
    (hrows : EqEqPosVarSecondRows fam_012_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_012_key.goodKilled_of_source_row
    (source_012_producer.sourceFacts
      (fam_012_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_012_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `215d250904345a406f359e21d7279c48890a8382cbf9f4542b80af6541ea31e7`.
Observed representative GoodDirection cases: 83. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_013_key : SourceIndexStateKey where
  firstIndex := 70
  secondIndex := 2
  support := fam_013_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_013_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 2 source_013_support r mask) :
    source_013_producer.Applies fam_013_key r mask := by
  unfold source_013_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_013_key, fam_013_support, source_013_support],
    hsource⟩⟩⟩

theorem fam_013_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_013_key.support r mask) :
    row_003_producer.Applies fam_013_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_013_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 2 source_013_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_013_key.support r mask) :
    SourceIndexStateKeyFacts fam_013_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_013_producer.sourceFacts
      (fam_013_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_013_rowApplies_of_rows hrows))

theorem fam_013_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 2 source_013_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_013_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_013_key.goodKilled_of_source_row
    (source_013_producer.sourceFacts
      (fam_013_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_013_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fbadcb6b4d7876f5e23098783dd8173fca93b8b373cdbba7ae20d14bffb14fff`.
Observed representative GoodDirection cases: 74. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_014_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 14
  support := fam_014_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_014_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 14 source_014_support r mask) :
    source_014_producer.Applies fam_014_key r mask := by
  unfold source_014_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_014_key, fam_014_support, source_014_support],
    hsource⟩⟩⟩

theorem fam_014_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_014_key.support r mask) :
    row_002_producer.Applies fam_014_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_014_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 14 source_014_support r mask)
    (hrows : EqEqPosVarSecondRows fam_014_key.support r mask) :
    SourceIndexStateKeyFacts fam_014_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_014_producer.sourceFacts
      (fam_014_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_014_rowApplies_of_rows hrows))

theorem fam_014_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 14 source_014_support r mask)
    (hrows : EqEqPosVarSecondRows fam_014_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_014_key.goodKilled_of_source_row
    (source_014_producer.sourceFacts
      (fam_014_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_014_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1e4b51557f977673d7b96e011cacc8e7fad17c5469b237589f0acb70bfb48421`.
Observed representative GoodDirection cases: 72. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_015_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 0
  support := fam_015_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_015_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 0 source_015_support r mask) :
    source_015_producer.Applies fam_015_key r mask := by
  unfold source_015_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_015_key, fam_015_support, source_015_support],
    hsource⟩⟩⟩

theorem fam_015_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_015_key.support r mask) :
    row_000_producer.Applies fam_015_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_015_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 0 source_015_support r mask)
    (hrows : EqEqPosVarFirstRows fam_015_key.support r mask) :
    SourceIndexStateKeyFacts fam_015_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_015_producer.sourceFacts
      (fam_015_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_015_rowApplies_of_rows hrows))

theorem fam_015_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 0 source_015_support r mask)
    (hrows : EqEqPosVarFirstRows fam_015_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_015_key.goodKilled_of_source_row
    (source_015_producer.sourceFacts
      (fam_015_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_015_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `45c7c17ea15024b7144eb0684c9a7a63344c888808b4afcc33b5cc6448dfac69`.
Observed representative GoodDirection cases: 70. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_016_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 12
  support := fam_016_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_016_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 12 source_016_support r mask) :
    source_016_producer.Applies fam_016_key r mask := by
  unfold source_016_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_016_key, fam_016_support, source_016_support],
    hsource⟩⟩⟩

theorem fam_016_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_016_key.support r mask) :
    row_002_producer.Applies fam_016_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_016_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 12 source_016_support r mask)
    (hrows : EqEqPosVarSecondRows fam_016_key.support r mask) :
    SourceIndexStateKeyFacts fam_016_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_016_producer.sourceFacts
      (fam_016_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_016_rowApplies_of_rows hrows))

theorem fam_016_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 12 source_016_support r mask)
    (hrows : EqEqPosVarSecondRows fam_016_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_016_key.goodKilled_of_source_row
    (source_016_producer.sourceFacts
      (fam_016_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_016_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b262fbb3ec3a90332364035f2306b73246563f9815da042889ecc813f517c606`.
Observed representative GoodDirection cases: 69. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_017_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := fam_017_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_017_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 10 source_017_support r mask) :
    source_017_producer.Applies fam_017_key r mask := by
  unfold source_017_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_017_key, fam_017_support, source_017_support],
    hsource⟩⟩⟩

theorem fam_017_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_017_key.support r mask) :
    row_004_producer.Applies fam_017_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_017_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 10 source_017_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_017_key.support r mask) :
    SourceIndexStateKeyFacts fam_017_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_017_producer.sourceFacts
      (fam_017_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_017_rowApplies_of_rows hrows))

theorem fam_017_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 10 source_017_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_017_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_017_key.goodKilled_of_source_row
    (source_017_producer.sourceFacts
      (fam_017_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_017_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `cc8ca5d0fc2c2db74ea8cf06ba88b6e33fd01b21b30be9cf8b02a8af1a6bc7eb`.
Observed representative GoodDirection cases: 65. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_018_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 15
  support := fam_018_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_018_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 15 source_018_support r mask) :
    source_018_producer.Applies fam_018_key r mask := by
  unfold source_018_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_018_key, fam_018_support, source_018_support],
    hsource⟩⟩⟩

theorem fam_018_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_018_key.support r mask) :
    row_004_producer.Applies fam_018_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_018_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 15 source_018_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_018_key.support r mask) :
    SourceIndexStateKeyFacts fam_018_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_018_producer.sourceFacts
      (fam_018_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_018_rowApplies_of_rows hrows))

theorem fam_018_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 15 source_018_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_018_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_018_key.goodKilled_of_source_row
    (source_018_producer.sourceFacts
      (fam_018_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_018_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5c472a34166d7f104d7879b996ad49d96cb0aa77f2e3f5bb88694d71b53f5483`.
Observed representative GoodDirection cases: 62. -/
private def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_019_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 3
  support := fam_019_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_019_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 3 source_019_support r mask) :
    source_019_producer.Applies fam_019_key r mask := by
  unfold source_019_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_019_key, fam_019_support, source_019_support],
    hsource⟩⟩⟩

theorem fam_019_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_019_key.support r mask) :
    row_006_producer.Applies fam_019_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_019_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 3 source_019_support r mask)
    (hrows : EqEqNegVarFirstRows fam_019_key.support r mask) :
    SourceIndexStateKeyFacts fam_019_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_019_producer.sourceFacts
      (fam_019_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_019_rowApplies_of_rows hrows))

theorem fam_019_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 3 source_019_support r mask)
    (hrows : EqEqNegVarFirstRows fam_019_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_019_key.goodKilled_of_source_row
    (source_019_producer.sourceFacts
      (fam_019_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_019_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4fd2c6d716718d15e14268942ea542fa2c81953e23c6fbdc765850f7a971713c`.
Observed representative GoodDirection cases: 61. -/
private def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_020_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := fam_020_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_020_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 0 source_020_support r mask) :
    source_020_producer.Applies fam_020_key r mask := by
  unfold source_020_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_020_key, fam_020_support, source_020_support],
    hsource⟩⟩⟩

theorem fam_020_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_020_key.support r mask) :
    row_000_producer.Applies fam_020_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_020_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 0 source_020_support r mask)
    (hrows : EqEqPosVarFirstRows fam_020_key.support r mask) :
    SourceIndexStateKeyFacts fam_020_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_020_producer.sourceFacts
      (fam_020_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_020_rowApplies_of_rows hrows))

theorem fam_020_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 0 source_020_support r mask)
    (hrows : EqEqPosVarFirstRows fam_020_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_020_key.goodKilled_of_source_row
    (source_020_producer.sourceFacts
      (fam_020_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_020_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8df102f5a0a90f97d60f2652976e91573fa50c98a41b8b39dfb807ce9a90185a`.
Observed representative GoodDirection cases: 57. -/
private def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_021_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 0
  support := fam_021_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_021_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 0 source_021_support r mask) :
    source_021_producer.Applies fam_021_key r mask := by
  unfold source_021_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_021_key, fam_021_support, source_021_support],
    hsource⟩⟩⟩

theorem fam_021_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_021_key.support r mask) :
    row_000_producer.Applies fam_021_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_021_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 0 source_021_support r mask)
    (hrows : EqEqPosVarFirstRows fam_021_key.support r mask) :
    SourceIndexStateKeyFacts fam_021_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_021_producer.sourceFacts
      (fam_021_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_021_rowApplies_of_rows hrows))

theorem fam_021_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 0 source_021_support r mask)
    (hrows : EqEqPosVarFirstRows fam_021_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_021_key.goodKilled_of_source_row
    (source_021_producer.sourceFacts
      (fam_021_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_021_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a88d31452b0302cb0c43dfba7ced9a458beab5d560b2fc998fcc7ea1dcfa7170`.
Observed representative GoodDirection cases: 55. -/
private def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_022_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 0
  support := fam_022_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_022_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 0 source_022_support r mask) :
    source_022_producer.Applies fam_022_key r mask := by
  unfold source_022_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_022_key, fam_022_support, source_022_support],
    hsource⟩⟩⟩

theorem fam_022_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_022_key.support r mask) :
    row_000_producer.Applies fam_022_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_022_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 0 source_022_support r mask)
    (hrows : EqEqPosVarFirstRows fam_022_key.support r mask) :
    SourceIndexStateKeyFacts fam_022_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_022_producer.sourceFacts
      (fam_022_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_022_rowApplies_of_rows hrows))

theorem fam_022_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 0 source_022_support r mask)
    (hrows : EqEqPosVarFirstRows fam_022_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_022_key.goodKilled_of_source_row
    (source_022_producer.sourceFacts
      (fam_022_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_022_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `db00d78c6f0f431fefe44ac0bd37328bf1a5b6554916b0ee2408f5aa436a30a2`.
Observed representative GoodDirection cases: 55. -/
private def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_023_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := fam_023_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_023_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 0 source_023_support r mask) :
    source_023_producer.Applies fam_023_key r mask := by
  unfold source_023_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_023_key, fam_023_support, source_023_support],
    hsource⟩⟩⟩

theorem fam_023_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_023_key.support r mask) :
    row_000_producer.Applies fam_023_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_023_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 0 source_023_support r mask)
    (hrows : EqEqPosVarFirstRows fam_023_key.support r mask) :
    SourceIndexStateKeyFacts fam_023_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_023_producer.sourceFacts
      (fam_023_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_023_rowApplies_of_rows hrows))

theorem fam_023_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 0 source_023_support r mask)
    (hrows : EqEqPosVarFirstRows fam_023_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_023_key.goodKilled_of_source_row
    (source_023_producer.sourceFacts
      (fam_023_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_023_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f0260915116830cdee4479e0ba120e2345afce1dd4b432687b3459ab0a8c7217`.
Observed representative GoodDirection cases: 54. -/
private def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_024_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := fam_024_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_024_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        183 0 source_024_support r mask) :
    source_024_producer.Applies fam_024_key r mask := by
  unfold source_024_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_024_key, fam_024_support, source_024_support],
    hsource⟩⟩⟩

theorem fam_024_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_024_key.support r mask) :
    row_000_producer.Applies fam_024_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_024_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        183 0 source_024_support r mask)
    (hrows : EqEqPosVarFirstRows fam_024_key.support r mask) :
    SourceIndexStateKeyFacts fam_024_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_024_producer.sourceFacts
      (fam_024_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_024_rowApplies_of_rows hrows))

theorem fam_024_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        183 0 source_024_support r mask)
    (hrows : EqEqPosVarFirstRows fam_024_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_024_key.goodKilled_of_source_row
    (source_024_producer.sourceFacts
      (fam_024_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_024_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `582ae5f7332e483b5b742a2b48608c35158bf2515b8a265aaf3d1ff06c7c2c78`.
Observed representative GoodDirection cases: 48. -/
private def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_025_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := fam_025_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_025_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 0 source_026_support r mask) :
    source_026_producer.Applies fam_025_key r mask := by
  unfold source_026_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_025_key, fam_025_support, source_026_support],
    hsource⟩⟩⟩

theorem fam_025_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_025_key.support r mask) :
    row_000_producer.Applies fam_025_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_025_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 0 source_026_support r mask)
    (hrows : EqEqPosVarFirstRows fam_025_key.support r mask) :
    SourceIndexStateKeyFacts fam_025_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_026_producer.sourceFacts
      (fam_025_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_025_rowApplies_of_rows hrows))

theorem fam_025_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 0 source_026_support r mask)
    (hrows : EqEqPosVarFirstRows fam_025_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_025_key.goodKilled_of_source_row
    (source_026_producer.sourceFacts
      (fam_025_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_025_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `54e546a4bdb558dace5714844d7837c44ad6154f0336ec1ba619519c4ecbd5ea`.
Observed representative GoodDirection cases: 48. -/
private def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_026_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 10
  support := fam_026_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_026_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 10 source_025_support r mask) :
    source_025_producer.Applies fam_026_key r mask := by
  unfold source_025_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_026_key, fam_026_support, source_025_support],
    hsource⟩⟩⟩

theorem fam_026_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_026_key.support r mask) :
    row_005_producer.Applies fam_026_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_026_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 10 source_025_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_026_key.support r mask) :
    SourceIndexStateKeyFacts fam_026_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_025_producer.sourceFacts
      (fam_026_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_026_rowApplies_of_rows hrows))

theorem fam_026_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 10 source_025_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_026_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_026_key.goodKilled_of_source_row
    (source_025_producer.sourceFacts
      (fam_026_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_026_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c7daec541a59938059b6b7336130cf10dee6d86d506a0a8e8f1dd2a6eb207757`.
Observed representative GoodDirection cases: 47. -/
private def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_027_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := fam_027_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_027_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 14 source_027_support r mask) :
    source_027_producer.Applies fam_027_key r mask := by
  unfold source_027_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_027_key, fam_027_support, source_027_support],
    hsource⟩⟩⟩

theorem fam_027_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_027_key.support r mask) :
    row_004_producer.Applies fam_027_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_027_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 14 source_027_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_027_key.support r mask) :
    SourceIndexStateKeyFacts fam_027_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_027_producer.sourceFacts
      (fam_027_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_027_rowApplies_of_rows hrows))

theorem fam_027_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 14 source_027_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_027_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_027_key.goodKilled_of_source_row
    (source_027_producer.sourceFacts
      (fam_027_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_027_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4274bdafc404e0e1fecf6459ef92a7903f8f9e4dacc0b5d75d7a77305ffff4ea`.
Observed representative GoodDirection cases: 46. -/
private def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_028_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 16
  support := fam_028_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_028_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 16 source_029_support r mask) :
    source_029_producer.Applies fam_028_key r mask := by
  unfold source_029_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_028_key, fam_028_support, source_029_support],
    hsource⟩⟩⟩

theorem fam_028_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_028_key.support r mask) :
    row_002_producer.Applies fam_028_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_028_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 16 source_029_support r mask)
    (hrows : EqEqPosVarSecondRows fam_028_key.support r mask) :
    SourceIndexStateKeyFacts fam_028_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_029_producer.sourceFacts
      (fam_028_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_028_rowApplies_of_rows hrows))

theorem fam_028_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 16 source_029_support r mask)
    (hrows : EqEqPosVarSecondRows fam_028_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_028_key.goodKilled_of_source_row
    (source_029_producer.sourceFacts
      (fam_028_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_028_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2439de6f0b777e4cc736c05012dc6ad5c4f965cbc1b24ed407455cf2737070f7`.
Observed representative GoodDirection cases: 46. -/
private def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_029_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 13
  support := fam_029_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_029_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 13 source_028_support r mask) :
    source_028_producer.Applies fam_029_key r mask := by
  unfold source_028_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_029_key, fam_029_support, source_028_support],
    hsource⟩⟩⟩

theorem fam_029_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_029_key.support r mask) :
    row_004_producer.Applies fam_029_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_029_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 13 source_028_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_029_key.support r mask) :
    SourceIndexStateKeyFacts fam_029_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_028_producer.sourceFacts
      (fam_029_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_029_rowApplies_of_rows hrows))

theorem fam_029_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 13 source_028_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_029_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_029_key.goodKilled_of_source_row
    (source_028_producer.sourceFacts
      (fam_029_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_029_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2cc74ca6dcf453d30173de7ab6ba408c54fb8cc3211ebbaca2f91495312617ac`.
Observed representative GoodDirection cases: 45. -/
private def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_030_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 12
  support := fam_030_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_030_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 12 source_030_support r mask) :
    source_030_producer.Applies fam_030_key r mask := by
  unfold source_030_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_030_key, fam_030_support, source_030_support],
    hsource⟩⟩⟩

theorem fam_030_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_030_key.support r mask) :
    row_004_producer.Applies fam_030_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_030_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 12 source_030_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_030_key.support r mask) :
    SourceIndexStateKeyFacts fam_030_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_030_producer.sourceFacts
      (fam_030_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_030_rowApplies_of_rows hrows))

theorem fam_030_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 12 source_030_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_030_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_030_key.goodKilled_of_source_row
    (source_030_producer.sourceFacts
      (fam_030_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_030_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1f99a51da0266b5f986c5abc34cd20986949fecc29ff21415b195d1ebbe71a75`.
Observed representative GoodDirection cases: 44. -/
private def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_031_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 15
  support := fam_031_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_031_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 15 source_031_support r mask) :
    source_031_producer.Applies fam_031_key r mask := by
  unfold source_031_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_031_key, fam_031_support, source_031_support],
    hsource⟩⟩⟩

theorem fam_031_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_031_key.support r mask) :
    row_005_producer.Applies fam_031_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_031_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 15 source_031_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_031_key.support r mask) :
    SourceIndexStateKeyFacts fam_031_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_031_producer.sourceFacts
      (fam_031_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_031_rowApplies_of_rows hrows))

theorem fam_031_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 15 source_031_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_031_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_031_key.goodKilled_of_source_row
    (source_031_producer.sourceFacts
      (fam_031_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_031_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b1f315d3f9761f8e6db0cebf7739b59e499ff3066fa540d7f17a4b71f65af145`.
Observed representative GoodDirection cases: 43. -/
private def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_032_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 0
  support := fam_032_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_032_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 0 source_032_support r mask) :
    source_032_producer.Applies fam_032_key r mask := by
  unfold source_032_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_032_key, fam_032_support, source_032_support],
    hsource⟩⟩⟩

theorem fam_032_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_032_key.support r mask) :
    row_000_producer.Applies fam_032_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_032_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 0 source_032_support r mask)
    (hrows : EqEqPosVarFirstRows fam_032_key.support r mask) :
    SourceIndexStateKeyFacts fam_032_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_032_producer.sourceFacts
      (fam_032_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_032_rowApplies_of_rows hrows))

theorem fam_032_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 0 source_032_support r mask)
    (hrows : EqEqPosVarFirstRows fam_032_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_032_key.goodKilled_of_source_row
    (source_032_producer.sourceFacts
      (fam_032_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_032_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4ddebe84b37b759c7c35af6b67962ca3122e8996e78c12dee46578cfefdbf6e6`.
Observed representative GoodDirection cases: 43. -/
private def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_033_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 1
  support := fam_033_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_033_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 1 source_034_support r mask) :
    source_034_producer.Applies fam_033_key r mask := by
  unfold source_034_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_033_key, fam_033_support, source_034_support],
    hsource⟩⟩⟩

theorem fam_033_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_033_key.support r mask) :
    row_001_producer.Applies fam_033_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_033_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 1 source_034_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_033_key.support r mask) :
    SourceIndexStateKeyFacts fam_033_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_034_producer.sourceFacts
      (fam_033_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_033_rowApplies_of_rows hrows))

theorem fam_033_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 1 source_034_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_033_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_033_key.goodKilled_of_source_row
    (source_034_producer.sourceFacts
      (fam_033_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_033_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `df22064af643aad235f9a9166e7b689a6734e88981457906fca0ca0ee09756fe`.
Observed representative GoodDirection cases: 43. -/
private def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_034_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 1
  support := fam_034_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_034_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 1 source_033_support r mask) :
    source_033_producer.Applies fam_034_key r mask := by
  unfold source_033_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_034_key, fam_034_support, source_033_support],
    hsource⟩⟩⟩

theorem fam_034_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_034_key.support r mask) :
    row_001_producer.Applies fam_034_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_034_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 1 source_033_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_034_key.support r mask) :
    SourceIndexStateKeyFacts fam_034_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_033_producer.sourceFacts
      (fam_034_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_034_rowApplies_of_rows hrows))

theorem fam_034_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 1 source_033_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_034_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_034_key.goodKilled_of_source_row
    (source_033_producer.sourceFacts
      (fam_034_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_034_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9536c12c7c0159cf45323ae74dc9266140f956597a0894244ec57c197212859f`.
Observed representative GoodDirection cases: 42. -/
private def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_035_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 0
  support := fam_035_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_035_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 0 source_035_support r mask) :
    source_035_producer.Applies fam_035_key r mask := by
  unfold source_035_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_035_key, fam_035_support, source_035_support],
    hsource⟩⟩⟩

theorem fam_035_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_035_key.support r mask) :
    row_000_producer.Applies fam_035_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_035_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 0 source_035_support r mask)
    (hrows : EqEqPosVarFirstRows fam_035_key.support r mask) :
    SourceIndexStateKeyFacts fam_035_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_035_producer.sourceFacts
      (fam_035_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_035_rowApplies_of_rows hrows))

theorem fam_035_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 0 source_035_support r mask)
    (hrows : EqEqPosVarFirstRows fam_035_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_035_key.goodKilled_of_source_row
    (source_035_producer.sourceFacts
      (fam_035_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_035_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4c9a529025b5f0d2a2561ce7b4e4aea056b49a29694fa598b4642e9b4b6aea39`.
Observed representative GoodDirection cases: 41. -/
private def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_036_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 7
  support := fam_036_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_036_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 7 source_036_support r mask) :
    source_036_producer.Applies fam_036_key r mask := by
  unfold source_036_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_036_key, fam_036_support, source_036_support],
    hsource⟩⟩⟩

theorem fam_036_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_036_key.support r mask) :
    row_004_producer.Applies fam_036_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_036_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 7 source_036_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_036_key.support r mask) :
    SourceIndexStateKeyFacts fam_036_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_036_producer.sourceFacts
      (fam_036_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_036_rowApplies_of_rows hrows))

theorem fam_036_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 7 source_036_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_036_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_036_key.goodKilled_of_source_row
    (source_036_producer.sourceFacts
      (fam_036_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_036_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ce351c894c24d0e7934e685ded4df531a3fde648aa0b4af5b6c980817065e54a`.
Observed representative GoodDirection cases: 38. -/
private def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_037_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 1
  support := fam_037_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_037_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 1 source_037_support r mask) :
    source_037_producer.Applies fam_037_key r mask := by
  unfold source_037_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_037_key, fam_037_support, source_037_support],
    hsource⟩⟩⟩

theorem fam_037_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_037_key.support r mask) :
    row_001_producer.Applies fam_037_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_037_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 1 source_037_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_037_key.support r mask) :
    SourceIndexStateKeyFacts fam_037_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_037_producer.sourceFacts
      (fam_037_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_037_rowApplies_of_rows hrows))

theorem fam_037_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 1 source_037_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_037_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_037_key.goodKilled_of_source_row
    (source_037_producer.sourceFacts
      (fam_037_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_037_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4202ea64074ef5e9557956ab72646f128e8ceb69dce405a080f38316dd5bbd6b`.
Observed representative GoodDirection cases: 36. -/
private def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_038_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 7
  support := fam_038_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_038_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 7 source_038_support r mask) :
    source_038_producer.Applies fam_038_key r mask := by
  unfold source_038_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_038_key, fam_038_support, source_038_support],
    hsource⟩⟩⟩

theorem fam_038_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_038_key.support r mask) :
    row_005_producer.Applies fam_038_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_038_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 7 source_038_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_038_key.support r mask) :
    SourceIndexStateKeyFacts fam_038_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_038_producer.sourceFacts
      (fam_038_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_038_rowApplies_of_rows hrows))

theorem fam_038_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 7 source_038_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_038_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_038_key.goodKilled_of_source_row
    (source_038_producer.sourceFacts
      (fam_038_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_038_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f6372e655bd1e080f715a75f5998002a7c4eb5c48c53c25dce5244b50fc611b2`.
Observed representative GoodDirection cases: 32. -/
private def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_039_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 12
  support := fam_039_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_039_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 12 source_039_support r mask) :
    source_039_producer.Applies fam_039_key r mask := by
  unfold source_039_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_039_key, fam_039_support, source_039_support],
    hsource⟩⟩⟩

theorem fam_039_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_039_key.support r mask) :
    row_005_producer.Applies fam_039_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_039_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 12 source_039_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_039_key.support r mask) :
    SourceIndexStateKeyFacts fam_039_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_039_producer.sourceFacts
      (fam_039_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_039_rowApplies_of_rows hrows))

theorem fam_039_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 12 source_039_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_039_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_039_key.goodKilled_of_source_row
    (source_039_producer.sourceFacts
      (fam_039_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_039_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a8ec4854eb063539742df8e5a71e443d2c6d8dc89461d041fb100f0c0980745a`.
Observed representative GoodDirection cases: 31. -/
private def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_040_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 0
  support := fam_040_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_040_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 0 source_041_support r mask) :
    source_041_producer.Applies fam_040_key r mask := by
  unfold source_041_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_040_key, fam_040_support, source_041_support],
    hsource⟩⟩⟩

theorem fam_040_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_040_key.support r mask) :
    row_000_producer.Applies fam_040_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_040_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 0 source_041_support r mask)
    (hrows : EqEqPosVarFirstRows fam_040_key.support r mask) :
    SourceIndexStateKeyFacts fam_040_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_041_producer.sourceFacts
      (fam_040_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_040_rowApplies_of_rows hrows))

theorem fam_040_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 0 source_041_support r mask)
    (hrows : EqEqPosVarFirstRows fam_040_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_040_key.goodKilled_of_source_row
    (source_041_producer.sourceFacts
      (fam_040_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_040_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b0a5564e00896691f459069bb50edc7dd6f634de7e62119cb94def93d2f5024f`.
Observed representative GoodDirection cases: 31. -/
private def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_041_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 11
  support := fam_041_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_041_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 11 source_040_support r mask) :
    source_040_producer.Applies fam_041_key r mask := by
  unfold source_040_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_041_key, fam_041_support, source_040_support],
    hsource⟩⟩⟩

theorem fam_041_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_041_key.support r mask) :
    row_004_producer.Applies fam_041_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_041_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 11 source_040_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_041_key.support r mask) :
    SourceIndexStateKeyFacts fam_041_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_040_producer.sourceFacts
      (fam_041_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_041_rowApplies_of_rows hrows))

theorem fam_041_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 11 source_040_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_041_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_041_key.goodKilled_of_source_row
    (source_040_producer.sourceFacts
      (fam_041_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_041_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `25e6873ca7c450b2c4bf7a2548883cfe32c017b9260e2a47aafb9217d4e29871`.
Observed representative GoodDirection cases: 30. -/
private def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_042_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := fam_042_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_042_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 0 source_042_support r mask) :
    source_042_producer.Applies fam_042_key r mask := by
  unfold source_042_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_042_key, fam_042_support, source_042_support],
    hsource⟩⟩⟩

theorem fam_042_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_042_key.support r mask) :
    row_000_producer.Applies fam_042_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_042_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 0 source_042_support r mask)
    (hrows : EqEqPosVarFirstRows fam_042_key.support r mask) :
    SourceIndexStateKeyFacts fam_042_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_042_producer.sourceFacts
      (fam_042_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_042_rowApplies_of_rows hrows))

theorem fam_042_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 0 source_042_support r mask)
    (hrows : EqEqPosVarFirstRows fam_042_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_042_key.goodKilled_of_source_row
    (source_042_producer.sourceFacts
      (fam_042_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_042_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bd12e0674f599c36efe9cc8fd7020aa104c87901dbb70490d11e7116bde049fa`.
Observed representative GoodDirection cases: 30. -/
private def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_043_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 0
  support := fam_043_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_043_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 0 source_043_support r mask) :
    source_043_producer.Applies fam_043_key r mask := by
  unfold source_043_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_043_key, fam_043_support, source_043_support],
    hsource⟩⟩⟩

theorem fam_043_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_043_key.support r mask) :
    row_000_producer.Applies fam_043_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_043_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 0 source_043_support r mask)
    (hrows : EqEqPosVarFirstRows fam_043_key.support r mask) :
    SourceIndexStateKeyFacts fam_043_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_043_producer.sourceFacts
      (fam_043_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_043_rowApplies_of_rows hrows))

theorem fam_043_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 0 source_043_support r mask)
    (hrows : EqEqPosVarFirstRows fam_043_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_043_key.goodKilled_of_source_row
    (source_043_producer.sourceFacts
      (fam_043_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_043_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d5fb70a848c7493d9a717a226ab641a4976a092c0a36b32962d2846ceec5177e`.
Observed representative GoodDirection cases: 30. -/
private def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_044_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 1
  support := fam_044_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_044_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 1 source_044_support r mask) :
    source_044_producer.Applies fam_044_key r mask := by
  unfold source_044_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_044_key, fam_044_support, source_044_support],
    hsource⟩⟩⟩

theorem fam_044_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_044_key.support r mask) :
    row_001_producer.Applies fam_044_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_044_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 1 source_044_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_044_key.support r mask) :
    SourceIndexStateKeyFacts fam_044_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_044_producer.sourceFacts
      (fam_044_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_044_rowApplies_of_rows hrows))

theorem fam_044_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 1 source_044_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_044_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_044_key.goodKilled_of_source_row
    (source_044_producer.sourceFacts
      (fam_044_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_044_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4f609b8005159381f497d911ce9158755f74bc5ea46357143e85a64bf601e2bf`.
Observed representative GoodDirection cases: 29. -/
private def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_045_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 2
  support := fam_045_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_045_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 2 source_045_support r mask) :
    source_045_producer.Applies fam_045_key r mask := by
  unfold source_045_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_045_key, fam_045_support, source_045_support],
    hsource⟩⟩⟩

theorem fam_045_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_045_key.support r mask) :
    row_003_producer.Applies fam_045_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_045_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 2 source_045_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_045_key.support r mask) :
    SourceIndexStateKeyFacts fam_045_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_045_producer.sourceFacts
      (fam_045_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_045_rowApplies_of_rows hrows))

theorem fam_045_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 2 source_045_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_045_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_045_key.goodKilled_of_source_row
    (source_045_producer.sourceFacts
      (fam_045_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_045_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c1136f3d6dcaf1282882f919bae09c48dd0cb7e7c1486fe27f92688bf5dd73cd`.
Observed representative GoodDirection cases: 28. -/
private def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_046_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 1
  support := fam_046_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_046_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 1 source_046_support r mask) :
    source_046_producer.Applies fam_046_key r mask := by
  unfold source_046_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_046_key, fam_046_support, source_046_support],
    hsource⟩⟩⟩

theorem fam_046_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_046_key.support r mask) :
    row_001_producer.Applies fam_046_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_046_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 1 source_046_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_046_key.support r mask) :
    SourceIndexStateKeyFacts fam_046_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_046_producer.sourceFacts
      (fam_046_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_046_rowApplies_of_rows hrows))

theorem fam_046_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 1 source_046_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_046_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_046_key.goodKilled_of_source_row
    (source_046_producer.sourceFacts
      (fam_046_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_046_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2b253f19b0568b2d787c036c76183c1aa727a0f469e235fbb42418bc8d844b84`.
Observed representative GoodDirection cases: 28. -/
private def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_047_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 13
  support := fam_047_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_047_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 13 source_047_support r mask) :
    source_047_producer.Applies fam_047_key r mask := by
  unfold source_047_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_047_key, fam_047_support, source_047_support],
    hsource⟩⟩⟩

theorem fam_047_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_047_key.support r mask) :
    row_005_producer.Applies fam_047_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_047_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 13 source_047_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_047_key.support r mask) :
    SourceIndexStateKeyFacts fam_047_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_047_producer.sourceFacts
      (fam_047_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_047_rowApplies_of_rows hrows))

theorem fam_047_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 13 source_047_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_047_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_047_key.goodKilled_of_source_row
    (source_047_producer.sourceFacts
      (fam_047_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_047_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `561c18e9c09f8b6b63975005dbb3f97e58761fac0cbe5e8ff8e448b41a1c3805`.
Observed representative GoodDirection cases: 27. -/
private def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_048_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 14
  support := fam_048_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_048_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 14 source_048_support r mask) :
    source_048_producer.Applies fam_048_key r mask := by
  unfold source_048_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_048_key, fam_048_support, source_048_support],
    hsource⟩⟩⟩

theorem fam_048_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_048_key.support r mask) :
    row_005_producer.Applies fam_048_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_048_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 14 source_048_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_048_key.support r mask) :
    SourceIndexStateKeyFacts fam_048_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_048_producer.sourceFacts
      (fam_048_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_048_rowApplies_of_rows hrows))

theorem fam_048_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 14 source_048_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_048_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_048_key.goodKilled_of_source_row
    (source_048_producer.sourceFacts
      (fam_048_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_048_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `56c9f8c82f4ce133096841e6b99ef9d5ae2abcb4af8a62347313fdbbb088d80b`.
Observed representative GoodDirection cases: 25. -/
private def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_049_key : SourceIndexStateKey where
  firstIndex := 174
  secondIndex := 0
  support := fam_049_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_049_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 0 source_049_support r mask) :
    source_049_producer.Applies fam_049_key r mask := by
  unfold source_049_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_049_key, fam_049_support, source_049_support],
    hsource⟩⟩⟩

theorem fam_049_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_049_key.support r mask) :
    row_000_producer.Applies fam_049_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_049_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 0 source_049_support r mask)
    (hrows : EqEqPosVarFirstRows fam_049_key.support r mask) :
    SourceIndexStateKeyFacts fam_049_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_049_producer.sourceFacts
      (fam_049_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_049_rowApplies_of_rows hrows))

theorem fam_049_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 0 source_049_support r mask)
    (hrows : EqEqPosVarFirstRows fam_049_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_049_key.goodKilled_of_source_row
    (source_049_producer.sourceFacts
      (fam_049_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_049_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0c7becc7afaaffef44c6b08308dddf8d70981c3f52f18cdb8abbaa0124985429`.
Observed representative GoodDirection cases: 25. -/
private def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_050_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 1
  support := fam_050_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_050_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 1 source_051_support r mask) :
    source_051_producer.Applies fam_050_key r mask := by
  unfold source_051_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_050_key, fam_050_support, source_051_support],
    hsource⟩⟩⟩

theorem fam_050_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_050_key.support r mask) :
    row_001_producer.Applies fam_050_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_050_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 1 source_051_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_050_key.support r mask) :
    SourceIndexStateKeyFacts fam_050_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_051_producer.sourceFacts
      (fam_050_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_050_rowApplies_of_rows hrows))

theorem fam_050_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 1 source_051_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_050_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_050_key.goodKilled_of_source_row
    (source_051_producer.sourceFacts
      (fam_050_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_050_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b6ed4a6c3471880f9c7efcd3dbc12c073964d261bc2e2dd65ba49e0bbfa2e0fc`.
Observed representative GoodDirection cases: 25. -/
private def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_051_key : SourceIndexStateKey where
  firstIndex := 76
  secondIndex := 1
  support := fam_051_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_051_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        76 1 source_050_support r mask) :
    source_050_producer.Applies fam_051_key r mask := by
  unfold source_050_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_051_key, fam_051_support, source_050_support],
    hsource⟩⟩⟩

theorem fam_051_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_051_key.support r mask) :
    row_001_producer.Applies fam_051_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_051_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        76 1 source_050_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_051_key.support r mask) :
    SourceIndexStateKeyFacts fam_051_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_050_producer.sourceFacts
      (fam_051_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_051_rowApplies_of_rows hrows))

theorem fam_051_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        76 1 source_050_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_051_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_051_key.goodKilled_of_source_row
    (source_050_producer.sourceFacts
      (fam_051_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_051_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `aaf0c94ac777e38df6704e10e5b134474fbdaee67e45dbecaf0a75839e4051c4`.
Observed representative GoodDirection cases: 23. -/
private def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_052_key : SourceIndexStateKey where
  firstIndex := 49
  secondIndex := 3
  support := fam_052_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_052_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        49 3 source_054_support r mask) :
    source_054_producer.Applies fam_052_key r mask := by
  unfold source_054_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_052_key, fam_052_support, source_054_support],
    hsource⟩⟩⟩

theorem fam_052_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_052_key.support r mask) :
    row_006_producer.Applies fam_052_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_052_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        49 3 source_054_support r mask)
    (hrows : EqEqNegVarFirstRows fam_052_key.support r mask) :
    SourceIndexStateKeyFacts fam_052_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_054_producer.sourceFacts
      (fam_052_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_052_rowApplies_of_rows hrows))

theorem fam_052_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        49 3 source_054_support r mask)
    (hrows : EqEqNegVarFirstRows fam_052_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_052_key.goodKilled_of_source_row
    (source_054_producer.sourceFacts
      (fam_052_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_052_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3b12b6c3f181c7911dd6e6c306705dbca793915b3d792bed6f6b96f76da986fd`.
Observed representative GoodDirection cases: 23. -/
private def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_053_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 2
  support := fam_053_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_053_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 2 source_053_support r mask) :
    source_053_producer.Applies fam_053_key r mask := by
  unfold source_053_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_053_key, fam_053_support, source_053_support],
    hsource⟩⟩⟩

theorem fam_053_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_053_key.support r mask) :
    row_003_producer.Applies fam_053_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_053_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 2 source_053_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_053_key.support r mask) :
    SourceIndexStateKeyFacts fam_053_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_053_producer.sourceFacts
      (fam_053_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_053_rowApplies_of_rows hrows))

theorem fam_053_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 2 source_053_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_053_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_053_key.goodKilled_of_source_row
    (source_053_producer.sourceFacts
      (fam_053_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_053_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `35ae4c9b84c1b658848646268cbdb6a8c2c6900e1ce948dcf13257f0ad4ed6cb`.
Observed representative GoodDirection cases: 22. -/
private def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_054_key : SourceIndexStateKey where
  firstIndex := 174
  secondIndex := 1
  support := fam_054_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_054_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 1 source_057_support r mask) :
    source_057_producer.Applies fam_054_key r mask := by
  unfold source_057_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_054_key, fam_054_support, source_057_support],
    hsource⟩⟩⟩

theorem fam_054_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_054_key.support r mask) :
    row_001_producer.Applies fam_054_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_054_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 1 source_057_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_054_key.support r mask) :
    SourceIndexStateKeyFacts fam_054_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_057_producer.sourceFacts
      (fam_054_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_054_rowApplies_of_rows hrows))

theorem fam_054_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 1 source_057_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_054_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_054_key.goodKilled_of_source_row
    (source_057_producer.sourceFacts
      (fam_054_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_054_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `56f164b10153fec1fc38a63bbd3e0e90892fbbcda01d6bdaf5e8aaadf94a1630`.
Observed representative GoodDirection cases: 22. -/
private def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_055_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 1
  support := fam_055_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_055_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 1 source_055_support r mask) :
    source_055_producer.Applies fam_055_key r mask := by
  unfold source_055_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_055_key, fam_055_support, source_055_support],
    hsource⟩⟩⟩

theorem fam_055_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_055_key.support r mask) :
    row_001_producer.Applies fam_055_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_055_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 1 source_055_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_055_key.support r mask) :
    SourceIndexStateKeyFacts fam_055_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_055_producer.sourceFacts
      (fam_055_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_055_rowApplies_of_rows hrows))

theorem fam_055_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 1 source_055_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_055_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_055_key.goodKilled_of_source_row
    (source_055_producer.sourceFacts
      (fam_055_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_055_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `82aec83bad69a688021327e001de0a98cd86f5d66bcd210f14fa93727ca9bdd1`.
Observed representative GoodDirection cases: 22. -/
private def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_056_key : SourceIndexStateKey where
  firstIndex := 18
  secondIndex := 1
  support := fam_056_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_056_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 1 source_056_support r mask) :
    source_056_producer.Applies fam_056_key r mask := by
  unfold source_056_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_056_key, fam_056_support, source_056_support],
    hsource⟩⟩⟩

theorem fam_056_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_056_key.support r mask) :
    row_001_producer.Applies fam_056_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_056_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 1 source_056_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_056_key.support r mask) :
    SourceIndexStateKeyFacts fam_056_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_056_producer.sourceFacts
      (fam_056_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_056_rowApplies_of_rows hrows))

theorem fam_056_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 1 source_056_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_056_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_056_key.goodKilled_of_source_row
    (source_056_producer.sourceFacts
      (fam_056_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_056_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c67abe35431fba0be0a441cef037ef15a1a697ccab035166f7031568a7d4052e`.
Observed representative GoodDirection cases: 21. -/
private def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_057_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 6
  support := fam_057_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_057_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 6 source_058_support r mask) :
    source_058_producer.Applies fam_057_key r mask := by
  unfold source_058_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_057_key, fam_057_support, source_058_support],
    hsource⟩⟩⟩

theorem fam_057_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_057_key.support r mask) :
    row_002_producer.Applies fam_057_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_057_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 6 source_058_support r mask)
    (hrows : EqEqPosVarSecondRows fam_057_key.support r mask) :
    SourceIndexStateKeyFacts fam_057_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_058_producer.sourceFacts
      (fam_057_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_057_rowApplies_of_rows hrows))

theorem fam_057_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 6 source_058_support r mask)
    (hrows : EqEqPosVarSecondRows fam_057_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_057_key.goodKilled_of_source_row
    (source_058_producer.sourceFacts
      (fam_057_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_057_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fd750ba67415f9eb7fe69c3f1d2565eff175952a54d289265d0e5ca4ca6e002b`.
Observed representative GoodDirection cases: 20. -/
private def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_058_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := fam_058_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_058_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 16 source_059_support r mask) :
    source_059_producer.Applies fam_058_key r mask := by
  unfold source_059_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_058_key, fam_058_support, source_059_support],
    hsource⟩⟩⟩

theorem fam_058_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_058_key.support r mask) :
    row_004_producer.Applies fam_058_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_058_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 16 source_059_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_058_key.support r mask) :
    SourceIndexStateKeyFacts fam_058_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_059_producer.sourceFacts
      (fam_058_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_058_rowApplies_of_rows hrows))

theorem fam_058_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 16 source_059_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_058_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_058_key.goodKilled_of_source_row
    (source_059_producer.sourceFacts
      (fam_058_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_058_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b8904a5fcd580f1f263f06db57fb942bc4a60f6efd145c7ed8e70161cd8e4a47`.
Observed representative GoodDirection cases: 20. -/
private def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_059_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 11
  support := fam_059_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_059_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 11 source_060_support r mask) :
    source_060_producer.Applies fam_059_key r mask := by
  unfold source_060_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_059_key, fam_059_support, source_060_support],
    hsource⟩⟩⟩

theorem fam_059_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_059_key.support r mask) :
    row_005_producer.Applies fam_059_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_059_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 11 source_060_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_059_key.support r mask) :
    SourceIndexStateKeyFacts fam_059_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_060_producer.sourceFacts
      (fam_059_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_059_rowApplies_of_rows hrows))

theorem fam_059_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 11 source_060_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_059_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_059_key.goodKilled_of_source_row
    (source_060_producer.sourceFacts
      (fam_059_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_059_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `39004b075b2d62a7ab782a5bd13ffb6c869a6a98a769f9380559dbab6c97eb26`.
Observed representative GoodDirection cases: 19. -/
private def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_060_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 11
  support := fam_060_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_060_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 11 source_061_support r mask) :
    source_061_producer.Applies fam_060_key r mask := by
  unfold source_061_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_060_key, fam_060_support, source_061_support],
    hsource⟩⟩⟩

theorem fam_060_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_060_key.support r mask) :
    row_007_producer.Applies fam_060_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_060_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 11 source_061_support r mask)
    (hrows : EqEqNegVarSecondRows fam_060_key.support r mask) :
    SourceIndexStateKeyFacts fam_060_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_061_producer.sourceFacts
      (fam_060_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_060_rowApplies_of_rows hrows))

theorem fam_060_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 11 source_061_support r mask)
    (hrows : EqEqNegVarSecondRows fam_060_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_060_key.goodKilled_of_source_row
    (source_061_producer.sourceFacts
      (fam_060_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_060_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `328d73ce8a190744522e85bc8f47a707f38936922eb4b41db316b099fb887eb1`.
Observed representative GoodDirection cases: 18. -/
private def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_061_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 1
  support := fam_061_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_061_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 1 source_062_support r mask) :
    source_062_producer.Applies fam_061_key r mask := by
  unfold source_062_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_061_key, fam_061_support, source_062_support],
    hsource⟩⟩⟩

theorem fam_061_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_061_key.support r mask) :
    row_001_producer.Applies fam_061_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_061_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 1 source_062_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_061_key.support r mask) :
    SourceIndexStateKeyFacts fam_061_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_062_producer.sourceFacts
      (fam_061_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_061_rowApplies_of_rows hrows))

theorem fam_061_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 1 source_062_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_061_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_061_key.goodKilled_of_source_row
    (source_062_producer.sourceFacts
      (fam_061_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_061_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3aaf4a23dc13f1f0e44e262c79902cb6dd8604a2bb3ce8eb6952bdaa6df8736b`.
Observed representative GoodDirection cases: 17. -/
private def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_062_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 1
  support := fam_062_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_062_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 1 source_063_support r mask) :
    source_063_producer.Applies fam_062_key r mask := by
  unfold source_063_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_062_key, fam_062_support, source_063_support],
    hsource⟩⟩⟩

theorem fam_062_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_062_key.support r mask) :
    row_001_producer.Applies fam_062_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_062_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 1 source_063_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_062_key.support r mask) :
    SourceIndexStateKeyFacts fam_062_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_063_producer.sourceFacts
      (fam_062_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_062_rowApplies_of_rows hrows))

theorem fam_062_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 1 source_063_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_062_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_062_key.goodKilled_of_source_row
    (source_063_producer.sourceFacts
      (fam_062_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_062_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3a888576ba3bfcde7a8d90f15a809c0953309774e01d898ae3ca1bf3606a85ed`.
Observed representative GoodDirection cases: 16. -/
private def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_063_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 10
  support := fam_063_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_063_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 10 source_065_support r mask) :
    source_065_producer.Applies fam_063_key r mask := by
  unfold source_065_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_063_key, fam_063_support, source_065_support],
    hsource⟩⟩⟩

theorem fam_063_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_063_key.support r mask) :
    row_007_producer.Applies fam_063_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_063_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 10 source_065_support r mask)
    (hrows : EqEqNegVarSecondRows fam_063_key.support r mask) :
    SourceIndexStateKeyFacts fam_063_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_065_producer.sourceFacts
      (fam_063_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_063_rowApplies_of_rows hrows))

theorem fam_063_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 10 source_065_support r mask)
    (hrows : EqEqNegVarSecondRows fam_063_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_063_key.goodKilled_of_source_row
    (source_065_producer.sourceFacts
      (fam_063_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_063_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3c4186faefc59d7714cb2ce7a5de0d25e1f37c12178a1720c25be74edfab60f4`.
Observed representative GoodDirection cases: 16. -/
private def fam_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_064_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 2
  support := fam_064_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_064_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 2 source_064_support r mask) :
    source_064_producer.Applies fam_064_key r mask := by
  unfold source_064_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_064_key, fam_064_support, source_064_support],
    hsource⟩⟩⟩

theorem fam_064_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_064_key.support r mask) :
    row_003_producer.Applies fam_064_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_064_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 2 source_064_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_064_key.support r mask) :
    SourceIndexStateKeyFacts fam_064_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_064_producer.sourceFacts
      (fam_064_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_064_rowApplies_of_rows hrows))

theorem fam_064_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 2 source_064_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_064_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_064_key.goodKilled_of_source_row
    (source_064_producer.sourceFacts
      (fam_064_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_064_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5133dd4ca5edd4e921eeb70cfa128143095869c6a97bea91cf40aa66aca289aa`.
Observed representative GoodDirection cases: 15. -/
private def fam_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_065_key : SourceIndexStateKey where
  firstIndex := 95
  secondIndex := 0
  support := fam_065_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_065_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 0 source_067_support r mask) :
    source_067_producer.Applies fam_065_key r mask := by
  unfold source_067_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_065_key, fam_065_support, source_067_support],
    hsource⟩⟩⟩

theorem fam_065_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_065_key.support r mask) :
    row_000_producer.Applies fam_065_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_065_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 0 source_067_support r mask)
    (hrows : EqEqPosVarFirstRows fam_065_key.support r mask) :
    SourceIndexStateKeyFacts fam_065_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_067_producer.sourceFacts
      (fam_065_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_065_rowApplies_of_rows hrows))

theorem fam_065_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 0 source_067_support r mask)
    (hrows : EqEqPosVarFirstRows fam_065_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_065_key.goodKilled_of_source_row
    (source_067_producer.sourceFacts
      (fam_065_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_065_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6af2d41d3c2ee178f41f1e043d7b4c346ce2ba5b36e5152d9b0c67d6528bd6bc`.
Observed representative GoodDirection cases: 15. -/
private def fam_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_066_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 0
  support := fam_066_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_066_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 0 source_066_support r mask) :
    source_066_producer.Applies fam_066_key r mask := by
  unfold source_066_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_066_key, fam_066_support, source_066_support],
    hsource⟩⟩⟩

theorem fam_066_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_066_key.support r mask) :
    row_000_producer.Applies fam_066_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_066_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 0 source_066_support r mask)
    (hrows : EqEqPosVarFirstRows fam_066_key.support r mask) :
    SourceIndexStateKeyFacts fam_066_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_066_producer.sourceFacts
      (fam_066_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_066_rowApplies_of_rows hrows))

theorem fam_066_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 0 source_066_support r mask)
    (hrows : EqEqPosVarFirstRows fam_066_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_066_key.goodKilled_of_source_row
    (source_066_producer.sourceFacts
      (fam_066_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_066_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fe40eaf2bcebcb7eaed0568bb6a20fdf03226d067433b81a0f8226bf09be6a30`.
Observed representative GoodDirection cases: 14. -/
private def fam_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_067_key : SourceIndexStateKey where
  firstIndex := 184
  secondIndex := 1
  support := fam_067_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_067_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        184 1 source_069_support r mask) :
    source_069_producer.Applies fam_067_key r mask := by
  unfold source_069_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_067_key, fam_067_support, source_069_support],
    hsource⟩⟩⟩

theorem fam_067_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_067_key.support r mask) :
    row_001_producer.Applies fam_067_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_067_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        184 1 source_069_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_067_key.support r mask) :
    SourceIndexStateKeyFacts fam_067_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_069_producer.sourceFacts
      (fam_067_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_067_rowApplies_of_rows hrows))

theorem fam_067_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        184 1 source_069_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_067_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_067_key.goodKilled_of_source_row
    (source_069_producer.sourceFacts
      (fam_067_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_067_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `11d95b2850994406b719844e1957d6fb11c787de83d20182bdfdf7196ee4358d`.
Observed representative GoodDirection cases: 14. -/
private def fam_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_068_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 2
  support := fam_068_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_068_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 2 source_070_support r mask) :
    source_070_producer.Applies fam_068_key r mask := by
  unfold source_070_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_068_key, fam_068_support, source_070_support],
    hsource⟩⟩⟩

theorem fam_068_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_068_key.support r mask) :
    row_003_producer.Applies fam_068_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_068_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 2 source_070_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_068_key.support r mask) :
    SourceIndexStateKeyFacts fam_068_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_070_producer.sourceFacts
      (fam_068_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_068_rowApplies_of_rows hrows))

theorem fam_068_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 2 source_070_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_068_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_068_key.goodKilled_of_source_row
    (source_070_producer.sourceFacts
      (fam_068_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_068_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `76d5d3ad3b190c9f6e119b8a88c041a9008a492b90dba38b5f0bdfa2c0b545ca`.
Observed representative GoodDirection cases: 14. -/
private def fam_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_069_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 2
  support := fam_069_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_069_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 2 source_071_support r mask) :
    source_071_producer.Applies fam_069_key r mask := by
  unfold source_071_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_069_key, fam_069_support, source_071_support],
    hsource⟩⟩⟩

theorem fam_069_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_069_key.support r mask) :
    row_003_producer.Applies fam_069_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_069_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 2 source_071_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_069_key.support r mask) :
    SourceIndexStateKeyFacts fam_069_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_071_producer.sourceFacts
      (fam_069_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_069_rowApplies_of_rows hrows))

theorem fam_069_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 2 source_071_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_069_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_069_key.goodKilled_of_source_row
    (source_071_producer.sourceFacts
      (fam_069_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_069_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `17977d6940b4f9b3cd69d726764fbc1b74e3cc88634752afc69080c10d28229e`.
Observed representative GoodDirection cases: 13. -/
private def fam_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_070_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 3
  support := fam_070_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_070_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 3 source_073_support r mask) :
    source_073_producer.Applies fam_070_key r mask := by
  unfold source_073_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_070_key, fam_070_support, source_073_support],
    hsource⟩⟩⟩

theorem fam_070_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_070_key.support r mask) :
    row_006_producer.Applies fam_070_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_070_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 3 source_073_support r mask)
    (hrows : EqEqNegVarFirstRows fam_070_key.support r mask) :
    SourceIndexStateKeyFacts fam_070_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_073_producer.sourceFacts
      (fam_070_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_070_rowApplies_of_rows hrows))

theorem fam_070_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 3 source_073_support r mask)
    (hrows : EqEqNegVarFirstRows fam_070_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_070_key.goodKilled_of_source_row
    (source_073_producer.sourceFacts
      (fam_070_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_070_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `33ae86e96c56e24d88c051575221526a33c0b89000b45938f30611ab5a4e41a6`.
Observed representative GoodDirection cases: 13. -/
private def fam_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_071_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 0
  support := fam_071_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_071_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 0 source_075_support r mask) :
    source_075_producer.Applies fam_071_key r mask := by
  unfold source_075_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_071_key, fam_071_support, source_075_support],
    hsource⟩⟩⟩

theorem fam_071_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_071_key.support r mask) :
    row_000_producer.Applies fam_071_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_071_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 0 source_075_support r mask)
    (hrows : EqEqPosVarFirstRows fam_071_key.support r mask) :
    SourceIndexStateKeyFacts fam_071_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_075_producer.sourceFacts
      (fam_071_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_071_rowApplies_of_rows hrows))

theorem fam_071_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 0 source_075_support r mask)
    (hrows : EqEqPosVarFirstRows fam_071_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_071_key.goodKilled_of_source_row
    (source_075_producer.sourceFacts
      (fam_071_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_071_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f9b8992d74a2bab1f882aa9e4086b7c8119bb6223309678613400c81182d3f4d`.
Observed representative GoodDirection cases: 13. -/
private def fam_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_072_key : SourceIndexStateKey where
  firstIndex := 103
  secondIndex := 0
  support := fam_072_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_072_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        103 0 source_074_support r mask) :
    source_074_producer.Applies fam_072_key r mask := by
  unfold source_074_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_072_key, fam_072_support, source_074_support],
    hsource⟩⟩⟩

theorem fam_072_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_072_key.support r mask) :
    row_000_producer.Applies fam_072_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_072_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        103 0 source_074_support r mask)
    (hrows : EqEqPosVarFirstRows fam_072_key.support r mask) :
    SourceIndexStateKeyFacts fam_072_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_074_producer.sourceFacts
      (fam_072_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_072_rowApplies_of_rows hrows))

theorem fam_072_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        103 0 source_074_support r mask)
    (hrows : EqEqPosVarFirstRows fam_072_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_072_key.goodKilled_of_source_row
    (source_074_producer.sourceFacts
      (fam_072_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_072_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `17464a7ecad983715fa6945a257f0268d2edfe6a0fc2022ed8af0bcdd954a560`.
Observed representative GoodDirection cases: 13. -/
private def fam_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_073_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 1
  support := fam_073_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_073_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 1 source_072_support r mask) :
    source_072_producer.Applies fam_073_key r mask := by
  unfold source_072_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_073_key, fam_073_support, source_072_support],
    hsource⟩⟩⟩

theorem fam_073_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_073_key.support r mask) :
    row_001_producer.Applies fam_073_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_073_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 1 source_072_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_073_key.support r mask) :
    SourceIndexStateKeyFacts fam_073_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_072_producer.sourceFacts
      (fam_073_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_073_rowApplies_of_rows hrows))

theorem fam_073_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 1 source_072_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_073_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_073_key.goodKilled_of_source_row
    (source_072_producer.sourceFacts
      (fam_073_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_073_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `49a24dadfda2e70d4fb07a16aa359fd18f307cbc32c7bd98a6abcebdc90aa3c9`.
Observed representative GoodDirection cases: 12. -/
private def fam_074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_074_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 6
  support := fam_074_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_074_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 6 source_080_support r mask) :
    source_080_producer.Applies fam_074_key r mask := by
  unfold source_080_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_074_key, fam_074_support, source_080_support],
    hsource⟩⟩⟩

theorem fam_074_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_074_key.support r mask) :
    row_007_producer.Applies fam_074_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_074_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 6 source_080_support r mask)
    (hrows : EqEqNegVarSecondRows fam_074_key.support r mask) :
    SourceIndexStateKeyFacts fam_074_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_080_producer.sourceFacts
      (fam_074_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_074_rowApplies_of_rows hrows))

theorem fam_074_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 6 source_080_support r mask)
    (hrows : EqEqNegVarSecondRows fam_074_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_074_key.goodKilled_of_source_row
    (source_080_producer.sourceFacts
      (fam_074_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_074_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7a1e0cd0a6c58ec13f08757d346780672ca91ff5432cda2588fef008da40a32c`.
Observed representative GoodDirection cases: 12. -/
private def fam_075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_075_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 0
  support := fam_075_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_075_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 0 source_076_support r mask) :
    source_076_producer.Applies fam_075_key r mask := by
  unfold source_076_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_075_key, fam_075_support, source_076_support],
    hsource⟩⟩⟩

theorem fam_075_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_075_key.support r mask) :
    row_000_producer.Applies fam_075_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_075_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 0 source_076_support r mask)
    (hrows : EqEqPosVarFirstRows fam_075_key.support r mask) :
    SourceIndexStateKeyFacts fam_075_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_076_producer.sourceFacts
      (fam_075_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_075_rowApplies_of_rows hrows))

theorem fam_075_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 0 source_076_support r mask)
    (hrows : EqEqPosVarFirstRows fam_075_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_075_key.goodKilled_of_source_row
    (source_076_producer.sourceFacts
      (fam_075_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_075_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fdcb921c6ebe7ecdd2123df586ceb90e441220452ab12763063432bab1d8ebf8`.
Observed representative GoodDirection cases: 12. -/
private def fam_076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_076_key : SourceIndexStateKey where
  firstIndex := 105
  secondIndex := 0
  support := fam_076_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_076_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 0 source_079_support r mask) :
    source_079_producer.Applies fam_076_key r mask := by
  unfold source_079_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_076_key, fam_076_support, source_079_support],
    hsource⟩⟩⟩

theorem fam_076_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_076_key.support r mask) :
    row_000_producer.Applies fam_076_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_076_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 0 source_079_support r mask)
    (hrows : EqEqPosVarFirstRows fam_076_key.support r mask) :
    SourceIndexStateKeyFacts fam_076_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_079_producer.sourceFacts
      (fam_076_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_076_rowApplies_of_rows hrows))

theorem fam_076_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 0 source_079_support r mask)
    (hrows : EqEqPosVarFirstRows fam_076_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_076_key.goodKilled_of_source_row
    (source_079_producer.sourceFacts
      (fam_076_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_076_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `375736f26d4c2eddd65c7402f9bd7e1e12036ad7fab7b73c152ce03e5af39b52`.
Observed representative GoodDirection cases: 12. -/
private def fam_077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_077_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 1
  support := fam_077_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_077_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 1 source_077_support r mask) :
    source_077_producer.Applies fam_077_key r mask := by
  unfold source_077_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_077_key, fam_077_support, source_077_support],
    hsource⟩⟩⟩

theorem fam_077_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_077_key.support r mask) :
    row_001_producer.Applies fam_077_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_077_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 1 source_077_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_077_key.support r mask) :
    SourceIndexStateKeyFacts fam_077_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_077_producer.sourceFacts
      (fam_077_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_077_rowApplies_of_rows hrows))

theorem fam_077_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 1 source_077_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_077_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_077_key.goodKilled_of_source_row
    (source_077_producer.sourceFacts
      (fam_077_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_077_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6b77eeef1471b90640a4845f2e7b7b4a3d02289c82b7c304ef9116544d18b9ad`.
Observed representative GoodDirection cases: 12. -/
private def fam_078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_078_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 2
  support := fam_078_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_078_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 2 source_078_support r mask) :
    source_078_producer.Applies fam_078_key r mask := by
  unfold source_078_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_078_key, fam_078_support, source_078_support],
    hsource⟩⟩⟩

theorem fam_078_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_078_key.support r mask) :
    row_003_producer.Applies fam_078_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_078_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 2 source_078_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_078_key.support r mask) :
    SourceIndexStateKeyFacts fam_078_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_078_producer.sourceFacts
      (fam_078_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_078_rowApplies_of_rows hrows))

theorem fam_078_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 2 source_078_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_078_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_078_key.goodKilled_of_source_row
    (source_078_producer.sourceFacts
      (fam_078_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_078_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6feeb6884d5e0b667d64bdfb21d087168ae5b53bfbf4cc4ff400605a833e93ac`.
Observed representative GoodDirection cases: 11. -/
private def fam_079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_079_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 13
  support := fam_079_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_079_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 13 source_081_support r mask) :
    source_081_producer.Applies fam_079_key r mask := by
  unfold source_081_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_079_key, fam_079_support, source_081_support],
    hsource⟩⟩⟩

theorem fam_079_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_079_key.support r mask) :
    row_007_producer.Applies fam_079_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_079_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 13 source_081_support r mask)
    (hrows : EqEqNegVarSecondRows fam_079_key.support r mask) :
    SourceIndexStateKeyFacts fam_079_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_081_producer.sourceFacts
      (fam_079_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_079_rowApplies_of_rows hrows))

theorem fam_079_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 13 source_081_support r mask)
    (hrows : EqEqNegVarSecondRows fam_079_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_079_key.goodKilled_of_source_row
    (source_081_producer.sourceFacts
      (fam_079_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_079_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `84cbf583a8d3dad09d61d062b4f77758321b9574ea5c3d469d2fe7b9ff6500ef`.
Observed representative GoodDirection cases: 11. -/
private def fam_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_080_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 8
  support := fam_080_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_080_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_068_support r mask) :
    source_068_producer.Applies fam_080_key r mask := by
  unfold source_068_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_080_key, fam_080_support, source_068_support],
    hsource⟩⟩⟩

theorem fam_080_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_080_key.support r mask) :
    row_008_producer.Applies fam_080_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_080_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_068_support r mask)
    (hrows : ExactTwoSourceValidRows fam_080_key.support r mask) :
    SourceIndexStateKeyFacts fam_080_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_068_producer.sourceFacts
      (fam_080_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_080_rowApplies_of_rows hrows))

theorem fam_080_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_068_support r mask)
    (hrows : ExactTwoSourceValidRows fam_080_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_080_key.goodKilled_of_source_row
    (source_068_producer.sourceFacts
      (fam_080_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_080_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8382ddd9bd9da8912d9a8e90d4b12f57e9d5a8174160d8ddfc87346c5e94d05d`.
Observed representative GoodDirection cases: 10. -/
private def fam_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_081_key : SourceIndexStateKey where
  firstIndex := 128
  secondIndex := 3
  support := fam_081_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_081_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        128 3 source_086_support r mask) :
    source_086_producer.Applies fam_081_key r mask := by
  unfold source_086_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_081_key, fam_081_support, source_086_support],
    hsource⟩⟩⟩

theorem fam_081_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_081_key.support r mask) :
    row_006_producer.Applies fam_081_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_081_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        128 3 source_086_support r mask)
    (hrows : EqEqNegVarFirstRows fam_081_key.support r mask) :
    SourceIndexStateKeyFacts fam_081_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_086_producer.sourceFacts
      (fam_081_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_081_rowApplies_of_rows hrows))

theorem fam_081_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        128 3 source_086_support r mask)
    (hrows : EqEqNegVarFirstRows fam_081_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_081_key.goodKilled_of_source_row
    (source_086_producer.sourceFacts
      (fam_081_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_081_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ff3c409ea782b0a1febd2a9f82767837e7cd4727d3282f7a40bc1cd0edbe7563`.
Observed representative GoodDirection cases: 10. -/
private def fam_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_082_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 3
  support := fam_082_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_082_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 3 source_083_support r mask) :
    source_083_producer.Applies fam_082_key r mask := by
  unfold source_083_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_082_key, fam_082_support, source_083_support],
    hsource⟩⟩⟩

theorem fam_082_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_082_key.support r mask) :
    row_006_producer.Applies fam_082_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_082_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 3 source_083_support r mask)
    (hrows : EqEqNegVarFirstRows fam_082_key.support r mask) :
    SourceIndexStateKeyFacts fam_082_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_083_producer.sourceFacts
      (fam_082_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_082_rowApplies_of_rows hrows))

theorem fam_082_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 3 source_083_support r mask)
    (hrows : EqEqNegVarFirstRows fam_082_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_082_key.goodKilled_of_source_row
    (source_083_producer.sourceFacts
      (fam_082_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_082_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `163648196897c06ef9d3da61435ef10e6cc3fdd49678b00a392ece04621568a4`.
Observed representative GoodDirection cases: 10. -/
private def fam_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_083_key : SourceIndexStateKey where
  firstIndex := 147
  secondIndex := 0
  support := fam_083_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_083_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        147 0 source_082_support r mask) :
    source_082_producer.Applies fam_083_key r mask := by
  unfold source_082_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_083_key, fam_083_support, source_082_support],
    hsource⟩⟩⟩

theorem fam_083_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_083_key.support r mask) :
    row_000_producer.Applies fam_083_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_083_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        147 0 source_082_support r mask)
    (hrows : EqEqPosVarFirstRows fam_083_key.support r mask) :
    SourceIndexStateKeyFacts fam_083_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_082_producer.sourceFacts
      (fam_083_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_083_rowApplies_of_rows hrows))

theorem fam_083_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        147 0 source_082_support r mask)
    (hrows : EqEqPosVarFirstRows fam_083_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_083_key.goodKilled_of_source_row
    (source_082_producer.sourceFacts
      (fam_083_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_083_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `917a64473dc71e3b13a5fe31410ca315f01367affff4bb98206b476cf7fb8c0c`.
Observed representative GoodDirection cases: 10. -/
private def fam_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_084_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 0
  support := fam_084_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_084_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 0 source_084_support r mask) :
    source_084_producer.Applies fam_084_key r mask := by
  unfold source_084_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_084_key, fam_084_support, source_084_support],
    hsource⟩⟩⟩

theorem fam_084_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_084_key.support r mask) :
    row_000_producer.Applies fam_084_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_084_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 0 source_084_support r mask)
    (hrows : EqEqPosVarFirstRows fam_084_key.support r mask) :
    SourceIndexStateKeyFacts fam_084_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_084_producer.sourceFacts
      (fam_084_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_084_rowApplies_of_rows hrows))

theorem fam_084_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 0 source_084_support r mask)
    (hrows : EqEqPosVarFirstRows fam_084_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_084_key.goodKilled_of_source_row
    (source_084_producer.sourceFacts
      (fam_084_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_084_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b1194ee972047bfa27cfb188b029f1ef4073b09adad7ba549ac65f1c74bd0542`.
Observed representative GoodDirection cases: 10. -/
private def fam_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_085_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 2
  support := fam_085_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_085_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 2 source_085_support r mask) :
    source_085_producer.Applies fam_085_key r mask := by
  unfold source_085_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_085_key, fam_085_support, source_085_support],
    hsource⟩⟩⟩

theorem fam_085_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_085_key.support r mask) :
    row_003_producer.Applies fam_085_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_085_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 2 source_085_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_085_key.support r mask) :
    SourceIndexStateKeyFacts fam_085_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_085_producer.sourceFacts
      (fam_085_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_085_rowApplies_of_rows hrows))

theorem fam_085_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 2 source_085_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_085_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_085_key.goodKilled_of_source_row
    (source_085_producer.sourceFacts
      (fam_085_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_085_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7774b30a46b90263474d77dc6a2719b61517977b9e6fdab6ab7e98c1f7a4b6da`.
Observed representative GoodDirection cases: 9. -/
private def fam_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_086_key : SourceIndexStateKey where
  firstIndex := 70
  secondIndex := 1
  support := fam_086_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_086_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 1 source_087_support r mask) :
    source_087_producer.Applies fam_086_key r mask := by
  unfold source_087_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_086_key, fam_086_support, source_087_support],
    hsource⟩⟩⟩

theorem fam_086_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_086_key.support r mask) :
    row_001_producer.Applies fam_086_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_086_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 1 source_087_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_086_key.support r mask) :
    SourceIndexStateKeyFacts fam_086_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_087_producer.sourceFacts
      (fam_086_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_086_rowApplies_of_rows hrows))

theorem fam_086_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 1 source_087_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_086_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_086_key.goodKilled_of_source_row
    (source_087_producer.sourceFacts
      (fam_086_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_086_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `28d92c79cefca0ab0ac0a537d0932d82b77762bfbe8d3d997d31f9a8a874dbea`.
Observed representative GoodDirection cases: 8. -/
private def fam_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_087_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_087_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_087_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask) :
    source_052_producer.Applies fam_087_key r mask := by
  unfold source_052_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_087_key, fam_087_support, source_052_support],
    hsource⟩⟩⟩

theorem fam_087_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_087_key.support r mask) :
    row_011_producer.Applies fam_087_key r mask := by
  unfold row_011_producer
  exact ⟨rfl, hrows⟩

theorem fam_087_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_087_key.support r mask) :
    SourceIndexStateKeyFacts fam_087_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_052_producer.sourceFacts
      (fam_087_sourceApplies_of_sourcePredicate hsource))
    (row_011_producer.rowFacts
      (fam_087_rowApplies_of_rows hrows))

theorem fam_087_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_087_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_087_key.goodKilled_of_source_row
    (source_052_producer.sourceFacts
      (fam_087_sourceApplies_of_sourcePredicate hsource))
    (row_011_producer.rowFacts
      (fam_087_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e27d74489eb1edc6fc15e21515bdf140f0f76e7c3352eca58bc4374b83cf3c22`.
Observed representative GoodDirection cases: 8. -/
private def fam_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_088_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_088_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_088_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask) :
    source_052_producer.Applies fam_088_key r mask := by
  unfold source_052_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_088_key, fam_088_support, source_052_support],
    hsource⟩⟩⟩

theorem fam_088_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_088_key.support r mask) :
    row_012_producer.Applies fam_088_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_088_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_088_key.support r mask) :
    SourceIndexStateKeyFacts fam_088_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_052_producer.sourceFacts
      (fam_088_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_088_rowApplies_of_rows hrows))

theorem fam_088_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_088_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_088_key.goodKilled_of_source_row
    (source_052_producer.sourceFacts
      (fam_088_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_088_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `210e32bdfdee4c05aa32ad561d47d3d23edb75e961c29df44b1418c816ce977b`.
Observed representative GoodDirection cases: 8. -/
private def fam_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_089_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 15
  support := fam_089_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_089_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 15 source_094_support r mask) :
    source_094_producer.Applies fam_089_key r mask := by
  unfold source_094_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_089_key, fam_089_support, source_094_support],
    hsource⟩⟩⟩

theorem fam_089_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_089_key.support r mask) :
    row_007_producer.Applies fam_089_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_089_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 15 source_094_support r mask)
    (hrows : EqEqNegVarSecondRows fam_089_key.support r mask) :
    SourceIndexStateKeyFacts fam_089_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_094_producer.sourceFacts
      (fam_089_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_089_rowApplies_of_rows hrows))

theorem fam_089_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 15 source_094_support r mask)
    (hrows : EqEqNegVarSecondRows fam_089_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_089_key.goodKilled_of_source_row
    (source_094_producer.sourceFacts
      (fam_089_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_089_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `629b6931e35226852e91ae453b7da2a04f9f5231c0b06e415095c6bd60e892c7`.
Observed representative GoodDirection cases: 8. -/
private def fam_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_090_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 0
  support := fam_090_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_090_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 0 source_088_support r mask) :
    source_088_producer.Applies fam_090_key r mask := by
  unfold source_088_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_090_key, fam_090_support, source_088_support],
    hsource⟩⟩⟩

theorem fam_090_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_090_key.support r mask) :
    row_000_producer.Applies fam_090_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_090_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 0 source_088_support r mask)
    (hrows : EqEqPosVarFirstRows fam_090_key.support r mask) :
    SourceIndexStateKeyFacts fam_090_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_088_producer.sourceFacts
      (fam_090_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_090_rowApplies_of_rows hrows))

theorem fam_090_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 0 source_088_support r mask)
    (hrows : EqEqPosVarFirstRows fam_090_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_090_key.goodKilled_of_source_row
    (source_088_producer.sourceFacts
      (fam_090_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_090_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f0b753dfc3deda1191c063efe7934e2675b3263e4504222ab184c757c4b0da85`.
Observed representative GoodDirection cases: 8. -/
private def fam_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_091_key : SourceIndexStateKey where
  firstIndex := 107
  secondIndex := 0
  support := fam_091_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_091_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 0 source_091_support r mask) :
    source_091_producer.Applies fam_091_key r mask := by
  unfold source_091_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_091_key, fam_091_support, source_091_support],
    hsource⟩⟩⟩

theorem fam_091_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_091_key.support r mask) :
    row_000_producer.Applies fam_091_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_091_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 0 source_091_support r mask)
    (hrows : EqEqPosVarFirstRows fam_091_key.support r mask) :
    SourceIndexStateKeyFacts fam_091_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_091_producer.sourceFacts
      (fam_091_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_091_rowApplies_of_rows hrows))

theorem fam_091_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 0 source_091_support r mask)
    (hrows : EqEqPosVarFirstRows fam_091_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_091_key.goodKilled_of_source_row
    (source_091_producer.sourceFacts
      (fam_091_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_091_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6027493b9647f3827454b1c8fb782e3a3bb8516cea6a93c3c9a88a1edd1288dd`.
Observed representative GoodDirection cases: 8. -/
private def fam_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_092_key : SourceIndexStateKey where
  firstIndex := 168
  secondIndex := 1
  support := fam_092_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_092_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 1 source_092_support r mask) :
    source_092_producer.Applies fam_092_key r mask := by
  unfold source_092_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_092_key, fam_092_support, source_092_support],
    hsource⟩⟩⟩

theorem fam_092_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_092_key.support r mask) :
    row_001_producer.Applies fam_092_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_092_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 1 source_092_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_092_key.support r mask) :
    SourceIndexStateKeyFacts fam_092_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_092_producer.sourceFacts
      (fam_092_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_092_rowApplies_of_rows hrows))

theorem fam_092_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 1 source_092_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_092_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_092_key.goodKilled_of_source_row
    (source_092_producer.sourceFacts
      (fam_092_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_092_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d49db102e2e9e3e72c3d18dbe0af443a35a82be89029788072230d9175a359dc`.
Observed representative GoodDirection cases: 8. -/
private def fam_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_093_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 1
  support := fam_093_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_093_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 1 source_089_support r mask) :
    source_089_producer.Applies fam_093_key r mask := by
  unfold source_089_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_093_key, fam_093_support, source_089_support],
    hsource⟩⟩⟩

theorem fam_093_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_093_key.support r mask) :
    row_001_producer.Applies fam_093_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_093_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 1 source_089_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_093_key.support r mask) :
    SourceIndexStateKeyFacts fam_093_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_089_producer.sourceFacts
      (fam_093_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_093_rowApplies_of_rows hrows))

theorem fam_093_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 1 source_089_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_093_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_093_key.goodKilled_of_source_row
    (source_089_producer.sourceFacts
      (fam_093_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_093_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `53cd41bf3302a8a8cc8c551bfcc56a659913aaec03841da83a3b835370382133`.
Observed representative GoodDirection cases: 8. -/
private def fam_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_094_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 2
  support := fam_094_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_094_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 2 source_093_support r mask) :
    source_093_producer.Applies fam_094_key r mask := by
  unfold source_093_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_094_key, fam_094_support, source_093_support],
    hsource⟩⟩⟩

theorem fam_094_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_094_key.support r mask) :
    row_003_producer.Applies fam_094_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_094_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 2 source_093_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_094_key.support r mask) :
    SourceIndexStateKeyFacts fam_094_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_093_producer.sourceFacts
      (fam_094_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_094_rowApplies_of_rows hrows))

theorem fam_094_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 2 source_093_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_094_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_094_key.goodKilled_of_source_row
    (source_093_producer.sourceFacts
      (fam_094_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_094_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `60ede019af700f7f4cd0110f34256fe8ffc7dfdb1dc30add788ef06392ab0d22`.
Observed representative GoodDirection cases: 8. -/
private def fam_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_095_key : SourceIndexStateKey where
  firstIndex := 95
  secondIndex := 2
  support := fam_095_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_095_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 2 source_090_support r mask) :
    source_090_producer.Applies fam_095_key r mask := by
  unfold source_090_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_095_key, fam_095_support, source_090_support],
    hsource⟩⟩⟩

theorem fam_095_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_095_key.support r mask) :
    row_003_producer.Applies fam_095_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_095_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 2 source_090_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_095_key.support r mask) :
    SourceIndexStateKeyFacts fam_095_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_090_producer.sourceFacts
      (fam_095_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_095_rowApplies_of_rows hrows))

theorem fam_095_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 2 source_090_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_095_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_095_key.goodKilled_of_source_row
    (source_090_producer.sourceFacts
      (fam_095_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_095_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d7d264c0e3ad46aaf9b9b576e0654381201768312415e3f1a37f4245a134d5a2`.
Observed representative GoodDirection cases: 7. -/
private def fam_096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def fam_096_key : SourceIndexStateKey where
  firstIndex := 70
  secondIndex := 4
  support := fam_096_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_096_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 4 source_101_support r mask) :
    source_101_producer.Applies fam_096_key r mask := by
  unfold source_101_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_096_key, fam_096_support, source_101_support],
    hsource⟩⟩⟩

theorem fam_096_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_096_key.support r mask) :
    row_011_producer.Applies fam_096_key r mask := by
  unfold row_011_producer
  exact ⟨rfl, hrows⟩

theorem fam_096_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 4 source_101_support r mask)
    (hrows : AxisAOnlyRows fam_096_key.support r mask) :
    SourceIndexStateKeyFacts fam_096_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_101_producer.sourceFacts
      (fam_096_sourceApplies_of_sourcePredicate hsource))
    (row_011_producer.rowFacts
      (fam_096_rowApplies_of_rows hrows))

theorem fam_096_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 4 source_101_support r mask)
    (hrows : AxisAOnlyRows fam_096_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_096_key.goodKilled_of_source_row
    (source_101_producer.sourceFacts
      (fam_096_sourceApplies_of_sourcePredicate hsource))
    (row_011_producer.rowFacts
      (fam_096_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6c41c02549ae4d2775d47f5e083cf12723ea4da308c4ba5294e6d2e42013e537`.
Observed representative GoodDirection cases: 7. -/
private def fam_097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_097_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 12
  support := fam_097_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_097_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 12 source_098_support r mask) :
    source_098_producer.Applies fam_097_key r mask := by
  unfold source_098_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_097_key, fam_097_support, source_098_support],
    hsource⟩⟩⟩

theorem fam_097_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_097_key.support r mask) :
    row_007_producer.Applies fam_097_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_097_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 12 source_098_support r mask)
    (hrows : EqEqNegVarSecondRows fam_097_key.support r mask) :
    SourceIndexStateKeyFacts fam_097_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_098_producer.sourceFacts
      (fam_097_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_097_rowApplies_of_rows hrows))

theorem fam_097_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 12 source_098_support r mask)
    (hrows : EqEqNegVarSecondRows fam_097_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_097_key.goodKilled_of_source_row
    (source_098_producer.sourceFacts
      (fam_097_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_097_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9cdd9ae26a29edcbde27246434917507fc35fa7ba86f499b27730cbe989191cd`.
Observed representative GoodDirection cases: 7. -/
private def fam_098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_098_key : SourceIndexStateKey where
  firstIndex := 39
  secondIndex := 8
  support := fam_098_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_098_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        39 8 source_099_support r mask) :
    source_099_producer.Applies fam_098_key r mask := by
  unfold source_099_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_098_key, fam_098_support, source_099_support],
    hsource⟩⟩⟩

theorem fam_098_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_098_key.support r mask) :
    row_008_producer.Applies fam_098_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_098_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        39 8 source_099_support r mask)
    (hrows : ExactTwoSourceValidRows fam_098_key.support r mask) :
    SourceIndexStateKeyFacts fam_098_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_099_producer.sourceFacts
      (fam_098_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_098_rowApplies_of_rows hrows))

theorem fam_098_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        39 8 source_099_support r mask)
    (hrows : ExactTwoSourceValidRows fam_098_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_098_key.goodKilled_of_source_row
    (source_099_producer.sourceFacts
      (fam_098_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_098_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8f223f7d21a317d963f0142d98bd068a94eb3c4a93018c5413312a2518025f32`.
Observed representative GoodDirection cases: 7. -/
private def fam_099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_099_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 2
  support := fam_099_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_099_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 2 source_100_support r mask) :
    source_100_producer.Applies fam_099_key r mask := by
  unfold source_100_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_099_key, fam_099_support, source_100_support],
    hsource⟩⟩⟩

theorem fam_099_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_099_key.support r mask) :
    row_003_producer.Applies fam_099_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_099_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 2 source_100_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_099_key.support r mask) :
    SourceIndexStateKeyFacts fam_099_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_100_producer.sourceFacts
      (fam_099_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_099_rowApplies_of_rows hrows))

theorem fam_099_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 2 source_100_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_099_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_099_key.goodKilled_of_source_row
    (source_100_producer.sourceFacts
      (fam_099_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_099_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `92d9193d31b543a801877c6f75375b5227fa136d33b657c03e9d44160efc21d2`.
Observed representative GoodDirection cases: 7. -/
private def fam_100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_100_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 2
  support := fam_100_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_100_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 2 source_096_support r mask) :
    source_096_producer.Applies fam_100_key r mask := by
  unfold source_096_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_100_key, fam_100_support, source_096_support],
    hsource⟩⟩⟩

theorem fam_100_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_100_key.support r mask) :
    row_003_producer.Applies fam_100_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_100_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 2 source_096_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_100_key.support r mask) :
    SourceIndexStateKeyFacts fam_100_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_096_producer.sourceFacts
      (fam_100_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_100_rowApplies_of_rows hrows))

theorem fam_100_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 2 source_096_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_100_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_100_key.goodKilled_of_source_row
    (source_096_producer.sourceFacts
      (fam_100_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_100_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b3dec9b73617fb97f10ec983dec473a9580fdac444ed8d2472c9ebc259ee7c87`.
Observed representative GoodDirection cases: 7. -/
private def fam_101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_101_key : SourceIndexStateKey where
  firstIndex := 92
  secondIndex := 2
  support := fam_101_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_101_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 2 source_095_support r mask) :
    source_095_producer.Applies fam_101_key r mask := by
  unfold source_095_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_101_key, fam_101_support, source_095_support],
    hsource⟩⟩⟩

theorem fam_101_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_101_key.support r mask) :
    row_003_producer.Applies fam_101_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_101_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 2 source_095_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_101_key.support r mask) :
    SourceIndexStateKeyFacts fam_101_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_095_producer.sourceFacts
      (fam_101_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_101_rowApplies_of_rows hrows))

theorem fam_101_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 2 source_095_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_101_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_101_key.goodKilled_of_source_row
    (source_095_producer.sourceFacts
      (fam_101_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_101_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bae141b5dd11114ffab1e610b2bd7eac3fa9828745b16bd54c063c4fe626dab2`.
Observed representative GoodDirection cases: 7. -/
private def fam_102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_102_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 2
  support := fam_102_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_102_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 2 source_097_support r mask) :
    source_097_producer.Applies fam_102_key r mask := by
  unfold source_097_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_102_key, fam_102_support, source_097_support],
    hsource⟩⟩⟩

theorem fam_102_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_102_key.support r mask) :
    row_003_producer.Applies fam_102_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_102_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 2 source_097_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_102_key.support r mask) :
    SourceIndexStateKeyFacts fam_102_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_097_producer.sourceFacts
      (fam_102_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_102_rowApplies_of_rows hrows))

theorem fam_102_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 2 source_097_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_102_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_102_key.goodKilled_of_source_row
    (source_097_producer.sourceFacts
      (fam_102_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_102_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5f190a5636f4978cdcebba2f645792416aabed603260a2c4290148da9338fec0`.
Observed representative GoodDirection cases: 6. -/
private def fam_103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_103_key : SourceIndexStateKey where
  firstIndex := 115
  secondIndex := 0
  support := fam_103_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_103_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 0 source_103_support r mask) :
    source_103_producer.Applies fam_103_key r mask := by
  unfold source_103_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_103_key, fam_103_support, source_103_support],
    hsource⟩⟩⟩

theorem fam_103_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_103_key.support r mask) :
    row_000_producer.Applies fam_103_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_103_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 0 source_103_support r mask)
    (hrows : EqEqPosVarFirstRows fam_103_key.support r mask) :
    SourceIndexStateKeyFacts fam_103_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_103_producer.sourceFacts
      (fam_103_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_103_rowApplies_of_rows hrows))

theorem fam_103_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 0 source_103_support r mask)
    (hrows : EqEqPosVarFirstRows fam_103_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_103_key.goodKilled_of_source_row
    (source_103_producer.sourceFacts
      (fam_103_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_103_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `202dab450f26e6e3a68eb6bc5608ccddd8a02db3a59a8223bb1b42f63028bc45`.
Observed representative GoodDirection cases: 6. -/
private def fam_104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_104_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 1
  support := fam_104_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_104_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 1 source_104_support r mask) :
    source_104_producer.Applies fam_104_key r mask := by
  unfold source_104_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_104_key, fam_104_support, source_104_support],
    hsource⟩⟩⟩

theorem fam_104_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_104_key.support r mask) :
    row_001_producer.Applies fam_104_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_104_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 1 source_104_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_104_key.support r mask) :
    SourceIndexStateKeyFacts fam_104_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_104_producer.sourceFacts
      (fam_104_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_104_rowApplies_of_rows hrows))

theorem fam_104_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 1 source_104_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_104_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_104_key.goodKilled_of_source_row
    (source_104_producer.sourceFacts
      (fam_104_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_104_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `96957106a0132eddabc3de3abc7610da9a591ecff81316395bb01749ce8e9867`.
Observed representative GoodDirection cases: 6. -/
private def fam_105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_105_key : SourceIndexStateKey where
  firstIndex := 29
  secondIndex := 2
  support := fam_105_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_105_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        29 2 source_102_support r mask) :
    source_102_producer.Applies fam_105_key r mask := by
  unfold source_102_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_105_key, fam_105_support, source_102_support],
    hsource⟩⟩⟩

theorem fam_105_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_105_key.support r mask) :
    row_003_producer.Applies fam_105_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_105_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        29 2 source_102_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_105_key.support r mask) :
    SourceIndexStateKeyFacts fam_105_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_102_producer.sourceFacts
      (fam_105_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_105_rowApplies_of_rows hrows))

theorem fam_105_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        29 2 source_102_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_105_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_105_key.goodKilled_of_source_row
    (source_102_producer.sourceFacts
      (fam_105_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_105_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `38b946f2fa21a3c7e86a2093a7b3d9cf5e8aad2b871fd7b58ede991353be0da1`.
Observed representative GoodDirection cases: 5. -/
private def fam_106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_106_key : SourceIndexStateKey where
  firstIndex := 87
  secondIndex := 3
  support := fam_106_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_106_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        87 3 source_108_support r mask) :
    source_108_producer.Applies fam_106_key r mask := by
  unfold source_108_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_106_key, fam_106_support, source_108_support],
    hsource⟩⟩⟩

theorem fam_106_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_106_key.support r mask) :
    row_006_producer.Applies fam_106_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_106_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        87 3 source_108_support r mask)
    (hrows : EqEqNegVarFirstRows fam_106_key.support r mask) :
    SourceIndexStateKeyFacts fam_106_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_108_producer.sourceFacts
      (fam_106_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_106_rowApplies_of_rows hrows))

theorem fam_106_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        87 3 source_108_support r mask)
    (hrows : EqEqNegVarFirstRows fam_106_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_106_key.goodKilled_of_source_row
    (source_108_producer.sourceFacts
      (fam_106_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_106_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c0a8bed3299f97c821eb8f330b39581b75a6d7d57458fdddb59020ed6f3e2ef1`.
Observed representative GoodDirection cases: 5. -/
private def fam_107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_107_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 3
  support := fam_107_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_107_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 3 source_106_support r mask) :
    source_106_producer.Applies fam_107_key r mask := by
  unfold source_106_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_107_key, fam_107_support, source_106_support],
    hsource⟩⟩⟩

theorem fam_107_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_107_key.support r mask) :
    row_006_producer.Applies fam_107_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_107_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 3 source_106_support r mask)
    (hrows : EqEqNegVarFirstRows fam_107_key.support r mask) :
    SourceIndexStateKeyFacts fam_107_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_106_producer.sourceFacts
      (fam_107_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_107_rowApplies_of_rows hrows))

theorem fam_107_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 3 source_106_support r mask)
    (hrows : EqEqNegVarFirstRows fam_107_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_107_key.goodKilled_of_source_row
    (source_106_producer.sourceFacts
      (fam_107_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_107_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fe0d2c6fdbd1d260cde0f0ef6ef8c8ab6debf4bb5b70ceda4ae92266d21ce8d2`.
Observed representative GoodDirection cases: 5. -/
private def fam_108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_108_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 14
  support := fam_108_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_108_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 14 source_111_support r mask) :
    source_111_producer.Applies fam_108_key r mask := by
  unfold source_111_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_108_key, fam_108_support, source_111_support],
    hsource⟩⟩⟩

theorem fam_108_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_108_key.support r mask) :
    row_007_producer.Applies fam_108_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_108_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 14 source_111_support r mask)
    (hrows : EqEqNegVarSecondRows fam_108_key.support r mask) :
    SourceIndexStateKeyFacts fam_108_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_111_producer.sourceFacts
      (fam_108_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_108_rowApplies_of_rows hrows))

theorem fam_108_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 14 source_111_support r mask)
    (hrows : EqEqNegVarSecondRows fam_108_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_108_key.goodKilled_of_source_row
    (source_111_producer.sourceFacts
      (fam_108_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_108_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0778794abff7963aa45155a23d08d63dcfd67784fce58a6c55db98e53c880497`.
Observed representative GoodDirection cases: 5. -/
private def fam_109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_109_key : SourceIndexStateKey where
  firstIndex := 119
  secondIndex := 0
  support := fam_109_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_109_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 0 source_109_support r mask) :
    source_109_producer.Applies fam_109_key r mask := by
  unfold source_109_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_109_key, fam_109_support, source_109_support],
    hsource⟩⟩⟩

theorem fam_109_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_109_key.support r mask) :
    row_000_producer.Applies fam_109_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_109_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 0 source_109_support r mask)
    (hrows : EqEqPosVarFirstRows fam_109_key.support r mask) :
    SourceIndexStateKeyFacts fam_109_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_109_producer.sourceFacts
      (fam_109_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_109_rowApplies_of_rows hrows))

theorem fam_109_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 0 source_109_support r mask)
    (hrows : EqEqPosVarFirstRows fam_109_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_109_key.goodKilled_of_source_row
    (source_109_producer.sourceFacts
      (fam_109_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_109_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a278f13775d42a10f4fce114d9ca8cd1f59082c44a1677460e7a7ddad770db10`.
Observed representative GoodDirection cases: 5. -/
private def fam_110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_110_key : SourceIndexStateKey where
  firstIndex := 141
  secondIndex := 0
  support := fam_110_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_110_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 0 source_105_support r mask) :
    source_105_producer.Applies fam_110_key r mask := by
  unfold source_105_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_110_key, fam_110_support, source_105_support],
    hsource⟩⟩⟩

theorem fam_110_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_110_key.support r mask) :
    row_000_producer.Applies fam_110_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_110_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 0 source_105_support r mask)
    (hrows : EqEqPosVarFirstRows fam_110_key.support r mask) :
    SourceIndexStateKeyFacts fam_110_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_105_producer.sourceFacts
      (fam_110_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_110_rowApplies_of_rows hrows))

theorem fam_110_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 0 source_105_support r mask)
    (hrows : EqEqPosVarFirstRows fam_110_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_110_key.goodKilled_of_source_row
    (source_105_producer.sourceFacts
      (fam_110_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_110_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `cba2ce8929570b082d2a2ba9136e750df56c46ff6eb2c3dae94e36fe81eb5aee`.
Observed representative GoodDirection cases: 5. -/
private def fam_111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_111_key : SourceIndexStateKey where
  firstIndex := 19
  secondIndex := 1
  support := fam_111_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_111_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        19 1 source_107_support r mask) :
    source_107_producer.Applies fam_111_key r mask := by
  unfold source_107_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_111_key, fam_111_support, source_107_support],
    hsource⟩⟩⟩

theorem fam_111_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_111_key.support r mask) :
    row_001_producer.Applies fam_111_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_111_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        19 1 source_107_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_111_key.support r mask) :
    SourceIndexStateKeyFacts fam_111_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_107_producer.sourceFacts
      (fam_111_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_111_rowApplies_of_rows hrows))

theorem fam_111_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        19 1 source_107_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_111_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_111_key.goodKilled_of_source_row
    (source_107_producer.sourceFacts
      (fam_111_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_111_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `307b518bdefa532ce9207f935557e93cb89dbbdbfb0929ac9f926eee7b7f88a7`.
Observed representative GoodDirection cases: 5. -/
private def fam_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_112_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 16
  support := fam_112_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_112_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 16 source_110_support r mask) :
    source_110_producer.Applies fam_112_key r mask := by
  unfold source_110_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_112_key, fam_112_support, source_110_support],
    hsource⟩⟩⟩

theorem fam_112_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_112_key.support r mask) :
    row_005_producer.Applies fam_112_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_112_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 16 source_110_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_112_key.support r mask) :
    SourceIndexStateKeyFacts fam_112_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_110_producer.sourceFacts
      (fam_112_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_112_rowApplies_of_rows hrows))

theorem fam_112_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 16 source_110_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_112_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_112_key.goodKilled_of_source_row
    (source_110_producer.sourceFacts
      (fam_112_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_112_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0c34bfb49af24ec42a1f42fc5b9a3786787b736bc27930a770584a07964c05b6`.
Observed representative GoodDirection cases: 4. -/
private def fam_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_113_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_113_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_113_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask) :
    source_052_producer.Applies fam_113_key r mask := by
  unfold source_052_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_113_key, fam_113_support, source_052_support],
    hsource⟩⟩⟩

theorem fam_113_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_113_key.support r mask) :
    row_015_producer.Applies fam_113_key r mask := by
  unfold row_015_producer
  exact ⟨rfl, hrows⟩

theorem fam_113_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_113_key.support r mask) :
    SourceIndexStateKeyFacts fam_113_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_052_producer.sourceFacts
      (fam_113_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_113_rowApplies_of_rows hrows))

theorem fam_113_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_113_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_113_key.goodKilled_of_source_row
    (source_052_producer.sourceFacts
      (fam_113_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_113_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3bfda27fc01458d2f389e7f2c54bc8b1ccbe1f08a7582d881305cbba7f775712`.
Observed representative GoodDirection cases: 4. -/
private def fam_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def fam_114_key : SourceIndexStateKey where
  firstIndex := 101
  secondIndex := 4
  support := fam_114_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_114_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        101 4 source_118_support r mask) :
    source_118_producer.Applies fam_114_key r mask := by
  unfold source_118_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_114_key, fam_114_support, source_118_support],
    hsource⟩⟩⟩

theorem fam_114_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_114_key.support r mask) :
    row_012_producer.Applies fam_114_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_114_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        101 4 source_118_support r mask)
    (hrows : AxisAOnlyRows fam_114_key.support r mask) :
    SourceIndexStateKeyFacts fam_114_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_118_producer.sourceFacts
      (fam_114_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_114_rowApplies_of_rows hrows))

theorem fam_114_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        101 4 source_118_support r mask)
    (hrows : AxisAOnlyRows fam_114_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_114_key.goodKilled_of_source_row
    (source_118_producer.sourceFacts
      (fam_114_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_114_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b2f94cef1231145b0abb80b6b95b9f12d3bb817aff4c2bb4216b58a051217172`.
Observed representative GoodDirection cases: 4. -/
private def fam_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_115_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_115_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_115_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask) :
    source_052_producer.Applies fam_115_key r mask := by
  unfold source_052_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_115_key, fam_115_support, source_052_support],
    hsource⟩⟩⟩

theorem fam_115_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_115_key.support r mask) :
    row_016_producer.Applies fam_115_key r mask := by
  unfold row_016_producer
  exact ⟨rfl, hrows⟩

theorem fam_115_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_115_key.support r mask) :
    SourceIndexStateKeyFacts fam_115_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_052_producer.sourceFacts
      (fam_115_sourceApplies_of_sourcePredicate hsource))
    (row_016_producer.rowFacts
      (fam_115_rowApplies_of_rows hrows))

theorem fam_115_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_052_support r mask)
    (hrows : AxisAOnlyRows fam_115_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_115_key.goodKilled_of_source_row
    (source_052_producer.sourceFacts
      (fam_115_sourceApplies_of_sourcePredicate hsource))
    (row_016_producer.rowFacts
      (fam_115_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2b13ec450d4e16701ee460dbb55d845bd603427f2235572a3df3ee8e915caa6c`.
Observed representative GoodDirection cases: 4. -/
private def fam_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_116_key : SourceIndexStateKey where
  firstIndex := 92
  secondIndex := 3
  support := fam_116_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_116_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 3 source_117_support r mask) :
    source_117_producer.Applies fam_116_key r mask := by
  unfold source_117_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_116_key, fam_116_support, source_117_support],
    hsource⟩⟩⟩

theorem fam_116_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_116_key.support r mask) :
    row_006_producer.Applies fam_116_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_116_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 3 source_117_support r mask)
    (hrows : EqEqNegVarFirstRows fam_116_key.support r mask) :
    SourceIndexStateKeyFacts fam_116_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_117_producer.sourceFacts
      (fam_116_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_116_rowApplies_of_rows hrows))

theorem fam_116_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 3 source_117_support r mask)
    (hrows : EqEqNegVarFirstRows fam_116_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_116_key.goodKilled_of_source_row
    (source_117_producer.sourceFacts
      (fam_116_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_116_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b29d18bb938d1e0b97d174ddfef79896e0171d7809c44b9931041bf951838947`.
Observed representative GoodDirection cases: 4. -/
private def fam_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_117_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 3
  support := fam_117_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_117_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 3 source_120_support r mask) :
    source_120_producer.Applies fam_117_key r mask := by
  unfold source_120_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_117_key, fam_117_support, source_120_support],
    hsource⟩⟩⟩

theorem fam_117_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_117_key.support r mask) :
    row_006_producer.Applies fam_117_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_117_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 3 source_120_support r mask)
    (hrows : EqEqNegVarFirstRows fam_117_key.support r mask) :
    SourceIndexStateKeyFacts fam_117_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_120_producer.sourceFacts
      (fam_117_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_117_rowApplies_of_rows hrows))

theorem fam_117_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 3 source_120_support r mask)
    (hrows : EqEqNegVarFirstRows fam_117_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_117_key.goodKilled_of_source_row
    (source_120_producer.sourceFacts
      (fam_117_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_117_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f65ecfcd11f59ce4bc09bca2fbb17b2920d0bf8e0c7ac556d404c1c2650bbb40`.
Observed representative GoodDirection cases: 4. -/
private def fam_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_118_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 3
  support := fam_118_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_118_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 3 source_115_support r mask) :
    source_115_producer.Applies fam_118_key r mask := by
  unfold source_115_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_118_key, fam_118_support, source_115_support],
    hsource⟩⟩⟩

theorem fam_118_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_118_key.support r mask) :
    row_006_producer.Applies fam_118_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_118_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 3 source_115_support r mask)
    (hrows : EqEqNegVarFirstRows fam_118_key.support r mask) :
    SourceIndexStateKeyFacts fam_118_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_115_producer.sourceFacts
      (fam_118_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_118_rowApplies_of_rows hrows))

theorem fam_118_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 3 source_115_support r mask)
    (hrows : EqEqNegVarFirstRows fam_118_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_118_key.goodKilled_of_source_row
    (source_115_producer.sourceFacts
      (fam_118_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_118_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `219ccc4850692397dcce0b52d769bac44be881aa4a1d26942b57d075a9518e0e`.
Observed representative GoodDirection cases: 4. -/
private def fam_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_119_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 0
  support := fam_119_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_119_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_114_support r mask) :
    source_114_producer.Applies fam_119_key r mask := by
  unfold source_114_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_119_key, fam_119_support, source_114_support],
    hsource⟩⟩⟩

theorem fam_119_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_119_key.support r mask) :
    row_000_producer.Applies fam_119_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_119_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_114_support r mask)
    (hrows : EqEqPosVarFirstRows fam_119_key.support r mask) :
    SourceIndexStateKeyFacts fam_119_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_114_producer.sourceFacts
      (fam_119_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_119_rowApplies_of_rows hrows))

theorem fam_119_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_114_support r mask)
    (hrows : EqEqPosVarFirstRows fam_119_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_119_key.goodKilled_of_source_row
    (source_114_producer.sourceFacts
      (fam_119_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_119_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `770c17db81a00d2cc196f1c69403cf77853451677532a5501a7f235477ca92e8`.
Observed representative GoodDirection cases: 4. -/
private def fam_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_120_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 8
  support := fam_120_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_120_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_068_support r mask) :
    source_068_producer.Applies fam_120_key r mask := by
  unfold source_068_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_120_key, fam_120_support, source_068_support],
    hsource⟩⟩⟩

theorem fam_120_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_120_key.support r mask) :
    row_009_producer.Applies fam_120_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_120_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_068_support r mask)
    (hrows : ExactTwoSourceValidRows fam_120_key.support r mask) :
    SourceIndexStateKeyFacts fam_120_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_068_producer.sourceFacts
      (fam_120_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_120_rowApplies_of_rows hrows))

theorem fam_120_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_068_support r mask)
    (hrows : ExactTwoSourceValidRows fam_120_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_120_key.goodKilled_of_source_row
    (source_068_producer.sourceFacts
      (fam_120_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_120_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a48f7244748fb2b5d6b99537ebea0e8e6ecfeb92e94d96e4983baf7034d33578`.
Observed representative GoodDirection cases: 4. -/
private def fam_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_121_key : SourceIndexStateKey where
  firstIndex := 63
  secondIndex := 5
  support := fam_121_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_121_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        63 5 source_122_support r mask) :
    source_122_producer.Applies fam_121_key r mask := by
  unfold source_122_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_121_key, fam_121_support, source_122_support],
    hsource⟩⟩⟩

theorem fam_121_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_121_key.support r mask) :
    row_010_producer.Applies fam_121_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_121_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        63 5 source_122_support r mask)
    (hrows : ExactTwoSourceValidRows fam_121_key.support r mask) :
    SourceIndexStateKeyFacts fam_121_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_122_producer.sourceFacts
      (fam_121_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_121_rowApplies_of_rows hrows))

theorem fam_121_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        63 5 source_122_support r mask)
    (hrows : ExactTwoSourceValidRows fam_121_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_121_key.goodKilled_of_source_row
    (source_122_producer.sourceFacts
      (fam_121_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_121_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `cf8e645b0a41020012bfd8ebc801566a318ba48b402b01f338d75f62edd3a5bd`.
Observed representative GoodDirection cases: 4. -/
private def fam_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_122_key : SourceIndexStateKey where
  firstIndex := 16
  secondIndex := 5
  support := fam_122_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_122_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 5 source_119_support r mask) :
    source_119_producer.Applies fam_122_key r mask := by
  unfold source_119_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_122_key, fam_122_support, source_119_support],
    hsource⟩⟩⟩

theorem fam_122_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_122_key.support r mask) :
    row_009_producer.Applies fam_122_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_122_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 5 source_119_support r mask)
    (hrows : ExactTwoSourceValidRows fam_122_key.support r mask) :
    SourceIndexStateKeyFacts fam_122_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_119_producer.sourceFacts
      (fam_122_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_122_rowApplies_of_rows hrows))

theorem fam_122_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 5 source_119_support r mask)
    (hrows : ExactTwoSourceValidRows fam_122_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_122_key.goodKilled_of_source_row
    (source_119_producer.sourceFacts
      (fam_122_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_122_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `dc7ee6966182758392ba8c93ee7187a14eff9c4b58f01538af7ddd92fb5e1f04`.
Observed representative GoodDirection cases: 4. -/
private def fam_123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_123_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 6
  support := fam_123_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_123_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 6 source_112_support r mask) :
    source_112_producer.Applies fam_123_key r mask := by
  unfold source_112_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_123_key, fam_123_support, source_112_support],
    hsource⟩⟩⟩

theorem fam_123_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_123_key.support r mask) :
    row_008_producer.Applies fam_123_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_123_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 6 source_112_support r mask)
    (hrows : ExactTwoSourceValidRows fam_123_key.support r mask) :
    SourceIndexStateKeyFacts fam_123_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_112_producer.sourceFacts
      (fam_123_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_123_rowApplies_of_rows hrows))

theorem fam_123_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 6 source_112_support r mask)
    (hrows : ExactTwoSourceValidRows fam_123_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_123_key.goodKilled_of_source_row
    (source_112_producer.sourceFacts
      (fam_123_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_123_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7c398943bfe7f776983d0a4611f2d24c7a26d43a7a36ec62a9d317e4e445a888`.
Observed representative GoodDirection cases: 4. -/
private def fam_124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_124_key : SourceIndexStateKey where
  firstIndex := 94
  secondIndex := 1
  support := fam_124_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_124_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        94 1 source_121_support r mask) :
    source_121_producer.Applies fam_124_key r mask := by
  unfold source_121_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_124_key, fam_124_support, source_121_support],
    hsource⟩⟩⟩

theorem fam_124_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_124_key.support r mask) :
    row_001_producer.Applies fam_124_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_124_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        94 1 source_121_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_124_key.support r mask) :
    SourceIndexStateKeyFacts fam_124_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_121_producer.sourceFacts
      (fam_124_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_124_rowApplies_of_rows hrows))

theorem fam_124_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        94 1 source_121_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_124_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_124_key.goodKilled_of_source_row
    (source_121_producer.sourceFacts
      (fam_124_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_124_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a4e779f35722c820b078dd239298815fae71de8b9b9b79e7e766750f35c03be6`.
Observed representative GoodDirection cases: 4. -/
private def fam_125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_125_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 1
  support := fam_125_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_125_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 1 source_124_support r mask) :
    source_124_producer.Applies fam_125_key r mask := by
  unfold source_124_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_125_key, fam_125_support, source_124_support],
    hsource⟩⟩⟩

theorem fam_125_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_125_key.support r mask) :
    row_001_producer.Applies fam_125_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_125_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 1 source_124_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_125_key.support r mask) :
    SourceIndexStateKeyFacts fam_125_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_124_producer.sourceFacts
      (fam_125_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_125_rowApplies_of_rows hrows))

theorem fam_125_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 1 source_124_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_125_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_125_key.goodKilled_of_source_row
    (source_124_producer.sourceFacts
      (fam_125_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_125_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e3871a481d56fba6bedc69f62f83f3cb2b6631d5b3ea08fb09a295dbe1b4f6f1`.
Observed representative GoodDirection cases: 4. -/
private def fam_126_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_126_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 1
  support := fam_126_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_126_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_113_support r mask) :
    source_113_producer.Applies fam_126_key r mask := by
  unfold source_113_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_126_key, fam_126_support, source_113_support],
    hsource⟩⟩⟩

theorem fam_126_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_126_key.support r mask) :
    row_001_producer.Applies fam_126_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_126_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_113_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_126_key.support r mask) :
    SourceIndexStateKeyFacts fam_126_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_113_producer.sourceFacts
      (fam_126_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_126_rowApplies_of_rows hrows))

theorem fam_126_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_113_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_126_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_126_key.goodKilled_of_source_row
    (source_113_producer.sourceFacts
      (fam_126_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_126_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bc85655f9c2838076ef73e8c888506c6bdaf04bcb58e07b08fcec4c7da8981da`.
Observed representative GoodDirection cases: 4. -/
private def fam_127_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_127_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 2
  support := fam_127_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_127_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 2 source_116_support r mask) :
    source_116_producer.Applies fam_127_key r mask := by
  unfold source_116_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_127_key, fam_127_support, source_116_support],
    hsource⟩⟩⟩

theorem fam_127_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_127_key.support r mask) :
    row_003_producer.Applies fam_127_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_127_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 2 source_116_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_127_key.support r mask) :
    SourceIndexStateKeyFacts fam_127_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_116_producer.sourceFacts
      (fam_127_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_127_rowApplies_of_rows hrows))

theorem fam_127_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 2 source_116_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_127_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_127_key.goodKilled_of_source_row
    (source_116_producer.sourceFacts
      (fam_127_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_127_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3470de88c3bb9a115ac302df9a176bfee11086cf10630f460eac52948997c5dd`.
Observed representative GoodDirection cases: 3. -/
private def fam_128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_128_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 3
  support := fam_128_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_128_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 3 source_132_support r mask) :
    source_132_producer.Applies fam_128_key r mask := by
  unfold source_132_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_128_key, fam_128_support, source_132_support],
    hsource⟩⟩⟩

theorem fam_128_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_128_key.support r mask) :
    row_006_producer.Applies fam_128_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_128_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 3 source_132_support r mask)
    (hrows : EqEqNegVarFirstRows fam_128_key.support r mask) :
    SourceIndexStateKeyFacts fam_128_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_132_producer.sourceFacts
      (fam_128_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_128_rowApplies_of_rows hrows))

theorem fam_128_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 3 source_132_support r mask)
    (hrows : EqEqNegVarFirstRows fam_128_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_128_key.goodKilled_of_source_row
    (source_132_producer.sourceFacts
      (fam_128_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_128_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b8abf83a701501202948c3cfb9cc50a419f9d23ff90c75b8eeba2f8faa967288`.
Observed representative GoodDirection cases: 3. -/
private def fam_129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_129_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 3
  support := fam_129_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_129_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 3 source_131_support r mask) :
    source_131_producer.Applies fam_129_key r mask := by
  unfold source_131_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_129_key, fam_129_support, source_131_support],
    hsource⟩⟩⟩

theorem fam_129_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_129_key.support r mask) :
    row_006_producer.Applies fam_129_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_129_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 3 source_131_support r mask)
    (hrows : EqEqNegVarFirstRows fam_129_key.support r mask) :
    SourceIndexStateKeyFacts fam_129_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_131_producer.sourceFacts
      (fam_129_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_129_rowApplies_of_rows hrows))

theorem fam_129_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 3 source_131_support r mask)
    (hrows : EqEqNegVarFirstRows fam_129_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_129_key.goodKilled_of_source_row
    (source_131_producer.sourceFacts
      (fam_129_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_129_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7b3584380159ae7b69dba30e7b0a0b033a457a6fff390587f2a3320523728830`.
Observed representative GoodDirection cases: 3. -/
private def fam_130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_130_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 5
  support := fam_130_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_130_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 5 source_128_support r mask) :
    source_128_producer.Applies fam_130_key r mask := by
  unfold source_128_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_130_key, fam_130_support, source_128_support],
    hsource⟩⟩⟩

theorem fam_130_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_130_key.support r mask) :
    row_007_producer.Applies fam_130_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_130_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 5 source_128_support r mask)
    (hrows : EqEqNegVarSecondRows fam_130_key.support r mask) :
    SourceIndexStateKeyFacts fam_130_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_128_producer.sourceFacts
      (fam_130_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_130_rowApplies_of_rows hrows))

theorem fam_130_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 5 source_128_support r mask)
    (hrows : EqEqNegVarSecondRows fam_130_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_130_key.goodKilled_of_source_row
    (source_128_producer.sourceFacts
      (fam_130_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_130_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `242c2617f243881445680768f3741073f1038f4c2907ea97125881f135b34fa1`.
Observed representative GoodDirection cases: 3. -/
private def fam_131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_131_key : SourceIndexStateKey where
  firstIndex := 118
  secondIndex := 0
  support := fam_131_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_131_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 0 source_129_support r mask) :
    source_129_producer.Applies fam_131_key r mask := by
  unfold source_129_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_131_key, fam_131_support, source_129_support],
    hsource⟩⟩⟩

theorem fam_131_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_131_key.support r mask) :
    row_000_producer.Applies fam_131_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_131_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 0 source_129_support r mask)
    (hrows : EqEqPosVarFirstRows fam_131_key.support r mask) :
    SourceIndexStateKeyFacts fam_131_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_129_producer.sourceFacts
      (fam_131_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_131_rowApplies_of_rows hrows))

theorem fam_131_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 0 source_129_support r mask)
    (hrows : EqEqPosVarFirstRows fam_131_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_131_key.goodKilled_of_source_row
    (source_129_producer.sourceFacts
      (fam_131_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_131_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9d1e64462716bf012317f5f8dcfdddb3e55cb6fc75d7f4da626b445f2d96fd3a`.
Observed representative GoodDirection cases: 3. -/
private def fam_132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_132_key : SourceIndexStateKey where
  firstIndex := 170
  secondIndex := 0
  support := fam_132_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_132_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 0 source_134_support r mask) :
    source_134_producer.Applies fam_132_key r mask := by
  unfold source_134_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_132_key, fam_132_support, source_134_support],
    hsource⟩⟩⟩

theorem fam_132_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_132_key.support r mask) :
    row_000_producer.Applies fam_132_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_132_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 0 source_134_support r mask)
    (hrows : EqEqPosVarFirstRows fam_132_key.support r mask) :
    SourceIndexStateKeyFacts fam_132_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_134_producer.sourceFacts
      (fam_132_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_132_rowApplies_of_rows hrows))

theorem fam_132_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 0 source_134_support r mask)
    (hrows : EqEqPosVarFirstRows fam_132_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_132_key.goodKilled_of_source_row
    (source_134_producer.sourceFacts
      (fam_132_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_132_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b9288f536564a1a4815d5642a491b876f71d7efa07a01f5bd52046d7ce1fc608`.
Observed representative GoodDirection cases: 3. -/
private def fam_133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_133_key : SourceIndexStateKey where
  firstIndex := 130
  secondIndex := 0
  support := fam_133_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_133_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 0 source_125_support r mask) :
    source_125_producer.Applies fam_133_key r mask := by
  unfold source_125_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_133_key, fam_133_support, source_125_support],
    hsource⟩⟩⟩

theorem fam_133_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_133_key.support r mask) :
    row_000_producer.Applies fam_133_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_133_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 0 source_125_support r mask)
    (hrows : EqEqPosVarFirstRows fam_133_key.support r mask) :
    SourceIndexStateKeyFacts fam_133_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_125_producer.sourceFacts
      (fam_133_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_133_rowApplies_of_rows hrows))

theorem fam_133_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 0 source_125_support r mask)
    (hrows : EqEqPosVarFirstRows fam_133_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_133_key.goodKilled_of_source_row
    (source_125_producer.sourceFacts
      (fam_133_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_133_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3ba8a8fccd97698172785570efd9574e459b257c671091d3318a6fde7eed756a`.
Observed representative GoodDirection cases: 3. -/
private def fam_134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_134_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 13
  support := fam_134_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_134_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_123_support r mask) :
    source_123_producer.Applies fam_134_key r mask := by
  unfold source_123_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_134_key, fam_134_support, source_123_support],
    hsource⟩⟩⟩

theorem fam_134_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_134_key.support r mask) :
    row_010_producer.Applies fam_134_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_134_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_123_support r mask)
    (hrows : ExactTwoSourceValidRows fam_134_key.support r mask) :
    SourceIndexStateKeyFacts fam_134_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_123_producer.sourceFacts
      (fam_134_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_134_rowApplies_of_rows hrows))

theorem fam_134_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_123_support r mask)
    (hrows : ExactTwoSourceValidRows fam_134_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_134_key.goodKilled_of_source_row
    (source_123_producer.sourceFacts
      (fam_134_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_134_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0e085619323e511c868e6951154f492225320904b520d2caa33b7c57f3a455da`.
Observed representative GoodDirection cases: 3. -/
private def fam_135_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_135_key : SourceIndexStateKey where
  firstIndex := 170
  secondIndex := 1
  support := fam_135_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_135_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_130_support r mask) :
    source_130_producer.Applies fam_135_key r mask := by
  unfold source_130_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_135_key, fam_135_support, source_130_support],
    hsource⟩⟩⟩

theorem fam_135_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_135_key.support r mask) :
    row_001_producer.Applies fam_135_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_135_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_130_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_135_key.support r mask) :
    SourceIndexStateKeyFacts fam_135_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_130_producer.sourceFacts
      (fam_135_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_135_rowApplies_of_rows hrows))

theorem fam_135_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_130_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_135_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_135_key.goodKilled_of_source_row
    (source_130_producer.sourceFacts
      (fam_135_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_135_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7f6b1c8d100de8d401852666890798a1894623a86f345b2ba8e9624ee53e1080`.
Observed representative GoodDirection cases: 3. -/
private def fam_136_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_136_key : SourceIndexStateKey where
  firstIndex := 142
  secondIndex := 1
  support := fam_136_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_136_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 1 source_136_support r mask) :
    source_136_producer.Applies fam_136_key r mask := by
  unfold source_136_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_136_key, fam_136_support, source_136_support],
    hsource⟩⟩⟩

theorem fam_136_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_136_key.support r mask) :
    row_001_producer.Applies fam_136_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_136_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 1 source_136_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_136_key.support r mask) :
    SourceIndexStateKeyFacts fam_136_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_136_producer.sourceFacts
      (fam_136_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_136_rowApplies_of_rows hrows))

theorem fam_136_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 1 source_136_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_136_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_136_key.goodKilled_of_source_row
    (source_136_producer.sourceFacts
      (fam_136_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_136_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `808e287953dcc53499fbbc7f0640515f95f4a607fbfdbaab9db2a777a8a3700b`.
Observed representative GoodDirection cases: 3. -/
private def fam_137_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_137_key : SourceIndexStateKey where
  firstIndex := 141
  secondIndex := 1
  support := fam_137_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_137_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 1 source_137_support r mask) :
    source_137_producer.Applies fam_137_key r mask := by
  unfold source_137_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_137_key, fam_137_support, source_137_support],
    hsource⟩⟩⟩

theorem fam_137_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_137_key.support r mask) :
    row_001_producer.Applies fam_137_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_137_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 1 source_137_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_137_key.support r mask) :
    SourceIndexStateKeyFacts fam_137_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_137_producer.sourceFacts
      (fam_137_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_137_rowApplies_of_rows hrows))

theorem fam_137_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 1 source_137_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_137_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_137_key.goodKilled_of_source_row
    (source_137_producer.sourceFacts
      (fam_137_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_137_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a951a90bc13ad1fef2e612c213c593bac3331e79fef45847f2ee6ea884ae156d`.
Observed representative GoodDirection cases: 3. -/
private def fam_138_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_138_key : SourceIndexStateKey where
  firstIndex := 106
  secondIndex := 1
  support := fam_138_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_138_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        106 1 source_133_support r mask) :
    source_133_producer.Applies fam_138_key r mask := by
  unfold source_133_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_138_key, fam_138_support, source_133_support],
    hsource⟩⟩⟩

theorem fam_138_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_138_key.support r mask) :
    row_001_producer.Applies fam_138_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_138_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        106 1 source_133_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_138_key.support r mask) :
    SourceIndexStateKeyFacts fam_138_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_133_producer.sourceFacts
      (fam_138_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_138_rowApplies_of_rows hrows))

theorem fam_138_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        106 1 source_133_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_138_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_138_key.goodKilled_of_source_row
    (source_133_producer.sourceFacts
      (fam_138_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_138_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bf3f56735c5b9f02d6ab2dc2b24b4bbca8f1e7c3e32701f49a0d2f16d06a3039`.
Observed representative GoodDirection cases: 3. -/
private def fam_139_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_139_key : SourceIndexStateKey where
  firstIndex := 156
  secondIndex := 1
  support := fam_139_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_139_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        156 1 source_126_support r mask) :
    source_126_producer.Applies fam_139_key r mask := by
  unfold source_126_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_139_key, fam_139_support, source_126_support],
    hsource⟩⟩⟩

theorem fam_139_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_139_key.support r mask) :
    row_001_producer.Applies fam_139_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_139_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        156 1 source_126_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_139_key.support r mask) :
    SourceIndexStateKeyFacts fam_139_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_126_producer.sourceFacts
      (fam_139_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_139_rowApplies_of_rows hrows))

theorem fam_139_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        156 1 source_126_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_139_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_139_key.goodKilled_of_source_row
    (source_126_producer.sourceFacts
      (fam_139_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_139_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `726be38c6eab0244d5eeda53eb225e9bf83c895975a1ab72b7dfe44e332124ca`.
Observed representative GoodDirection cases: 3. -/
private def fam_140_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_140_key : SourceIndexStateKey where
  firstIndex := 107
  secondIndex := 2
  support := fam_140_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_140_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 2 source_127_support r mask) :
    source_127_producer.Applies fam_140_key r mask := by
  unfold source_127_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_140_key, fam_140_support, source_127_support],
    hsource⟩⟩⟩

theorem fam_140_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_140_key.support r mask) :
    row_003_producer.Applies fam_140_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_140_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 2 source_127_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_140_key.support r mask) :
    SourceIndexStateKeyFacts fam_140_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_127_producer.sourceFacts
      (fam_140_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_140_rowApplies_of_rows hrows))

theorem fam_140_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 2 source_127_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_140_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_140_key.goodKilled_of_source_row
    (source_127_producer.sourceFacts
      (fam_140_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_140_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8d0b16e49fb9107841cfd0acc8232348de2d74b4ebe12bbc41dd9fb4bdac6092`.
Observed representative GoodDirection cases: 3. -/
private def fam_141_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_141_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 2
  support := fam_141_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_141_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 2 source_135_support r mask) :
    source_135_producer.Applies fam_141_key r mask := by
  unfold source_135_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_141_key, fam_141_support, source_135_support],
    hsource⟩⟩⟩

theorem fam_141_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_141_key.support r mask) :
    row_003_producer.Applies fam_141_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_141_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 2 source_135_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_141_key.support r mask) :
    SourceIndexStateKeyFacts fam_141_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_135_producer.sourceFacts
      (fam_141_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_141_rowApplies_of_rows hrows))

theorem fam_141_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 2 source_135_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_141_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_141_key.goodKilled_of_source_row
    (source_135_producer.sourceFacts
      (fam_141_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_141_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `176a6f5cde928d4c056b2b27f4236130f38d8b4b1697cedc9d7872ca728c9dc0`.
Observed representative GoodDirection cases: 2. -/
private def fam_142_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_142_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 13
  support := fam_142_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_142_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 13 source_162_support r mask) :
    source_162_producer.Applies fam_142_key r mask := by
  unfold source_162_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_142_key, fam_142_support, source_162_support],
    hsource⟩⟩⟩

theorem fam_142_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_142_key.support r mask) :
    row_014_producer.Applies fam_142_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_142_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 13 source_162_support r mask)
    (hrows : AxisAOnlyRows fam_142_key.support r mask) :
    SourceIndexStateKeyFacts fam_142_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_162_producer.sourceFacts
      (fam_142_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_142_rowApplies_of_rows hrows))

theorem fam_142_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 13 source_162_support r mask)
    (hrows : AxisAOnlyRows fam_142_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_142_key.goodKilled_of_source_row
    (source_162_producer.sourceFacts
      (fam_142_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_142_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a6a31f751351ebb4e60512e2b32d6628586215d4259dbfe9d2fe299bba1b8a1c`.
Observed representative GoodDirection cases: 2. -/
private def fam_143_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_143_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 12
  support := fam_143_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_143_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 12 source_148_support r mask) :
    source_148_producer.Applies fam_143_key r mask := by
  unfold source_148_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_143_key, fam_143_support, source_148_support],
    hsource⟩⟩⟩

theorem fam_143_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_143_key.support r mask) :
    row_018_producer.Applies fam_143_key r mask := by
  unfold row_018_producer
  exact ⟨rfl, hrows⟩

theorem fam_143_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 12 source_148_support r mask)
    (hrows : AxisAOnlyRows fam_143_key.support r mask) :
    SourceIndexStateKeyFacts fam_143_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_148_producer.sourceFacts
      (fam_143_sourceApplies_of_sourcePredicate hsource))
    (row_018_producer.rowFacts
      (fam_143_rowApplies_of_rows hrows))

theorem fam_143_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 12 source_148_support r mask)
    (hrows : AxisAOnlyRows fam_143_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_143_key.goodKilled_of_source_row
    (source_148_producer.sourceFacts
      (fam_143_sourceApplies_of_sourcePredicate hsource))
    (row_018_producer.rowFacts
      (fam_143_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `646c6bc7f18e68e95287ee82b7443b597812247d0cdf72e65e8c74347cff221c`.
Observed representative GoodDirection cases: 2. -/
private def fam_144_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_144_key : SourceIndexStateKey where
  firstIndex := 99
  secondIndex := 7
  support := fam_144_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_144_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 7 source_163_support r mask) :
    source_163_producer.Applies fam_144_key r mask := by
  unfold source_163_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_144_key, fam_144_support, source_163_support],
    hsource⟩⟩⟩

theorem fam_144_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_144_key.support r mask) :
    row_013_producer.Applies fam_144_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_144_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 7 source_163_support r mask)
    (hrows : AxisBOnlyRows fam_144_key.support r mask) :
    SourceIndexStateKeyFacts fam_144_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_163_producer.sourceFacts
      (fam_144_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_144_rowApplies_of_rows hrows))

theorem fam_144_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 7 source_163_support r mask)
    (hrows : AxisBOnlyRows fam_144_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_144_key.goodKilled_of_source_row
    (source_163_producer.sourceFacts
      (fam_144_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_144_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bb557a47819ccd5bfcd16195b358e1dbdd60929380c98b284cb0b8d8188086a6`.
Observed representative GoodDirection cases: 2. -/
private def fam_145_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_145_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 6
  support := fam_145_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_145_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 6 source_161_support r mask) :
    source_161_producer.Applies fam_145_key r mask := by
  unfold source_161_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_145_key, fam_145_support, source_161_support],
    hsource⟩⟩⟩

theorem fam_145_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_145_key.support r mask) :
    row_017_producer.Applies fam_145_key r mask := by
  unfold row_017_producer
  exact ⟨rfl, hrows⟩

theorem fam_145_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 6 source_161_support r mask)
    (hrows : AxisBOnlyRows fam_145_key.support r mask) :
    SourceIndexStateKeyFacts fam_145_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_161_producer.sourceFacts
      (fam_145_sourceApplies_of_sourcePredicate hsource))
    (row_017_producer.rowFacts
      (fam_145_rowApplies_of_rows hrows))

theorem fam_145_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 6 source_161_support r mask)
    (hrows : AxisBOnlyRows fam_145_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_145_key.goodKilled_of_source_row
    (source_161_producer.sourceFacts
      (fam_145_sourceApplies_of_sourcePredicate hsource))
    (row_017_producer.rowFacts
      (fam_145_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4347f7acbc2727778becb0bce2f43a2ed6dd9c3e10fd7a668e1e6004ee7cae5d`.
Observed representative GoodDirection cases: 2. -/
private def fam_146_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_146_key : SourceIndexStateKey where
  firstIndex := 154
  secondIndex := 3
  support := fam_146_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_146_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 3 source_154_support r mask) :
    source_154_producer.Applies fam_146_key r mask := by
  unfold source_154_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_146_key, fam_146_support, source_154_support],
    hsource⟩⟩⟩

theorem fam_146_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_146_key.support r mask) :
    row_006_producer.Applies fam_146_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_146_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 3 source_154_support r mask)
    (hrows : EqEqNegVarFirstRows fam_146_key.support r mask) :
    SourceIndexStateKeyFacts fam_146_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_154_producer.sourceFacts
      (fam_146_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_146_rowApplies_of_rows hrows))

theorem fam_146_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 3 source_154_support r mask)
    (hrows : EqEqNegVarFirstRows fam_146_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_146_key.goodKilled_of_source_row
    (source_154_producer.sourceFacts
      (fam_146_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_146_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6d6f0e6c2872db37c306c1d0c15d180d34faf5817d71c829337c9f6066252ccf`.
Observed representative GoodDirection cases: 2. -/
private def fam_147_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_147_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 3
  support := fam_147_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_147_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 3 source_147_support r mask) :
    source_147_producer.Applies fam_147_key r mask := by
  unfold source_147_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_147_key, fam_147_support, source_147_support],
    hsource⟩⟩⟩

theorem fam_147_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_147_key.support r mask) :
    row_006_producer.Applies fam_147_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_147_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 3 source_147_support r mask)
    (hrows : EqEqNegVarFirstRows fam_147_key.support r mask) :
    SourceIndexStateKeyFacts fam_147_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_147_producer.sourceFacts
      (fam_147_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_147_rowApplies_of_rows hrows))

theorem fam_147_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 3 source_147_support r mask)
    (hrows : EqEqNegVarFirstRows fam_147_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_147_key.goodKilled_of_source_row
    (source_147_producer.sourceFacts
      (fam_147_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_147_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f3dcd4d07ed1312fdcbb42a437fb6c3e1b375e7b0d72e4a5b0efc1139ae09332`.
Observed representative GoodDirection cases: 2. -/
private def fam_148_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_148_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 3
  support := fam_148_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_148_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 3 source_146_support r mask) :
    source_146_producer.Applies fam_148_key r mask := by
  unfold source_146_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_148_key, fam_148_support, source_146_support],
    hsource⟩⟩⟩

theorem fam_148_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_148_key.support r mask) :
    row_006_producer.Applies fam_148_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_148_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 3 source_146_support r mask)
    (hrows : EqEqNegVarFirstRows fam_148_key.support r mask) :
    SourceIndexStateKeyFacts fam_148_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_146_producer.sourceFacts
      (fam_148_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_148_rowApplies_of_rows hrows))

theorem fam_148_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 3 source_146_support r mask)
    (hrows : EqEqNegVarFirstRows fam_148_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_148_key.goodKilled_of_source_row
    (source_146_producer.sourceFacts
      (fam_148_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_148_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7a82cafc1d9c8d48f2cc9fc4206697d381e807d6876b9b77a8130129fc8be8e1`.
Observed representative GoodDirection cases: 2. -/
private def fam_149_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_149_key : SourceIndexStateKey where
  firstIndex := 157
  secondIndex := 0
  support := fam_149_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_149_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        157 0 source_143_support r mask) :
    source_143_producer.Applies fam_149_key r mask := by
  unfold source_143_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_149_key, fam_149_support, source_143_support],
    hsource⟩⟩⟩

theorem fam_149_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_149_key.support r mask) :
    row_000_producer.Applies fam_149_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_149_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        157 0 source_143_support r mask)
    (hrows : EqEqPosVarFirstRows fam_149_key.support r mask) :
    SourceIndexStateKeyFacts fam_149_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_143_producer.sourceFacts
      (fam_149_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_149_rowApplies_of_rows hrows))

theorem fam_149_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        157 0 source_143_support r mask)
    (hrows : EqEqPosVarFirstRows fam_149_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_149_key.goodKilled_of_source_row
    (source_143_producer.sourceFacts
      (fam_149_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_149_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bf716cac2fc8e0d40e4382f654c5fae6f4510b2536c34193c531520fa82aa1e6`.
Observed representative GoodDirection cases: 2. -/
private def fam_150_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_150_key : SourceIndexStateKey where
  firstIndex := 132
  secondIndex := 0
  support := fam_150_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_150_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 0 source_151_support r mask) :
    source_151_producer.Applies fam_150_key r mask := by
  unfold source_151_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_150_key, fam_150_support, source_151_support],
    hsource⟩⟩⟩

theorem fam_150_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_150_key.support r mask) :
    row_000_producer.Applies fam_150_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_150_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 0 source_151_support r mask)
    (hrows : EqEqPosVarFirstRows fam_150_key.support r mask) :
    SourceIndexStateKeyFacts fam_150_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_151_producer.sourceFacts
      (fam_150_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_150_rowApplies_of_rows hrows))

theorem fam_150_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 0 source_151_support r mask)
    (hrows : EqEqPosVarFirstRows fam_150_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_150_key.goodKilled_of_source_row
    (source_151_producer.sourceFacts
      (fam_150_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_150_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `dfd89508d02003376a54ee3d746b9ce585c3c6409c17618b1b2329f8fff54bfb`.
Observed representative GoodDirection cases: 2. -/
private def fam_151_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_151_key : SourceIndexStateKey where
  firstIndex := 111
  secondIndex := 0
  support := fam_151_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_151_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 0 source_158_support r mask) :
    source_158_producer.Applies fam_151_key r mask := by
  unfold source_158_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_151_key, fam_151_support, source_158_support],
    hsource⟩⟩⟩

theorem fam_151_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_151_key.support r mask) :
    row_000_producer.Applies fam_151_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_151_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 0 source_158_support r mask)
    (hrows : EqEqPosVarFirstRows fam_151_key.support r mask) :
    SourceIndexStateKeyFacts fam_151_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_158_producer.sourceFacts
      (fam_151_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_151_rowApplies_of_rows hrows))

theorem fam_151_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 0 source_158_support r mask)
    (hrows : EqEqPosVarFirstRows fam_151_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_151_key.goodKilled_of_source_row
    (source_158_producer.sourceFacts
      (fam_151_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_151_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e7f54997045c8a98ee08eb73a18a4dbf3f2dab51585545f728521963c09f6a5a`.
Observed representative GoodDirection cases: 2. -/
private def fam_152_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_152_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 0
  support := fam_152_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_152_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 0 source_138_support r mask) :
    source_138_producer.Applies fam_152_key r mask := by
  unfold source_138_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_152_key, fam_152_support, source_138_support],
    hsource⟩⟩⟩

theorem fam_152_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_152_key.support r mask) :
    row_000_producer.Applies fam_152_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_152_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 0 source_138_support r mask)
    (hrows : EqEqPosVarFirstRows fam_152_key.support r mask) :
    SourceIndexStateKeyFacts fam_152_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_138_producer.sourceFacts
      (fam_152_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_152_rowApplies_of_rows hrows))

theorem fam_152_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 0 source_138_support r mask)
    (hrows : EqEqPosVarFirstRows fam_152_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_152_key.goodKilled_of_source_row
    (source_138_producer.sourceFacts
      (fam_152_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_152_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `48038dc101c048930f554be5a91e6fe62258d506fff57340597ff92e26ecfa21`.
Observed representative GoodDirection cases: 2. -/
private def fam_153_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_153_key : SourceIndexStateKey where
  firstIndex := 160
  secondIndex := 9
  support := fam_153_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_153_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        160 9 source_157_support r mask) :
    source_157_producer.Applies fam_153_key r mask := by
  unfold source_157_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_153_key, fam_153_support, source_157_support],
    hsource⟩⟩⟩

theorem fam_153_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_153_key.support r mask) :
    row_009_producer.Applies fam_153_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_153_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        160 9 source_157_support r mask)
    (hrows : ExactTwoSourceValidRows fam_153_key.support r mask) :
    SourceIndexStateKeyFacts fam_153_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_157_producer.sourceFacts
      (fam_153_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_153_rowApplies_of_rows hrows))

theorem fam_153_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        160 9 source_157_support r mask)
    (hrows : ExactTwoSourceValidRows fam_153_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_153_key.goodKilled_of_source_row
    (source_157_producer.sourceFacts
      (fam_153_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_153_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `54abd5a283a8ebf0f7808b920e7326763748f6411dad3136fa5f8676ebf4327d`.
Observed representative GoodDirection cases: 2. -/
private def fam_154_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_154_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 10
  support := fam_154_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_154_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 10 source_149_support r mask) :
    source_149_producer.Applies fam_154_key r mask := by
  unfold source_149_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_154_key, fam_154_support, source_149_support],
    hsource⟩⟩⟩

theorem fam_154_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_154_key.support r mask) :
    row_009_producer.Applies fam_154_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_154_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 10 source_149_support r mask)
    (hrows : ExactTwoSourceValidRows fam_154_key.support r mask) :
    SourceIndexStateKeyFacts fam_154_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_149_producer.sourceFacts
      (fam_154_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_154_rowApplies_of_rows hrows))

theorem fam_154_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 10 source_149_support r mask)
    (hrows : ExactTwoSourceValidRows fam_154_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_154_key.goodKilled_of_source_row
    (source_149_producer.sourceFacts
      (fam_154_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_154_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `60f63d9eaa4de6634e564299b8a6754ebc49d4e5228e06837e5b1e8e1d93daf9`.
Observed representative GoodDirection cases: 2. -/
private def fam_155_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_155_key : SourceIndexStateKey where
  firstIndex := 40
  secondIndex := 9
  support := fam_155_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_155_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        40 9 source_150_support r mask) :
    source_150_producer.Applies fam_155_key r mask := by
  unfold source_150_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_155_key, fam_155_support, source_150_support],
    hsource⟩⟩⟩

theorem fam_155_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_155_key.support r mask) :
    row_010_producer.Applies fam_155_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_155_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        40 9 source_150_support r mask)
    (hrows : ExactTwoSourceValidRows fam_155_key.support r mask) :
    SourceIndexStateKeyFacts fam_155_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_150_producer.sourceFacts
      (fam_155_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_155_rowApplies_of_rows hrows))

theorem fam_155_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        40 9 source_150_support r mask)
    (hrows : ExactTwoSourceValidRows fam_155_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_155_key.goodKilled_of_source_row
    (source_150_producer.sourceFacts
      (fam_155_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_155_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a9acae98018f2876953edf07894ef6f663c7bac68c07a4d1bcfa1cec39be4b11`.
Observed representative GoodDirection cases: 2. -/
private def fam_156_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_156_key : SourceIndexStateKey where
  firstIndex := 152
  secondIndex := 9
  support := fam_156_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_156_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        152 9 source_152_support r mask) :
    source_152_producer.Applies fam_156_key r mask := by
  unfold source_152_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_156_key, fam_156_support, source_152_support],
    hsource⟩⟩⟩

theorem fam_156_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_156_key.support r mask) :
    row_008_producer.Applies fam_156_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_156_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        152 9 source_152_support r mask)
    (hrows : ExactTwoSourceValidRows fam_156_key.support r mask) :
    SourceIndexStateKeyFacts fam_156_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_152_producer.sourceFacts
      (fam_156_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_156_rowApplies_of_rows hrows))

theorem fam_156_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        152 9 source_152_support r mask)
    (hrows : ExactTwoSourceValidRows fam_156_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_156_key.goodKilled_of_source_row
    (source_152_producer.sourceFacts
      (fam_156_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_156_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `113f8b0a8874d29dbd72a109fc1ce8ded03c4ab8d49a927e0bc8b690d8900422`.
Observed representative GoodDirection cases: 2. -/
private def fam_157_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_157_key : SourceIndexStateKey where
  firstIndex := 170
  secondIndex := 1
  support := fam_157_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_157_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_141_support r mask) :
    source_141_producer.Applies fam_157_key r mask := by
  unfold source_141_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_157_key, fam_157_support, source_141_support],
    hsource⟩⟩⟩

theorem fam_157_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_157_key.support r mask) :
    row_001_producer.Applies fam_157_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_157_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_141_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_157_key.support r mask) :
    SourceIndexStateKeyFacts fam_157_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_141_producer.sourceFacts
      (fam_157_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_157_rowApplies_of_rows hrows))

theorem fam_157_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_141_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_157_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_157_key.goodKilled_of_source_row
    (source_141_producer.sourceFacts
      (fam_157_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_157_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2946b9d733afd1096e3a4ac5157d4286c8f9f73694248b2bea18a133588fe339`.
Observed representative GoodDirection cases: 2. -/
private def fam_158_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_158_key : SourceIndexStateKey where
  firstIndex := 130
  secondIndex := 1
  support := fam_158_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_158_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 1 source_164_support r mask) :
    source_164_producer.Applies fam_158_key r mask := by
  unfold source_164_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_158_key, fam_158_support, source_164_support],
    hsource⟩⟩⟩

theorem fam_158_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_158_key.support r mask) :
    row_001_producer.Applies fam_158_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_158_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 1 source_164_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_158_key.support r mask) :
    SourceIndexStateKeyFacts fam_158_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_164_producer.sourceFacts
      (fam_158_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_158_rowApplies_of_rows hrows))

theorem fam_158_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 1 source_164_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_158_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_158_key.goodKilled_of_source_row
    (source_164_producer.sourceFacts
      (fam_158_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_158_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3f93349896355ebe8244a974a8b1d33c339650acd7f560a5a651efe45d0ceec4`.
Observed representative GoodDirection cases: 2. -/
private def fam_159_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_159_key : SourceIndexStateKey where
  firstIndex := 105
  secondIndex := 1
  support := fam_159_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_159_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 1 source_160_support r mask) :
    source_160_producer.Applies fam_159_key r mask := by
  unfold source_160_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_159_key, fam_159_support, source_160_support],
    hsource⟩⟩⟩

theorem fam_159_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_159_key.support r mask) :
    row_001_producer.Applies fam_159_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_159_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 1 source_160_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_159_key.support r mask) :
    SourceIndexStateKeyFacts fam_159_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_160_producer.sourceFacts
      (fam_159_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_159_rowApplies_of_rows hrows))

theorem fam_159_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 1 source_160_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_159_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_159_key.goodKilled_of_source_row
    (source_160_producer.sourceFacts
      (fam_159_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_159_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `68349f4960996eb872474e6425823c92d46ab71ea0403d8afb96cb9e1fb6c727`.
Observed representative GoodDirection cases: 2. -/
private def fam_160_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_160_key : SourceIndexStateKey where
  firstIndex := 120
  secondIndex := 1
  support := fam_160_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_160_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        120 1 source_155_support r mask) :
    source_155_producer.Applies fam_160_key r mask := by
  unfold source_155_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_160_key, fam_160_support, source_155_support],
    hsource⟩⟩⟩

theorem fam_160_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_160_key.support r mask) :
    row_001_producer.Applies fam_160_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_160_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        120 1 source_155_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_160_key.support r mask) :
    SourceIndexStateKeyFacts fam_160_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_155_producer.sourceFacts
      (fam_160_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_160_rowApplies_of_rows hrows))

theorem fam_160_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        120 1 source_155_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_160_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_160_key.goodKilled_of_source_row
    (source_155_producer.sourceFacts
      (fam_160_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_160_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7e4bd5a1d841b78bc92b42afc69d49e1218781f7afa213140d3312c870ed66b5`.
Observed representative GoodDirection cases: 2. -/
private def fam_161_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_161_key : SourceIndexStateKey where
  firstIndex := 118
  secondIndex := 1
  support := fam_161_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_161_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 1 source_153_support r mask) :
    source_153_producer.Applies fam_161_key r mask := by
  unfold source_153_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_161_key, fam_161_support, source_153_support],
    hsource⟩⟩⟩

theorem fam_161_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_161_key.support r mask) :
    row_001_producer.Applies fam_161_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_161_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 1 source_153_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_161_key.support r mask) :
    SourceIndexStateKeyFacts fam_161_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_153_producer.sourceFacts
      (fam_161_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_161_rowApplies_of_rows hrows))

theorem fam_161_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 1 source_153_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_161_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_161_key.goodKilled_of_source_row
    (source_153_producer.sourceFacts
      (fam_161_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_161_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d05f98f0a79147770e7e9907bd625381f23b4df5e435aebbde8332f4ba51a724`.
Observed representative GoodDirection cases: 2. -/
private def fam_162_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_162_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 1
  support := fam_162_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_162_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 1 source_140_support r mask) :
    source_140_producer.Applies fam_162_key r mask := by
  unfold source_140_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_162_key, fam_162_support, source_140_support],
    hsource⟩⟩⟩

theorem fam_162_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_162_key.support r mask) :
    row_001_producer.Applies fam_162_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_162_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 1 source_140_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_162_key.support r mask) :
    SourceIndexStateKeyFacts fam_162_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_140_producer.sourceFacts
      (fam_162_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_162_rowApplies_of_rows hrows))

theorem fam_162_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 1 source_140_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_162_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_162_key.goodKilled_of_source_row
    (source_140_producer.sourceFacts
      (fam_162_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_162_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `62cde10d5755a010df2d40ce24e0de7f19367d9ff063f6d52f46ca443cb41ae4`.
Observed representative GoodDirection cases: 2. -/
private def fam_163_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_163_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 2
  support := fam_163_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_163_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 2 source_145_support r mask) :
    source_145_producer.Applies fam_163_key r mask := by
  unfold source_145_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_163_key, fam_163_support, source_145_support],
    hsource⟩⟩⟩

theorem fam_163_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_163_key.support r mask) :
    row_003_producer.Applies fam_163_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_163_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 2 source_145_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_163_key.support r mask) :
    SourceIndexStateKeyFacts fam_163_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_145_producer.sourceFacts
      (fam_163_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_163_rowApplies_of_rows hrows))

theorem fam_163_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 2 source_145_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_163_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_163_key.goodKilled_of_source_row
    (source_145_producer.sourceFacts
      (fam_163_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_163_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `636c01a26809afbda9a061eb37f65b50827f40ffffed1c7542fe2a86bf5bfae6`.
Observed representative GoodDirection cases: 2. -/
private def fam_164_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_164_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 2
  support := fam_164_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_164_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 2 source_144_support r mask) :
    source_144_producer.Applies fam_164_key r mask := by
  unfold source_144_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_164_key, fam_164_support, source_144_support],
    hsource⟩⟩⟩

theorem fam_164_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_164_key.support r mask) :
    row_003_producer.Applies fam_164_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_164_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 2 source_144_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_164_key.support r mask) :
    SourceIndexStateKeyFacts fam_164_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_144_producer.sourceFacts
      (fam_164_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_164_rowApplies_of_rows hrows))

theorem fam_164_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 2 source_144_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_164_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_164_key.goodKilled_of_source_row
    (source_144_producer.sourceFacts
      (fam_164_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_164_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c02bcf699cfaeef8d86ffd26f5650adbd32420d815814e0901a9eb159cd8af23`.
Observed representative GoodDirection cases: 2. -/
private def fam_165_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_165_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 2
  support := fam_165_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_165_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 2 source_159_support r mask) :
    source_159_producer.Applies fam_165_key r mask := by
  unfold source_159_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_165_key, fam_165_support, source_159_support],
    hsource⟩⟩⟩

theorem fam_165_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_165_key.support r mask) :
    row_003_producer.Applies fam_165_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_165_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 2 source_159_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_165_key.support r mask) :
    SourceIndexStateKeyFacts fam_165_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_159_producer.sourceFacts
      (fam_165_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_165_rowApplies_of_rows hrows))

theorem fam_165_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 2 source_159_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_165_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_165_key.goodKilled_of_source_row
    (source_159_producer.sourceFacts
      (fam_165_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_165_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `eb283d23ad6b71564e940a15255ced8513a4d45b4b9d3bacf646cfd08aac153b`.
Observed representative GoodDirection cases: 2. -/
private def fam_166_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_166_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 2
  support := fam_166_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_166_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 2 source_142_support r mask) :
    source_142_producer.Applies fam_166_key r mask := by
  unfold source_142_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_166_key, fam_166_support, source_142_support],
    hsource⟩⟩⟩

theorem fam_166_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_166_key.support r mask) :
    row_003_producer.Applies fam_166_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_166_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 2 source_142_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_166_key.support r mask) :
    SourceIndexStateKeyFacts fam_166_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_142_producer.sourceFacts
      (fam_166_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_166_rowApplies_of_rows hrows))

theorem fam_166_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 2 source_142_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_166_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_166_key.goodKilled_of_source_row
    (source_142_producer.sourceFacts
      (fam_166_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_166_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `71e3ad528373844c11c154df7a1c687f874e9406d9a35e40463e415d66404b66`.
Observed representative GoodDirection cases: 1. -/
private def fam_167_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_167_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 11
  support := fam_167_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_167_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 11 source_188_support r mask) :
    source_188_producer.Applies fam_167_key r mask := by
  unfold source_188_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_167_key, fam_167_support, source_188_support],
    hsource⟩⟩⟩

theorem fam_167_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_167_key.support r mask) :
    row_014_producer.Applies fam_167_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_167_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 11 source_188_support r mask)
    (hrows : AxisAOnlyRows fam_167_key.support r mask) :
    SourceIndexStateKeyFacts fam_167_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_188_producer.sourceFacts
      (fam_167_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_167_rowApplies_of_rows hrows))

theorem fam_167_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 11 source_188_support r mask)
    (hrows : AxisAOnlyRows fam_167_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_167_key.goodKilled_of_source_row
    (source_188_producer.sourceFacts
      (fam_167_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_167_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `adfd7e89c920e311d60870c08633b54c785db45d159b4fd2abdf7c89fe8cdb47`.
Observed representative GoodDirection cases: 1. -/
private def fam_168_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_168_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 15
  support := fam_168_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_168_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 15 source_213_support r mask) :
    source_213_producer.Applies fam_168_key r mask := by
  unfold source_213_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_168_key, fam_168_support, source_213_support],
    hsource⟩⟩⟩

theorem fam_168_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_168_key.support r mask) :
    row_014_producer.Applies fam_168_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_168_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 15 source_213_support r mask)
    (hrows : AxisAOnlyRows fam_168_key.support r mask) :
    SourceIndexStateKeyFacts fam_168_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_213_producer.sourceFacts
      (fam_168_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_168_rowApplies_of_rows hrows))

theorem fam_168_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 15 source_213_support r mask)
    (hrows : AxisAOnlyRows fam_168_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_168_key.goodKilled_of_source_row
    (source_213_producer.sourceFacts
      (fam_168_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_168_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c0c4f8c4270ccb5fdb6be4c285762053c1e68378c304374a58b5a4defe3c393f`.
Observed representative GoodDirection cases: 1. -/
private def fam_169_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def fam_169_key : SourceIndexStateKey where
  firstIndex := 165
  secondIndex := 4
  support := fam_169_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_169_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 4 source_185_support r mask) :
    source_185_producer.Applies fam_169_key r mask := by
  unfold source_185_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_169_key, fam_169_support, source_185_support],
    hsource⟩⟩⟩

theorem fam_169_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_169_key.support r mask) :
    row_012_producer.Applies fam_169_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_169_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 4 source_185_support r mask)
    (hrows : AxisAOnlyRows fam_169_key.support r mask) :
    SourceIndexStateKeyFacts fam_169_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_185_producer.sourceFacts
      (fam_169_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_169_rowApplies_of_rows hrows))

theorem fam_169_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 4 source_185_support r mask)
    (hrows : AxisAOnlyRows fam_169_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_169_key.goodKilled_of_source_row
    (source_185_producer.sourceFacts
      (fam_169_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_169_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ea15f28d1c5665a8d2a9dc3b6db8d2fb91ff08b2b069103b426fc07c20e2cba9`.
Observed representative GoodDirection cases: 1. -/
private def fam_170_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_170_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 14
  support := fam_170_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_170_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 14 source_199_support r mask) :
    source_199_producer.Applies fam_170_key r mask := by
  unfold source_199_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_170_key, fam_170_support, source_199_support],
    hsource⟩⟩⟩

theorem fam_170_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_170_key.support r mask) :
    row_014_producer.Applies fam_170_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_170_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 14 source_199_support r mask)
    (hrows : AxisAOnlyRows fam_170_key.support r mask) :
    SourceIndexStateKeyFacts fam_170_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_199_producer.sourceFacts
      (fam_170_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_170_rowApplies_of_rows hrows))

theorem fam_170_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 14 source_199_support r mask)
    (hrows : AxisAOnlyRows fam_170_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_170_key.goodKilled_of_source_row
    (source_199_producer.sourceFacts
      (fam_170_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_170_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2c872c6dbd1776a2b1dec52274fe2eb0c49bec62c8202bdc3b28f9bdbd5397e5`.
Observed representative GoodDirection cases: 1. -/
private def fam_171_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_171_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 7
  support := fam_171_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_171_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 7 source_214_support r mask) :
    source_214_producer.Applies fam_171_key r mask := by
  unfold source_214_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_171_key, fam_171_support, source_214_support],
    hsource⟩⟩⟩

theorem fam_171_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_171_key.support r mask) :
    row_013_producer.Applies fam_171_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_171_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 7 source_214_support r mask)
    (hrows : AxisBOnlyRows fam_171_key.support r mask) :
    SourceIndexStateKeyFacts fam_171_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_214_producer.sourceFacts
      (fam_171_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_171_rowApplies_of_rows hrows))

theorem fam_171_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 7 source_214_support r mask)
    (hrows : AxisBOnlyRows fam_171_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_171_key.goodKilled_of_source_row
    (source_214_producer.sourceFacts
      (fam_171_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_171_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `69bc7c3517157185f772d7d69611a7b13e98049ded09ed5cdadce666e18f9b52`.
Observed representative GoodDirection cases: 1. -/
private def fam_172_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_172_key : SourceIndexStateKey where
  firstIndex := 7
  secondIndex := 11
  support := fam_172_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_172_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        7 11 source_215_support r mask) :
    source_215_producer.Applies fam_172_key r mask := by
  unfold source_215_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_172_key, fam_172_support, source_215_support],
    hsource⟩⟩⟩

theorem fam_172_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_172_key.support r mask) :
    row_021_producer.Applies fam_172_key r mask := by
  unfold row_021_producer
  exact ⟨rfl, hrows⟩

theorem fam_172_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        7 11 source_215_support r mask)
    (hrows : AxisBOnlyRows fam_172_key.support r mask) :
    SourceIndexStateKeyFacts fam_172_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_215_producer.sourceFacts
      (fam_172_sourceApplies_of_sourcePredicate hsource))
    (row_021_producer.rowFacts
      (fam_172_rowApplies_of_rows hrows))

theorem fam_172_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        7 11 source_215_support r mask)
    (hrows : AxisBOnlyRows fam_172_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_172_key.goodKilled_of_source_row
    (source_215_producer.sourceFacts
      (fam_172_sourceApplies_of_sourcePredicate hsource))
    (row_021_producer.rowFacts
      (fam_172_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `af434ef1e28c4e9374e80e31bdac5132c4122299fdf6297c00b77e81462ef215`.
Observed representative GoodDirection cases: 1. -/
private def fam_173_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_173_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 12
  support := fam_173_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_173_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_210_support r mask) :
    source_210_producer.Applies fam_173_key r mask := by
  unfold source_210_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_173_key, fam_173_support, source_210_support],
    hsource⟩⟩⟩

theorem fam_173_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_173_key.support r mask) :
    row_020_producer.Applies fam_173_key r mask := by
  unfold row_020_producer
  exact ⟨rfl, hrows⟩

theorem fam_173_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_210_support r mask)
    (hrows : AxisBOnlyRows fam_173_key.support r mask) :
    SourceIndexStateKeyFacts fam_173_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_210_producer.sourceFacts
      (fam_173_sourceApplies_of_sourcePredicate hsource))
    (row_020_producer.rowFacts
      (fam_173_rowApplies_of_rows hrows))

theorem fam_173_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_210_support r mask)
    (hrows : AxisBOnlyRows fam_173_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_173_key.goodKilled_of_source_row
    (source_210_producer.sourceFacts
      (fam_173_sourceApplies_of_sourcePredicate hsource))
    (row_020_producer.rowFacts
      (fam_173_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c8cabab02f21f094bfbcc9f8e6089f1a1dd557fd810e328ccdf8d15df743d5b0`.
Observed representative GoodDirection cases: 1. -/
private def fam_174_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_174_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 7
  support := fam_174_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_174_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 7 source_172_support r mask) :
    source_172_producer.Applies fam_174_key r mask := by
  unfold source_172_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_174_key, fam_174_support, source_172_support],
    hsource⟩⟩⟩

theorem fam_174_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_174_key.support r mask) :
    row_013_producer.Applies fam_174_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_174_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 7 source_172_support r mask)
    (hrows : AxisBOnlyRows fam_174_key.support r mask) :
    SourceIndexStateKeyFacts fam_174_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_172_producer.sourceFacts
      (fam_174_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_174_rowApplies_of_rows hrows))

theorem fam_174_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 7 source_172_support r mask)
    (hrows : AxisBOnlyRows fam_174_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_174_key.goodKilled_of_source_row
    (source_172_producer.sourceFacts
      (fam_174_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_174_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ca84b89b0f6ddf05518b1edae25c6870b88d9fac02b265344bf98adf0431a536`.
Observed representative GoodDirection cases: 1. -/
private def fam_175_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_175_key : SourceIndexStateKey where
  firstIndex := 163
  secondIndex := 7
  support := fam_175_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_175_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        163 7 source_222_support r mask) :
    source_222_producer.Applies fam_175_key r mask := by
  unfold source_222_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_175_key, fam_175_support, source_222_support],
    hsource⟩⟩⟩

theorem fam_175_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_175_key.support r mask) :
    row_013_producer.Applies fam_175_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_175_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        163 7 source_222_support r mask)
    (hrows : AxisBOnlyRows fam_175_key.support r mask) :
    SourceIndexStateKeyFacts fam_175_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_222_producer.sourceFacts
      (fam_175_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_175_rowApplies_of_rows hrows))

theorem fam_175_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        163 7 source_222_support r mask)
    (hrows : AxisBOnlyRows fam_175_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_175_key.goodKilled_of_source_row
    (source_222_producer.sourceFacts
      (fam_175_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_175_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `37cc37e6d0eefe0a7ca7a24b590cd35a69792915f5378577213b3b6c520dc61f`.
Observed representative GoodDirection cases: 1. -/
private def fam_176_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_176_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 3
  support := fam_176_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_176_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 3 source_177_support r mask) :
    source_177_producer.Applies fam_176_key r mask := by
  unfold source_177_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_176_key, fam_176_support, source_177_support],
    hsource⟩⟩⟩

theorem fam_176_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_176_key.support r mask) :
    row_006_producer.Applies fam_176_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_176_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 3 source_177_support r mask)
    (hrows : EqEqNegVarFirstRows fam_176_key.support r mask) :
    SourceIndexStateKeyFacts fam_176_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_177_producer.sourceFacts
      (fam_176_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_176_rowApplies_of_rows hrows))

theorem fam_176_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 3 source_177_support r mask)
    (hrows : EqEqNegVarFirstRows fam_176_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_176_key.goodKilled_of_source_row
    (source_177_producer.sourceFacts
      (fam_176_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_176_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `38f2e6200af33a2f7feab6688f796b2c04fe3a8e117c22a37941b05aef082b22`.
Observed representative GoodDirection cases: 1. -/
private def fam_177_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_177_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 3
  support := fam_177_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_177_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 3 source_170_support r mask) :
    source_170_producer.Applies fam_177_key r mask := by
  unfold source_170_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_177_key, fam_177_support, source_170_support],
    hsource⟩⟩⟩

theorem fam_177_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_177_key.support r mask) :
    row_006_producer.Applies fam_177_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_177_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 3 source_170_support r mask)
    (hrows : EqEqNegVarFirstRows fam_177_key.support r mask) :
    SourceIndexStateKeyFacts fam_177_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_170_producer.sourceFacts
      (fam_177_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_177_rowApplies_of_rows hrows))

theorem fam_177_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 3 source_170_support r mask)
    (hrows : EqEqNegVarFirstRows fam_177_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_177_key.goodKilled_of_source_row
    (source_170_producer.sourceFacts
      (fam_177_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_177_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7756892e1bbc5bf2e1f84a76378de3a1fb4a581c106d3ab4ed5f9be83c94a898`.
Observed representative GoodDirection cases: 1. -/
private def fam_178_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_178_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 3
  support := fam_178_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_178_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 3 source_167_support r mask) :
    source_167_producer.Applies fam_178_key r mask := by
  unfold source_167_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_178_key, fam_178_support, source_167_support],
    hsource⟩⟩⟩

theorem fam_178_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_178_key.support r mask) :
    row_006_producer.Applies fam_178_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_178_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 3 source_167_support r mask)
    (hrows : EqEqNegVarFirstRows fam_178_key.support r mask) :
    SourceIndexStateKeyFacts fam_178_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_167_producer.sourceFacts
      (fam_178_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_178_rowApplies_of_rows hrows))

theorem fam_178_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 3 source_167_support r mask)
    (hrows : EqEqNegVarFirstRows fam_178_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_178_key.goodKilled_of_source_row
    (source_167_producer.sourceFacts
      (fam_178_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_178_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e4540f08727f760d8762b0993b2d14b8f0fb0abc19f4fb5ed550e7be3e75191e`.
Observed representative GoodDirection cases: 1. -/
private def fam_179_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_179_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 7
  support := fam_179_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_179_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 7 source_179_support r mask) :
    source_179_producer.Applies fam_179_key r mask := by
  unfold source_179_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_179_key, fam_179_support, source_179_support],
    hsource⟩⟩⟩

theorem fam_179_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_179_key.support r mask) :
    row_007_producer.Applies fam_179_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_179_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 7 source_179_support r mask)
    (hrows : EqEqNegVarSecondRows fam_179_key.support r mask) :
    SourceIndexStateKeyFacts fam_179_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_179_producer.sourceFacts
      (fam_179_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_179_rowApplies_of_rows hrows))

theorem fam_179_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 7 source_179_support r mask)
    (hrows : EqEqNegVarSecondRows fam_179_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_179_key.goodKilled_of_source_row
    (source_179_producer.sourceFacts
      (fam_179_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_179_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `99369c714e8b72fbee4370a5683aefb89f766b4dbd73ec663e1d4c1270d6f7e9`.
Observed representative GoodDirection cases: 1. -/
private def fam_180_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_180_key : SourceIndexStateKey where
  firstIndex := 137
  secondIndex := 0
  support := fam_180_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_180_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 0 source_206_support r mask) :
    source_206_producer.Applies fam_180_key r mask := by
  unfold source_206_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_180_key, fam_180_support, source_206_support],
    hsource⟩⟩⟩

theorem fam_180_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_180_key.support r mask) :
    row_000_producer.Applies fam_180_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_180_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 0 source_206_support r mask)
    (hrows : EqEqPosVarFirstRows fam_180_key.support r mask) :
    SourceIndexStateKeyFacts fam_180_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_206_producer.sourceFacts
      (fam_180_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_180_rowApplies_of_rows hrows))

theorem fam_180_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 0 source_206_support r mask)
    (hrows : EqEqPosVarFirstRows fam_180_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_180_key.goodKilled_of_source_row
    (source_206_producer.sourceFacts
      (fam_180_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_180_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b0f0ca5a98035b6b28d04137c8ccc38f11ac1d979835852b354aeb5200758f8f`.
Observed representative GoodDirection cases: 1. -/
private def fam_181_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_181_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 0
  support := fam_181_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_181_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_201_support r mask) :
    source_201_producer.Applies fam_181_key r mask := by
  unfold source_201_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_181_key, fam_181_support, source_201_support],
    hsource⟩⟩⟩

theorem fam_181_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_181_key.support r mask) :
    row_000_producer.Applies fam_181_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_181_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_201_support r mask)
    (hrows : EqEqPosVarFirstRows fam_181_key.support r mask) :
    SourceIndexStateKeyFacts fam_181_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_201_producer.sourceFacts
      (fam_181_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_181_rowApplies_of_rows hrows))

theorem fam_181_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_201_support r mask)
    (hrows : EqEqPosVarFirstRows fam_181_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_181_key.goodKilled_of_source_row
    (source_201_producer.sourceFacts
      (fam_181_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_181_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c181ba9bc80ff1e0af2cb891a63228397f40a8cc53b0148a4d2ff9db5b15c352`.
Observed representative GoodDirection cases: 1. -/
private def fam_182_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_182_key : SourceIndexStateKey where
  firstIndex := 145
  secondIndex := 0
  support := fam_182_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_182_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 0 source_223_support r mask) :
    source_223_producer.Applies fam_182_key r mask := by
  unfold source_223_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_182_key, fam_182_support, source_223_support],
    hsource⟩⟩⟩

theorem fam_182_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_182_key.support r mask) :
    row_000_producer.Applies fam_182_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_182_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 0 source_223_support r mask)
    (hrows : EqEqPosVarFirstRows fam_182_key.support r mask) :
    SourceIndexStateKeyFacts fam_182_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_223_producer.sourceFacts
      (fam_182_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_182_rowApplies_of_rows hrows))

theorem fam_182_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 0 source_223_support r mask)
    (hrows : EqEqPosVarFirstRows fam_182_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_182_key.goodKilled_of_source_row
    (source_223_producer.sourceFacts
      (fam_182_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_182_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e7278ff9089a5d682777b11eb2c3af769e059c934a6a5e3488182bf47823624c`.
Observed representative GoodDirection cases: 1. -/
private def fam_183_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_183_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 0
  support := fam_183_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_183_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 0 source_195_support r mask) :
    source_195_producer.Applies fam_183_key r mask := by
  unfold source_195_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_183_key, fam_183_support, source_195_support],
    hsource⟩⟩⟩

theorem fam_183_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_183_key.support r mask) :
    row_000_producer.Applies fam_183_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_183_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 0 source_195_support r mask)
    (hrows : EqEqPosVarFirstRows fam_183_key.support r mask) :
    SourceIndexStateKeyFacts fam_183_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_195_producer.sourceFacts
      (fam_183_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_183_rowApplies_of_rows hrows))

theorem fam_183_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 0 source_195_support r mask)
    (hrows : EqEqPosVarFirstRows fam_183_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_183_key.goodKilled_of_source_row
    (source_195_producer.sourceFacts
      (fam_183_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_183_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ef0a95dd96247ea793a096835c8ac82b1f26f432b2913914cd43d44ef34770be`.
Observed representative GoodDirection cases: 1. -/
private def fam_184_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_184_key : SourceIndexStateKey where
  firstIndex := 133
  secondIndex := 0
  support := fam_184_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_184_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 0 source_197_support r mask) :
    source_197_producer.Applies fam_184_key r mask := by
  unfold source_197_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_184_key, fam_184_support, source_197_support],
    hsource⟩⟩⟩

theorem fam_184_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_184_key.support r mask) :
    row_000_producer.Applies fam_184_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_184_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 0 source_197_support r mask)
    (hrows : EqEqPosVarFirstRows fam_184_key.support r mask) :
    SourceIndexStateKeyFacts fam_184_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_197_producer.sourceFacts
      (fam_184_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_184_rowApplies_of_rows hrows))

theorem fam_184_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 0 source_197_support r mask)
    (hrows : EqEqPosVarFirstRows fam_184_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_184_key.goodKilled_of_source_row
    (source_197_producer.sourceFacts
      (fam_184_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_184_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0024393a7c50344504e5518e138736c502b90841bd96876ff846403ebc528ed9`.
Observed representative GoodDirection cases: 1. -/
private def fam_185_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_185_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 9
  support := fam_185_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_185_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_139_support r mask) :
    source_139_producer.Applies fam_185_key r mask := by
  unfold source_139_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_185_key, fam_185_support, source_139_support],
    hsource⟩⟩⟩

theorem fam_185_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_185_key.support r mask) :
    row_009_producer.Applies fam_185_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_185_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_139_support r mask)
    (hrows : ExactTwoSourceValidRows fam_185_key.support r mask) :
    SourceIndexStateKeyFacts fam_185_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_139_producer.sourceFacts
      (fam_185_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_185_rowApplies_of_rows hrows))

theorem fam_185_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_139_support r mask)
    (hrows : ExactTwoSourceValidRows fam_185_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_185_key.goodKilled_of_source_row
    (source_139_producer.sourceFacts
      (fam_185_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_185_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `02b127e3afcd56f6775e889cb82626bf61f0f0e26ca3fce84e1c8a0b89d4f727`.
Observed representative GoodDirection cases: 1. -/
private def fam_186_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_186_key : SourceIndexStateKey where
  firstIndex := 125
  secondIndex := 8
  support := fam_186_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_186_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_204_support r mask) :
    source_204_producer.Applies fam_186_key r mask := by
  unfold source_204_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_186_key, fam_186_support, source_204_support],
    hsource⟩⟩⟩

theorem fam_186_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_186_key.support r mask) :
    row_009_producer.Applies fam_186_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_186_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_204_support r mask)
    (hrows : ExactTwoSourceValidRows fam_186_key.support r mask) :
    SourceIndexStateKeyFacts fam_186_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_204_producer.sourceFacts
      (fam_186_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_186_rowApplies_of_rows hrows))

theorem fam_186_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_204_support r mask)
    (hrows : ExactTwoSourceValidRows fam_186_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_186_key.goodKilled_of_source_row
    (source_204_producer.sourceFacts
      (fam_186_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_186_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `096c11a7f13d19ea5a6a4ab1463bd9f484b703b8a1f141e0db5cbd58289a8018`.
Observed representative GoodDirection cases: 1. -/
private def fam_187_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_187_key : SourceIndexStateKey where
  firstIndex := 16
  secondIndex := 10
  support := fam_187_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_187_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 10 source_171_support r mask) :
    source_171_producer.Applies fam_187_key r mask := by
  unfold source_171_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_187_key, fam_187_support, source_171_support],
    hsource⟩⟩⟩

theorem fam_187_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_187_key.support r mask) :
    row_009_producer.Applies fam_187_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_187_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 10 source_171_support r mask)
    (hrows : ExactTwoSourceValidRows fam_187_key.support r mask) :
    SourceIndexStateKeyFacts fam_187_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_171_producer.sourceFacts
      (fam_187_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_187_rowApplies_of_rows hrows))

theorem fam_187_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 10 source_171_support r mask)
    (hrows : ExactTwoSourceValidRows fam_187_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_187_key.goodKilled_of_source_row
    (source_171_producer.sourceFacts
      (fam_187_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_187_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0c6b556294473409084a13ebc6f9807fe80d98a7eb2b18ddbbe34e163fd2ae9a`.
Observed representative GoodDirection cases: 1. -/
private def fam_188_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_188_key : SourceIndexStateKey where
  firstIndex := 154
  secondIndex := 6
  support := fam_188_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_188_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_189_support r mask) :
    source_189_producer.Applies fam_188_key r mask := by
  unfold source_189_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_188_key, fam_188_support, source_189_support],
    hsource⟩⟩⟩

theorem fam_188_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_188_key.support r mask) :
    row_009_producer.Applies fam_188_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_188_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_189_support r mask)
    (hrows : ExactTwoSourceValidRows fam_188_key.support r mask) :
    SourceIndexStateKeyFacts fam_188_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_189_producer.sourceFacts
      (fam_188_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_188_rowApplies_of_rows hrows))

theorem fam_188_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_189_support r mask)
    (hrows : ExactTwoSourceValidRows fam_188_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_188_key.goodKilled_of_source_row
    (source_189_producer.sourceFacts
      (fam_188_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_188_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0fbed6936e3e2b3594f002dc7eb583d58069846c6c3b20d7ed06cde2bc0770b3`.
Observed representative GoodDirection cases: 1. -/
private def fam_189_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_189_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 5
  support := fam_189_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_189_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_169_support r mask) :
    source_169_producer.Applies fam_189_key r mask := by
  unfold source_169_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_189_key, fam_189_support, source_169_support],
    hsource⟩⟩⟩

theorem fam_189_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_189_key.support r mask) :
    row_009_producer.Applies fam_189_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_189_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_169_support r mask)
    (hrows : ExactTwoSourceValidRows fam_189_key.support r mask) :
    SourceIndexStateKeyFacts fam_189_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_169_producer.sourceFacts
      (fam_189_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_189_rowApplies_of_rows hrows))

theorem fam_189_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_169_support r mask)
    (hrows : ExactTwoSourceValidRows fam_189_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_189_key.goodKilled_of_source_row
    (source_169_producer.sourceFacts
      (fam_189_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_189_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `17117c25cd262106f0459dde394d8aa30576bb3757b92c6d5cbc70c408e47d33`.
Observed representative GoodDirection cases: 1. -/
private def fam_190_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_190_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 6
  support := fam_190_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_190_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 6 source_216_support r mask) :
    source_216_producer.Applies fam_190_key r mask := by
  unfold source_216_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_190_key, fam_190_support, source_216_support],
    hsource⟩⟩⟩

theorem fam_190_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_190_key.support r mask) :
    row_008_producer.Applies fam_190_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_190_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 6 source_216_support r mask)
    (hrows : ExactTwoSourceValidRows fam_190_key.support r mask) :
    SourceIndexStateKeyFacts fam_190_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_216_producer.sourceFacts
      (fam_190_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_190_rowApplies_of_rows hrows))

theorem fam_190_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 6 source_216_support r mask)
    (hrows : ExactTwoSourceValidRows fam_190_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_190_key.goodKilled_of_source_row
    (source_216_producer.sourceFacts
      (fam_190_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_190_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1bf27e236f383e1d81ddc6f288a9df726aba812efff0325f683ca79ca4172c7b`.
Observed representative GoodDirection cases: 1. -/
private def fam_191_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_191_key : SourceIndexStateKey where
  firstIndex := 38
  secondIndex := 9
  support := fam_191_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_191_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        38 9 source_175_support r mask) :
    source_175_producer.Applies fam_191_key r mask := by
  unfold source_175_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_191_key, fam_191_support, source_175_support],
    hsource⟩⟩⟩

theorem fam_191_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_191_key.support r mask) :
    row_009_producer.Applies fam_191_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_191_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        38 9 source_175_support r mask)
    (hrows : ExactTwoSourceValidRows fam_191_key.support r mask) :
    SourceIndexStateKeyFacts fam_191_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_175_producer.sourceFacts
      (fam_191_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_191_rowApplies_of_rows hrows))

theorem fam_191_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        38 9 source_175_support r mask)
    (hrows : ExactTwoSourceValidRows fam_191_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_191_key.goodKilled_of_source_row
    (source_175_producer.sourceFacts
      (fam_191_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_191_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `203ccdc2ce2e08c2b64ff4cc9afeaa226ce622d3317e0fdb1a7a025bc37311be`.
Observed representative GoodDirection cases: 1. -/
private def fam_192_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨5, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_192_key : SourceIndexStateKey where
  firstIndex := 9
  secondIndex := 13
  support := fam_192_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_192_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        9 13 source_207_support r mask) :
    source_207_producer.Applies fam_192_key r mask := by
  unfold source_207_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_192_key, fam_192_support, source_207_support],
    hsource⟩⟩⟩

theorem fam_192_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_192_key.support r mask) :
    row_008_producer.Applies fam_192_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_192_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        9 13 source_207_support r mask)
    (hrows : ExactTwoSourceValidRows fam_192_key.support r mask) :
    SourceIndexStateKeyFacts fam_192_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_207_producer.sourceFacts
      (fam_192_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_192_rowApplies_of_rows hrows))

theorem fam_192_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        9 13 source_207_support r mask)
    (hrows : ExactTwoSourceValidRows fam_192_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_192_key.goodKilled_of_source_row
    (source_207_producer.sourceFacts
      (fam_192_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_192_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `264b9cd7d7fcb257e5fce6e2479524e2d5771f79a2680568564ffb5a0f7151e4`.
Observed representative GoodDirection cases: 1. -/
private def fam_193_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_193_key : SourceIndexStateKey where
  firstIndex := 151
  secondIndex := 8
  support := fam_193_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_193_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        151 8 source_190_support r mask) :
    source_190_producer.Applies fam_193_key r mask := by
  unfold source_190_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_193_key, fam_193_support, source_190_support],
    hsource⟩⟩⟩

theorem fam_193_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_193_key.support r mask) :
    row_010_producer.Applies fam_193_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_193_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        151 8 source_190_support r mask)
    (hrows : ExactTwoSourceValidRows fam_193_key.support r mask) :
    SourceIndexStateKeyFacts fam_193_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_190_producer.sourceFacts
      (fam_193_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_193_rowApplies_of_rows hrows))

theorem fam_193_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        151 8 source_190_support r mask)
    (hrows : ExactTwoSourceValidRows fam_193_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_193_key.goodKilled_of_source_row
    (source_190_producer.sourceFacts
      (fam_193_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_193_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2d0214e4910d9eaa1793839d8a69afbf8d37c87c58efd9a82498db6ba99c4f6f`.
Observed representative GoodDirection cases: 1. -/
private def fam_194_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_194_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 9
  support := fam_194_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_194_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 9 source_174_support r mask) :
    source_174_producer.Applies fam_194_key r mask := by
  unfold source_174_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_194_key, fam_194_support, source_174_support],
    hsource⟩⟩⟩

theorem fam_194_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_194_key.support r mask) :
    row_010_producer.Applies fam_194_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_194_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 9 source_174_support r mask)
    (hrows : ExactTwoSourceValidRows fam_194_key.support r mask) :
    SourceIndexStateKeyFacts fam_194_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_174_producer.sourceFacts
      (fam_194_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_194_rowApplies_of_rows hrows))

theorem fam_194_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 9 source_174_support r mask)
    (hrows : ExactTwoSourceValidRows fam_194_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_194_key.goodKilled_of_source_row
    (source_174_producer.sourceFacts
      (fam_194_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_194_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2d79217758a89d2a679b3f5a685d0a9e7a6be0cc8aa8202f4b4d834f3a50de3c`.
Observed representative GoodDirection cases: 1. -/
private def fam_195_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_195_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 11
  support := fam_195_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_195_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 11 source_211_support r mask) :
    source_211_producer.Applies fam_195_key r mask := by
  unfold source_211_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_195_key, fam_195_support, source_211_support],
    hsource⟩⟩⟩

theorem fam_195_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_195_key.support r mask) :
    row_008_producer.Applies fam_195_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_195_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 11 source_211_support r mask)
    (hrows : ExactTwoSourceValidRows fam_195_key.support r mask) :
    SourceIndexStateKeyFacts fam_195_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_211_producer.sourceFacts
      (fam_195_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_195_rowApplies_of_rows hrows))

theorem fam_195_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 11 source_211_support r mask)
    (hrows : ExactTwoSourceValidRows fam_195_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_195_key.goodKilled_of_source_row
    (source_211_producer.sourceFacts
      (fam_195_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_195_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2d7aafa6d90a976cfbbdcec38eb55e5706411aa12f2c996088719de38bd31150`.
Observed representative GoodDirection cases: 1. -/
private def fam_196_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_196_key : SourceIndexStateKey where
  firstIndex := 115
  secondIndex := 10
  support := fam_196_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_196_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 10 source_218_support r mask) :
    source_218_producer.Applies fam_196_key r mask := by
  unfold source_218_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_196_key, fam_196_support, source_218_support],
    hsource⟩⟩⟩

theorem fam_196_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_196_key.support r mask) :
    row_010_producer.Applies fam_196_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_196_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 10 source_218_support r mask)
    (hrows : ExactTwoSourceValidRows fam_196_key.support r mask) :
    SourceIndexStateKeyFacts fam_196_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_218_producer.sourceFacts
      (fam_196_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_196_rowApplies_of_rows hrows))

theorem fam_196_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 10 source_218_support r mask)
    (hrows : ExactTwoSourceValidRows fam_196_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_196_key.goodKilled_of_source_row
    (source_218_producer.sourceFacts
      (fam_196_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_196_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `314eee03483b488c04e72aafd9c8df371e25368287c67ecd85a4254c364733ad`.
Observed representative GoodDirection cases: 1. -/
private def fam_197_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_197_key : SourceIndexStateKey where
  firstIndex := 182
  secondIndex := 9
  support := fam_197_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_197_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 9 source_168_support r mask) :
    source_168_producer.Applies fam_197_key r mask := by
  unfold source_168_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_197_key, fam_197_support, source_168_support],
    hsource⟩⟩⟩

theorem fam_197_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_197_key.support r mask) :
    row_009_producer.Applies fam_197_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_197_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 9 source_168_support r mask)
    (hrows : ExactTwoSourceValidRows fam_197_key.support r mask) :
    SourceIndexStateKeyFacts fam_197_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_168_producer.sourceFacts
      (fam_197_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_197_rowApplies_of_rows hrows))

theorem fam_197_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 9 source_168_support r mask)
    (hrows : ExactTwoSourceValidRows fam_197_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_197_key.goodKilled_of_source_row
    (source_168_producer.sourceFacts
      (fam_197_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_197_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `39ee2997250107122e7eea24dc0a941a697f6601faf64ab54cf0f400444dbf6a`.
Observed representative GoodDirection cases: 1. -/
private def fam_198_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_198_key : SourceIndexStateKey where
  firstIndex := 100
  secondIndex := 9
  support := fam_198_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_198_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        100 9 source_166_support r mask) :
    source_166_producer.Applies fam_198_key r mask := by
  unfold source_166_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_198_key, fam_198_support, source_166_support],
    hsource⟩⟩⟩

theorem fam_198_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_198_key.support r mask) :
    row_010_producer.Applies fam_198_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_198_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        100 9 source_166_support r mask)
    (hrows : ExactTwoSourceValidRows fam_198_key.support r mask) :
    SourceIndexStateKeyFacts fam_198_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_166_producer.sourceFacts
      (fam_198_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_198_rowApplies_of_rows hrows))

theorem fam_198_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        100 9 source_166_support r mask)
    (hrows : ExactTwoSourceValidRows fam_198_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_198_key.goodKilled_of_source_row
    (source_166_producer.sourceFacts
      (fam_198_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_198_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5eb0c3d816e9ae0244f9f8027a8608d0a114355a14521202f75873951bb8882c`.
Observed representative GoodDirection cases: 1. -/
private def fam_199_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_199_key : SourceIndexStateKey where
  firstIndex := 126
  secondIndex := 9
  support := fam_199_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_199_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        126 9 source_196_support r mask) :
    source_196_producer.Applies fam_199_key r mask := by
  unfold source_196_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_199_key, fam_199_support, source_196_support],
    hsource⟩⟩⟩

theorem fam_199_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_199_key.support r mask) :
    row_010_producer.Applies fam_199_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_199_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        126 9 source_196_support r mask)
    (hrows : ExactTwoSourceValidRows fam_199_key.support r mask) :
    SourceIndexStateKeyFacts fam_199_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_196_producer.sourceFacts
      (fam_199_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_199_rowApplies_of_rows hrows))

theorem fam_199_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        126 9 source_196_support r mask)
    (hrows : ExactTwoSourceValidRows fam_199_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_199_key.goodKilled_of_source_row
    (source_196_producer.sourceFacts
      (fam_199_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_199_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `629a62da3465ba6b899d24d161da03ceca234eceb0421f760e2eb5b0b7a43605`.
Observed representative GoodDirection cases: 1. -/
private def fam_200_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_200_key : SourceIndexStateKey where
  firstIndex := 165
  secondIndex := 8
  support := fam_200_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_200_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 8 source_186_support r mask) :
    source_186_producer.Applies fam_200_key r mask := by
  unfold source_186_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_200_key, fam_200_support, source_186_support],
    hsource⟩⟩⟩

theorem fam_200_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_200_key.support r mask) :
    row_008_producer.Applies fam_200_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_200_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 8 source_186_support r mask)
    (hrows : ExactTwoSourceValidRows fam_200_key.support r mask) :
    SourceIndexStateKeyFacts fam_200_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_186_producer.sourceFacts
      (fam_200_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_200_rowApplies_of_rows hrows))

theorem fam_200_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 8 source_186_support r mask)
    (hrows : ExactTwoSourceValidRows fam_200_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_200_key.goodKilled_of_source_row
    (source_186_producer.sourceFacts
      (fam_200_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_200_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `75fde4820070e219ff99d69617daa3b2dfea40d323098416ca0acb1281883461`.
Observed representative GoodDirection cases: 1. -/
private def fam_201_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_201_key : SourceIndexStateKey where
  firstIndex := 154
  secondIndex := 6
  support := fam_201_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_201_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_181_support r mask) :
    source_181_producer.Applies fam_201_key r mask := by
  unfold source_181_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_201_key, fam_201_support, source_181_support],
    hsource⟩⟩⟩

theorem fam_201_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_201_key.support r mask) :
    row_019_producer.Applies fam_201_key r mask := by
  unfold row_019_producer
  exact ⟨rfl, hrows⟩

theorem fam_201_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_181_support r mask)
    (hrows : ExactTwoSourceValidRows fam_201_key.support r mask) :
    SourceIndexStateKeyFacts fam_201_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_181_producer.sourceFacts
      (fam_201_sourceApplies_of_sourcePredicate hsource))
    (row_019_producer.rowFacts
      (fam_201_rowApplies_of_rows hrows))

theorem fam_201_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_181_support r mask)
    (hrows : ExactTwoSourceValidRows fam_201_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_201_key.goodKilled_of_source_row
    (source_181_producer.sourceFacts
      (fam_201_sourceApplies_of_sourcePredicate hsource))
    (row_019_producer.rowFacts
      (fam_201_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7ebf4bdf0a90abfb11ce48e2d9448beb9620c51f2b4409bad2bdd9a5b11d39f4`.
Observed representative GoodDirection cases: 1. -/
private def fam_202_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_202_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 9
  support := fam_202_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_202_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 9 source_221_support r mask) :
    source_221_producer.Applies fam_202_key r mask := by
  unfold source_221_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_202_key, fam_202_support, source_221_support],
    hsource⟩⟩⟩

theorem fam_202_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_202_key.support r mask) :
    row_009_producer.Applies fam_202_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_202_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 9 source_221_support r mask)
    (hrows : ExactTwoSourceValidRows fam_202_key.support r mask) :
    SourceIndexStateKeyFacts fam_202_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_221_producer.sourceFacts
      (fam_202_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_202_rowApplies_of_rows hrows))

theorem fam_202_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 9 source_221_support r mask)
    (hrows : ExactTwoSourceValidRows fam_202_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_202_key.goodKilled_of_source_row
    (source_221_producer.sourceFacts
      (fam_202_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_202_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7f318e07e8a6320afd7cfab8309db295263b9233f01638a00f866b9f4dd1a165`.
Observed representative GoodDirection cases: 1. -/
private def fam_203_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_203_key : SourceIndexStateKey where
  firstIndex := 35
  secondIndex := 8
  support := fam_203_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_203_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        35 8 source_205_support r mask) :
    source_205_producer.Applies fam_203_key r mask := by
  unfold source_205_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_203_key, fam_203_support, source_205_support],
    hsource⟩⟩⟩

theorem fam_203_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_203_key.support r mask) :
    row_008_producer.Applies fam_203_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_203_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        35 8 source_205_support r mask)
    (hrows : ExactTwoSourceValidRows fam_203_key.support r mask) :
    SourceIndexStateKeyFacts fam_203_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_205_producer.sourceFacts
      (fam_203_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_203_rowApplies_of_rows hrows))

theorem fam_203_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        35 8 source_205_support r mask)
    (hrows : ExactTwoSourceValidRows fam_203_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_203_key.goodKilled_of_source_row
    (source_205_producer.sourceFacts
      (fam_203_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_203_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `83da0f0ceac418b1902f4c6fb43f8091fab8118f5e9bbe590c75367336b3e032`.
Observed representative GoodDirection cases: 1. -/
private def fam_204_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_204_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 9
  support := fam_204_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_204_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 9 source_224_support r mask) :
    source_224_producer.Applies fam_204_key r mask := by
  unfold source_224_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_204_key, fam_204_support, source_224_support],
    hsource⟩⟩⟩

theorem fam_204_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_204_key.support r mask) :
    row_019_producer.Applies fam_204_key r mask := by
  unfold row_019_producer
  exact ⟨rfl, hrows⟩

theorem fam_204_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 9 source_224_support r mask)
    (hrows : ExactTwoSourceValidRows fam_204_key.support r mask) :
    SourceIndexStateKeyFacts fam_204_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_224_producer.sourceFacts
      (fam_204_sourceApplies_of_sourcePredicate hsource))
    (row_019_producer.rowFacts
      (fam_204_rowApplies_of_rows hrows))

theorem fam_204_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 9 source_224_support r mask)
    (hrows : ExactTwoSourceValidRows fam_204_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_204_key.goodKilled_of_source_row
    (source_224_producer.sourceFacts
      (fam_204_sourceApplies_of_sourcePredicate hsource))
    (row_019_producer.rowFacts
      (fam_204_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `87e66ab09ff1fe651bfca813836f7a25f7b21d39823cde48d754052969c4a9fa`.
Observed representative GoodDirection cases: 1. -/
private def fam_205_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_205_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 5
  support := fam_205_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_205_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_156_support r mask) :
    source_156_producer.Applies fam_205_key r mask := by
  unfold source_156_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_205_key, fam_205_support, source_156_support],
    hsource⟩⟩⟩

theorem fam_205_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_205_key.support r mask) :
    row_009_producer.Applies fam_205_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_205_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_156_support r mask)
    (hrows : ExactTwoSourceValidRows fam_205_key.support r mask) :
    SourceIndexStateKeyFacts fam_205_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_156_producer.sourceFacts
      (fam_205_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_205_rowApplies_of_rows hrows))

theorem fam_205_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_156_support r mask)
    (hrows : ExactTwoSourceValidRows fam_205_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_205_key.goodKilled_of_source_row
    (source_156_producer.sourceFacts
      (fam_205_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_205_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8afc37703c8382469ef17f5607e307859529f1ae4ed3da198185464573b9dfbe`.
Observed representative GoodDirection cases: 1. -/
private def fam_206_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
private def fam_206_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 70
  support := fam_206_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_206_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 70 source_180_support r mask) :
    source_180_producer.Applies fam_206_key r mask := by
  unfold source_180_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_206_key, fam_206_support, source_180_support],
    hsource⟩⟩⟩

theorem fam_206_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_206_key.support r mask) :
    row_010_producer.Applies fam_206_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_206_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 70 source_180_support r mask)
    (hrows : ExactTwoSourceValidRows fam_206_key.support r mask) :
    SourceIndexStateKeyFacts fam_206_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_180_producer.sourceFacts
      (fam_206_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_206_rowApplies_of_rows hrows))

theorem fam_206_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 70 source_180_support r mask)
    (hrows : ExactTwoSourceValidRows fam_206_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_206_key.goodKilled_of_source_row
    (source_180_producer.sourceFacts
      (fam_206_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_206_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8ce4319ccc35b0838e05ad7c28a31f20d1bd5772aa82370639218547d18e26e2`.
Observed representative GoodDirection cases: 1. -/
private def fam_207_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_207_key : SourceIndexStateKey where
  firstIndex := 34
  secondIndex := 8
  support := fam_207_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_207_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 8 source_200_support r mask) :
    source_200_producer.Applies fam_207_key r mask := by
  unfold source_200_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_207_key, fam_207_support, source_200_support],
    hsource⟩⟩⟩

theorem fam_207_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_207_key.support r mask) :
    row_008_producer.Applies fam_207_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_207_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 8 source_200_support r mask)
    (hrows : ExactTwoSourceValidRows fam_207_key.support r mask) :
    SourceIndexStateKeyFacts fam_207_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_200_producer.sourceFacts
      (fam_207_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_207_rowApplies_of_rows hrows))

theorem fam_207_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 8 source_200_support r mask)
    (hrows : ExactTwoSourceValidRows fam_207_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_207_key.goodKilled_of_source_row
    (source_200_producer.sourceFacts
      (fam_207_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_207_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ab17eb62ebc9155177b5f3b559b923fcbe279d923845cf917f0575e00d74b0b3`.
Observed representative GoodDirection cases: 1. -/
private def fam_208_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_208_key : SourceIndexStateKey where
  firstIndex := 138
  secondIndex := 8
  support := fam_208_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_208_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        138 8 source_184_support r mask) :
    source_184_producer.Applies fam_208_key r mask := by
  unfold source_184_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_208_key, fam_208_support, source_184_support],
    hsource⟩⟩⟩

theorem fam_208_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_208_key.support r mask) :
    row_010_producer.Applies fam_208_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_208_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        138 8 source_184_support r mask)
    (hrows : ExactTwoSourceValidRows fam_208_key.support r mask) :
    SourceIndexStateKeyFacts fam_208_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_184_producer.sourceFacts
      (fam_208_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_208_rowApplies_of_rows hrows))

theorem fam_208_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        138 8 source_184_support r mask)
    (hrows : ExactTwoSourceValidRows fam_208_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_208_key.goodKilled_of_source_row
    (source_184_producer.sourceFacts
      (fam_208_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_208_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `aba7fa5bfdfe17c46ab677e2d650fecb0bc52213a611e16ace70c35c8679d47a`.
Observed representative GoodDirection cases: 1. -/
private def fam_209_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_209_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 9
  support := fam_209_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_209_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_139_support r mask) :
    source_139_producer.Applies fam_209_key r mask := by
  unfold source_139_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_209_key, fam_209_support, source_139_support],
    hsource⟩⟩⟩

theorem fam_209_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_209_key.support r mask) :
    row_008_producer.Applies fam_209_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_209_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_139_support r mask)
    (hrows : ExactTwoSourceValidRows fam_209_key.support r mask) :
    SourceIndexStateKeyFacts fam_209_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_139_producer.sourceFacts
      (fam_209_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_209_rowApplies_of_rows hrows))

theorem fam_209_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_139_support r mask)
    (hrows : ExactTwoSourceValidRows fam_209_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_209_key.goodKilled_of_source_row
    (source_139_producer.sourceFacts
      (fam_209_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_209_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b1fd9664f3b3d93369a1f5fd85da78643afef631931bdacbc4fe91b7aad3d5fd`.
Observed representative GoodDirection cases: 1. -/
private def fam_210_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_210_key : SourceIndexStateKey where
  firstIndex := 173
  secondIndex := 6
  support := fam_210_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_210_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 6 source_220_support r mask) :
    source_220_producer.Applies fam_210_key r mask := by
  unfold source_220_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_210_key, fam_210_support, source_220_support],
    hsource⟩⟩⟩

theorem fam_210_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_210_key.support r mask) :
    row_010_producer.Applies fam_210_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_210_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 6 source_220_support r mask)
    (hrows : ExactTwoSourceValidRows fam_210_key.support r mask) :
    SourceIndexStateKeyFacts fam_210_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_220_producer.sourceFacts
      (fam_210_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_210_rowApplies_of_rows hrows))

theorem fam_210_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 6 source_220_support r mask)
    (hrows : ExactTwoSourceValidRows fam_210_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_210_key.goodKilled_of_source_row
    (source_220_producer.sourceFacts
      (fam_210_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_210_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b8248b1400ddb058def30d5ca482158301acec6ff5100850d22be74a6c079c75`.
Observed representative GoodDirection cases: 1. -/
private def fam_211_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_211_key : SourceIndexStateKey where
  firstIndex := 150
  secondIndex := 9
  support := fam_211_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_211_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        150 9 source_173_support r mask) :
    source_173_producer.Applies fam_211_key r mask := by
  unfold source_173_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_211_key, fam_211_support, source_173_support],
    hsource⟩⟩⟩

theorem fam_211_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_211_key.support r mask) :
    row_010_producer.Applies fam_211_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_211_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        150 9 source_173_support r mask)
    (hrows : ExactTwoSourceValidRows fam_211_key.support r mask) :
    SourceIndexStateKeyFacts fam_211_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_173_producer.sourceFacts
      (fam_211_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_211_rowApplies_of_rows hrows))

theorem fam_211_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        150 9 source_173_support r mask)
    (hrows : ExactTwoSourceValidRows fam_211_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_211_key.goodKilled_of_source_row
    (source_173_producer.sourceFacts
      (fam_211_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_211_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b99ced2e382857d7993001aa6ff1851a692839236711995b7107563e53b4b8a5`.
Observed representative GoodDirection cases: 1. -/
private def fam_212_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_212_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 13
  support := fam_212_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_212_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_123_support r mask) :
    source_123_producer.Applies fam_212_key r mask := by
  unfold source_123_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_212_key, fam_212_support, source_123_support],
    hsource⟩⟩⟩

theorem fam_212_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_212_key.support r mask) :
    row_008_producer.Applies fam_212_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_212_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_123_support r mask)
    (hrows : ExactTwoSourceValidRows fam_212_key.support r mask) :
    SourceIndexStateKeyFacts fam_212_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_123_producer.sourceFacts
      (fam_212_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_212_rowApplies_of_rows hrows))

theorem fam_212_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_123_support r mask)
    (hrows : ExactTwoSourceValidRows fam_212_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_212_key.goodKilled_of_source_row
    (source_123_producer.sourceFacts
      (fam_212_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_212_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bab623074c7190879210838f27ff14eb9122e1941c6bea7309714fb2f00d3062`.
Observed representative GoodDirection cases: 1. -/
private def fam_213_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_213_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 5
  support := fam_213_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_213_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_156_support r mask) :
    source_156_producer.Applies fam_213_key r mask := by
  unfold source_156_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_213_key, fam_213_support, source_156_support],
    hsource⟩⟩⟩

theorem fam_213_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_213_key.support r mask) :
    row_008_producer.Applies fam_213_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_213_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_156_support r mask)
    (hrows : ExactTwoSourceValidRows fam_213_key.support r mask) :
    SourceIndexStateKeyFacts fam_213_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_156_producer.sourceFacts
      (fam_213_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_213_rowApplies_of_rows hrows))

theorem fam_213_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_156_support r mask)
    (hrows : ExactTwoSourceValidRows fam_213_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_213_key.goodKilled_of_source_row
    (source_156_producer.sourceFacts
      (fam_213_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_213_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `be8dead86cc6ca5a5ad69334800b184686ef94e109cb3189e9e94c535f0abf23`.
Observed representative GoodDirection cases: 1. -/
private def fam_214_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_214_key : SourceIndexStateKey where
  firstIndex := 113
  secondIndex := 8
  support := fam_214_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_214_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 8 source_182_support r mask) :
    source_182_producer.Applies fam_214_key r mask := by
  unfold source_182_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_214_key, fam_214_support, source_182_support],
    hsource⟩⟩⟩

theorem fam_214_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_214_key.support r mask) :
    row_010_producer.Applies fam_214_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_214_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 8 source_182_support r mask)
    (hrows : ExactTwoSourceValidRows fam_214_key.support r mask) :
    SourceIndexStateKeyFacts fam_214_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_182_producer.sourceFacts
      (fam_214_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_214_rowApplies_of_rows hrows))

theorem fam_214_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 8 source_182_support r mask)
    (hrows : ExactTwoSourceValidRows fam_214_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_214_key.goodKilled_of_source_row
    (source_182_producer.sourceFacts
      (fam_214_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_214_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `cb2e15e9246e382459d6da526a0cf8f3848c6b7f8c78755a67db3f1f3aa1aa6d`.
Observed representative GoodDirection cases: 1. -/
private def fam_215_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_215_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 12
  support := fam_215_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_215_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 12 source_193_support r mask) :
    source_193_producer.Applies fam_215_key r mask := by
  unfold source_193_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_215_key, fam_215_support, source_193_support],
    hsource⟩⟩⟩

theorem fam_215_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_215_key.support r mask) :
    row_010_producer.Applies fam_215_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_215_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 12 source_193_support r mask)
    (hrows : ExactTwoSourceValidRows fam_215_key.support r mask) :
    SourceIndexStateKeyFacts fam_215_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_193_producer.sourceFacts
      (fam_215_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_215_rowApplies_of_rows hrows))

theorem fam_215_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 12 source_193_support r mask)
    (hrows : ExactTwoSourceValidRows fam_215_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_215_key.goodKilled_of_source_row
    (source_193_producer.sourceFacts
      (fam_215_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_215_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d04c1ee67a3dd6b0ddb94e8a48caaedf5c77f10b8d3aba7b2eea8df2f33fa805`.
Observed representative GoodDirection cases: 1. -/
private def fam_216_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_216_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 6
  support := fam_216_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_216_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 6 source_183_support r mask) :
    source_183_producer.Applies fam_216_key r mask := by
  unfold source_183_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_216_key, fam_216_support, source_183_support],
    hsource⟩⟩⟩

theorem fam_216_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_216_key.support r mask) :
    row_008_producer.Applies fam_216_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_216_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 6 source_183_support r mask)
    (hrows : ExactTwoSourceValidRows fam_216_key.support r mask) :
    SourceIndexStateKeyFacts fam_216_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_183_producer.sourceFacts
      (fam_216_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_216_rowApplies_of_rows hrows))

theorem fam_216_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 6 source_183_support r mask)
    (hrows : ExactTwoSourceValidRows fam_216_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_216_key.goodKilled_of_source_row
    (source_183_producer.sourceFacts
      (fam_216_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_216_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d67725873cbb8e415a4f291c7d4f80a0057a070d0a1716cb64061e34ba7a729f`.
Observed representative GoodDirection cases: 1. -/
private def fam_217_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_217_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 6
  support := fam_217_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_217_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 6 source_217_support r mask) :
    source_217_producer.Applies fam_217_key r mask := by
  unfold source_217_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_217_key, fam_217_support, source_217_support],
    hsource⟩⟩⟩

theorem fam_217_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_217_key.support r mask) :
    row_008_producer.Applies fam_217_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_217_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 6 source_217_support r mask)
    (hrows : ExactTwoSourceValidRows fam_217_key.support r mask) :
    SourceIndexStateKeyFacts fam_217_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_217_producer.sourceFacts
      (fam_217_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_217_rowApplies_of_rows hrows))

theorem fam_217_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 6 source_217_support r mask)
    (hrows : ExactTwoSourceValidRows fam_217_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_217_key.goodKilled_of_source_row
    (source_217_producer.sourceFacts
      (fam_217_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_217_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f3c7a8ec44844a731c5fb1b73fad620f2beb88bd6d2401a81a56f7175b67c3b0`.
Observed representative GoodDirection cases: 1. -/
private def fam_218_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_218_key : SourceIndexStateKey where
  firstIndex := 85
  secondIndex := 8
  support := fam_218_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_218_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 8 source_208_support r mask) :
    source_208_producer.Applies fam_218_key r mask := by
  unfold source_208_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_218_key, fam_218_support, source_208_support],
    hsource⟩⟩⟩

theorem fam_218_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_218_key.support r mask) :
    row_009_producer.Applies fam_218_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_218_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 8 source_208_support r mask)
    (hrows : ExactTwoSourceValidRows fam_218_key.support r mask) :
    SourceIndexStateKeyFacts fam_218_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_208_producer.sourceFacts
      (fam_218_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_218_rowApplies_of_rows hrows))

theorem fam_218_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 8 source_208_support r mask)
    (hrows : ExactTwoSourceValidRows fam_218_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_218_key.goodKilled_of_source_row
    (source_208_producer.sourceFacts
      (fam_218_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_218_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0ef325aa5f194e8152bb2705a7ce4afd942ac91769581519a273ef2ec457b397`.
Observed representative GoodDirection cases: 1. -/
private def fam_219_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_219_key : SourceIndexStateKey where
  firstIndex := 82
  secondIndex := 1
  support := fam_219_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_219_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        82 1 source_176_support r mask) :
    source_176_producer.Applies fam_219_key r mask := by
  unfold source_176_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_219_key, fam_219_support, source_176_support],
    hsource⟩⟩⟩

theorem fam_219_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_219_key.support r mask) :
    row_001_producer.Applies fam_219_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_219_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        82 1 source_176_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_219_key.support r mask) :
    SourceIndexStateKeyFacts fam_219_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_176_producer.sourceFacts
      (fam_219_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_219_rowApplies_of_rows hrows))

theorem fam_219_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        82 1 source_176_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_219_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_219_key.goodKilled_of_source_row
    (source_176_producer.sourceFacts
      (fam_219_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_219_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `46301f834b4c600cd13872206cd8aee0d02663ee7b535f8bc3c0519f8beeefc7`.
Observed representative GoodDirection cases: 1. -/
private def fam_220_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_220_key : SourceIndexStateKey where
  firstIndex := 95
  secondIndex := 1
  support := fam_220_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_220_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 1 source_178_support r mask) :
    source_178_producer.Applies fam_220_key r mask := by
  unfold source_178_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_220_key, fam_220_support, source_178_support],
    hsource⟩⟩⟩

theorem fam_220_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_220_key.support r mask) :
    row_001_producer.Applies fam_220_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_220_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 1 source_178_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_220_key.support r mask) :
    SourceIndexStateKeyFacts fam_220_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_178_producer.sourceFacts
      (fam_220_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_220_rowApplies_of_rows hrows))

theorem fam_220_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 1 source_178_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_220_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_220_key.goodKilled_of_source_row
    (source_178_producer.sourceFacts
      (fam_220_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_220_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5befadd8e6f7dc553501dfd8235a1fe5b23538a0756b0a76a7512061304ec15d`.
Observed representative GoodDirection cases: 1. -/
private def fam_221_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_221_key : SourceIndexStateKey where
  firstIndex := 71
  secondIndex := 1
  support := fam_221_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_221_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        71 1 source_192_support r mask) :
    source_192_producer.Applies fam_221_key r mask := by
  unfold source_192_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_221_key, fam_221_support, source_192_support],
    hsource⟩⟩⟩

theorem fam_221_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_221_key.support r mask) :
    row_001_producer.Applies fam_221_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_221_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        71 1 source_192_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_221_key.support r mask) :
    SourceIndexStateKeyFacts fam_221_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_192_producer.sourceFacts
      (fam_221_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_221_rowApplies_of_rows hrows))

theorem fam_221_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        71 1 source_192_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_221_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_221_key.goodKilled_of_source_row
    (source_192_producer.sourceFacts
      (fam_221_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_221_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ce62a5a32da0ce9b356319d9cc14d4301fa465fa4ed9fa9f592069cf587ab847`.
Observed representative GoodDirection cases: 1. -/
private def fam_222_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_222_key : SourceIndexStateKey where
  firstIndex := 132
  secondIndex := 1
  support := fam_222_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_222_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 1 source_219_support r mask) :
    source_219_producer.Applies fam_222_key r mask := by
  unfold source_219_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_222_key, fam_222_support, source_219_support],
    hsource⟩⟩⟩

theorem fam_222_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_222_key.support r mask) :
    row_001_producer.Applies fam_222_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_222_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 1 source_219_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_222_key.support r mask) :
    SourceIndexStateKeyFacts fam_222_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_219_producer.sourceFacts
      (fam_222_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_222_rowApplies_of_rows hrows))

theorem fam_222_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 1 source_219_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_222_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_222_key.goodKilled_of_source_row
    (source_219_producer.sourceFacts
      (fam_222_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_222_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `efad8a0829ddfb24f4d585b6563eb1fe2e5da3d23dba340bd8d90d139c908cb9`.
Observed representative GoodDirection cases: 1. -/
private def fam_223_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_223_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 1
  support := fam_223_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_223_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 1 source_202_support r mask) :
    source_202_producer.Applies fam_223_key r mask := by
  unfold source_202_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_223_key, fam_223_support, source_202_support],
    hsource⟩⟩⟩

theorem fam_223_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_223_key.support r mask) :
    row_001_producer.Applies fam_223_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_223_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 1 source_202_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_223_key.support r mask) :
    SourceIndexStateKeyFacts fam_223_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_202_producer.sourceFacts
      (fam_223_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_223_rowApplies_of_rows hrows))

theorem fam_223_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 1 source_202_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_223_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_223_key.goodKilled_of_source_row
    (source_202_producer.sourceFacts
      (fam_223_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_223_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f420382d3e753e535efd2c83096f0edacb2a1d4da789375289b021326989b18e`.
Observed representative GoodDirection cases: 1. -/
private def fam_224_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_224_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 1
  support := fam_224_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_224_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_187_support r mask) :
    source_187_producer.Applies fam_224_key r mask := by
  unfold source_187_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_224_key, fam_224_support, source_187_support],
    hsource⟩⟩⟩

theorem fam_224_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_224_key.support r mask) :
    row_001_producer.Applies fam_224_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_224_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_187_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_224_key.support r mask) :
    SourceIndexStateKeyFacts fam_224_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_187_producer.sourceFacts
      (fam_224_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_224_rowApplies_of_rows hrows))

theorem fam_224_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_187_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_224_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_224_key.goodKilled_of_source_row
    (source_187_producer.sourceFacts
      (fam_224_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_224_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `17f7cba927576d1e3ce1e0f22719fdf34efbf487621330fb2634f56699f2d27b`.
Observed representative GoodDirection cases: 1. -/
private def fam_225_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_225_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 2
  support := fam_225_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_225_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 2 source_191_support r mask) :
    source_191_producer.Applies fam_225_key r mask := by
  unfold source_191_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_225_key, fam_225_support, source_191_support],
    hsource⟩⟩⟩

theorem fam_225_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_225_key.support r mask) :
    row_003_producer.Applies fam_225_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_225_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 2 source_191_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_225_key.support r mask) :
    SourceIndexStateKeyFacts fam_225_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_191_producer.sourceFacts
      (fam_225_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_225_rowApplies_of_rows hrows))

theorem fam_225_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 2 source_191_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_225_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_225_key.goodKilled_of_source_row
    (source_191_producer.sourceFacts
      (fam_225_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_225_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `38d9c8a2047efd6dff949a89db8a05389b5870477b5d188fc6b8b047863879fb`.
Observed representative GoodDirection cases: 1. -/
private def fam_226_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_226_key : SourceIndexStateKey where
  firstIndex := 34
  secondIndex := 2
  support := fam_226_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_226_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 2 source_203_support r mask) :
    source_203_producer.Applies fam_226_key r mask := by
  unfold source_203_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_226_key, fam_226_support, source_203_support],
    hsource⟩⟩⟩

theorem fam_226_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_226_key.support r mask) :
    row_003_producer.Applies fam_226_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_226_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 2 source_203_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_226_key.support r mask) :
    SourceIndexStateKeyFacts fam_226_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_203_producer.sourceFacts
      (fam_226_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_226_rowApplies_of_rows hrows))

theorem fam_226_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 2 source_203_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_226_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_226_key.goodKilled_of_source_row
    (source_203_producer.sourceFacts
      (fam_226_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_226_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `94bc8df8c46833a2fe7952fbbc9fc5a3641d8142061c5eb5f8307bd3f0c48ce7`.
Observed representative GoodDirection cases: 1. -/
private def fam_227_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_227_key : SourceIndexStateKey where
  firstIndex := 169
  secondIndex := 2
  support := fam_227_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_227_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 2 source_194_support r mask) :
    source_194_producer.Applies fam_227_key r mask := by
  unfold source_194_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_227_key, fam_227_support, source_194_support],
    hsource⟩⟩⟩

theorem fam_227_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_227_key.support r mask) :
    row_003_producer.Applies fam_227_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_227_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 2 source_194_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_227_key.support r mask) :
    SourceIndexStateKeyFacts fam_227_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_194_producer.sourceFacts
      (fam_227_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_227_rowApplies_of_rows hrows))

theorem fam_227_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 2 source_194_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_227_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_227_key.goodKilled_of_source_row
    (source_194_producer.sourceFacts
      (fam_227_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_227_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `972c07ccadec33f45a136a27aad6878ae131e85312f6c2d5032f3502d605bf09`.
Observed representative GoodDirection cases: 1. -/
private def fam_228_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_228_key : SourceIndexStateKey where
  firstIndex := 143
  secondIndex := 2
  support := fam_228_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_228_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        143 2 source_209_support r mask) :
    source_209_producer.Applies fam_228_key r mask := by
  unfold source_209_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_228_key, fam_228_support, source_209_support],
    hsource⟩⟩⟩

theorem fam_228_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_228_key.support r mask) :
    row_003_producer.Applies fam_228_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_228_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        143 2 source_209_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_228_key.support r mask) :
    SourceIndexStateKeyFacts fam_228_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_209_producer.sourceFacts
      (fam_228_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_228_rowApplies_of_rows hrows))

theorem fam_228_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        143 2 source_209_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_228_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_228_key.goodKilled_of_source_row
    (source_209_producer.sourceFacts
      (fam_228_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_228_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b5791ce378f59bf91188ce12a5cee4bd9ce095fd83d04c5d996eb00712f281e6`.
Observed representative GoodDirection cases: 1. -/
private def fam_229_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_229_key : SourceIndexStateKey where
  firstIndex := 102
  secondIndex := 2
  support := fam_229_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_229_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 2 source_198_support r mask) :
    source_198_producer.Applies fam_229_key r mask := by
  unfold source_198_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_229_key, fam_229_support, source_198_support],
    hsource⟩⟩⟩

theorem fam_229_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_229_key.support r mask) :
    row_003_producer.Applies fam_229_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_229_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 2 source_198_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_229_key.support r mask) :
    SourceIndexStateKeyFacts fam_229_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_198_producer.sourceFacts
      (fam_229_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_229_rowApplies_of_rows hrows))

theorem fam_229_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 2 source_198_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_229_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_229_key.goodKilled_of_source_row
    (source_198_producer.sourceFacts
      (fam_229_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_229_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c6918f7ac7801266eb6582ce3ed2d94c58b9959746d321ec9b6de0e09732bff9`.
Observed representative GoodDirection cases: 1. -/
private def fam_230_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_230_key : SourceIndexStateKey where
  firstIndex := 18
  secondIndex := 2
  support := fam_230_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_230_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 2 source_165_support r mask) :
    source_165_producer.Applies fam_230_key r mask := by
  unfold source_165_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_230_key, fam_230_support, source_165_support],
    hsource⟩⟩⟩

theorem fam_230_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_230_key.support r mask) :
    row_003_producer.Applies fam_230_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_230_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 2 source_165_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_230_key.support r mask) :
    SourceIndexStateKeyFacts fam_230_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_165_producer.sourceFacts
      (fam_230_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_230_rowApplies_of_rows hrows))

theorem fam_230_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 2 source_165_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_230_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_230_key.goodKilled_of_source_row
    (source_165_producer.sourceFacts
      (fam_230_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_230_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d0abb996a8c7c064d297e64339d5260e39d9936ed47ab5760d3a9be060927986`.
Observed representative GoodDirection cases: 1. -/
private def fam_231_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_231_key : SourceIndexStateKey where
  firstIndex := 119
  secondIndex := 2
  support := fam_231_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_231_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 2 source_212_support r mask) :
    source_212_producer.Applies fam_231_key r mask := by
  unfold source_212_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_231_key, fam_231_support, source_212_support],
    hsource⟩⟩⟩

theorem fam_231_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_231_key.support r mask) :
    row_003_producer.Applies fam_231_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_231_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 2 source_212_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_231_key.support r mask) :
    SourceIndexStateKeyFacts fam_231_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_212_producer.sourceFacts
      (fam_231_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_231_rowApplies_of_rows hrows))

theorem fam_231_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 2 source_212_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_231_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_231_key.goodKilled_of_source_row
    (source_212_producer.sourceFacts
      (fam_231_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_231_rowApplies_of_rows hrows))

theorem pairSignProducerCoverageSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSmoke
