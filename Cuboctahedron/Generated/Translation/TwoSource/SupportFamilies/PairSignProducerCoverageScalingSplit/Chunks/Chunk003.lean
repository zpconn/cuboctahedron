import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Row

/-!
Pair-sign producer-coverage descriptor chunk.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AL.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Chunks.Chunk003

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Row

set_option linter.unusedVariables false

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

theorem chunk_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Chunks.Chunk003
