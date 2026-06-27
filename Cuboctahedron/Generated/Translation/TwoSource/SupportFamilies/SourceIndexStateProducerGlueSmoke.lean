import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated source+row producer glue smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. It composes reusable source producers and row
producers into key facts and classifier branches.
Phase: 6Z.6K.8T.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateProducerGlueSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option linter.unusedVariables false

/-- Source producer `e6036b3771bec884271fd313167d8519f778f5bfa8a367817b10f62a89a8a658`.
Observed bounded GoodDirection cases: 421. -/
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

/-- Source producer `769b51797f7673bfeb9398aa368722d1bd240c5dab2544ca613968cd12d1d04f`.
Observed bounded GoodDirection cases: 134. -/
private def source_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_001_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 24 /\
      key.secondIndex = 1 /\
      key.support = source_001_support /\
      SourceIndexStateSourcePredicate
        24 1 source_001_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `102f94908cffedc720a55cfc27b35406493b72b1e82b3d7c1c24b827dcd70992`.
Observed bounded GoodDirection cases: 128. -/
private def source_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_002_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 0 /\
      key.support = source_002_support /\
      SourceIndexStateSourcePredicate
        83 0 source_002_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a940ab9f3ad72969cb34647573c21a29f5a495fb263e3600e94bc0c2c4550404`.
Observed bounded GoodDirection cases: 102. -/
private def source_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_003_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 25 /\
      key.secondIndex = 2 /\
      key.support = source_003_support /\
      SourceIndexStateSourcePredicate
        25 2 source_003_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `bd6920dd445394fa411d960ee0fa5e224849d9dca848e1d3076a39d3626dfd13`.
Observed bounded GoodDirection cases: 79. -/
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

/-- Source producer `ad267e9929734fb517e7637e7427ddc6db18b4b7f248a273978142252e902f28`.
Observed bounded GoodDirection cases: 44. -/
private def source_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_005_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 1 /\
      key.support = source_005_support /\
      SourceIndexStateSourcePredicate
        83 1 source_005_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `9accec1e031f7ece790b4aa4210485dc1f22e39bd32249b558d48ffc9b0d7a0b`.
Observed bounded GoodDirection cases: 30. -/
private def source_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_006_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 13 /\
      key.support = source_006_support /\
      SourceIndexStateSourcePredicate
        0 13 source_006_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ae3bde4a1a4cc1ec75f1cb2bb1a8c46d60dc621e6564547419af063c86107bad`.
Observed bounded GoodDirection cases: 29. -/
private def source_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_007_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 15 /\
      key.support = source_007_support /\
      SourceIndexStateSourcePredicate
        0 15 source_007_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `42b2ca31b66f321779af52fa7d1705bf6225addea038120f1bf009a80458707e`.
Observed bounded GoodDirection cases: 23. -/
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

/-- Source producer `1d34e50ef50db67906309004624aa6d4e651dbd09c6d043c3d8c09105f94b4a9`.
Observed bounded GoodDirection cases: 22. -/
private def source_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_009_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 10 /\
      key.support = source_009_support /\
      SourceIndexStateSourcePredicate
        0 10 source_009_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `53696c059bbf359ca7a6c7accc921f9fa16dfba896d6532ca0eab7f9821a867c`.
Observed bounded GoodDirection cases: 22. -/
private def source_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_010_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 26 /\
      key.secondIndex = 3 /\
      key.support = source_010_support /\
      SourceIndexStateSourcePredicate
        26 3 source_010_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `8b9860bf1b03698c2e5b816aa6d65a36f6345895abd06affbaa3b1e84c613982`.
Observed bounded GoodDirection cases: 21. -/
private def source_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_011_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 183 /\
      key.secondIndex = 0 /\
      key.support = source_011_support /\
      SourceIndexStateSourcePredicate
        183 0 source_011_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `cea4464df905000142edce9b11281690a008c9d5cd1e771dca605906f1732c50`.
Observed bounded GoodDirection cases: 20. -/
private def source_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_012_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 14 /\
      key.support = source_012_support /\
      SourceIndexStateSourcePredicate
        0 14 source_012_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `06a7f983ec54b3872bb5dd9456861860d39e3e54508d4af2b7d0394448a044b9`.
Observed bounded GoodDirection cases: 19. -/
private def source_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_013_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 0 /\
      key.support = source_013_support /\
      SourceIndexStateSourcePredicate
        148 0 source_013_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `11d11e966a166501fce2240603d022412ecfc147a743e9eeb858fff69d844ebb`.
Observed bounded GoodDirection cases: 19. -/
private def source_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_014_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 7 /\
      key.support = source_014_support /\
      SourceIndexStateSourcePredicate
        1 7 source_014_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `692bbc76b40817b5dcd7452f4db344bdbb5d2b802f23d64eb74e0f2f53b56cd4`.
Observed bounded GoodDirection cases: 19. -/
private def source_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_015_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 0 /\
      key.support = source_015_support /\
      SourceIndexStateSourcePredicate
        122 0 source_015_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f5d3bc532de79b891d27a058711bfb9349a1f9c646078b419227a9526058c152`.
Observed bounded GoodDirection cases: 19. -/
private def source_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def source_016_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 16 /\
      key.support = source_016_support /\
      SourceIndexStateSourcePredicate
        0 16 source_016_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `bfaf1e6ce0ce1d61786e4a66aa7cc7fe1274f69ba512fb8d2b3b5615b469ad17`.
Observed bounded GoodDirection cases: 18. -/
private def source_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_017_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 12 /\
      key.support = source_017_support /\
      SourceIndexStateSourcePredicate
        0 12 source_017_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3a2924aa5bdbec3a5329bab98173034188d967d93ba7605c96c85f733e8934bc`.
Observed bounded GoodDirection cases: 17. -/
private def source_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_018_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 0 /\
      key.support = source_018_support /\
      SourceIndexStateSourcePredicate
        109 0 source_018_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3ec14ceb9b28b37bfe12fc6a8c3e6defb306f79d63b69d9cae8059ab8e87ed95`.
Observed bounded GoodDirection cases: 15. -/
private def source_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_019_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 0 /\
      key.support = source_019_support /\
      SourceIndexStateSourcePredicate
        96 0 source_019_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c8554aaf4b73ef54193dc1098080e5fafa5f64822fb2c03410d5082efd63016e`.
Observed bounded GoodDirection cases: 14. -/
private def source_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_020_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 2 /\
      key.support = source_020_support /\
      SourceIndexStateSourcePredicate
        84 2 source_020_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3940e6d91b3a2977beb1d4942a19557c49dabb0e49e65b72e3227a510d4b67d7`.
Observed bounded GoodDirection cases: 13. -/
private def source_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_021_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 7 /\
      key.support = source_021_support /\
      SourceIndexStateSourcePredicate
        2 7 source_021_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5ce1ee1f662aea79fe8c212d24c3e68d99cff33e5b7b11e2d6750a5472d0dc92`.
Observed bounded GoodDirection cases: 12. -/
private def source_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_022_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 15 /\
      key.support = source_022_support /\
      SourceIndexStateSourcePredicate
        1 15 source_022_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `66c02cba404c532f1e9ea96ebfda39fd2349706278e115bea1674477e05dd3b2`.
Observed bounded GoodDirection cases: 11. -/
private def source_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_023_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 0 /\
      key.support = source_023_support /\
      SourceIndexStateSourcePredicate
        136 0 source_023_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `96db83cdd7dfbc306ef127f08ef94f5c3d71c27df72ac9f8545d0cd54e7b6dcb`.
Observed bounded GoodDirection cases: 11. -/
private def source_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_024_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 14 /\
      key.support = source_024_support /\
      SourceIndexStateSourcePredicate
        1 14 source_024_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `91680d53032fa2b164ce79bff664fd9b3c2668cecd33138eaecccb17f8b26b08`.
Observed bounded GoodDirection cases: 10. -/
private def source_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_025_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 3 /\
      key.support = source_025_support /\
      SourceIndexStateSourcePredicate
        84 3 source_025_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b7ca266b8fa988d73c3b864dff16753f69846cf84ad358a64417c436bdeb8f8b`.
Observed bounded GoodDirection cases: 10. -/
private def source_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_026_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 0 /\
      key.support = source_026_support /\
      SourceIndexStateSourcePredicate
        162 0 source_026_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `fc805e5aa43cbf59fd54e11b9b4cc4bf2c46e5b085bcbdba6c2acab8157c72dc`.
Observed bounded GoodDirection cases: 10. -/
private def source_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_027_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 0 /\
      key.support = source_027_support /\
      SourceIndexStateSourcePredicate
        110 0 source_027_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `2cc68c3b6a2dde0b5894b80d15ebc02445fe20739f015077a5ff51c7ae15634c`.
Observed bounded GoodDirection cases: 9. -/
private def source_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_028_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 11 /\
      key.support = source_028_support /\
      SourceIndexStateSourcePredicate
        1 11 source_028_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3290d20984474e3909c8a8dbc359f8163dd1eb7d94bb9866a2af2d916807585d`.
Observed bounded GoodDirection cases: 9. -/
private def source_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_029_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 11 /\
      key.support = source_029_support /\
      SourceIndexStateSourcePredicate
        2 11 source_029_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `46b74a54a57a25ed51e207d17428b8f88e3a57422f9046833bc6157d56270cb6`.
Observed bounded GoodDirection cases: 9. -/
private def source_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_030_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 44 /\
      key.secondIndex = 5 /\
      key.support = source_030_support /\
      SourceIndexStateSourcePredicate
        44 5 source_030_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f6d33b37efe11ca04d4d63e6211fac6edae2c5f8c55bcd8093d7d8eab574be5b`.
Observed bounded GoodDirection cases: 9. -/
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

/-- Source producer `714cbfa66a98642d64c09ac23728c29c4968d8efd1b91af74d04f05c45dbf096`.
Observed bounded GoodDirection cases: 8. -/
private def source_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_032_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 0 /\
      key.support = source_032_support /\
      SourceIndexStateSourcePredicate
        175 0 source_032_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5235f96701952b933dac7760828ad3a186c53ea499c754a3eef721e2d1a4f450`.
Observed bounded GoodDirection cases: 7. -/
private def source_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_033_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 13 /\
      key.support = source_033_support /\
      SourceIndexStateSourcePredicate
        2 13 source_033_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a7877ce1c46d485047a80b1eccd5d4d7989cdb821193b5dc7ca680eae2097744`.
Observed bounded GoodDirection cases: 7. -/
private def source_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_034_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 184 /\
      key.secondIndex = 1 /\
      key.support = source_034_support /\
      SourceIndexStateSourcePredicate
        184 1 source_034_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b7f13f08666187ae2ff10842e7f35bf0bdf9c969d7d944b20a0473f3707df6fe`.
Observed bounded GoodDirection cases: 7. -/
private def source_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_035_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 1 /\
      key.support = source_035_support /\
      SourceIndexStateSourcePredicate
        175 1 source_035_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c5ec5e493c6af976a1b03f30aeb9d26ee4dd468f968a4361500947da83fa8093`.
Observed bounded GoodDirection cases: 7. -/
private def source_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_036_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 0 /\
      key.support = source_036_support /\
      SourceIndexStateSourcePredicate
        161 0 source_036_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `021f47f86b4b3fb33307baa849562c0b227409fe01f9975b8d574ee8cb4ddb01`.
Observed bounded GoodDirection cases: 6. -/
private def source_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_037_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 1 /\
      key.support = source_037_support /\
      SourceIndexStateSourcePredicate
        109 1 source_037_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `16a3d3e54d8e16a85fc508bb0843f087f24dfabc9831756d44d4a8431a94f258`.
Observed bounded GoodDirection cases: 6. -/
private def source_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_038_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 1 /\
      key.support = source_038_support /\
      SourceIndexStateSourcePredicate
        96 1 source_038_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3ce052d543893c1cede10f0b9b363c6ff783fb2298e6854feb62cc31de50d4c5`.
Observed bounded GoodDirection cases: 6. -/
private def source_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_039_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 13 /\
      key.support = source_039_support /\
      SourceIndexStateSourcePredicate
        1 13 source_039_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5092ca106263554f5b683c65f4f879203379892190c8cabe8cbd9b7e6d6f0091`.
Observed bounded GoodDirection cases: 6. -/
private def source_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_040_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 105 /\
      key.secondIndex = 0 /\
      key.support = source_040_support /\
      SourceIndexStateSourcePredicate
        105 0 source_040_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `514e679fb2cb513fea8452df5c6d54611177a5cf9b1976b20c0bc342cc7ee6d4`.
Observed bounded GoodDirection cases: 6. -/
private def source_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_041_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 167 /\
      key.secondIndex = 0 /\
      key.support = source_041_support /\
      SourceIndexStateSourcePredicate
        167 0 source_041_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `df66f4d09d995af9598edddf3f11fdf3faae819a11a4cf6f534a2a37f31d7c48`.
Observed bounded GoodDirection cases: 6. -/
private def source_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def source_042_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 16 /\
      key.support = source_042_support /\
      SourceIndexStateSourcePredicate
        1 16 source_042_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3b2ecd7f1f860d940180e8edc9161ad12e089bf87d9755a00a9270c5672ca99b`.
Observed bounded GoodDirection cases: 5. -/
private def source_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_043_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 12 /\
      key.support = source_043_support /\
      SourceIndexStateSourcePredicate
        1 12 source_043_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b262bda8a9b2bc998f6f5a46f6e8b1e9759df004acf04940922c2f40be3027c7`.
Observed bounded GoodDirection cases: 5. -/
private def source_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_044_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 1 /\
      key.support = source_044_support /\
      SourceIndexStateSourcePredicate
        162 1 source_044_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `b2680d819fee8747dcca856d2980d906bdf5e5ef0fb1042fb131650341dacbc1`.
Observed bounded GoodDirection cases: 5. -/
private def source_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_045_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 10 /\
      key.support = source_045_support /\
      SourceIndexStateSourcePredicate
        1 10 source_045_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `27a3084b923bb5236f8cc839b571250cffc7405f7417c98d5743dcc8c7d753d4`.
Observed bounded GoodDirection cases: 4. -/
private def source_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_046_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 121 /\
      key.secondIndex = 0 /\
      key.support = source_046_support /\
      SourceIndexStateSourcePredicate
        121 0 source_046_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `eac8a8e11f7390ffd6117f5dcd089fe4d3a520218555c0ff166e5d1b2d304535`.
Observed bounded GoodDirection cases: 4. -/
private def source_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_047_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 147 /\
      key.secondIndex = 0 /\
      key.support = source_047_support /\
      SourceIndexStateSourcePredicate
        147 0 source_047_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `0080d2169e5f320234753654ba1bd847fa2619afc8b075a94c578ca4f8f3b9ee`.
Observed bounded GoodDirection cases: 3. -/
private def source_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_048_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 106 /\
      key.secondIndex = 1 /\
      key.support = source_048_support /\
      SourceIndexStateSourcePredicate
        106 1 source_048_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `10fb7297a02c68cf49596ccac2193db7a7b2e20c6b165046ae872e25aaccfc86`.
Observed bounded GoodDirection cases: 3. -/
private def source_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_049_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 1 /\
      key.support = source_049_support /\
      SourceIndexStateSourcePredicate
        122 1 source_049_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `64fe078a0a250d964f3008d90e897412404e0cc786f6faf5a4783eaea38449b4`.
Observed bounded GoodDirection cases: 3. -/
private def source_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_050_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 2 /\
      key.support = source_050_support /\
      SourceIndexStateSourcePredicate
        162 2 source_050_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7368049780bbf43add9863c6101eb0d4cd3834ff6d00889c4be0799b78a4996a`.
Observed bounded GoodDirection cases: 3. -/
private def source_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_051_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 115 /\
      key.secondIndex = 0 /\
      key.support = source_051_support /\
      SourceIndexStateSourcePredicate
        115 0 source_051_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `bc3c3f42aacb1d847258109c055cea04afc822f2739a74efdebc85827b65df42`.
Observed bounded GoodDirection cases: 3. -/
private def source_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_052_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 2 /\
      key.support = source_052_support /\
      SourceIndexStateSourcePredicate
        136 2 source_052_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `ce3322b8aaa21875ba5bbc49db950dd63e754b3498e8ca29d562f1d36e8297d9`.
Observed bounded GoodDirection cases: 3. -/
private def source_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_053_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 168 /\
      key.secondIndex = 1 /\
      key.support = source_053_support /\
      SourceIndexStateSourcePredicate
        168 1 source_053_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `36eec823d5ba41c4a9e4265ec047b661da07f7adb499c0084faa69539f6df833`.
Observed bounded GoodDirection cases: 2. -/
private def source_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_054_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 10 /\
      key.support = source_054_support /\
      SourceIndexStateSourcePredicate
        2 10 source_054_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `63e7915585768679d25965847ecdf6cd5bac64d95a7ab04272f2741e2a36943a`.
Observed bounded GoodDirection cases: 2. -/
private def source_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_055_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 1 /\
      key.support = source_055_support /\
      SourceIndexStateSourcePredicate
        148 1 source_055_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6f6d6a6023a5e161019f94f7a55b0822f48f5f64997f9ca7acae7509c8af8e65`.
Observed bounded GoodDirection cases: 2. -/
private def source_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_056_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 129 /\
      key.secondIndex = 2 /\
      key.support = source_056_support /\
      SourceIndexStateSourcePredicate
        129 2 source_056_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a5857231036a8e1c27fa075ebed81e3a025d7ef170cef21a55a1520d311e11c1`.
Observed bounded GoodDirection cases: 2. -/
private def source_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_057_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 11 /\
      key.support = source_057_support /\
      SourceIndexStateSourcePredicate
        3 11 source_057_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c7adc305f537d2b6caee36a1174826e86bf4307f0781368733fabc1121201665`.
Observed bounded GoodDirection cases: 2. -/
private def source_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_058_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 14 /\
      key.support = source_058_support /\
      SourceIndexStateSourcePredicate
        2 14 source_058_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `d7eceb9816d10bd7d38bd3b8bb132a7efa99fc38fde8edbb34f84d1cd377e09e`.
Observed bounded GoodDirection cases: 2. -/
private def source_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_059_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 12 /\
      key.support = source_059_support /\
      SourceIndexStateSourcePredicate
        2 12 source_059_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `16cacb415ed7eabd7b27729cd9bcd96dea765583f13e6b06e1297ba22fc94528`.
Observed bounded GoodDirection cases: 1. -/
private def source_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_060_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 142 /\
      key.secondIndex = 1 /\
      key.support = source_060_support /\
      SourceIndexStateSourcePredicate
        142 1 source_060_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3acf75b0368568ac92f7f30f1945e86dcf9f597b55082f79a406da198e07b216`.
Observed bounded GoodDirection cases: 1. -/
private def source_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_061_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 12 /\
      key.support = source_061_support /\
      SourceIndexStateSourcePredicate
        3 12 source_061_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `3ef4896247432b1a2431f95273664fa7fb8d37522534e387ab5f8b385c90a0cf`.
Observed bounded GoodDirection cases: 1. -/
private def source_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_062_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 2 /\
      key.support = source_062_support /\
      SourceIndexStateSourcePredicate
        135 2 source_062_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `4d8e6947f2ddc6a3618ab93fdf1006ff3b36f8549c5748fd7576f7888e2bc7ff`.
Observed bounded GoodDirection cases: 1. -/
private def source_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_063_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 1 /\
      key.support = source_063_support /\
      SourceIndexStateSourcePredicate
        161 1 source_063_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `5d6014683304aed3e28830656ee73df7b399bbd023093abecc598c2b5ff207d7`.
Observed bounded GoodDirection cases: 1. -/
private def source_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_064_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 1 /\
      key.support = source_064_support /\
      SourceIndexStateSourcePredicate
        149 1 source_064_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `6d38fb5e536e38a81b47077b24c2e0182b86ffd406d33e3acb537bf44b5aecd2`.
Observed bounded GoodDirection cases: 1. -/
private def source_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_065_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 1 /\
      key.support = source_065_support /\
      SourceIndexStateSourcePredicate
        135 1 source_065_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `7dc53a82bb503c32e7263f3e9d693f015ab6858f0100452b7570f1aa77a4133c`.
Observed bounded GoodDirection cases: 1. -/
private def source_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_066_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 2 /\
      key.support = source_066_support /\
      SourceIndexStateSourcePredicate
        149 2 source_066_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `a8e6642b8ec7292baf6d65c2cd38554be67fd5f8d772c20a8a26dbad0797ae2d`.
Observed bounded GoodDirection cases: 1. -/
private def source_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_067_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 141 /\
      key.secondIndex = 0 /\
      key.support = source_067_support /\
      SourceIndexStateSourcePredicate
        141 0 source_067_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `c741f9357cb8d22c7fc023467f89b2c238226094138641ff1b529c8bec947c5c`.
Observed bounded GoodDirection cases: 1. -/
private def source_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_068_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 0 /\
      key.support = source_068_support /\
      SourceIndexStateSourcePredicate
        135 0 source_068_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e11276c9d62904761e5dd669b875363481744d1a8b42c14892f823c9770cc9f4`.
Observed bounded GoodDirection cases: 1. -/
private def source_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_069_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 1 /\
      key.support = source_069_support /\
      SourceIndexStateSourcePredicate
        110 1 source_069_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `e31d66d4944bc99b32bb4f5ef1d42f2000ed437ea61790d150c0d92c6d0ab2be`.
Observed bounded GoodDirection cases: 1. -/
private def source_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_070_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 1 /\
      key.support = source_070_support /\
      SourceIndexStateSourcePredicate
        136 1 source_070_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Source producer `f3eb21134ab24754c014506e4209bf469d3cd76890b9bf4b275b751a7e056544`.
Observed bounded GoodDirection cases: 1. -/
private def source_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_071_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 120 /\
      key.secondIndex = 1 /\
      key.support = source_071_support /\
      SourceIndexStateSourcePredicate
        120 1 source_071_support r mask
  sourceFacts := by
    intro key r mask h
    exact SourceIndexStateSourceFacts.of_sourcePredicate
      h.1 h.2.1 h.2.2.1 h.2.2.2

/-- Row producer `27981d7fe4aff67a4b376d24bcb887dfcc7de046716ab6582858839111fd367d`.
Observed bounded GoodDirection cases: 711. -/
private def row_000_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarFirst /\
      EqEqPosVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarFirst) h.1 h.2

/-- Row producer `a6659fc752d0d0dc0894d106bf45c0c40ea0229a7cea1c0408d3b2e9ae992906`.
Observed bounded GoodDirection cases: 240. -/
private def row_001_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarSecond /\
      EqEqPosVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarSecond) h.1 h.2

/-- Row producer `b8de738ef91751c8edd6750009b155fcb173041087e4eb649c02101d7b981651`.
Observed bounded GoodDirection cases: 227. -/
private def row_002_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarFirst /\
      OppOneMinusVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarFirst) h.1 h.2

/-- Row producer `41d14fa5c54bdb86c8a57664c1c7350b32e408aad949d6f68791f765c07175e2`.
Observed bounded GoodDirection cases: 126. -/
private def row_003_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarFirst /\
      OppMinusOneVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarFirst) h.1 h.2

/-- Row producer `5866527521d1cd86b4d528c518448d7b3e40b2bfb8a72d71c5b40b9e48e93f7d`.
Observed bounded GoodDirection cases: 73. -/
private def row_004_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarSecond /\
      OppOneMinusVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarSecond) h.1 h.2

/-- Row producer `01ef342f8b3eccbcf838de2272e3e0a618591c1f735c69fabb94c6c2f2cedabf`.
Observed bounded GoodDirection cases: 44. -/
private def row_005_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarSecond /\
      OppMinusOneVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarSecond) h.1 h.2

/-- Row producer `ab58d270064eefa002683f651a0d6bfcfa613500a91016f81015c7bbfc9bfb9d`.
Observed bounded GoodDirection cases: 32. -/
private def row_006_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarFirst /\
      EqEqNegVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarFirst) h.1 h.2

/-- Row producer `7d9e6f246fd2ff58074eff2e9a128514417de91d61a5aaea2b2d365f8aaf48db`.
Observed bounded GoodDirection cases: 4. -/
private def row_007_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `3beed738f15a25af0630f30ade1b42fffce6993851c9692587843c0ee7214e89`.
Observed bounded GoodDirection cases: 3. -/
private def row_008_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `aa6ee8c6fd34af113194c2f37bcaa4ecb38560551b8ab398bf66c361ff434dac`.
Observed bounded GoodDirection cases: 3. -/
private def row_009_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarSecond /\
      EqEqNegVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarSecond) h.1 h.2

/-- Row producer `7004acc1337b24940623e18b8c13c02b05202309d9ebace2dce850072f93a061`.
Observed bounded GoodDirection cases: 2. -/
private def row_010_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Producer-glue family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 421. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_000_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_000_producer.Applies fam_000_key r mask)
    (hrows : row_000_producer.Applies fam_000_key r mask) :
    SourceIndexStateKeyFacts fam_000_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_000_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 134. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_001_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_001_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_002_producer.Applies fam_001_key r mask) :
    SourceIndexStateKeyFacts fam_001_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_001_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded GoodDirection cases: 128. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_002_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 0
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_002_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_000_producer.Applies fam_002_key r mask) :
    SourceIndexStateKeyFacts fam_002_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_002_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 102. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_003_key : SourceIndexStateKey where
  firstIndex := 25
  secondIndex := 2
  support := fam_003_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_003_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_003_producer.Applies fam_003_key r mask) :
    SourceIndexStateKeyFacts fam_003_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_003_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Producer-glue family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 79. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_004_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 7
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_004_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_004_key r mask)
    (hrows : row_001_producer.Applies fam_004_key r mask) :
    SourceIndexStateKeyFacts fam_004_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_004_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 44. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_005_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 1
  support := fam_005_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_005_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_005_key r mask)
    (hrows : row_002_producer.Applies fam_005_key r mask) :
    SourceIndexStateKeyFacts fam_005_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_005_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 30. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_006_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_006_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_006_key r mask)
    (hrows : row_001_producer.Applies fam_006_key r mask) :
    SourceIndexStateKeyFacts fam_006_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_006_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `69a677d29b138362a0f675eaa8c179b8b353ce6abbab1d2f9d604aa09b4e00db`.
Observed bounded GoodDirection cases: 29. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_007_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 15
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_007_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_001_producer.Applies fam_007_key r mask) :
    SourceIndexStateKeyFacts fam_007_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_007_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `fd9ce00531fecbcf8326b152478e0b00bff3405c9eb247ee8d463229b8d70112`.
Observed bounded GoodDirection cases: 23. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_008_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 11
  support := fam_008_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_008_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_008_key r mask)
    (hrows : row_001_producer.Applies fam_008_key r mask) :
    SourceIndexStateKeyFacts fam_008_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_008_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 22. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_009_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 3
  support := fam_009_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_009_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_009_key r mask)
    (hrows : row_006_producer.Applies fam_009_key r mask) :
    SourceIndexStateKeyFacts fam_009_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_010_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Producer-glue family `7e4254e8e8a89467666d4f70d090bb4af72f4df73a95a4ab07e2be3aaf5aa1e9`.
Observed bounded GoodDirection cases: 22. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_010_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 10
  support := fam_010_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_010_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_010_key r mask)
    (hrows : row_001_producer.Applies fam_010_key r mask) :
    SourceIndexStateKeyFacts fam_010_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_009_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 21. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_011_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_011_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_011_key r mask)
    (hrows : row_000_producer.Applies fam_011_key r mask) :
    SourceIndexStateKeyFacts fam_011_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_011_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `158dc5c1e36d751952d13ae96d984e2aa1489e8060db73a4fe1355bf35743158`.
Observed bounded GoodDirection cases: 20. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_012_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 14
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_012_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_012_key r mask)
    (hrows : row_001_producer.Applies fam_012_key r mask) :
    SourceIndexStateKeyFacts fam_012_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_012_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 19. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_013_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := fam_013_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_013_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_013_key r mask)
    (hrows : row_000_producer.Applies fam_013_key r mask) :
    SourceIndexStateKeyFacts fam_013_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_015_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `9ee6b2e564d663d2a48b04a5f6c09a2f659d7008458c98b9a5c078536ec01da9`.
Observed bounded GoodDirection cases: 19. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_014_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 0
  support := fam_014_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_014_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_014_key r mask)
    (hrows : row_000_producer.Applies fam_014_key r mask) :
    SourceIndexStateKeyFacts fam_014_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_013_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `bcaa49bdf67db120feb9ad4dda9a69450799ee1076adb235c86f602b449e273d`.
Observed bounded GoodDirection cases: 19. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_015_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 16
  support := fam_015_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_015_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_015_key r mask)
    (hrows : row_001_producer.Applies fam_015_key r mask) :
    SourceIndexStateKeyFacts fam_015_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_016_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded GoodDirection cases: 19. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_016_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 7
  support := fam_016_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_016_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_016_key r mask)
    (hrows : row_004_producer.Applies fam_016_key r mask) :
    SourceIndexStateKeyFacts fam_016_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_014_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `5651cb30a48af7c1f0528abbffbbcf4eb1954a09872946c492757538dfa5516f`.
Observed bounded GoodDirection cases: 18. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_017_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 12
  support := fam_017_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_017_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_017_key r mask)
    (hrows : row_001_producer.Applies fam_017_key r mask) :
    SourceIndexStateKeyFacts fam_017_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_017_producer.sourceFacts hsource)
    (row_001_producer.rowFacts hrows)

/-- Producer-glue family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 17. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_018_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := fam_018_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_018_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_018_key r mask)
    (hrows : row_000_producer.Applies fam_018_key r mask) :
    SourceIndexStateKeyFacts fam_018_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_018_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `b3cef9b2770de6d05c9b1eefe272e6cabbdf7ba5411cb17f52e5f16d0c879231`.
Observed bounded GoodDirection cases: 15. -/
private def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_019_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 0
  support := fam_019_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_019_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_019_producer.Applies fam_019_key r mask)
    (hrows : row_000_producer.Applies fam_019_key r mask) :
    SourceIndexStateKeyFacts fam_019_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_019_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 14. -/
private def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_020_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 2
  support := fam_020_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_020_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_020_producer.Applies fam_020_key r mask)
    (hrows : row_003_producer.Applies fam_020_key r mask) :
    SourceIndexStateKeyFacts fam_020_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_020_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Producer-glue family `5d42d8292a7d7142ba67583f3d246cb5b3891e05248fcb95384cdeaf865d0757`.
Observed bounded GoodDirection cases: 13. -/
private def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_021_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 7
  support := fam_021_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_021_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_021_producer.Applies fam_021_key r mask)
    (hrows : row_005_producer.Applies fam_021_key r mask) :
    SourceIndexStateKeyFacts fam_021_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_021_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Producer-glue family `07cbb2ceea4f8ff57a4ac592b07a0a13ffcbc802d180f8be174645bd87902851`.
Observed bounded GoodDirection cases: 12. -/
private def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_022_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 15
  support := fam_022_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_022_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_022_producer.Applies fam_022_key r mask)
    (hrows : row_004_producer.Applies fam_022_key r mask) :
    SourceIndexStateKeyFacts fam_022_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_022_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded GoodDirection cases: 11. -/
private def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_023_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 0
  support := fam_023_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_023_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_023_producer.Applies fam_023_key r mask)
    (hrows : row_000_producer.Applies fam_023_key r mask) :
    SourceIndexStateKeyFacts fam_023_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_023_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 11. -/
private def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_024_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := fam_024_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_024_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_024_producer.Applies fam_024_key r mask)
    (hrows : row_004_producer.Applies fam_024_key r mask) :
    SourceIndexStateKeyFacts fam_024_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_024_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `532409d578c514296ef6541d25a6ab0d243fafccca9374ece710a7e0db264366`.
Observed bounded GoodDirection cases: 10. -/
private def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_025_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 3
  support := fam_025_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_025_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_025_producer.Applies fam_025_key r mask)
    (hrows : row_006_producer.Applies fam_025_key r mask) :
    SourceIndexStateKeyFacts fam_025_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_025_producer.sourceFacts hsource)
    (row_006_producer.rowFacts hrows)

/-- Producer-glue family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 10. -/
private def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_026_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := fam_026_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_026_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_027_producer.Applies fam_026_key r mask)
    (hrows : row_000_producer.Applies fam_026_key r mask) :
    SourceIndexStateKeyFacts fam_026_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_027_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `49dc29bc5a3a346e57575f61d2b4fdb2f12956835c68063381b703d6ac1f887b`.
Observed bounded GoodDirection cases: 10. -/
private def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_027_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 0
  support := fam_027_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_027_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_026_producer.Applies fam_027_key r mask)
    (hrows : row_000_producer.Applies fam_027_key r mask) :
    SourceIndexStateKeyFacts fam_027_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_026_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `173645791fcf6158993df04a06cad8e6c9277a4a5116eeeae8320100bc7ad399`.
Observed bounded GoodDirection cases: 9. -/
private def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_028_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 11
  support := fam_028_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_028_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_028_producer.Applies fam_028_key r mask)
    (hrows : row_004_producer.Applies fam_028_key r mask) :
    SourceIndexStateKeyFacts fam_028_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_028_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `34387ab3bfde9bdfb349636d90cee3997629820bb8557064c077fb0b72f06add`.
Observed bounded GoodDirection cases: 9. -/
private def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_029_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 11
  support := fam_029_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_029_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_029_producer.Applies fam_029_key r mask)
    (hrows : row_005_producer.Applies fam_029_key r mask) :
    SourceIndexStateKeyFacts fam_029_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_029_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Producer-glue family `5d9efeb0452e392fa179cd0e334cda41a13e7d69baa6637ee7b719a887e6e56d`.
Observed bounded GoodDirection cases: 9. -/
private def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_030_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 15
  support := fam_030_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_030_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_031_producer.Applies fam_030_key r mask)
    (hrows : row_005_producer.Applies fam_030_key r mask) :
    SourceIndexStateKeyFacts fam_030_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_031_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Producer-glue family `cb6f6bc2af727b7b07a1a5f93b6bb4b547714996ae906018ac0e2560d8102162`.
Observed bounded GoodDirection cases: 8. -/
private def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_031_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 0
  support := fam_031_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_031_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_032_producer.Applies fam_031_key r mask)
    (hrows : row_000_producer.Applies fam_031_key r mask) :
    SourceIndexStateKeyFacts fam_031_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_032_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 7. -/
private def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_032_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := fam_032_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_032_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_036_producer.Applies fam_032_key r mask)
    (hrows : row_000_producer.Applies fam_032_key r mask) :
    SourceIndexStateKeyFacts fam_032_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_036_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `47d53ad973ee3257ce12e4c767a004934ccfea4a0a38986e4f22ff0a1aed0ca2`.
Observed bounded GoodDirection cases: 7. -/
private def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_033_key : SourceIndexStateKey where
  firstIndex := 184
  secondIndex := 1
  support := fam_033_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_033_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_034_producer.Applies fam_033_key r mask)
    (hrows : row_002_producer.Applies fam_033_key r mask) :
    SourceIndexStateKeyFacts fam_033_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_034_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `cb8990495e80e4e83ff3dd6dbc52d2311080437714265957a3e06912a1fb84fc`.
Observed bounded GoodDirection cases: 7. -/
private def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_034_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 1
  support := fam_034_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_034_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_035_producer.Applies fam_034_key r mask)
    (hrows : row_002_producer.Applies fam_034_key r mask) :
    SourceIndexStateKeyFacts fam_034_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_035_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded GoodDirection cases: 7. -/
private def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_035_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 13
  support := fam_035_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_035_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_035_key r mask)
    (hrows : row_005_producer.Applies fam_035_key r mask) :
    SourceIndexStateKeyFacts fam_035_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_033_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Producer-glue family `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded GoodDirection cases: 6. -/
private def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_036_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 0
  support := fam_036_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_036_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_041_producer.Applies fam_036_key r mask)
    (hrows : row_000_producer.Applies fam_036_key r mask) :
    SourceIndexStateKeyFacts fam_036_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_041_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded GoodDirection cases: 6. -/
private def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_037_key : SourceIndexStateKey where
  firstIndex := 105
  secondIndex := 0
  support := fam_037_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_037_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_040_producer.Applies fam_037_key r mask)
    (hrows : row_000_producer.Applies fam_037_key r mask) :
    SourceIndexStateKeyFacts fam_037_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_040_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `46754c731c77c053bab64c67da53dcc1b5f174fe3ff8b9895806bf6c39f4d95a`.
Observed bounded GoodDirection cases: 6. -/
private def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_038_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 1
  support := fam_038_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_038_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_038_producer.Applies fam_038_key r mask)
    (hrows : row_002_producer.Applies fam_038_key r mask) :
    SourceIndexStateKeyFacts fam_038_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_038_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded GoodDirection cases: 6. -/
private def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_039_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 1
  support := fam_039_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_039_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_037_producer.Applies fam_039_key r mask)
    (hrows : row_002_producer.Applies fam_039_key r mask) :
    SourceIndexStateKeyFacts fam_039_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_037_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 6. -/
private def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_040_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := fam_040_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_040_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_042_producer.Applies fam_040_key r mask)
    (hrows : row_004_producer.Applies fam_040_key r mask) :
    SourceIndexStateKeyFacts fam_040_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_042_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded GoodDirection cases: 6. -/
private def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_041_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 13
  support := fam_041_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_041_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_039_producer.Applies fam_041_key r mask)
    (hrows : row_004_producer.Applies fam_041_key r mask) :
    SourceIndexStateKeyFacts fam_041_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_039_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `001142d72c22dac0fd41e429a47c6f32d0f7456e0dce2c45057120b7f77f0162`.
Observed bounded GoodDirection cases: 5. -/
private def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_042_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 1
  support := fam_042_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_042_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_044_producer.Applies fam_042_key r mask)
    (hrows : row_002_producer.Applies fam_042_key r mask) :
    SourceIndexStateKeyFacts fam_042_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_044_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `8a4f0d011c71c3855f0555c3626724c8b000efab7f757f1019e23747d7b7642b`.
Observed bounded GoodDirection cases: 5. -/
private def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_043_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 12
  support := fam_043_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_043_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_043_producer.Applies fam_043_key r mask)
    (hrows : row_004_producer.Applies fam_043_key r mask) :
    SourceIndexStateKeyFacts fam_043_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_043_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 5. -/
private def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_044_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := fam_044_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_044_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_045_producer.Applies fam_044_key r mask)
    (hrows : row_004_producer.Applies fam_044_key r mask) :
    SourceIndexStateKeyFacts fam_044_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_045_producer.sourceFacts hsource)
    (row_004_producer.rowFacts hrows)

/-- Producer-glue family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 4. -/
private def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_045_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_045_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_045_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_045_key r mask)
    (hrows : row_007_producer.Applies fam_045_key r mask) :
    SourceIndexStateKeyFacts fam_045_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_030_producer.sourceFacts hsource)
    (row_007_producer.rowFacts hrows)

/-- Producer-glue family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 4. -/
private def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_046_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 0
  support := fam_046_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_046_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_046_producer.Applies fam_046_key r mask)
    (hrows : row_000_producer.Applies fam_046_key r mask) :
    SourceIndexStateKeyFacts fam_046_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_046_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `62f5ae522c0e7133d5843c313ca60aeae4e0b20c912d1f80286ac540b2b6eb8a`.
Observed bounded GoodDirection cases: 4. -/
private def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_047_key : SourceIndexStateKey where
  firstIndex := 147
  secondIndex := 0
  support := fam_047_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_047_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_047_producer.Applies fam_047_key r mask)
    (hrows : row_000_producer.Applies fam_047_key r mask) :
    SourceIndexStateKeyFacts fam_047_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_047_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `bb0db39a94e945010710a13b20ce302ef100c2c9d34f71cf3b7a51b2570971f5`.
Observed bounded GoodDirection cases: 3. -/
private def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_048_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_048_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_048_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_048_key r mask)
    (hrows : row_008_producer.Applies fam_048_key r mask) :
    SourceIndexStateKeyFacts fam_048_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_030_producer.sourceFacts hsource)
    (row_008_producer.rowFacts hrows)

/-- Producer-glue family `2331829ae5f9c9473447cdc0d7e31e8e2c9371e462f2a7f75cdaa02627990bfb`.
Observed bounded GoodDirection cases: 3. -/
private def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_049_key : SourceIndexStateKey where
  firstIndex := 115
  secondIndex := 0
  support := fam_049_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_049_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_051_producer.Applies fam_049_key r mask)
    (hrows : row_000_producer.Applies fam_049_key r mask) :
    SourceIndexStateKeyFacts fam_049_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_051_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `698bc5fc0b761af936d02e66853f313943632c3c9abf425807a742b732b440f1`.
Observed bounded GoodDirection cases: 3. -/
private def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_050_key : SourceIndexStateKey where
  firstIndex := 168
  secondIndex := 1
  support := fam_050_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_050_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_053_producer.Applies fam_050_key r mask)
    (hrows : row_002_producer.Applies fam_050_key r mask) :
    SourceIndexStateKeyFacts fam_050_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_053_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `7a15080fd1fc18351ab493b05ba7ccdff63eef25273e8bd050bd328d075d5e21`.
Observed bounded GoodDirection cases: 3. -/
private def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_051_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 1
  support := fam_051_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_051_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_049_producer.Applies fam_051_key r mask)
    (hrows : row_002_producer.Applies fam_051_key r mask) :
    SourceIndexStateKeyFacts fam_051_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_049_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `c7ecaa84912e11bf981f33a9429149f9aabf3ad114bccc532cfcca21be76d3b9`.
Observed bounded GoodDirection cases: 3. -/
private def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_052_key : SourceIndexStateKey where
  firstIndex := 106
  secondIndex := 1
  support := fam_052_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_052_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_048_producer.Applies fam_052_key r mask)
    (hrows : row_002_producer.Applies fam_052_key r mask) :
    SourceIndexStateKeyFacts fam_052_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_048_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `1e08e15088e7db1c3371fea0a75c650ee857b2d52d2b26d85d58092c011ca83b`.
Observed bounded GoodDirection cases: 3. -/
private def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_053_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 2
  support := fam_053_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_053_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_050_producer.Applies fam_053_key r mask)
    (hrows : row_003_producer.Applies fam_053_key r mask) :
    SourceIndexStateKeyFacts fam_053_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_050_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Producer-glue family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 3. -/
private def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_054_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 2
  support := fam_054_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_054_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_052_producer.Applies fam_054_key r mask)
    (hrows : row_003_producer.Applies fam_054_key r mask) :
    SourceIndexStateKeyFacts fam_054_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_052_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Producer-glue family `83c116b44a85395f6e8bb8fc0165b509e6bf845face95355ce26acb6aa1b1fc3`.
Observed bounded GoodDirection cases: 2. -/
private def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_055_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_055_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_055_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_055_key r mask)
    (hrows : row_010_producer.Applies fam_055_key r mask) :
    SourceIndexStateKeyFacts fam_055_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_030_producer.sourceFacts hsource)
    (row_010_producer.rowFacts hrows)

/-- Producer-glue family `29c29249413755d9d6fbbc65c672e06248f54014ce6ad4eaf1d254591260718a`.
Observed bounded GoodDirection cases: 2. -/
private def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_056_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 11
  support := fam_056_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_056_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_057_producer.Applies fam_056_key r mask)
    (hrows : row_009_producer.Applies fam_056_key r mask) :
    SourceIndexStateKeyFacts fam_056_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_057_producer.sourceFacts hsource)
    (row_009_producer.rowFacts hrows)

/-- Producer-glue family `843502ed659adec3e8be559efd41763a66b8f79a231413413bfc62074b30741b`.
Observed bounded GoodDirection cases: 2. -/
private def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_057_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 1
  support := fam_057_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_057_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_055_producer.Applies fam_057_key r mask)
    (hrows : row_002_producer.Applies fam_057_key r mask) :
    SourceIndexStateKeyFacts fam_057_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_055_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `e123e95ce12fb8512a98acdcdc060cc8e1427e5e426c456b02f2df50bb835096`.
Observed bounded GoodDirection cases: 2. -/
private def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_058_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 2
  support := fam_058_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_058_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_056_producer.Applies fam_058_key r mask)
    (hrows : row_003_producer.Applies fam_058_key r mask) :
    SourceIndexStateKeyFacts fam_058_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_056_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Producer-glue family `3b759ab3163ba9496a7005928678cb5a209032fa5b627ee33ba282b0bdd0155e`.
Observed bounded GoodDirection cases: 2. -/
private def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_059_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 12
  support := fam_059_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_059_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_059_producer.Applies fam_059_key r mask)
    (hrows : row_005_producer.Applies fam_059_key r mask) :
    SourceIndexStateKeyFacts fam_059_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_059_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Producer-glue family `548ef76c4ca70a698bc32c47af5db80f61529e06e13bb8e3a7091ea372d4cad6`.
Observed bounded GoodDirection cases: 2. -/
private def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_060_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 14
  support := fam_060_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_060_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_058_producer.Applies fam_060_key r mask)
    (hrows : row_005_producer.Applies fam_060_key r mask) :
    SourceIndexStateKeyFacts fam_060_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_058_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Producer-glue family `f2d8c0c0c4893e42bc01b07592ca364b1399a95bed0c91aeb13cc2c01b1ebad2`.
Observed bounded GoodDirection cases: 2. -/
private def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_061_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 10
  support := fam_061_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_061_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_054_producer.Applies fam_061_key r mask)
    (hrows : row_005_producer.Applies fam_061_key r mask) :
    SourceIndexStateKeyFacts fam_061_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_054_producer.sourceFacts hsource)
    (row_005_producer.rowFacts hrows)

/-- Producer-glue family `533c62403ad2eb955c1259cebc86a5a3d5b25f9f764082c9d2fa9e95e2e6b1dc`.
Observed bounded GoodDirection cases: 1. -/
private def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_062_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 12
  support := fam_062_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_062_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_061_producer.Applies fam_062_key r mask)
    (hrows : row_009_producer.Applies fam_062_key r mask) :
    SourceIndexStateKeyFacts fam_062_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_061_producer.sourceFacts hsource)
    (row_009_producer.rowFacts hrows)

/-- Producer-glue family `dbcf419ae9e07ff307f82ab76c38130544ba6f8432769e038bdb3f3cb3d892f1`.
Observed bounded GoodDirection cases: 1. -/
private def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_063_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 0
  support := fam_063_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_063_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_068_producer.Applies fam_063_key r mask)
    (hrows : row_000_producer.Applies fam_063_key r mask) :
    SourceIndexStateKeyFacts fam_063_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_068_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `f58e8057dc1ef59724f47203d7b7cee139d6b386b440a531b6e8043e0830769d`.
Observed bounded GoodDirection cases: 1. -/
private def fam_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_064_key : SourceIndexStateKey where
  firstIndex := 141
  secondIndex := 0
  support := fam_064_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_064_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_067_producer.Applies fam_064_key r mask)
    (hrows : row_000_producer.Applies fam_064_key r mask) :
    SourceIndexStateKeyFacts fam_064_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_067_producer.sourceFacts hsource)
    (row_000_producer.rowFacts hrows)

/-- Producer-glue family `1720c5c6897de884a3f69d37a00482f5017602df26b88e99a3a0e35b3b08aa9f`.
Observed bounded GoodDirection cases: 1. -/
private def fam_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_065_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 1
  support := fam_065_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_065_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_064_producer.Applies fam_065_key r mask)
    (hrows : row_002_producer.Applies fam_065_key r mask) :
    SourceIndexStateKeyFacts fam_065_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_064_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `29c667e5aa818ea6f1b958dd1d1050e310d4a3d40eb8ec4a842957f47cc4fc73`.
Observed bounded GoodDirection cases: 1. -/
private def fam_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_066_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 1
  support := fam_066_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_066_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_070_producer.Applies fam_066_key r mask)
    (hrows : row_002_producer.Applies fam_066_key r mask) :
    SourceIndexStateKeyFacts fam_066_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_070_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `323821661c9a96d8517395d7e2ed673c7ac9f6e241d41aa3d6f0c54b617725bc`.
Observed bounded GoodDirection cases: 1. -/
private def fam_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_067_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 1
  support := fam_067_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_067_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_069_producer.Applies fam_067_key r mask)
    (hrows : row_002_producer.Applies fam_067_key r mask) :
    SourceIndexStateKeyFacts fam_067_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_069_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `4295d2e8233f5dbac79b0d712f2b60b2c1f9bbb4a65b79e19eb3b7beac461229`.
Observed bounded GoodDirection cases: 1. -/
private def fam_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_068_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 1
  support := fam_068_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_068_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_063_producer.Applies fam_068_key r mask)
    (hrows : row_002_producer.Applies fam_068_key r mask) :
    SourceIndexStateKeyFacts fam_068_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_063_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `7659a13ad32f460ad82d3854a24dec02c246f9199e2b5034f1f0eccddebb8b43`.
Observed bounded GoodDirection cases: 1. -/
private def fam_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_069_key : SourceIndexStateKey where
  firstIndex := 142
  secondIndex := 1
  support := fam_069_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_069_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_060_producer.Applies fam_069_key r mask)
    (hrows : row_002_producer.Applies fam_069_key r mask) :
    SourceIndexStateKeyFacts fam_069_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_060_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `c05b3d59255e1cb9689a33957c160b34cf7f5fb51fa9849d03bfcac29208d36a`.
Observed bounded GoodDirection cases: 1. -/
private def fam_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_070_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 1
  support := fam_070_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_070_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_065_producer.Applies fam_070_key r mask)
    (hrows : row_002_producer.Applies fam_070_key r mask) :
    SourceIndexStateKeyFacts fam_070_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_065_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `fe6dcb0e1d5af6cc7f6e5b61abf78e5a6c655ce793a9a24af1459862db39f388`.
Observed bounded GoodDirection cases: 1. -/
private def fam_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_071_key : SourceIndexStateKey where
  firstIndex := 120
  secondIndex := 1
  support := fam_071_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_071_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_071_producer.Applies fam_071_key r mask)
    (hrows : row_002_producer.Applies fam_071_key r mask) :
    SourceIndexStateKeyFacts fam_071_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_071_producer.sourceFacts hsource)
    (row_002_producer.rowFacts hrows)

/-- Producer-glue family `3c44231cc1af8934c73ab9eb42337f5296972af30c98905c6664e173469df457`.
Observed bounded GoodDirection cases: 1. -/
private def fam_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_072_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 2
  support := fam_072_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_072_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_066_producer.Applies fam_072_key r mask)
    (hrows : row_003_producer.Applies fam_072_key r mask) :
    SourceIndexStateKeyFacts fam_072_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_066_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

/-- Producer-glue family `a8779ef21d07f80a863f92a4d0b3a9e5785baca760e90b9f12ba91df5af57a50`.
Observed bounded GoodDirection cases: 1. -/
private def fam_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_073_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 2
  support := fam_073_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_073_producerFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : source_062_producer.Applies fam_073_key r mask)
    (hrows : row_003_producer.Applies fam_073_key r mask) :
    SourceIndexStateKeyFacts fam_073_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_062_producer.sourceFacts hsource)
    (row_003_producer.rowFacts hrows)

inductive ProducerGlueClassifierApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (hsource : source_000_producer.Applies fam_000_key r mask) (hrows : row_000_producer.Applies fam_000_key r mask) : ProducerGlueClassifierApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (hsource : source_001_producer.Applies fam_001_key r mask) (hrows : row_002_producer.Applies fam_001_key r mask) : ProducerGlueClassifierApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (hsource : source_002_producer.Applies fam_002_key r mask) (hrows : row_000_producer.Applies fam_002_key r mask) : ProducerGlueClassifierApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (hsource : source_003_producer.Applies fam_003_key r mask) (hrows : row_003_producer.Applies fam_003_key r mask) : ProducerGlueClassifierApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (hsource : source_004_producer.Applies fam_004_key r mask) (hrows : row_001_producer.Applies fam_004_key r mask) : ProducerGlueClassifierApplies r mask
  | fam005 {r : Nat} {mask : SignMask} (hsource : source_005_producer.Applies fam_005_key r mask) (hrows : row_002_producer.Applies fam_005_key r mask) : ProducerGlueClassifierApplies r mask
  | fam006 {r : Nat} {mask : SignMask} (hsource : source_006_producer.Applies fam_006_key r mask) (hrows : row_001_producer.Applies fam_006_key r mask) : ProducerGlueClassifierApplies r mask
  | fam007 {r : Nat} {mask : SignMask} (hsource : source_007_producer.Applies fam_007_key r mask) (hrows : row_001_producer.Applies fam_007_key r mask) : ProducerGlueClassifierApplies r mask
  | fam008 {r : Nat} {mask : SignMask} (hsource : source_008_producer.Applies fam_008_key r mask) (hrows : row_001_producer.Applies fam_008_key r mask) : ProducerGlueClassifierApplies r mask
  | fam009 {r : Nat} {mask : SignMask} (hsource : source_010_producer.Applies fam_009_key r mask) (hrows : row_006_producer.Applies fam_009_key r mask) : ProducerGlueClassifierApplies r mask
  | fam010 {r : Nat} {mask : SignMask} (hsource : source_009_producer.Applies fam_010_key r mask) (hrows : row_001_producer.Applies fam_010_key r mask) : ProducerGlueClassifierApplies r mask
  | fam011 {r : Nat} {mask : SignMask} (hsource : source_011_producer.Applies fam_011_key r mask) (hrows : row_000_producer.Applies fam_011_key r mask) : ProducerGlueClassifierApplies r mask
  | fam012 {r : Nat} {mask : SignMask} (hsource : source_012_producer.Applies fam_012_key r mask) (hrows : row_001_producer.Applies fam_012_key r mask) : ProducerGlueClassifierApplies r mask
  | fam013 {r : Nat} {mask : SignMask} (hsource : source_015_producer.Applies fam_013_key r mask) (hrows : row_000_producer.Applies fam_013_key r mask) : ProducerGlueClassifierApplies r mask
  | fam014 {r : Nat} {mask : SignMask} (hsource : source_013_producer.Applies fam_014_key r mask) (hrows : row_000_producer.Applies fam_014_key r mask) : ProducerGlueClassifierApplies r mask
  | fam015 {r : Nat} {mask : SignMask} (hsource : source_016_producer.Applies fam_015_key r mask) (hrows : row_001_producer.Applies fam_015_key r mask) : ProducerGlueClassifierApplies r mask
  | fam016 {r : Nat} {mask : SignMask} (hsource : source_014_producer.Applies fam_016_key r mask) (hrows : row_004_producer.Applies fam_016_key r mask) : ProducerGlueClassifierApplies r mask
  | fam017 {r : Nat} {mask : SignMask} (hsource : source_017_producer.Applies fam_017_key r mask) (hrows : row_001_producer.Applies fam_017_key r mask) : ProducerGlueClassifierApplies r mask
  | fam018 {r : Nat} {mask : SignMask} (hsource : source_018_producer.Applies fam_018_key r mask) (hrows : row_000_producer.Applies fam_018_key r mask) : ProducerGlueClassifierApplies r mask
  | fam019 {r : Nat} {mask : SignMask} (hsource : source_019_producer.Applies fam_019_key r mask) (hrows : row_000_producer.Applies fam_019_key r mask) : ProducerGlueClassifierApplies r mask
  | fam020 {r : Nat} {mask : SignMask} (hsource : source_020_producer.Applies fam_020_key r mask) (hrows : row_003_producer.Applies fam_020_key r mask) : ProducerGlueClassifierApplies r mask
  | fam021 {r : Nat} {mask : SignMask} (hsource : source_021_producer.Applies fam_021_key r mask) (hrows : row_005_producer.Applies fam_021_key r mask) : ProducerGlueClassifierApplies r mask
  | fam022 {r : Nat} {mask : SignMask} (hsource : source_022_producer.Applies fam_022_key r mask) (hrows : row_004_producer.Applies fam_022_key r mask) : ProducerGlueClassifierApplies r mask
  | fam023 {r : Nat} {mask : SignMask} (hsource : source_023_producer.Applies fam_023_key r mask) (hrows : row_000_producer.Applies fam_023_key r mask) : ProducerGlueClassifierApplies r mask
  | fam024 {r : Nat} {mask : SignMask} (hsource : source_024_producer.Applies fam_024_key r mask) (hrows : row_004_producer.Applies fam_024_key r mask) : ProducerGlueClassifierApplies r mask
  | fam025 {r : Nat} {mask : SignMask} (hsource : source_025_producer.Applies fam_025_key r mask) (hrows : row_006_producer.Applies fam_025_key r mask) : ProducerGlueClassifierApplies r mask
  | fam026 {r : Nat} {mask : SignMask} (hsource : source_027_producer.Applies fam_026_key r mask) (hrows : row_000_producer.Applies fam_026_key r mask) : ProducerGlueClassifierApplies r mask
  | fam027 {r : Nat} {mask : SignMask} (hsource : source_026_producer.Applies fam_027_key r mask) (hrows : row_000_producer.Applies fam_027_key r mask) : ProducerGlueClassifierApplies r mask
  | fam028 {r : Nat} {mask : SignMask} (hsource : source_028_producer.Applies fam_028_key r mask) (hrows : row_004_producer.Applies fam_028_key r mask) : ProducerGlueClassifierApplies r mask
  | fam029 {r : Nat} {mask : SignMask} (hsource : source_029_producer.Applies fam_029_key r mask) (hrows : row_005_producer.Applies fam_029_key r mask) : ProducerGlueClassifierApplies r mask
  | fam030 {r : Nat} {mask : SignMask} (hsource : source_031_producer.Applies fam_030_key r mask) (hrows : row_005_producer.Applies fam_030_key r mask) : ProducerGlueClassifierApplies r mask
  | fam031 {r : Nat} {mask : SignMask} (hsource : source_032_producer.Applies fam_031_key r mask) (hrows : row_000_producer.Applies fam_031_key r mask) : ProducerGlueClassifierApplies r mask
  | fam032 {r : Nat} {mask : SignMask} (hsource : source_036_producer.Applies fam_032_key r mask) (hrows : row_000_producer.Applies fam_032_key r mask) : ProducerGlueClassifierApplies r mask
  | fam033 {r : Nat} {mask : SignMask} (hsource : source_034_producer.Applies fam_033_key r mask) (hrows : row_002_producer.Applies fam_033_key r mask) : ProducerGlueClassifierApplies r mask
  | fam034 {r : Nat} {mask : SignMask} (hsource : source_035_producer.Applies fam_034_key r mask) (hrows : row_002_producer.Applies fam_034_key r mask) : ProducerGlueClassifierApplies r mask
  | fam035 {r : Nat} {mask : SignMask} (hsource : source_033_producer.Applies fam_035_key r mask) (hrows : row_005_producer.Applies fam_035_key r mask) : ProducerGlueClassifierApplies r mask
  | fam036 {r : Nat} {mask : SignMask} (hsource : source_041_producer.Applies fam_036_key r mask) (hrows : row_000_producer.Applies fam_036_key r mask) : ProducerGlueClassifierApplies r mask
  | fam037 {r : Nat} {mask : SignMask} (hsource : source_040_producer.Applies fam_037_key r mask) (hrows : row_000_producer.Applies fam_037_key r mask) : ProducerGlueClassifierApplies r mask
  | fam038 {r : Nat} {mask : SignMask} (hsource : source_038_producer.Applies fam_038_key r mask) (hrows : row_002_producer.Applies fam_038_key r mask) : ProducerGlueClassifierApplies r mask
  | fam039 {r : Nat} {mask : SignMask} (hsource : source_037_producer.Applies fam_039_key r mask) (hrows : row_002_producer.Applies fam_039_key r mask) : ProducerGlueClassifierApplies r mask
  | fam040 {r : Nat} {mask : SignMask} (hsource : source_042_producer.Applies fam_040_key r mask) (hrows : row_004_producer.Applies fam_040_key r mask) : ProducerGlueClassifierApplies r mask
  | fam041 {r : Nat} {mask : SignMask} (hsource : source_039_producer.Applies fam_041_key r mask) (hrows : row_004_producer.Applies fam_041_key r mask) : ProducerGlueClassifierApplies r mask
  | fam042 {r : Nat} {mask : SignMask} (hsource : source_044_producer.Applies fam_042_key r mask) (hrows : row_002_producer.Applies fam_042_key r mask) : ProducerGlueClassifierApplies r mask
  | fam043 {r : Nat} {mask : SignMask} (hsource : source_043_producer.Applies fam_043_key r mask) (hrows : row_004_producer.Applies fam_043_key r mask) : ProducerGlueClassifierApplies r mask
  | fam044 {r : Nat} {mask : SignMask} (hsource : source_045_producer.Applies fam_044_key r mask) (hrows : row_004_producer.Applies fam_044_key r mask) : ProducerGlueClassifierApplies r mask
  | fam045 {r : Nat} {mask : SignMask} (hsource : source_030_producer.Applies fam_045_key r mask) (hrows : row_007_producer.Applies fam_045_key r mask) : ProducerGlueClassifierApplies r mask
  | fam046 {r : Nat} {mask : SignMask} (hsource : source_046_producer.Applies fam_046_key r mask) (hrows : row_000_producer.Applies fam_046_key r mask) : ProducerGlueClassifierApplies r mask
  | fam047 {r : Nat} {mask : SignMask} (hsource : source_047_producer.Applies fam_047_key r mask) (hrows : row_000_producer.Applies fam_047_key r mask) : ProducerGlueClassifierApplies r mask
  | fam048 {r : Nat} {mask : SignMask} (hsource : source_030_producer.Applies fam_048_key r mask) (hrows : row_008_producer.Applies fam_048_key r mask) : ProducerGlueClassifierApplies r mask
  | fam049 {r : Nat} {mask : SignMask} (hsource : source_051_producer.Applies fam_049_key r mask) (hrows : row_000_producer.Applies fam_049_key r mask) : ProducerGlueClassifierApplies r mask
  | fam050 {r : Nat} {mask : SignMask} (hsource : source_053_producer.Applies fam_050_key r mask) (hrows : row_002_producer.Applies fam_050_key r mask) : ProducerGlueClassifierApplies r mask
  | fam051 {r : Nat} {mask : SignMask} (hsource : source_049_producer.Applies fam_051_key r mask) (hrows : row_002_producer.Applies fam_051_key r mask) : ProducerGlueClassifierApplies r mask
  | fam052 {r : Nat} {mask : SignMask} (hsource : source_048_producer.Applies fam_052_key r mask) (hrows : row_002_producer.Applies fam_052_key r mask) : ProducerGlueClassifierApplies r mask
  | fam053 {r : Nat} {mask : SignMask} (hsource : source_050_producer.Applies fam_053_key r mask) (hrows : row_003_producer.Applies fam_053_key r mask) : ProducerGlueClassifierApplies r mask
  | fam054 {r : Nat} {mask : SignMask} (hsource : source_052_producer.Applies fam_054_key r mask) (hrows : row_003_producer.Applies fam_054_key r mask) : ProducerGlueClassifierApplies r mask
  | fam055 {r : Nat} {mask : SignMask} (hsource : source_030_producer.Applies fam_055_key r mask) (hrows : row_010_producer.Applies fam_055_key r mask) : ProducerGlueClassifierApplies r mask
  | fam056 {r : Nat} {mask : SignMask} (hsource : source_057_producer.Applies fam_056_key r mask) (hrows : row_009_producer.Applies fam_056_key r mask) : ProducerGlueClassifierApplies r mask
  | fam057 {r : Nat} {mask : SignMask} (hsource : source_055_producer.Applies fam_057_key r mask) (hrows : row_002_producer.Applies fam_057_key r mask) : ProducerGlueClassifierApplies r mask
  | fam058 {r : Nat} {mask : SignMask} (hsource : source_056_producer.Applies fam_058_key r mask) (hrows : row_003_producer.Applies fam_058_key r mask) : ProducerGlueClassifierApplies r mask
  | fam059 {r : Nat} {mask : SignMask} (hsource : source_059_producer.Applies fam_059_key r mask) (hrows : row_005_producer.Applies fam_059_key r mask) : ProducerGlueClassifierApplies r mask
  | fam060 {r : Nat} {mask : SignMask} (hsource : source_058_producer.Applies fam_060_key r mask) (hrows : row_005_producer.Applies fam_060_key r mask) : ProducerGlueClassifierApplies r mask
  | fam061 {r : Nat} {mask : SignMask} (hsource : source_054_producer.Applies fam_061_key r mask) (hrows : row_005_producer.Applies fam_061_key r mask) : ProducerGlueClassifierApplies r mask
  | fam062 {r : Nat} {mask : SignMask} (hsource : source_061_producer.Applies fam_062_key r mask) (hrows : row_009_producer.Applies fam_062_key r mask) : ProducerGlueClassifierApplies r mask
  | fam063 {r : Nat} {mask : SignMask} (hsource : source_068_producer.Applies fam_063_key r mask) (hrows : row_000_producer.Applies fam_063_key r mask) : ProducerGlueClassifierApplies r mask
  | fam064 {r : Nat} {mask : SignMask} (hsource : source_067_producer.Applies fam_064_key r mask) (hrows : row_000_producer.Applies fam_064_key r mask) : ProducerGlueClassifierApplies r mask
  | fam065 {r : Nat} {mask : SignMask} (hsource : source_064_producer.Applies fam_065_key r mask) (hrows : row_002_producer.Applies fam_065_key r mask) : ProducerGlueClassifierApplies r mask
  | fam066 {r : Nat} {mask : SignMask} (hsource : source_070_producer.Applies fam_066_key r mask) (hrows : row_002_producer.Applies fam_066_key r mask) : ProducerGlueClassifierApplies r mask
  | fam067 {r : Nat} {mask : SignMask} (hsource : source_069_producer.Applies fam_067_key r mask) (hrows : row_002_producer.Applies fam_067_key r mask) : ProducerGlueClassifierApplies r mask
  | fam068 {r : Nat} {mask : SignMask} (hsource : source_063_producer.Applies fam_068_key r mask) (hrows : row_002_producer.Applies fam_068_key r mask) : ProducerGlueClassifierApplies r mask
  | fam069 {r : Nat} {mask : SignMask} (hsource : source_060_producer.Applies fam_069_key r mask) (hrows : row_002_producer.Applies fam_069_key r mask) : ProducerGlueClassifierApplies r mask
  | fam070 {r : Nat} {mask : SignMask} (hsource : source_065_producer.Applies fam_070_key r mask) (hrows : row_002_producer.Applies fam_070_key r mask) : ProducerGlueClassifierApplies r mask
  | fam071 {r : Nat} {mask : SignMask} (hsource : source_071_producer.Applies fam_071_key r mask) (hrows : row_002_producer.Applies fam_071_key r mask) : ProducerGlueClassifierApplies r mask
  | fam072 {r : Nat} {mask : SignMask} (hsource : source_066_producer.Applies fam_072_key r mask) (hrows : row_003_producer.Applies fam_072_key r mask) : ProducerGlueClassifierApplies r mask
  | fam073 {r : Nat} {mask : SignMask} (hsource : source_062_producer.Applies fam_073_key r mask) (hrows : row_003_producer.Applies fam_073_key r mask) : ProducerGlueClassifierApplies r mask

def producerGlueClassifierFamily : RowPropertyMembershipFamily where
  Applies := ProducerGlueClassifierApplies
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

theorem producerGlueClassifierKillsOn : producerGlueClassifierFamily.KillsOn :=
  producerGlueClassifierFamily.killsOn

theorem fam_000_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_000_producer.Applies fam_000_key r mask)
    (hrows : row_000_producer.Applies fam_000_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam000 hsource hrows

theorem fam_000_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_000_producer.Applies fam_000_key r mask)
    (hrows : row_000_producer.Applies fam_000_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_000_producerFactsImplyClassifier hsource hrows)

theorem fam_001_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_002_producer.Applies fam_001_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam001 hsource hrows

theorem fam_001_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_001_producer.Applies fam_001_key r mask)
    (hrows : row_002_producer.Applies fam_001_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_001_producerFactsImplyClassifier hsource hrows)

theorem fam_002_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_000_producer.Applies fam_002_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam002 hsource hrows

theorem fam_002_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_002_producer.Applies fam_002_key r mask)
    (hrows : row_000_producer.Applies fam_002_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_002_producerFactsImplyClassifier hsource hrows)

theorem fam_003_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_003_producer.Applies fam_003_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam003 hsource hrows

theorem fam_003_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_003_producer.Applies fam_003_key r mask)
    (hrows : row_003_producer.Applies fam_003_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_003_producerFactsImplyClassifier hsource hrows)

theorem fam_004_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_004_key r mask)
    (hrows : row_001_producer.Applies fam_004_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam004 hsource hrows

theorem fam_004_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_004_producer.Applies fam_004_key r mask)
    (hrows : row_001_producer.Applies fam_004_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_004_producerFactsImplyClassifier hsource hrows)

theorem fam_005_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_005_key r mask)
    (hrows : row_002_producer.Applies fam_005_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam005 hsource hrows

theorem fam_005_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_005_producer.Applies fam_005_key r mask)
    (hrows : row_002_producer.Applies fam_005_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_005_producerFactsImplyClassifier hsource hrows)

theorem fam_006_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_006_key r mask)
    (hrows : row_001_producer.Applies fam_006_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam006 hsource hrows

theorem fam_006_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_006_producer.Applies fam_006_key r mask)
    (hrows : row_001_producer.Applies fam_006_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_006_producerFactsImplyClassifier hsource hrows)

theorem fam_007_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_001_producer.Applies fam_007_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam007 hsource hrows

theorem fam_007_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_007_producer.Applies fam_007_key r mask)
    (hrows : row_001_producer.Applies fam_007_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_007_producerFactsImplyClassifier hsource hrows)

theorem fam_008_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_008_key r mask)
    (hrows : row_001_producer.Applies fam_008_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam008 hsource hrows

theorem fam_008_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_008_producer.Applies fam_008_key r mask)
    (hrows : row_001_producer.Applies fam_008_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_008_producerFactsImplyClassifier hsource hrows)

theorem fam_009_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_009_key r mask)
    (hrows : row_006_producer.Applies fam_009_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam009 hsource hrows

theorem fam_009_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_010_producer.Applies fam_009_key r mask)
    (hrows : row_006_producer.Applies fam_009_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_009_producerFactsImplyClassifier hsource hrows)

theorem fam_010_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_010_key r mask)
    (hrows : row_001_producer.Applies fam_010_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam010 hsource hrows

theorem fam_010_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_009_producer.Applies fam_010_key r mask)
    (hrows : row_001_producer.Applies fam_010_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_010_producerFactsImplyClassifier hsource hrows)

theorem fam_011_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_011_key r mask)
    (hrows : row_000_producer.Applies fam_011_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam011 hsource hrows

theorem fam_011_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_011_producer.Applies fam_011_key r mask)
    (hrows : row_000_producer.Applies fam_011_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_011_producerFactsImplyClassifier hsource hrows)

theorem fam_012_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_012_key r mask)
    (hrows : row_001_producer.Applies fam_012_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam012 hsource hrows

theorem fam_012_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_012_producer.Applies fam_012_key r mask)
    (hrows : row_001_producer.Applies fam_012_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_012_producerFactsImplyClassifier hsource hrows)

theorem fam_013_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_013_key r mask)
    (hrows : row_000_producer.Applies fam_013_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam013 hsource hrows

theorem fam_013_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_015_producer.Applies fam_013_key r mask)
    (hrows : row_000_producer.Applies fam_013_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_013_producerFactsImplyClassifier hsource hrows)

theorem fam_014_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_014_key r mask)
    (hrows : row_000_producer.Applies fam_014_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam014 hsource hrows

theorem fam_014_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_013_producer.Applies fam_014_key r mask)
    (hrows : row_000_producer.Applies fam_014_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_014_producerFactsImplyClassifier hsource hrows)

theorem fam_015_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_015_key r mask)
    (hrows : row_001_producer.Applies fam_015_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam015 hsource hrows

theorem fam_015_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_016_producer.Applies fam_015_key r mask)
    (hrows : row_001_producer.Applies fam_015_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_015_producerFactsImplyClassifier hsource hrows)

theorem fam_016_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_016_key r mask)
    (hrows : row_004_producer.Applies fam_016_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam016 hsource hrows

theorem fam_016_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_014_producer.Applies fam_016_key r mask)
    (hrows : row_004_producer.Applies fam_016_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_016_producerFactsImplyClassifier hsource hrows)

theorem fam_017_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_017_key r mask)
    (hrows : row_001_producer.Applies fam_017_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam017 hsource hrows

theorem fam_017_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_017_producer.Applies fam_017_key r mask)
    (hrows : row_001_producer.Applies fam_017_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_017_producerFactsImplyClassifier hsource hrows)

theorem fam_018_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_018_key r mask)
    (hrows : row_000_producer.Applies fam_018_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam018 hsource hrows

theorem fam_018_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_018_producer.Applies fam_018_key r mask)
    (hrows : row_000_producer.Applies fam_018_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_018_producerFactsImplyClassifier hsource hrows)

theorem fam_019_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_019_producer.Applies fam_019_key r mask)
    (hrows : row_000_producer.Applies fam_019_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam019 hsource hrows

theorem fam_019_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_019_producer.Applies fam_019_key r mask)
    (hrows : row_000_producer.Applies fam_019_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_019_producerFactsImplyClassifier hsource hrows)

theorem fam_020_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_020_producer.Applies fam_020_key r mask)
    (hrows : row_003_producer.Applies fam_020_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam020 hsource hrows

theorem fam_020_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_020_producer.Applies fam_020_key r mask)
    (hrows : row_003_producer.Applies fam_020_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_020_producerFactsImplyClassifier hsource hrows)

theorem fam_021_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_021_producer.Applies fam_021_key r mask)
    (hrows : row_005_producer.Applies fam_021_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam021 hsource hrows

theorem fam_021_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_021_producer.Applies fam_021_key r mask)
    (hrows : row_005_producer.Applies fam_021_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_021_producerFactsImplyClassifier hsource hrows)

theorem fam_022_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_022_producer.Applies fam_022_key r mask)
    (hrows : row_004_producer.Applies fam_022_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam022 hsource hrows

theorem fam_022_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_022_producer.Applies fam_022_key r mask)
    (hrows : row_004_producer.Applies fam_022_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_022_producerFactsImplyClassifier hsource hrows)

theorem fam_023_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_023_producer.Applies fam_023_key r mask)
    (hrows : row_000_producer.Applies fam_023_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam023 hsource hrows

theorem fam_023_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_023_producer.Applies fam_023_key r mask)
    (hrows : row_000_producer.Applies fam_023_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_023_producerFactsImplyClassifier hsource hrows)

theorem fam_024_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_024_producer.Applies fam_024_key r mask)
    (hrows : row_004_producer.Applies fam_024_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam024 hsource hrows

theorem fam_024_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_024_producer.Applies fam_024_key r mask)
    (hrows : row_004_producer.Applies fam_024_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_024_producerFactsImplyClassifier hsource hrows)

theorem fam_025_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_025_producer.Applies fam_025_key r mask)
    (hrows : row_006_producer.Applies fam_025_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam025 hsource hrows

theorem fam_025_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_025_producer.Applies fam_025_key r mask)
    (hrows : row_006_producer.Applies fam_025_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_025_producerFactsImplyClassifier hsource hrows)

theorem fam_026_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_027_producer.Applies fam_026_key r mask)
    (hrows : row_000_producer.Applies fam_026_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam026 hsource hrows

theorem fam_026_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_027_producer.Applies fam_026_key r mask)
    (hrows : row_000_producer.Applies fam_026_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_026_producerFactsImplyClassifier hsource hrows)

theorem fam_027_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_026_producer.Applies fam_027_key r mask)
    (hrows : row_000_producer.Applies fam_027_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam027 hsource hrows

theorem fam_027_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_026_producer.Applies fam_027_key r mask)
    (hrows : row_000_producer.Applies fam_027_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_027_producerFactsImplyClassifier hsource hrows)

theorem fam_028_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_028_producer.Applies fam_028_key r mask)
    (hrows : row_004_producer.Applies fam_028_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam028 hsource hrows

theorem fam_028_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_028_producer.Applies fam_028_key r mask)
    (hrows : row_004_producer.Applies fam_028_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_028_producerFactsImplyClassifier hsource hrows)

theorem fam_029_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_029_producer.Applies fam_029_key r mask)
    (hrows : row_005_producer.Applies fam_029_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam029 hsource hrows

theorem fam_029_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_029_producer.Applies fam_029_key r mask)
    (hrows : row_005_producer.Applies fam_029_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_029_producerFactsImplyClassifier hsource hrows)

theorem fam_030_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_031_producer.Applies fam_030_key r mask)
    (hrows : row_005_producer.Applies fam_030_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam030 hsource hrows

theorem fam_030_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_031_producer.Applies fam_030_key r mask)
    (hrows : row_005_producer.Applies fam_030_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_030_producerFactsImplyClassifier hsource hrows)

theorem fam_031_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_032_producer.Applies fam_031_key r mask)
    (hrows : row_000_producer.Applies fam_031_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam031 hsource hrows

theorem fam_031_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_032_producer.Applies fam_031_key r mask)
    (hrows : row_000_producer.Applies fam_031_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_031_producerFactsImplyClassifier hsource hrows)

theorem fam_032_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_036_producer.Applies fam_032_key r mask)
    (hrows : row_000_producer.Applies fam_032_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam032 hsource hrows

theorem fam_032_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_036_producer.Applies fam_032_key r mask)
    (hrows : row_000_producer.Applies fam_032_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_032_producerFactsImplyClassifier hsource hrows)

theorem fam_033_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_034_producer.Applies fam_033_key r mask)
    (hrows : row_002_producer.Applies fam_033_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam033 hsource hrows

theorem fam_033_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_034_producer.Applies fam_033_key r mask)
    (hrows : row_002_producer.Applies fam_033_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_033_producerFactsImplyClassifier hsource hrows)

theorem fam_034_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_035_producer.Applies fam_034_key r mask)
    (hrows : row_002_producer.Applies fam_034_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam034 hsource hrows

theorem fam_034_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_035_producer.Applies fam_034_key r mask)
    (hrows : row_002_producer.Applies fam_034_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_034_producerFactsImplyClassifier hsource hrows)

theorem fam_035_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_035_key r mask)
    (hrows : row_005_producer.Applies fam_035_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam035 hsource hrows

theorem fam_035_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_033_producer.Applies fam_035_key r mask)
    (hrows : row_005_producer.Applies fam_035_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_035_producerFactsImplyClassifier hsource hrows)

theorem fam_036_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_041_producer.Applies fam_036_key r mask)
    (hrows : row_000_producer.Applies fam_036_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam036 hsource hrows

theorem fam_036_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_041_producer.Applies fam_036_key r mask)
    (hrows : row_000_producer.Applies fam_036_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_036_producerFactsImplyClassifier hsource hrows)

theorem fam_037_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_040_producer.Applies fam_037_key r mask)
    (hrows : row_000_producer.Applies fam_037_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam037 hsource hrows

theorem fam_037_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_040_producer.Applies fam_037_key r mask)
    (hrows : row_000_producer.Applies fam_037_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_037_producerFactsImplyClassifier hsource hrows)

theorem fam_038_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_038_producer.Applies fam_038_key r mask)
    (hrows : row_002_producer.Applies fam_038_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam038 hsource hrows

theorem fam_038_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_038_producer.Applies fam_038_key r mask)
    (hrows : row_002_producer.Applies fam_038_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_038_producerFactsImplyClassifier hsource hrows)

theorem fam_039_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_037_producer.Applies fam_039_key r mask)
    (hrows : row_002_producer.Applies fam_039_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam039 hsource hrows

theorem fam_039_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_037_producer.Applies fam_039_key r mask)
    (hrows : row_002_producer.Applies fam_039_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_039_producerFactsImplyClassifier hsource hrows)

theorem fam_040_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_042_producer.Applies fam_040_key r mask)
    (hrows : row_004_producer.Applies fam_040_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam040 hsource hrows

theorem fam_040_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_042_producer.Applies fam_040_key r mask)
    (hrows : row_004_producer.Applies fam_040_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_040_producerFactsImplyClassifier hsource hrows)

theorem fam_041_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_039_producer.Applies fam_041_key r mask)
    (hrows : row_004_producer.Applies fam_041_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam041 hsource hrows

theorem fam_041_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_039_producer.Applies fam_041_key r mask)
    (hrows : row_004_producer.Applies fam_041_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_041_producerFactsImplyClassifier hsource hrows)

theorem fam_042_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_044_producer.Applies fam_042_key r mask)
    (hrows : row_002_producer.Applies fam_042_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam042 hsource hrows

theorem fam_042_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_044_producer.Applies fam_042_key r mask)
    (hrows : row_002_producer.Applies fam_042_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_042_producerFactsImplyClassifier hsource hrows)

theorem fam_043_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_043_producer.Applies fam_043_key r mask)
    (hrows : row_004_producer.Applies fam_043_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam043 hsource hrows

theorem fam_043_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_043_producer.Applies fam_043_key r mask)
    (hrows : row_004_producer.Applies fam_043_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_043_producerFactsImplyClassifier hsource hrows)

theorem fam_044_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_045_producer.Applies fam_044_key r mask)
    (hrows : row_004_producer.Applies fam_044_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam044 hsource hrows

theorem fam_044_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_045_producer.Applies fam_044_key r mask)
    (hrows : row_004_producer.Applies fam_044_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_044_producerFactsImplyClassifier hsource hrows)

theorem fam_045_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_045_key r mask)
    (hrows : row_007_producer.Applies fam_045_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam045 hsource hrows

theorem fam_045_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_045_key r mask)
    (hrows : row_007_producer.Applies fam_045_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_045_producerFactsImplyClassifier hsource hrows)

theorem fam_046_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_046_producer.Applies fam_046_key r mask)
    (hrows : row_000_producer.Applies fam_046_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam046 hsource hrows

theorem fam_046_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_046_producer.Applies fam_046_key r mask)
    (hrows : row_000_producer.Applies fam_046_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_046_producerFactsImplyClassifier hsource hrows)

theorem fam_047_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_047_producer.Applies fam_047_key r mask)
    (hrows : row_000_producer.Applies fam_047_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam047 hsource hrows

theorem fam_047_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_047_producer.Applies fam_047_key r mask)
    (hrows : row_000_producer.Applies fam_047_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_047_producerFactsImplyClassifier hsource hrows)

theorem fam_048_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_048_key r mask)
    (hrows : row_008_producer.Applies fam_048_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam048 hsource hrows

theorem fam_048_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_048_key r mask)
    (hrows : row_008_producer.Applies fam_048_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_048_producerFactsImplyClassifier hsource hrows)

theorem fam_049_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_051_producer.Applies fam_049_key r mask)
    (hrows : row_000_producer.Applies fam_049_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam049 hsource hrows

theorem fam_049_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_051_producer.Applies fam_049_key r mask)
    (hrows : row_000_producer.Applies fam_049_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_049_producerFactsImplyClassifier hsource hrows)

theorem fam_050_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_053_producer.Applies fam_050_key r mask)
    (hrows : row_002_producer.Applies fam_050_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam050 hsource hrows

theorem fam_050_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_053_producer.Applies fam_050_key r mask)
    (hrows : row_002_producer.Applies fam_050_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_050_producerFactsImplyClassifier hsource hrows)

theorem fam_051_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_049_producer.Applies fam_051_key r mask)
    (hrows : row_002_producer.Applies fam_051_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam051 hsource hrows

theorem fam_051_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_049_producer.Applies fam_051_key r mask)
    (hrows : row_002_producer.Applies fam_051_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_051_producerFactsImplyClassifier hsource hrows)

theorem fam_052_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_048_producer.Applies fam_052_key r mask)
    (hrows : row_002_producer.Applies fam_052_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam052 hsource hrows

theorem fam_052_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_048_producer.Applies fam_052_key r mask)
    (hrows : row_002_producer.Applies fam_052_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_052_producerFactsImplyClassifier hsource hrows)

theorem fam_053_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_050_producer.Applies fam_053_key r mask)
    (hrows : row_003_producer.Applies fam_053_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam053 hsource hrows

theorem fam_053_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_050_producer.Applies fam_053_key r mask)
    (hrows : row_003_producer.Applies fam_053_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_053_producerFactsImplyClassifier hsource hrows)

theorem fam_054_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_052_producer.Applies fam_054_key r mask)
    (hrows : row_003_producer.Applies fam_054_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam054 hsource hrows

theorem fam_054_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_052_producer.Applies fam_054_key r mask)
    (hrows : row_003_producer.Applies fam_054_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_054_producerFactsImplyClassifier hsource hrows)

theorem fam_055_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_055_key r mask)
    (hrows : row_010_producer.Applies fam_055_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam055 hsource hrows

theorem fam_055_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_producer.Applies fam_055_key r mask)
    (hrows : row_010_producer.Applies fam_055_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_055_producerFactsImplyClassifier hsource hrows)

theorem fam_056_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_057_producer.Applies fam_056_key r mask)
    (hrows : row_009_producer.Applies fam_056_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam056 hsource hrows

theorem fam_056_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_057_producer.Applies fam_056_key r mask)
    (hrows : row_009_producer.Applies fam_056_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_056_producerFactsImplyClassifier hsource hrows)

theorem fam_057_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_055_producer.Applies fam_057_key r mask)
    (hrows : row_002_producer.Applies fam_057_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam057 hsource hrows

theorem fam_057_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_055_producer.Applies fam_057_key r mask)
    (hrows : row_002_producer.Applies fam_057_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_057_producerFactsImplyClassifier hsource hrows)

theorem fam_058_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_056_producer.Applies fam_058_key r mask)
    (hrows : row_003_producer.Applies fam_058_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam058 hsource hrows

theorem fam_058_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_056_producer.Applies fam_058_key r mask)
    (hrows : row_003_producer.Applies fam_058_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_058_producerFactsImplyClassifier hsource hrows)

theorem fam_059_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_059_producer.Applies fam_059_key r mask)
    (hrows : row_005_producer.Applies fam_059_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam059 hsource hrows

theorem fam_059_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_059_producer.Applies fam_059_key r mask)
    (hrows : row_005_producer.Applies fam_059_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_059_producerFactsImplyClassifier hsource hrows)

theorem fam_060_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_058_producer.Applies fam_060_key r mask)
    (hrows : row_005_producer.Applies fam_060_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam060 hsource hrows

theorem fam_060_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_058_producer.Applies fam_060_key r mask)
    (hrows : row_005_producer.Applies fam_060_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_060_producerFactsImplyClassifier hsource hrows)

theorem fam_061_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_054_producer.Applies fam_061_key r mask)
    (hrows : row_005_producer.Applies fam_061_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam061 hsource hrows

theorem fam_061_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_054_producer.Applies fam_061_key r mask)
    (hrows : row_005_producer.Applies fam_061_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_061_producerFactsImplyClassifier hsource hrows)

theorem fam_062_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_061_producer.Applies fam_062_key r mask)
    (hrows : row_009_producer.Applies fam_062_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam062 hsource hrows

theorem fam_062_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_061_producer.Applies fam_062_key r mask)
    (hrows : row_009_producer.Applies fam_062_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_062_producerFactsImplyClassifier hsource hrows)

theorem fam_063_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_068_producer.Applies fam_063_key r mask)
    (hrows : row_000_producer.Applies fam_063_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam063 hsource hrows

theorem fam_063_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_068_producer.Applies fam_063_key r mask)
    (hrows : row_000_producer.Applies fam_063_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_063_producerFactsImplyClassifier hsource hrows)

theorem fam_064_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_067_producer.Applies fam_064_key r mask)
    (hrows : row_000_producer.Applies fam_064_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam064 hsource hrows

theorem fam_064_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_067_producer.Applies fam_064_key r mask)
    (hrows : row_000_producer.Applies fam_064_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_064_producerFactsImplyClassifier hsource hrows)

theorem fam_065_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_064_producer.Applies fam_065_key r mask)
    (hrows : row_002_producer.Applies fam_065_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam065 hsource hrows

theorem fam_065_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_064_producer.Applies fam_065_key r mask)
    (hrows : row_002_producer.Applies fam_065_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_065_producerFactsImplyClassifier hsource hrows)

theorem fam_066_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_070_producer.Applies fam_066_key r mask)
    (hrows : row_002_producer.Applies fam_066_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam066 hsource hrows

theorem fam_066_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_070_producer.Applies fam_066_key r mask)
    (hrows : row_002_producer.Applies fam_066_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_066_producerFactsImplyClassifier hsource hrows)

theorem fam_067_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_069_producer.Applies fam_067_key r mask)
    (hrows : row_002_producer.Applies fam_067_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam067 hsource hrows

theorem fam_067_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_069_producer.Applies fam_067_key r mask)
    (hrows : row_002_producer.Applies fam_067_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_067_producerFactsImplyClassifier hsource hrows)

theorem fam_068_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_063_producer.Applies fam_068_key r mask)
    (hrows : row_002_producer.Applies fam_068_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam068 hsource hrows

theorem fam_068_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_063_producer.Applies fam_068_key r mask)
    (hrows : row_002_producer.Applies fam_068_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_068_producerFactsImplyClassifier hsource hrows)

theorem fam_069_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_060_producer.Applies fam_069_key r mask)
    (hrows : row_002_producer.Applies fam_069_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam069 hsource hrows

theorem fam_069_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_060_producer.Applies fam_069_key r mask)
    (hrows : row_002_producer.Applies fam_069_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_069_producerFactsImplyClassifier hsource hrows)

theorem fam_070_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_065_producer.Applies fam_070_key r mask)
    (hrows : row_002_producer.Applies fam_070_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam070 hsource hrows

theorem fam_070_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_065_producer.Applies fam_070_key r mask)
    (hrows : row_002_producer.Applies fam_070_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_070_producerFactsImplyClassifier hsource hrows)

theorem fam_071_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_071_producer.Applies fam_071_key r mask)
    (hrows : row_002_producer.Applies fam_071_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam071 hsource hrows

theorem fam_071_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_071_producer.Applies fam_071_key r mask)
    (hrows : row_002_producer.Applies fam_071_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_071_producerFactsImplyClassifier hsource hrows)

theorem fam_072_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_066_producer.Applies fam_072_key r mask)
    (hrows : row_003_producer.Applies fam_072_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam072 hsource hrows

theorem fam_072_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_066_producer.Applies fam_072_key r mask)
    (hrows : row_003_producer.Applies fam_072_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_072_producerFactsImplyClassifier hsource hrows)

theorem fam_073_producerFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : source_062_producer.Applies fam_073_key r mask)
    (hrows : row_003_producer.Applies fam_073_key r mask) :
    ProducerGlueClassifierApplies r mask :=
  ProducerGlueClassifierApplies.fam073 hsource hrows

theorem fam_073_producerFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_062_producer.Applies fam_073_key r mask)
    (hrows : row_003_producer.Applies fam_073_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  producerGlueClassifierKillsOn r hlt mask
    (fam_073_producerFactsImplyClassifier hsource hrows)

theorem sourceIndexStateProducerGlueSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateProducerGlueSmoke
