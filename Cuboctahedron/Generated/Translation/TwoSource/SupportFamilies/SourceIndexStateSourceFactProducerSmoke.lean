import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated source-fact producer smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. Each producer turns a reusable
`SourceIndexStateSourcePredicate` into `SourceIndexStateSourceFacts`;
row facts remain a separate theorem obligation.
Phase: 6Z.6K.8S.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSourceFactProducerSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-- Source-fact producer for source group `e6036b3771bec884271fd313167d8519f778f5bfa8a367817b10f62a89a8a658`.
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

theorem source_000_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_000_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_000_producer.sourceFacts h

/-- Source-fact producer for source group `769b51797f7673bfeb9398aa368722d1bd240c5dab2544ca613968cd12d1d04f`.
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

theorem source_001_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_001_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_001_producer.sourceFacts h

/-- Source-fact producer for source group `102f94908cffedc720a55cfc27b35406493b72b1e82b3d7c1c24b827dcd70992`.
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

theorem source_002_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_002_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_002_producer.sourceFacts h

/-- Source-fact producer for source group `a940ab9f3ad72969cb34647573c21a29f5a495fb263e3600e94bc0c2c4550404`.
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

theorem source_003_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_003_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_003_producer.sourceFacts h

/-- Source-fact producer for source group `bd6920dd445394fa411d960ee0fa5e224849d9dca848e1d3076a39d3626dfd13`.
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

theorem source_004_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_004_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_004_producer.sourceFacts h

/-- Source-fact producer for source group `ad267e9929734fb517e7637e7427ddc6db18b4b7f248a273978142252e902f28`.
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

theorem source_005_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_005_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_005_producer.sourceFacts h

/-- Source-fact producer for source group `9accec1e031f7ece790b4aa4210485dc1f22e39bd32249b558d48ffc9b0d7a0b`.
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

theorem source_006_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_006_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_006_producer.sourceFacts h

/-- Source-fact producer for source group `ae3bde4a1a4cc1ec75f1cb2bb1a8c46d60dc621e6564547419af063c86107bad`.
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

theorem source_007_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_007_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_007_producer.sourceFacts h

/-- Source-fact producer for source group `42b2ca31b66f321779af52fa7d1705bf6225addea038120f1bf009a80458707e`.
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

theorem source_008_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_008_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_008_producer.sourceFacts h

/-- Source-fact producer for source group `1d34e50ef50db67906309004624aa6d4e651dbd09c6d043c3d8c09105f94b4a9`.
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

theorem source_009_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_009_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_009_producer.sourceFacts h

/-- Source-fact producer for source group `53696c059bbf359ca7a6c7accc921f9fa16dfba896d6532ca0eab7f9821a867c`.
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

theorem source_010_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_010_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_010_producer.sourceFacts h

/-- Source-fact producer for source group `8b9860bf1b03698c2e5b816aa6d65a36f6345895abd06affbaa3b1e84c613982`.
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

theorem source_011_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_011_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_011_producer.sourceFacts h

/-- Source-fact producer for source group `cea4464df905000142edce9b11281690a008c9d5cd1e771dca605906f1732c50`.
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

theorem source_012_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_012_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_012_producer.sourceFacts h

/-- Source-fact producer for source group `06a7f983ec54b3872bb5dd9456861860d39e3e54508d4af2b7d0394448a044b9`.
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

theorem source_013_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_013_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_013_producer.sourceFacts h

/-- Source-fact producer for source group `11d11e966a166501fce2240603d022412ecfc147a743e9eeb858fff69d844ebb`.
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

theorem source_014_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_014_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_014_producer.sourceFacts h

/-- Source-fact producer for source group `692bbc76b40817b5dcd7452f4db344bdbb5d2b802f23d64eb74e0f2f53b56cd4`.
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

theorem source_015_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_015_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_015_producer.sourceFacts h

/-- Source-fact producer for source group `f5d3bc532de79b891d27a058711bfb9349a1f9c646078b419227a9526058c152`.
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

theorem source_016_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_016_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_016_producer.sourceFacts h

/-- Source-fact producer for source group `bfaf1e6ce0ce1d61786e4a66aa7cc7fe1274f69ba512fb8d2b3b5615b469ad17`.
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

theorem source_017_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_017_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_017_producer.sourceFacts h

/-- Source-fact producer for source group `3a2924aa5bdbec3a5329bab98173034188d967d93ba7605c96c85f733e8934bc`.
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

theorem source_018_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_018_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_018_producer.sourceFacts h

/-- Source-fact producer for source group `3ec14ceb9b28b37bfe12fc6a8c3e6defb306f79d63b69d9cae8059ab8e87ed95`.
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

theorem source_019_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_019_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_019_producer.sourceFacts h

/-- Source-fact producer for source group `c8554aaf4b73ef54193dc1098080e5fafa5f64822fb2c03410d5082efd63016e`.
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

theorem source_020_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_020_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_020_producer.sourceFacts h

/-- Source-fact producer for source group `3940e6d91b3a2977beb1d4942a19557c49dabb0e49e65b72e3227a510d4b67d7`.
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

theorem source_021_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_021_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_021_producer.sourceFacts h

/-- Source-fact producer for source group `5ce1ee1f662aea79fe8c212d24c3e68d99cff33e5b7b11e2d6750a5472d0dc92`.
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

theorem source_022_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_022_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_022_producer.sourceFacts h

/-- Source-fact producer for source group `66c02cba404c532f1e9ea96ebfda39fd2349706278e115bea1674477e05dd3b2`.
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

theorem source_023_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_023_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_023_producer.sourceFacts h

/-- Source-fact producer for source group `96db83cdd7dfbc306ef127f08ef94f5c3d71c27df72ac9f8545d0cd54e7b6dcb`.
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

theorem source_024_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_024_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_024_producer.sourceFacts h

/-- Source-fact producer for source group `91680d53032fa2b164ce79bff664fd9b3c2668cecd33138eaecccb17f8b26b08`.
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

theorem source_025_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_025_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_025_producer.sourceFacts h

/-- Source-fact producer for source group `b7ca266b8fa988d73c3b864dff16753f69846cf84ad358a64417c436bdeb8f8b`.
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

theorem source_026_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_026_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_026_producer.sourceFacts h

/-- Source-fact producer for source group `fc805e5aa43cbf59fd54e11b9b4cc4bf2c46e5b085bcbdba6c2acab8157c72dc`.
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

theorem source_027_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_027_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_027_producer.sourceFacts h

/-- Source-fact producer for source group `2cc68c3b6a2dde0b5894b80d15ebc02445fe20739f015077a5ff51c7ae15634c`.
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

theorem source_028_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_028_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_028_producer.sourceFacts h

/-- Source-fact producer for source group `3290d20984474e3909c8a8dbc359f8163dd1eb7d94bb9866a2af2d916807585d`.
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

theorem source_029_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_029_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_029_producer.sourceFacts h

/-- Source-fact producer for source group `46b74a54a57a25ed51e207d17428b8f88e3a57422f9046833bc6157d56270cb6`.
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

theorem source_030_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_030_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_030_producer.sourceFacts h

/-- Source-fact producer for source group `f6d33b37efe11ca04d4d63e6211fac6edae2c5f8c55bcd8093d7d8eab574be5b`.
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

theorem source_031_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_031_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_031_producer.sourceFacts h

/-- Source-fact producer for source group `714cbfa66a98642d64c09ac23728c29c4968d8efd1b91af74d04f05c45dbf096`.
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

theorem source_032_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_032_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_032_producer.sourceFacts h

/-- Source-fact producer for source group `5235f96701952b933dac7760828ad3a186c53ea499c754a3eef721e2d1a4f450`.
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

theorem source_033_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_033_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_033_producer.sourceFacts h

/-- Source-fact producer for source group `a7877ce1c46d485047a80b1eccd5d4d7989cdb821193b5dc7ca680eae2097744`.
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

theorem source_034_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_034_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_034_producer.sourceFacts h

/-- Source-fact producer for source group `b7f13f08666187ae2ff10842e7f35bf0bdf9c969d7d944b20a0473f3707df6fe`.
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

theorem source_035_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_035_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_035_producer.sourceFacts h

/-- Source-fact producer for source group `c5ec5e493c6af976a1b03f30aeb9d26ee4dd468f968a4361500947da83fa8093`.
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

theorem source_036_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_036_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_036_producer.sourceFacts h

/-- Source-fact producer for source group `021f47f86b4b3fb33307baa849562c0b227409fe01f9975b8d574ee8cb4ddb01`.
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

theorem source_037_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_037_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_037_producer.sourceFacts h

/-- Source-fact producer for source group `16a3d3e54d8e16a85fc508bb0843f087f24dfabc9831756d44d4a8431a94f258`.
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

theorem source_038_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_038_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_038_producer.sourceFacts h

/-- Source-fact producer for source group `3ce052d543893c1cede10f0b9b363c6ff783fb2298e6854feb62cc31de50d4c5`.
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

theorem source_039_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_039_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_039_producer.sourceFacts h

/-- Source-fact producer for source group `5092ca106263554f5b683c65f4f879203379892190c8cabe8cbd9b7e6d6f0091`.
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

theorem source_040_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_040_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_040_producer.sourceFacts h

/-- Source-fact producer for source group `514e679fb2cb513fea8452df5c6d54611177a5cf9b1976b20c0bc342cc7ee6d4`.
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

theorem source_041_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_041_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_041_producer.sourceFacts h

/-- Source-fact producer for source group `df66f4d09d995af9598edddf3f11fdf3faae819a11a4cf6f534a2a37f31d7c48`.
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

theorem source_042_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_042_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_042_producer.sourceFacts h

/-- Source-fact producer for source group `3b2ecd7f1f860d940180e8edc9161ad12e089bf87d9755a00a9270c5672ca99b`.
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

theorem source_043_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_043_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_043_producer.sourceFacts h

/-- Source-fact producer for source group `b262bda8a9b2bc998f6f5a46f6e8b1e9759df004acf04940922c2f40be3027c7`.
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

theorem source_044_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_044_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_044_producer.sourceFacts h

/-- Source-fact producer for source group `b2680d819fee8747dcca856d2980d906bdf5e5ef0fb1042fb131650341dacbc1`.
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

theorem source_045_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_045_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_045_producer.sourceFacts h

/-- Source-fact producer for source group `27a3084b923bb5236f8cc839b571250cffc7405f7417c98d5743dcc8c7d753d4`.
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

theorem source_046_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_046_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_046_producer.sourceFacts h

/-- Source-fact producer for source group `eac8a8e11f7390ffd6117f5dcd089fe4d3a520218555c0ff166e5d1b2d304535`.
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

theorem source_047_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_047_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_047_producer.sourceFacts h

/-- Source-fact producer for source group `0080d2169e5f320234753654ba1bd847fa2619afc8b075a94c578ca4f8f3b9ee`.
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

theorem source_048_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_048_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_048_producer.sourceFacts h

/-- Source-fact producer for source group `10fb7297a02c68cf49596ccac2193db7a7b2e20c6b165046ae872e25aaccfc86`.
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

theorem source_049_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_049_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_049_producer.sourceFacts h

/-- Source-fact producer for source group `64fe078a0a250d964f3008d90e897412404e0cc786f6faf5a4783eaea38449b4`.
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

theorem source_050_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_050_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_050_producer.sourceFacts h

/-- Source-fact producer for source group `7368049780bbf43add9863c6101eb0d4cd3834ff6d00889c4be0799b78a4996a`.
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

theorem source_051_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_051_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_051_producer.sourceFacts h

/-- Source-fact producer for source group `bc3c3f42aacb1d847258109c055cea04afc822f2739a74efdebc85827b65df42`.
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

theorem source_052_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_052_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_052_producer.sourceFacts h

/-- Source-fact producer for source group `ce3322b8aaa21875ba5bbc49db950dd63e754b3498e8ca29d562f1d36e8297d9`.
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

theorem source_053_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_053_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_053_producer.sourceFacts h

/-- Source-fact producer for source group `36eec823d5ba41c4a9e4265ec047b661da07f7adb499c0084faa69539f6df833`.
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

theorem source_054_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_054_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_054_producer.sourceFacts h

/-- Source-fact producer for source group `63e7915585768679d25965847ecdf6cd5bac64d95a7ab04272f2741e2a36943a`.
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

theorem source_055_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_055_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_055_producer.sourceFacts h

/-- Source-fact producer for source group `6f6d6a6023a5e161019f94f7a55b0822f48f5f64997f9ca7acae7509c8af8e65`.
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

theorem source_056_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_056_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_056_producer.sourceFacts h

/-- Source-fact producer for source group `a5857231036a8e1c27fa075ebed81e3a025d7ef170cef21a55a1520d311e11c1`.
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

theorem source_057_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_057_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_057_producer.sourceFacts h

/-- Source-fact producer for source group `c7adc305f537d2b6caee36a1174826e86bf4307f0781368733fabc1121201665`.
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

theorem source_058_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_058_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_058_producer.sourceFacts h

/-- Source-fact producer for source group `d7eceb9816d10bd7d38bd3b8bb132a7efa99fc38fde8edbb34f84d1cd377e09e`.
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

theorem source_059_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_059_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_059_producer.sourceFacts h

/-- Source-fact producer for source group `16cacb415ed7eabd7b27729cd9bcd96dea765583f13e6b06e1297ba22fc94528`.
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

theorem source_060_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_060_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_060_producer.sourceFacts h

/-- Source-fact producer for source group `3acf75b0368568ac92f7f30f1945e86dcf9f597b55082f79a406da198e07b216`.
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

theorem source_061_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_061_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_061_producer.sourceFacts h

/-- Source-fact producer for source group `3ef4896247432b1a2431f95273664fa7fb8d37522534e387ab5f8b385c90a0cf`.
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

theorem source_062_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_062_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_062_producer.sourceFacts h

/-- Source-fact producer for source group `4d8e6947f2ddc6a3618ab93fdf1006ff3b36f8549c5748fd7576f7888e2bc7ff`.
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

theorem source_063_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_063_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_063_producer.sourceFacts h

/-- Source-fact producer for source group `5d6014683304aed3e28830656ee73df7b399bbd023093abecc598c2b5ff207d7`.
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

theorem source_064_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_064_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_064_producer.sourceFacts h

/-- Source-fact producer for source group `6d38fb5e536e38a81b47077b24c2e0182b86ffd406d33e3acb537bf44b5aecd2`.
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

theorem source_065_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_065_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_065_producer.sourceFacts h

/-- Source-fact producer for source group `7dc53a82bb503c32e7263f3e9d693f015ab6858f0100452b7570f1aa77a4133c`.
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

theorem source_066_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_066_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_066_producer.sourceFacts h

/-- Source-fact producer for source group `a8e6642b8ec7292baf6d65c2cd38554be67fd5f8d772c20a8a26dbad0797ae2d`.
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

theorem source_067_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_067_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_067_producer.sourceFacts h

/-- Source-fact producer for source group `c741f9357cb8d22c7fc023467f89b2c238226094138641ff1b529c8bec947c5c`.
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

theorem source_068_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_068_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_068_producer.sourceFacts h

/-- Source-fact producer for source group `e11276c9d62904761e5dd669b875363481744d1a8b42c14892f823c9770cc9f4`.
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

theorem source_069_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_069_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_069_producer.sourceFacts h

/-- Source-fact producer for source group `e31d66d4944bc99b32bb4f5ef1d42f2000ed437ea61790d150c0d92c6d0ab2be`.
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

theorem source_070_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_070_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_070_producer.sourceFacts h

/-- Source-fact producer for source group `f3eb21134ab24754c014506e4209bf469d3cd76890b9bf4b275b751a7e056544`.
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

theorem source_071_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_071_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_071_producer.sourceFacts h

theorem sourceIndexStateSourceFactProducerSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSourceFactProducerSmoke
