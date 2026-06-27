import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

/-!
Pair-sign producer-coverage descriptor chunk.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AM.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk003

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

set_option linter.unusedVariables false

/-- Pair-sign producer coverage key `3eb229716ab05f5da88dc0d0242054f40de10fb164bc47cf5f15735048cc0d0f`.
Observed representative GoodDirection cases: 2. -/
private def fam_192_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_192_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 6
  support := fam_192_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_192_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 6 source_192_support r mask) :
    source_192_producer.Applies fam_192_key r mask := by
  unfold source_192_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_192_key, fam_192_support, source_192_support],
    hsource⟩⟩⟩

theorem fam_192_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_192_key.support r mask) :
    row_010_producer.Applies fam_192_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_192_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 6 source_192_support r mask)
    (hrows : ExactTwoSourceValidRows fam_192_key.support r mask) :
    SourceIndexStateKeyFacts fam_192_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_192_producer.sourceFacts
      (fam_192_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_192_rowApplies_of_rows hrows))

theorem fam_192_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 6 source_192_support r mask)
    (hrows : ExactTwoSourceValidRows fam_192_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_192_key.goodKilled_of_source_row
    (source_192_producer.sourceFacts
      (fam_192_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_192_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3f12cb82ee7a19ac18de817d3883ed67a8469401b0ba1c7bdf0692b8f0fe2e0a`.
Observed representative GoodDirection cases: 2. -/
private def fam_193_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_193_key : SourceIndexStateKey where
  firstIndex := 169
  secondIndex := 8
  support := fam_193_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_193_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 8 source_182_support r mask) :
    source_182_producer.Applies fam_193_key r mask := by
  unfold source_182_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_193_key, fam_193_support, source_182_support],
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
        169 8 source_182_support r mask)
    (hrows : ExactTwoSourceValidRows fam_193_key.support r mask) :
    SourceIndexStateKeyFacts fam_193_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_182_producer.sourceFacts
      (fam_193_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_193_rowApplies_of_rows hrows))

theorem fam_193_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 8 source_182_support r mask)
    (hrows : ExactTwoSourceValidRows fam_193_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_193_key.goodKilled_of_source_row
    (source_182_producer.sourceFacts
      (fam_193_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_193_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `47e1530d3c28d5e6305c452189f7b97e38e08693aa0d42d3bbaf8005508fc8b8`.
Observed representative GoodDirection cases: 2. -/
private def fam_194_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_194_key : SourceIndexStateKey where
  firstIndex := 99
  secondIndex := 6
  support := fam_194_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_194_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 6 source_204_support r mask) :
    source_204_producer.Applies fam_194_key r mask := by
  unfold source_204_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_194_key, fam_194_support, source_204_support],
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
        99 6 source_204_support r mask)
    (hrows : ExactTwoSourceValidRows fam_194_key.support r mask) :
    SourceIndexStateKeyFacts fam_194_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_204_producer.sourceFacts
      (fam_194_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_194_rowApplies_of_rows hrows))

theorem fam_194_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 6 source_204_support r mask)
    (hrows : ExactTwoSourceValidRows fam_194_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_194_key.goodKilled_of_source_row
    (source_204_producer.sourceFacts
      (fam_194_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_194_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `48038dc101c048930f554be5a91e6fe62258d506fff57340597ff92e26ecfa21`.
Observed representative GoodDirection cases: 2. -/
private def fam_195_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_195_key : SourceIndexStateKey where
  firstIndex := 160
  secondIndex := 9
  support := fam_195_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_195_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        160 9 source_198_support r mask) :
    source_198_producer.Applies fam_195_key r mask := by
  unfold source_198_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_195_key, fam_195_support, source_198_support],
    hsource⟩⟩⟩

theorem fam_195_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_195_key.support r mask) :
    row_010_producer.Applies fam_195_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_195_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        160 9 source_198_support r mask)
    (hrows : ExactTwoSourceValidRows fam_195_key.support r mask) :
    SourceIndexStateKeyFacts fam_195_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_198_producer.sourceFacts
      (fam_195_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_195_rowApplies_of_rows hrows))

theorem fam_195_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        160 9 source_198_support r mask)
    (hrows : ExactTwoSourceValidRows fam_195_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_195_key.goodKilled_of_source_row
    (source_198_producer.sourceFacts
      (fam_195_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_195_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `54abd5a283a8ebf0f7808b920e7326763748f6411dad3136fa5f8676ebf4327d`.
Observed representative GoodDirection cases: 2. -/
private def fam_196_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_196_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 10
  support := fam_196_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_196_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 10 source_184_support r mask) :
    source_184_producer.Applies fam_196_key r mask := by
  unfold source_184_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_196_key, fam_196_support, source_184_support],
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
        166 10 source_184_support r mask)
    (hrows : ExactTwoSourceValidRows fam_196_key.support r mask) :
    SourceIndexStateKeyFacts fam_196_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_184_producer.sourceFacts
      (fam_196_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_196_rowApplies_of_rows hrows))

theorem fam_196_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 10 source_184_support r mask)
    (hrows : ExactTwoSourceValidRows fam_196_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_196_key.goodKilled_of_source_row
    (source_184_producer.sourceFacts
      (fam_196_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_196_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `60f63d9eaa4de6634e564299b8a6754ebc49d4e5228e06837e5b1e8e1d93daf9`.
Observed representative GoodDirection cases: 2. -/
private def fam_197_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_197_key : SourceIndexStateKey where
  firstIndex := 40
  secondIndex := 9
  support := fam_197_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_197_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        40 9 source_185_support r mask) :
    source_185_producer.Applies fam_197_key r mask := by
  unfold source_185_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_197_key, fam_197_support, source_185_support],
    hsource⟩⟩⟩

theorem fam_197_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_197_key.support r mask) :
    row_008_producer.Applies fam_197_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_197_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        40 9 source_185_support r mask)
    (hrows : ExactTwoSourceValidRows fam_197_key.support r mask) :
    SourceIndexStateKeyFacts fam_197_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_185_producer.sourceFacts
      (fam_197_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_197_rowApplies_of_rows hrows))

theorem fam_197_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        40 9 source_185_support r mask)
    (hrows : ExactTwoSourceValidRows fam_197_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_197_key.goodKilled_of_source_row
    (source_185_producer.sourceFacts
      (fam_197_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_197_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `61c624ebf61898663e0e703bcf84d323764892e16f4da5fd20453743ee29d4d5`.
Observed representative GoodDirection cases: 2. -/
private def fam_198_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_198_key : SourceIndexStateKey where
  firstIndex := 52
  secondIndex := 8
  support := fam_198_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_198_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 8 source_206_support r mask) :
    source_206_producer.Applies fam_198_key r mask := by
  unfold source_206_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_198_key, fam_198_support, source_206_support],
    hsource⟩⟩⟩

theorem fam_198_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_198_key.support r mask) :
    row_009_producer.Applies fam_198_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_198_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 8 source_206_support r mask)
    (hrows : ExactTwoSourceValidRows fam_198_key.support r mask) :
    SourceIndexStateKeyFacts fam_198_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_206_producer.sourceFacts
      (fam_198_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_198_rowApplies_of_rows hrows))

theorem fam_198_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 8 source_206_support r mask)
    (hrows : ExactTwoSourceValidRows fam_198_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_198_key.goodKilled_of_source_row
    (source_206_producer.sourceFacts
      (fam_198_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_198_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `82fc903fa45fa4da05b0ef7550ba8ca482227d50daa02edb09c19913b34082a2`.
Observed representative GoodDirection cases: 2. -/
private def fam_199_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_199_key : SourceIndexStateKey where
  firstIndex := 137
  secondIndex := 8
  support := fam_199_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_199_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 8 source_196_support r mask) :
    source_196_producer.Applies fam_199_key r mask := by
  unfold source_196_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_199_key, fam_199_support, source_196_support],
    hsource⟩⟩⟩

theorem fam_199_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_199_key.support r mask) :
    row_008_producer.Applies fam_199_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_199_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 8 source_196_support r mask)
    (hrows : ExactTwoSourceValidRows fam_199_key.support r mask) :
    SourceIndexStateKeyFacts fam_199_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_196_producer.sourceFacts
      (fam_199_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_199_rowApplies_of_rows hrows))

theorem fam_199_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 8 source_196_support r mask)
    (hrows : ExactTwoSourceValidRows fam_199_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_199_key.goodKilled_of_source_row
    (source_196_producer.sourceFacts
      (fam_199_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_199_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8460f3f82029a3f30c716e5fc2f16430bb8d9e8ec0a41189074d6987f0466325`.
Observed representative GoodDirection cases: 2. -/
private def fam_200_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_200_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 12
  support := fam_200_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_200_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask) :
    source_138_producer.Applies fam_200_key r mask := by
  unfold source_138_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_200_key, fam_200_support, source_138_support],
    hsource⟩⟩⟩

theorem fam_200_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_200_key.support r mask) :
    row_009_producer.Applies fam_200_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_200_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask)
    (hrows : ExactTwoSourceValidRows fam_200_key.support r mask) :
    SourceIndexStateKeyFacts fam_200_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_138_producer.sourceFacts
      (fam_200_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_200_rowApplies_of_rows hrows))

theorem fam_200_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask)
    (hrows : ExactTwoSourceValidRows fam_200_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_200_key.goodKilled_of_source_row
    (source_138_producer.sourceFacts
      (fam_200_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_200_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a9acae98018f2876953edf07894ef6f663c7bac68c07a4d1bcfa1cec39be4b11`.
Observed representative GoodDirection cases: 2. -/
private def fam_201_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_201_key : SourceIndexStateKey where
  firstIndex := 152
  secondIndex := 9
  support := fam_201_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_201_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        152 9 source_188_support r mask) :
    source_188_producer.Applies fam_201_key r mask := by
  unfold source_188_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_201_key, fam_201_support, source_188_support],
    hsource⟩⟩⟩

theorem fam_201_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_201_key.support r mask) :
    row_009_producer.Applies fam_201_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_201_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        152 9 source_188_support r mask)
    (hrows : ExactTwoSourceValidRows fam_201_key.support r mask) :
    SourceIndexStateKeyFacts fam_201_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_188_producer.sourceFacts
      (fam_201_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_201_rowApplies_of_rows hrows))

theorem fam_201_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        152 9 source_188_support r mask)
    (hrows : ExactTwoSourceValidRows fam_201_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_201_key.goodKilled_of_source_row
    (source_188_producer.sourceFacts
      (fam_201_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_201_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b1ce5b1913c9510b32e2a9f53369fc013865aef62ee865fdde7641684b890386`.
Observed representative GoodDirection cases: 2. -/
private def fam_202_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_202_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 5
  support := fam_202_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_202_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_091_support r mask) :
    source_091_producer.Applies fam_202_key r mask := by
  unfold source_091_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_202_key, fam_202_support, source_091_support],
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
        14 5 source_091_support r mask)
    (hrows : ExactTwoSourceValidRows fam_202_key.support r mask) :
    SourceIndexStateKeyFacts fam_202_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_091_producer.sourceFacts
      (fam_202_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_202_rowApplies_of_rows hrows))

theorem fam_202_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_091_support r mask)
    (hrows : ExactTwoSourceValidRows fam_202_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_202_key.goodKilled_of_source_row
    (source_091_producer.sourceFacts
      (fam_202_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_202_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b99ced2e382857d7993001aa6ff1851a692839236711995b7107563e53b4b8a5`.
Observed representative GoodDirection cases: 2. -/
private def fam_203_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_203_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 13
  support := fam_203_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_203_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_127_support r mask) :
    source_127_producer.Applies fam_203_key r mask := by
  unfold source_127_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_203_key, fam_203_support, source_127_support],
    hsource⟩⟩⟩

theorem fam_203_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_203_key.support r mask) :
    row_009_producer.Applies fam_203_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_203_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_127_support r mask)
    (hrows : ExactTwoSourceValidRows fam_203_key.support r mask) :
    SourceIndexStateKeyFacts fam_203_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_127_producer.sourceFacts
      (fam_203_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_203_rowApplies_of_rows hrows))

theorem fam_203_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_127_support r mask)
    (hrows : ExactTwoSourceValidRows fam_203_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_203_key.goodKilled_of_source_row
    (source_127_producer.sourceFacts
      (fam_203_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_203_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `dd007dc4374c80870d67334ca83c5c9558b6c3885e521ad1bc8a4e82a258c3d2`.
Observed representative GoodDirection cases: 2. -/
private def fam_204_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_204_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 8
  support := fam_204_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_204_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 8 source_208_support r mask) :
    source_208_producer.Applies fam_204_key r mask := by
  unfold source_208_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_204_key, fam_204_support, source_208_support],
    hsource⟩⟩⟩

theorem fam_204_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_204_key.support r mask) :
    row_008_producer.Applies fam_204_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_204_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 8 source_208_support r mask)
    (hrows : ExactTwoSourceValidRows fam_204_key.support r mask) :
    SourceIndexStateKeyFacts fam_204_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_208_producer.sourceFacts
      (fam_204_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_204_rowApplies_of_rows hrows))

theorem fam_204_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 8 source_208_support r mask)
    (hrows : ExactTwoSourceValidRows fam_204_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_204_key.goodKilled_of_source_row
    (source_208_producer.sourceFacts
      (fam_204_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_204_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e7834ee43ad7dca4c48fcd09aa9a8d75a80db5ea05774beb861a7c0f9e67ee98`.
Observed representative GoodDirection cases: 2. -/
private def fam_205_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_205_key : SourceIndexStateKey where
  firstIndex := 98
  secondIndex := 6
  support := fam_205_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_205_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        98 6 source_173_support r mask) :
    source_173_producer.Applies fam_205_key r mask := by
  unfold source_173_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_205_key, fam_205_support, source_173_support],
    hsource⟩⟩⟩

theorem fam_205_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_205_key.support r mask) :
    row_010_producer.Applies fam_205_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_205_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        98 6 source_173_support r mask)
    (hrows : ExactTwoSourceValidRows fam_205_key.support r mask) :
    SourceIndexStateKeyFacts fam_205_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_173_producer.sourceFacts
      (fam_205_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_205_rowApplies_of_rows hrows))

theorem fam_205_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        98 6 source_173_support r mask)
    (hrows : ExactTwoSourceValidRows fam_205_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_205_key.goodKilled_of_source_row
    (source_173_producer.sourceFacts
      (fam_205_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_205_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `113f8b0a8874d29dbd72a109fc1ce8ded03c4ab8d49a927e0bc8b690d8900422`.
Observed representative GoodDirection cases: 2. -/
private def fam_206_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_206_key : SourceIndexStateKey where
  firstIndex := 170
  secondIndex := 1
  support := fam_206_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_206_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_170_support r mask) :
    source_170_producer.Applies fam_206_key r mask := by
  unfold source_170_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_206_key, fam_206_support, source_170_support],
    hsource⟩⟩⟩

theorem fam_206_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_206_key.support r mask) :
    row_001_producer.Applies fam_206_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_206_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_170_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_206_key.support r mask) :
    SourceIndexStateKeyFacts fam_206_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_170_producer.sourceFacts
      (fam_206_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_206_rowApplies_of_rows hrows))

theorem fam_206_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_170_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_206_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_206_key.goodKilled_of_source_row
    (source_170_producer.sourceFacts
      (fam_206_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_206_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2946b9d733afd1096e3a4ac5157d4286c8f9f73694248b2bea18a133588fe339`.
Observed representative GoodDirection cases: 2. -/
private def fam_207_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_207_key : SourceIndexStateKey where
  firstIndex := 130
  secondIndex := 1
  support := fam_207_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_207_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 1 source_211_support r mask) :
    source_211_producer.Applies fam_207_key r mask := by
  unfold source_211_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_207_key, fam_207_support, source_211_support],
    hsource⟩⟩⟩

theorem fam_207_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_207_key.support r mask) :
    row_001_producer.Applies fam_207_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_207_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 1 source_211_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_207_key.support r mask) :
    SourceIndexStateKeyFacts fam_207_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_211_producer.sourceFacts
      (fam_207_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_207_rowApplies_of_rows hrows))

theorem fam_207_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 1 source_211_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_207_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_207_key.goodKilled_of_source_row
    (source_211_producer.sourceFacts
      (fam_207_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_207_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3f93349896355ebe8244a974a8b1d33c339650acd7f560a5a651efe45d0ceec4`.
Observed representative GoodDirection cases: 2. -/
private def fam_208_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_208_key : SourceIndexStateKey where
  firstIndex := 105
  secondIndex := 1
  support := fam_208_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_208_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 1 source_205_support r mask) :
    source_205_producer.Applies fam_208_key r mask := by
  unfold source_205_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_208_key, fam_208_support, source_205_support],
    hsource⟩⟩⟩

theorem fam_208_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_208_key.support r mask) :
    row_001_producer.Applies fam_208_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_208_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 1 source_205_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_208_key.support r mask) :
    SourceIndexStateKeyFacts fam_208_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_205_producer.sourceFacts
      (fam_208_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_208_rowApplies_of_rows hrows))

theorem fam_208_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        105 1 source_205_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_208_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_208_key.goodKilled_of_source_row
    (source_205_producer.sourceFacts
      (fam_208_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_208_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `68349f4960996eb872474e6425823c92d46ab71ea0403d8afb96cb9e1fb6c727`.
Observed representative GoodDirection cases: 2. -/
private def fam_209_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_209_key : SourceIndexStateKey where
  firstIndex := 120
  secondIndex := 1
  support := fam_209_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_209_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        120 1 source_193_support r mask) :
    source_193_producer.Applies fam_209_key r mask := by
  unfold source_193_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_209_key, fam_209_support, source_193_support],
    hsource⟩⟩⟩

theorem fam_209_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_209_key.support r mask) :
    row_001_producer.Applies fam_209_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_209_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        120 1 source_193_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_209_key.support r mask) :
    SourceIndexStateKeyFacts fam_209_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_193_producer.sourceFacts
      (fam_209_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_209_rowApplies_of_rows hrows))

theorem fam_209_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        120 1 source_193_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_209_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_209_key.goodKilled_of_source_row
    (source_193_producer.sourceFacts
      (fam_209_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_209_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bb870f8f759e951d115acc1362961bb98f1c3c42301de65e5198f71339579443`.
Observed representative GoodDirection cases: 2. -/
private def fam_210_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_210_key : SourceIndexStateKey where
  firstIndex := 108
  secondIndex := 1
  support := fam_210_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_210_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        108 1 source_190_support r mask) :
    source_190_producer.Applies fam_210_key r mask := by
  unfold source_190_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_210_key, fam_210_support, source_190_support],
    hsource⟩⟩⟩

theorem fam_210_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_210_key.support r mask) :
    row_001_producer.Applies fam_210_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_210_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        108 1 source_190_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_210_key.support r mask) :
    SourceIndexStateKeyFacts fam_210_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_190_producer.sourceFacts
      (fam_210_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_210_rowApplies_of_rows hrows))

theorem fam_210_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        108 1 source_190_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_210_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_210_key.goodKilled_of_source_row
    (source_190_producer.sourceFacts
      (fam_210_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_210_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d05f98f0a79147770e7e9907bd625381f23b4df5e435aebbde8332f4ba51a724`.
Observed representative GoodDirection cases: 2. -/
private def fam_211_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_211_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 1
  support := fam_211_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_211_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 1 source_167_support r mask) :
    source_167_producer.Applies fam_211_key r mask := by
  unfold source_167_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_211_key, fam_211_support, source_167_support],
    hsource⟩⟩⟩

theorem fam_211_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_211_key.support r mask) :
    row_001_producer.Applies fam_211_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_211_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 1 source_167_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_211_key.support r mask) :
    SourceIndexStateKeyFacts fam_211_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_167_producer.sourceFacts
      (fam_211_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_211_rowApplies_of_rows hrows))

theorem fam_211_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 1 source_167_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_211_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_211_key.goodKilled_of_source_row
    (source_167_producer.sourceFacts
      (fam_211_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_211_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `31b2b87860cc2dafdf99ebf67149cdc2c14aad076a12cce66c62e89c95de4c33`.
Observed representative GoodDirection cases: 2. -/
private def fam_212_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_212_key : SourceIndexStateKey where
  firstIndex := 159
  secondIndex := 2
  support := fam_212_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_212_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        159 2 source_178_support r mask) :
    source_178_producer.Applies fam_212_key r mask := by
  unfold source_178_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_212_key, fam_212_support, source_178_support],
    hsource⟩⟩⟩

theorem fam_212_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_212_key.support r mask) :
    row_003_producer.Applies fam_212_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_212_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        159 2 source_178_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_212_key.support r mask) :
    SourceIndexStateKeyFacts fam_212_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_178_producer.sourceFacts
      (fam_212_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_212_rowApplies_of_rows hrows))

theorem fam_212_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        159 2 source_178_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_212_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_212_key.goodKilled_of_source_row
    (source_178_producer.sourceFacts
      (fam_212_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_212_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `62cde10d5755a010df2d40ce24e0de7f19367d9ff063f6d52f46ca443cb41ae4`.
Observed representative GoodDirection cases: 2. -/
private def fam_213_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_213_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 2
  support := fam_213_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_213_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 2 source_176_support r mask) :
    source_176_producer.Applies fam_213_key r mask := by
  unfold source_176_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_213_key, fam_213_support, source_176_support],
    hsource⟩⟩⟩

theorem fam_213_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_213_key.support r mask) :
    row_003_producer.Applies fam_213_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_213_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 2 source_176_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_213_key.support r mask) :
    SourceIndexStateKeyFacts fam_213_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_176_producer.sourceFacts
      (fam_213_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_213_rowApplies_of_rows hrows))

theorem fam_213_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 2 source_176_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_213_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_213_key.goodKilled_of_source_row
    (source_176_producer.sourceFacts
      (fam_213_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_213_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `636c01a26809afbda9a061eb37f65b50827f40ffffed1c7542fe2a86bf5bfae6`.
Observed representative GoodDirection cases: 2. -/
private def fam_214_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_214_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 2
  support := fam_214_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_214_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 2 source_175_support r mask) :
    source_175_producer.Applies fam_214_key r mask := by
  unfold source_175_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_214_key, fam_214_support, source_175_support],
    hsource⟩⟩⟩

theorem fam_214_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_214_key.support r mask) :
    row_003_producer.Applies fam_214_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_214_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 2 source_175_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_214_key.support r mask) :
    SourceIndexStateKeyFacts fam_214_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_175_producer.sourceFacts
      (fam_214_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_214_rowApplies_of_rows hrows))

theorem fam_214_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 2 source_175_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_214_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_214_key.goodKilled_of_source_row
    (source_175_producer.sourceFacts
      (fam_214_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_214_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c02bcf699cfaeef8d86ffd26f5650adbd32420d815814e0901a9eb159cd8af23`.
Observed representative GoodDirection cases: 2. -/
private def fam_215_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_215_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 2
  support := fam_215_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_215_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 2 source_202_support r mask) :
    source_202_producer.Applies fam_215_key r mask := by
  unfold source_202_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_215_key, fam_215_support, source_202_support],
    hsource⟩⟩⟩

theorem fam_215_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_215_key.support r mask) :
    row_003_producer.Applies fam_215_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_215_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 2 source_202_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_215_key.support r mask) :
    SourceIndexStateKeyFacts fam_215_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_202_producer.sourceFacts
      (fam_215_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_215_rowApplies_of_rows hrows))

theorem fam_215_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 2 source_202_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_215_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_215_key.goodKilled_of_source_row
    (source_202_producer.sourceFacts
      (fam_215_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_215_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c3c9d3e0bd6b1c4c87364abfb3358c5abd10c3f1c2541a16d2ee9de65d759636`.
Observed representative GoodDirection cases: 2. -/
private def fam_216_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_216_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 2
  support := fam_216_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_216_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 2 source_164_support r mask) :
    source_164_producer.Applies fam_216_key r mask := by
  unfold source_164_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_216_key, fam_216_support, source_164_support],
    hsource⟩⟩⟩

theorem fam_216_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_216_key.support r mask) :
    row_003_producer.Applies fam_216_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_216_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 2 source_164_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_216_key.support r mask) :
    SourceIndexStateKeyFacts fam_216_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_164_producer.sourceFacts
      (fam_216_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_216_rowApplies_of_rows hrows))

theorem fam_216_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 2 source_164_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_216_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_216_key.goodKilled_of_source_row
    (source_164_producer.sourceFacts
      (fam_216_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_216_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `eb283d23ad6b71564e940a15255ced8513a4d45b4b9d3bacf646cfd08aac153b`.
Observed representative GoodDirection cases: 2. -/
private def fam_217_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_217_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 2
  support := fam_217_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_217_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 2 source_171_support r mask) :
    source_171_producer.Applies fam_217_key r mask := by
  unfold source_171_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_217_key, fam_217_support, source_171_support],
    hsource⟩⟩⟩

theorem fam_217_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_217_key.support r mask) :
    row_003_producer.Applies fam_217_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_217_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 2 source_171_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_217_key.support r mask) :
    SourceIndexStateKeyFacts fam_217_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_171_producer.sourceFacts
      (fam_217_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_217_rowApplies_of_rows hrows))

theorem fam_217_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 2 source_171_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_217_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_217_key.goodKilled_of_source_row
    (source_171_producer.sourceFacts
      (fam_217_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_217_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `71e3ad528373844c11c154df7a1c687f874e9406d9a35e40463e415d66404b66`.
Observed representative GoodDirection cases: 1. -/
private def fam_218_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_218_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 11
  support := fam_218_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_218_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 11 source_242_support r mask) :
    source_242_producer.Applies fam_218_key r mask := by
  unfold source_242_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_218_key, fam_218_support, source_242_support],
    hsource⟩⟩⟩

theorem fam_218_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_218_key.support r mask) :
    row_015_producer.Applies fam_218_key r mask := by
  unfold row_015_producer
  exact ⟨rfl, hrows⟩

theorem fam_218_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 11 source_242_support r mask)
    (hrows : AxisAOnlyRows fam_218_key.support r mask) :
    SourceIndexStateKeyFacts fam_218_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_242_producer.sourceFacts
      (fam_218_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_218_rowApplies_of_rows hrows))

theorem fam_218_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 11 source_242_support r mask)
    (hrows : AxisAOnlyRows fam_218_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_218_key.goodKilled_of_source_row
    (source_242_producer.sourceFacts
      (fam_218_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_218_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `adfd7e89c920e311d60870c08633b54c785db45d159b4fd2abdf7c89fe8cdb47`.
Observed representative GoodDirection cases: 1. -/
private def fam_219_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_219_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 15
  support := fam_219_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_219_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 15 source_280_support r mask) :
    source_280_producer.Applies fam_219_key r mask := by
  unfold source_280_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_219_key, fam_219_support, source_280_support],
    hsource⟩⟩⟩

theorem fam_219_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_219_key.support r mask) :
    row_015_producer.Applies fam_219_key r mask := by
  unfold row_015_producer
  exact ⟨rfl, hrows⟩

theorem fam_219_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 15 source_280_support r mask)
    (hrows : AxisAOnlyRows fam_219_key.support r mask) :
    SourceIndexStateKeyFacts fam_219_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_280_producer.sourceFacts
      (fam_219_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_219_rowApplies_of_rows hrows))

theorem fam_219_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 15 source_280_support r mask)
    (hrows : AxisAOnlyRows fam_219_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_219_key.goodKilled_of_source_row
    (source_280_producer.sourceFacts
      (fam_219_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_219_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c0c4f8c4270ccb5fdb6be4c285762053c1e68378c304374a58b5a4defe3c393f`.
Observed representative GoodDirection cases: 1. -/
private def fam_220_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def fam_220_key : SourceIndexStateKey where
  firstIndex := 165
  secondIndex := 4
  support := fam_220_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_220_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 4 source_239_support r mask) :
    source_239_producer.Applies fam_220_key r mask := by
  unfold source_239_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_220_key, fam_220_support, source_239_support],
    hsource⟩⟩⟩

theorem fam_220_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_220_key.support r mask) :
    row_012_producer.Applies fam_220_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_220_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 4 source_239_support r mask)
    (hrows : AxisAOnlyRows fam_220_key.support r mask) :
    SourceIndexStateKeyFacts fam_220_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_239_producer.sourceFacts
      (fam_220_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_220_rowApplies_of_rows hrows))

theorem fam_220_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 4 source_239_support r mask)
    (hrows : AxisAOnlyRows fam_220_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_220_key.goodKilled_of_source_row
    (source_239_producer.sourceFacts
      (fam_220_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_220_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ea15f28d1c5665a8d2a9dc3b6db8d2fb91ff08b2b069103b426fc07c20e2cba9`.
Observed representative GoodDirection cases: 1. -/
private def fam_221_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_221_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 14
  support := fam_221_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_221_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 14 source_255_support r mask) :
    source_255_producer.Applies fam_221_key r mask := by
  unfold source_255_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_221_key, fam_221_support, source_255_support],
    hsource⟩⟩⟩

theorem fam_221_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_221_key.support r mask) :
    row_015_producer.Applies fam_221_key r mask := by
  unfold row_015_producer
  exact ⟨rfl, hrows⟩

theorem fam_221_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 14 source_255_support r mask)
    (hrows : AxisAOnlyRows fam_221_key.support r mask) :
    SourceIndexStateKeyFacts fam_221_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_255_producer.sourceFacts
      (fam_221_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_221_rowApplies_of_rows hrows))

theorem fam_221_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 14 source_255_support r mask)
    (hrows : AxisAOnlyRows fam_221_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_221_key.goodKilled_of_source_row
    (source_255_producer.sourceFacts
      (fam_221_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_221_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2c872c6dbd1776a2b1dec52274fe2eb0c49bec62c8202bdc3b28f9bdbd5397e5`.
Observed representative GoodDirection cases: 1. -/
private def fam_222_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_222_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 7
  support := fam_222_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_222_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 7 source_281_support r mask) :
    source_281_producer.Applies fam_222_key r mask := by
  unfold source_281_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_222_key, fam_222_support, source_281_support],
    hsource⟩⟩⟩

theorem fam_222_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_222_key.support r mask) :
    row_014_producer.Applies fam_222_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_222_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 7 source_281_support r mask)
    (hrows : AxisBOnlyRows fam_222_key.support r mask) :
    SourceIndexStateKeyFacts fam_222_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_281_producer.sourceFacts
      (fam_222_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_222_rowApplies_of_rows hrows))

theorem fam_222_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 7 source_281_support r mask)
    (hrows : AxisBOnlyRows fam_222_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_222_key.goodKilled_of_source_row
    (source_281_producer.sourceFacts
      (fam_222_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_222_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `69bc7c3517157185f772d7d69611a7b13e98049ded09ed5cdadce666e18f9b52`.
Observed representative GoodDirection cases: 1. -/
private def fam_223_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_223_key : SourceIndexStateKey where
  firstIndex := 7
  secondIndex := 11
  support := fam_223_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_223_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        7 11 source_282_support r mask) :
    source_282_producer.Applies fam_223_key r mask := by
  unfold source_282_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_223_key, fam_223_support, source_282_support],
    hsource⟩⟩⟩

theorem fam_223_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_223_key.support r mask) :
    row_021_producer.Applies fam_223_key r mask := by
  unfold row_021_producer
  exact ⟨rfl, hrows⟩

theorem fam_223_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        7 11 source_282_support r mask)
    (hrows : AxisBOnlyRows fam_223_key.support r mask) :
    SourceIndexStateKeyFacts fam_223_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_282_producer.sourceFacts
      (fam_223_sourceApplies_of_sourcePredicate hsource))
    (row_021_producer.rowFacts
      (fam_223_rowApplies_of_rows hrows))

theorem fam_223_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        7 11 source_282_support r mask)
    (hrows : AxisBOnlyRows fam_223_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_223_key.goodKilled_of_source_row
    (source_282_producer.sourceFacts
      (fam_223_sourceApplies_of_sourcePredicate hsource))
    (row_021_producer.rowFacts
      (fam_223_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `af434ef1e28c4e9374e80e31bdac5132c4122299fdf6297c00b77e81462ef215`.
Observed representative GoodDirection cases: 1. -/
private def fam_224_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_224_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 12
  support := fam_224_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_224_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask) :
    source_138_producer.Applies fam_224_key r mask := by
  unfold source_138_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_224_key, fam_224_support, source_138_support],
    hsource⟩⟩⟩

theorem fam_224_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_224_key.support r mask) :
    row_020_producer.Applies fam_224_key r mask := by
  unfold row_020_producer
  exact ⟨rfl, hrows⟩

theorem fam_224_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask)
    (hrows : AxisBOnlyRows fam_224_key.support r mask) :
    SourceIndexStateKeyFacts fam_224_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_138_producer.sourceFacts
      (fam_224_sourceApplies_of_sourcePredicate hsource))
    (row_020_producer.rowFacts
      (fam_224_rowApplies_of_rows hrows))

theorem fam_224_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask)
    (hrows : AxisBOnlyRows fam_224_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_224_key.goodKilled_of_source_row
    (source_138_producer.sourceFacts
      (fam_224_sourceApplies_of_sourcePredicate hsource))
    (row_020_producer.rowFacts
      (fam_224_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c8cabab02f21f094bfbcc9f8e6089f1a1dd557fd810e328ccdf8d15df743d5b0`.
Observed representative GoodDirection cases: 1. -/
private def fam_225_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_225_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 7
  support := fam_225_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_225_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 7 source_221_support r mask) :
    source_221_producer.Applies fam_225_key r mask := by
  unfold source_221_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_225_key, fam_225_support, source_221_support],
    hsource⟩⟩⟩

theorem fam_225_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_225_key.support r mask) :
    row_014_producer.Applies fam_225_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_225_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 7 source_221_support r mask)
    (hrows : AxisBOnlyRows fam_225_key.support r mask) :
    SourceIndexStateKeyFacts fam_225_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_221_producer.sourceFacts
      (fam_225_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_225_rowApplies_of_rows hrows))

theorem fam_225_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 7 source_221_support r mask)
    (hrows : AxisBOnlyRows fam_225_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_225_key.goodKilled_of_source_row
    (source_221_producer.sourceFacts
      (fam_225_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_225_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ca84b89b0f6ddf05518b1edae25c6870b88d9fac02b265344bf98adf0431a536`.
Observed representative GoodDirection cases: 1. -/
private def fam_226_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_226_key : SourceIndexStateKey where
  firstIndex := 163
  secondIndex := 7
  support := fam_226_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_226_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        163 7 source_295_support r mask) :
    source_295_producer.Applies fam_226_key r mask := by
  unfold source_295_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_226_key, fam_226_support, source_295_support],
    hsource⟩⟩⟩

theorem fam_226_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_226_key.support r mask) :
    row_014_producer.Applies fam_226_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_226_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        163 7 source_295_support r mask)
    (hrows : AxisBOnlyRows fam_226_key.support r mask) :
    SourceIndexStateKeyFacts fam_226_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_295_producer.sourceFacts
      (fam_226_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_226_rowApplies_of_rows hrows))

theorem fam_226_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        163 7 source_295_support r mask)
    (hrows : AxisBOnlyRows fam_226_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_226_key.goodKilled_of_source_row
    (source_295_producer.sourceFacts
      (fam_226_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_226_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0dbbaf9e27dae54f0a28397f887e523eae481a156cb22f9ea3acb844af4c9729`.
Observed representative GoodDirection cases: 1. -/
private def fam_227_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_227_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 3
  support := fam_227_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_227_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 3 source_291_support r mask) :
    source_291_producer.Applies fam_227_key r mask := by
  unfold source_291_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_227_key, fam_227_support, source_291_support],
    hsource⟩⟩⟩

theorem fam_227_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_227_key.support r mask) :
    row_006_producer.Applies fam_227_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_227_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 3 source_291_support r mask)
    (hrows : EqEqNegVarFirstRows fam_227_key.support r mask) :
    SourceIndexStateKeyFacts fam_227_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_291_producer.sourceFacts
      (fam_227_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_227_rowApplies_of_rows hrows))

theorem fam_227_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 3 source_291_support r mask)
    (hrows : EqEqNegVarFirstRows fam_227_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_227_key.goodKilled_of_source_row
    (source_291_producer.sourceFacts
      (fam_227_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_227_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `38f2e6200af33a2f7feab6688f796b2c04fe3a8e117c22a37941b05aef082b22`.
Observed representative GoodDirection cases: 1. -/
private def fam_228_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_228_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 3
  support := fam_228_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_228_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 3 source_218_support r mask) :
    source_218_producer.Applies fam_228_key r mask := by
  unfold source_218_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_228_key, fam_228_support, source_218_support],
    hsource⟩⟩⟩

theorem fam_228_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_228_key.support r mask) :
    row_006_producer.Applies fam_228_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_228_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 3 source_218_support r mask)
    (hrows : EqEqNegVarFirstRows fam_228_key.support r mask) :
    SourceIndexStateKeyFacts fam_228_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_218_producer.sourceFacts
      (fam_228_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_228_rowApplies_of_rows hrows))

theorem fam_228_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 3 source_218_support r mask)
    (hrows : EqEqNegVarFirstRows fam_228_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_228_key.goodKilled_of_source_row
    (source_218_producer.sourceFacts
      (fam_228_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_228_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3ef29377ad6abfec05e4466841e82315c12eef3997c1532baf40b5fc8a3024a3`.
Observed representative GoodDirection cases: 1. -/
private def fam_229_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_229_key : SourceIndexStateKey where
  firstIndex := 182
  secondIndex := 3
  support := fam_229_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_229_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 3 source_283_support r mask) :
    source_283_producer.Applies fam_229_key r mask := by
  unfold source_283_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_229_key, fam_229_support, source_283_support],
    hsource⟩⟩⟩

theorem fam_229_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_229_key.support r mask) :
    row_006_producer.Applies fam_229_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_229_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 3 source_283_support r mask)
    (hrows : EqEqNegVarFirstRows fam_229_key.support r mask) :
    SourceIndexStateKeyFacts fam_229_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_283_producer.sourceFacts
      (fam_229_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_229_rowApplies_of_rows hrows))

theorem fam_229_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 3 source_283_support r mask)
    (hrows : EqEqNegVarFirstRows fam_229_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_229_key.goodKilled_of_source_row
    (source_283_producer.sourceFacts
      (fam_229_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_229_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7756892e1bbc5bf2e1f84a76378de3a1fb4a581c106d3ab4ed5f9be83c94a898`.
Observed representative GoodDirection cases: 1. -/
private def fam_230_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_230_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 3
  support := fam_230_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_230_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 3 source_214_support r mask) :
    source_214_producer.Applies fam_230_key r mask := by
  unfold source_214_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_230_key, fam_230_support, source_214_support],
    hsource⟩⟩⟩

theorem fam_230_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_230_key.support r mask) :
    row_006_producer.Applies fam_230_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_230_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 3 source_214_support r mask)
    (hrows : EqEqNegVarFirstRows fam_230_key.support r mask) :
    SourceIndexStateKeyFacts fam_230_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_214_producer.sourceFacts
      (fam_230_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_230_rowApplies_of_rows hrows))

theorem fam_230_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 3 source_214_support r mask)
    (hrows : EqEqNegVarFirstRows fam_230_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_230_key.goodKilled_of_source_row
    (source_214_producer.sourceFacts
      (fam_230_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_230_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e0f583d050c227dd432c34e25905dc37685cf975ba285ce1d38e92c8c0e09d39`.
Observed representative GoodDirection cases: 1. -/
private def fam_231_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_231_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 3
  support := fam_231_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_231_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 3 source_265_support r mask) :
    source_265_producer.Applies fam_231_key r mask := by
  unfold source_265_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_231_key, fam_231_support, source_265_support],
    hsource⟩⟩⟩

theorem fam_231_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_231_key.support r mask) :
    row_006_producer.Applies fam_231_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_231_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 3 source_265_support r mask)
    (hrows : EqEqNegVarFirstRows fam_231_key.support r mask) :
    SourceIndexStateKeyFacts fam_231_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_265_producer.sourceFacts
      (fam_231_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_231_rowApplies_of_rows hrows))

theorem fam_231_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 3 source_265_support r mask)
    (hrows : EqEqNegVarFirstRows fam_231_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_231_key.goodKilled_of_source_row
    (source_265_producer.sourceFacts
      (fam_231_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_231_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e4540f08727f760d8762b0993b2d14b8f0fb0abc19f4fb5ed550e7be3e75191e`.
Observed representative GoodDirection cases: 1. -/
private def fam_232_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_232_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 7
  support := fam_232_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_232_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 7 source_230_support r mask) :
    source_230_producer.Applies fam_232_key r mask := by
  unfold source_230_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_232_key, fam_232_support, source_230_support],
    hsource⟩⟩⟩

theorem fam_232_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_232_key.support r mask) :
    row_007_producer.Applies fam_232_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_232_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 7 source_230_support r mask)
    (hrows : EqEqNegVarSecondRows fam_232_key.support r mask) :
    SourceIndexStateKeyFacts fam_232_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_230_producer.sourceFacts
      (fam_232_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_232_rowApplies_of_rows hrows))

theorem fam_232_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 7 source_230_support r mask)
    (hrows : EqEqNegVarSecondRows fam_232_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_232_key.goodKilled_of_source_row
    (source_230_producer.sourceFacts
      (fam_232_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_232_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8e4ebfe325e93d90f4f6e0da8281733c5763a854212e74bad7f22542618a45d5`.
Observed representative GoodDirection cases: 1. -/
private def fam_233_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_233_key : SourceIndexStateKey where
  firstIndex := 142
  secondIndex := 0
  support := fam_233_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_233_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 0 source_267_support r mask) :
    source_267_producer.Applies fam_233_key r mask := by
  unfold source_267_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_233_key, fam_233_support, source_267_support],
    hsource⟩⟩⟩

theorem fam_233_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_233_key.support r mask) :
    row_000_producer.Applies fam_233_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_233_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 0 source_267_support r mask)
    (hrows : EqEqPosVarFirstRows fam_233_key.support r mask) :
    SourceIndexStateKeyFacts fam_233_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_267_producer.sourceFacts
      (fam_233_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_233_rowApplies_of_rows hrows))

theorem fam_233_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 0 source_267_support r mask)
    (hrows : EqEqPosVarFirstRows fam_233_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_233_key.goodKilled_of_source_row
    (source_267_producer.sourceFacts
      (fam_233_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_233_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9601f41dcdcd25c276537b4b0b6f2bf3a39db26ab6855c2273d5e73970fc6b36`.
Observed representative GoodDirection cases: 1. -/
private def fam_234_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_234_key : SourceIndexStateKey where
  firstIndex := 153
  secondIndex := 0
  support := fam_234_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_234_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        153 0 source_259_support r mask) :
    source_259_producer.Applies fam_234_key r mask := by
  unfold source_259_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_234_key, fam_234_support, source_259_support],
    hsource⟩⟩⟩

theorem fam_234_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_234_key.support r mask) :
    row_000_producer.Applies fam_234_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_234_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        153 0 source_259_support r mask)
    (hrows : EqEqPosVarFirstRows fam_234_key.support r mask) :
    SourceIndexStateKeyFacts fam_234_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_259_producer.sourceFacts
      (fam_234_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_234_rowApplies_of_rows hrows))

theorem fam_234_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        153 0 source_259_support r mask)
    (hrows : EqEqPosVarFirstRows fam_234_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_234_key.goodKilled_of_source_row
    (source_259_producer.sourceFacts
      (fam_234_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_234_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `99369c714e8b72fbee4370a5683aefb89f766b4dbd73ec663e1d4c1270d6f7e9`.
Observed representative GoodDirection cases: 1. -/
private def fam_235_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_235_key : SourceIndexStateKey where
  firstIndex := 137
  secondIndex := 0
  support := fam_235_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_235_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 0 source_272_support r mask) :
    source_272_producer.Applies fam_235_key r mask := by
  unfold source_272_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_235_key, fam_235_support, source_272_support],
    hsource⟩⟩⟩

theorem fam_235_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_235_key.support r mask) :
    row_000_producer.Applies fam_235_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_235_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 0 source_272_support r mask)
    (hrows : EqEqPosVarFirstRows fam_235_key.support r mask) :
    SourceIndexStateKeyFacts fam_235_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_272_producer.sourceFacts
      (fam_235_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_235_rowApplies_of_rows hrows))

theorem fam_235_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        137 0 source_272_support r mask)
    (hrows : EqEqPosVarFirstRows fam_235_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_235_key.goodKilled_of_source_row
    (source_272_producer.sourceFacts
      (fam_235_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_235_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b0f0ca5a98035b6b28d04137c8ccc38f11ac1d979835852b354aeb5200758f8f`.
Observed representative GoodDirection cases: 1. -/
private def fam_236_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_236_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 0
  support := fam_236_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_236_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_263_support r mask) :
    source_263_producer.Applies fam_236_key r mask := by
  unfold source_263_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_236_key, fam_236_support, source_263_support],
    hsource⟩⟩⟩

theorem fam_236_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_236_key.support r mask) :
    row_000_producer.Applies fam_236_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_236_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_263_support r mask)
    (hrows : EqEqPosVarFirstRows fam_236_key.support r mask) :
    SourceIndexStateKeyFacts fam_236_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_263_producer.sourceFacts
      (fam_236_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_236_rowApplies_of_rows hrows))

theorem fam_236_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_263_support r mask)
    (hrows : EqEqPosVarFirstRows fam_236_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_236_key.goodKilled_of_source_row
    (source_263_producer.sourceFacts
      (fam_236_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_236_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c181ba9bc80ff1e0af2cb891a63228397f40a8cc53b0148a4d2ff9db5b15c352`.
Observed representative GoodDirection cases: 1. -/
private def fam_237_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_237_key : SourceIndexStateKey where
  firstIndex := 145
  secondIndex := 0
  support := fam_237_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_237_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 0 source_296_support r mask) :
    source_296_producer.Applies fam_237_key r mask := by
  unfold source_296_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_237_key, fam_237_support, source_296_support],
    hsource⟩⟩⟩

theorem fam_237_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_237_key.support r mask) :
    row_000_producer.Applies fam_237_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_237_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 0 source_296_support r mask)
    (hrows : EqEqPosVarFirstRows fam_237_key.support r mask) :
    SourceIndexStateKeyFacts fam_237_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_296_producer.sourceFacts
      (fam_237_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_237_rowApplies_of_rows hrows))

theorem fam_237_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 0 source_296_support r mask)
    (hrows : EqEqPosVarFirstRows fam_237_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_237_key.goodKilled_of_source_row
    (source_296_producer.sourceFacts
      (fam_237_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_237_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c733aca9ebd04c863afaf56e22d60b96bd6bfd0c84f2a04208358dfd749e863b`.
Observed representative GoodDirection cases: 1. -/
private def fam_238_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_238_key : SourceIndexStateKey where
  firstIndex := 85
  secondIndex := 0
  support := fam_238_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_238_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 0 source_269_support r mask) :
    source_269_producer.Applies fam_238_key r mask := by
  unfold source_269_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_238_key, fam_238_support, source_269_support],
    hsource⟩⟩⟩

theorem fam_238_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_238_key.support r mask) :
    row_000_producer.Applies fam_238_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_238_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 0 source_269_support r mask)
    (hrows : EqEqPosVarFirstRows fam_238_key.support r mask) :
    SourceIndexStateKeyFacts fam_238_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_269_producer.sourceFacts
      (fam_238_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_238_rowApplies_of_rows hrows))

theorem fam_238_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 0 source_269_support r mask)
    (hrows : EqEqPosVarFirstRows fam_238_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_238_key.goodKilled_of_source_row
    (source_269_producer.sourceFacts
      (fam_238_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_238_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e7278ff9089a5d682777b11eb2c3af769e059c934a6a5e3488182bf47823624c`.
Observed representative GoodDirection cases: 1. -/
private def fam_239_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_239_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 0
  support := fam_239_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_239_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 0 source_251_support r mask) :
    source_251_producer.Applies fam_239_key r mask := by
  unfold source_251_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_239_key, fam_239_support, source_251_support],
    hsource⟩⟩⟩

theorem fam_239_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_239_key.support r mask) :
    row_000_producer.Applies fam_239_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_239_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 0 source_251_support r mask)
    (hrows : EqEqPosVarFirstRows fam_239_key.support r mask) :
    SourceIndexStateKeyFacts fam_239_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_251_producer.sourceFacts
      (fam_239_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_239_rowApplies_of_rows hrows))

theorem fam_239_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        129 0 source_251_support r mask)
    (hrows : EqEqPosVarFirstRows fam_239_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_239_key.goodKilled_of_source_row
    (source_251_producer.sourceFacts
      (fam_239_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_239_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ef0a95dd96247ea793a096835c8ac82b1f26f432b2913914cd43d44ef34770be`.
Observed representative GoodDirection cases: 1. -/
private def fam_240_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_240_key : SourceIndexStateKey where
  firstIndex := 133
  secondIndex := 0
  support := fam_240_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_240_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 0 source_253_support r mask) :
    source_253_producer.Applies fam_240_key r mask := by
  unfold source_253_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_240_key, fam_240_support, source_253_support],
    hsource⟩⟩⟩

theorem fam_240_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_240_key.support r mask) :
    row_000_producer.Applies fam_240_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_240_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 0 source_253_support r mask)
    (hrows : EqEqPosVarFirstRows fam_240_key.support r mask) :
    SourceIndexStateKeyFacts fam_240_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_253_producer.sourceFacts
      (fam_240_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_240_rowApplies_of_rows hrows))

theorem fam_240_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 0 source_253_support r mask)
    (hrows : EqEqPosVarFirstRows fam_240_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_240_key.goodKilled_of_source_row
    (source_253_producer.sourceFacts
      (fam_240_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_240_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0024393a7c50344504e5518e138736c502b90841bd96876ff846403ebc528ed9`.
Observed representative GoodDirection cases: 1. -/
private def fam_241_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_241_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 9
  support := fam_241_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_241_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_166_support r mask) :
    source_166_producer.Applies fam_241_key r mask := by
  unfold source_166_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_241_key, fam_241_support, source_166_support],
    hsource⟩⟩⟩

theorem fam_241_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_241_key.support r mask) :
    row_010_producer.Applies fam_241_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_241_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_166_support r mask)
    (hrows : ExactTwoSourceValidRows fam_241_key.support r mask) :
    SourceIndexStateKeyFacts fam_241_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_166_producer.sourceFacts
      (fam_241_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_241_rowApplies_of_rows hrows))

theorem fam_241_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_166_support r mask)
    (hrows : ExactTwoSourceValidRows fam_241_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_241_key.goodKilled_of_source_row
    (source_166_producer.sourceFacts
      (fam_241_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_241_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `02b127e3afcd56f6775e889cb82626bf61f0f0e26ca3fce84e1c8a0b89d4f727`.
Observed representative GoodDirection cases: 1. -/
private def fam_242_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_242_key : SourceIndexStateKey where
  firstIndex := 125
  secondIndex := 8
  support := fam_242_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_242_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_195_support r mask) :
    source_195_producer.Applies fam_242_key r mask := by
  unfold source_195_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_242_key, fam_242_support, source_195_support],
    hsource⟩⟩⟩

theorem fam_242_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_242_key.support r mask) :
    row_010_producer.Applies fam_242_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_242_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_195_support r mask)
    (hrows : ExactTwoSourceValidRows fam_242_key.support r mask) :
    SourceIndexStateKeyFacts fam_242_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_195_producer.sourceFacts
      (fam_242_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_242_rowApplies_of_rows hrows))

theorem fam_242_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_195_support r mask)
    (hrows : ExactTwoSourceValidRows fam_242_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_242_key.goodKilled_of_source_row
    (source_195_producer.sourceFacts
      (fam_242_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_242_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `096c11a7f13d19ea5a6a4ab1463bd9f484b703b8a1f141e0db5cbd58289a8018`.
Observed representative GoodDirection cases: 1. -/
private def fam_243_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_243_key : SourceIndexStateKey where
  firstIndex := 16
  secondIndex := 10
  support := fam_243_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_243_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 10 source_220_support r mask) :
    source_220_producer.Applies fam_243_key r mask := by
  unfold source_220_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_243_key, fam_243_support, source_220_support],
    hsource⟩⟩⟩

theorem fam_243_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_243_key.support r mask) :
    row_010_producer.Applies fam_243_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_243_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 10 source_220_support r mask)
    (hrows : ExactTwoSourceValidRows fam_243_key.support r mask) :
    SourceIndexStateKeyFacts fam_243_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_220_producer.sourceFacts
      (fam_243_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_243_rowApplies_of_rows hrows))

theorem fam_243_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 10 source_220_support r mask)
    (hrows : ExactTwoSourceValidRows fam_243_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_243_key.goodKilled_of_source_row
    (source_220_producer.sourceFacts
      (fam_243_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_243_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0c5859833d7bc3e1af0c614239fa19dd79c580a503e4c1dc19fbf2960c103401`.
Observed representative GoodDirection cases: 1. -/
private def fam_244_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_244_key : SourceIndexStateKey where
  firstIndex := 124
  secondIndex := 8
  support := fam_244_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_244_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        124 8 source_219_support r mask) :
    source_219_producer.Applies fam_244_key r mask := by
  unfold source_219_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_244_key, fam_244_support, source_219_support],
    hsource⟩⟩⟩

theorem fam_244_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_244_key.support r mask) :
    row_009_producer.Applies fam_244_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_244_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        124 8 source_219_support r mask)
    (hrows : ExactTwoSourceValidRows fam_244_key.support r mask) :
    SourceIndexStateKeyFacts fam_244_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_219_producer.sourceFacts
      (fam_244_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_244_rowApplies_of_rows hrows))

theorem fam_244_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        124 8 source_219_support r mask)
    (hrows : ExactTwoSourceValidRows fam_244_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_244_key.goodKilled_of_source_row
    (source_219_producer.sourceFacts
      (fam_244_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_244_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0c6b556294473409084a13ebc6f9807fe80d98a7eb2b18ddbbe34e163fd2ae9a`.
Observed representative GoodDirection cases: 1. -/
private def fam_245_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_245_key : SourceIndexStateKey where
  firstIndex := 154
  secondIndex := 6
  support := fam_245_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_245_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_243_support r mask) :
    source_243_producer.Applies fam_245_key r mask := by
  unfold source_243_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_245_key, fam_245_support, source_243_support],
    hsource⟩⟩⟩

theorem fam_245_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_245_key.support r mask) :
    row_010_producer.Applies fam_245_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_245_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_243_support r mask)
    (hrows : ExactTwoSourceValidRows fam_245_key.support r mask) :
    SourceIndexStateKeyFacts fam_245_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_243_producer.sourceFacts
      (fam_245_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_245_rowApplies_of_rows hrows))

theorem fam_245_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_243_support r mask)
    (hrows : ExactTwoSourceValidRows fam_245_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_245_key.goodKilled_of_source_row
    (source_243_producer.sourceFacts
      (fam_245_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_245_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `17117c25cd262106f0459dde394d8aa30576bb3757b92c6d5cbc70c408e47d33`.
Observed representative GoodDirection cases: 1. -/
private def fam_246_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_246_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 6
  support := fam_246_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_246_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 6 source_284_support r mask) :
    source_284_producer.Applies fam_246_key r mask := by
  unfold source_284_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_246_key, fam_246_support, source_284_support],
    hsource⟩⟩⟩

theorem fam_246_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_246_key.support r mask) :
    row_009_producer.Applies fam_246_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_246_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 6 source_284_support r mask)
    (hrows : ExactTwoSourceValidRows fam_246_key.support r mask) :
    SourceIndexStateKeyFacts fam_246_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_284_producer.sourceFacts
      (fam_246_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_246_rowApplies_of_rows hrows))

theorem fam_246_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 6 source_284_support r mask)
    (hrows : ExactTwoSourceValidRows fam_246_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_246_key.goodKilled_of_source_row
    (source_284_producer.sourceFacts
      (fam_246_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_246_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1bf27e236f383e1d81ddc6f288a9df726aba812efff0325f683ca79ca4172c7b`.
Observed representative GoodDirection cases: 1. -/
private def fam_247_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_247_key : SourceIndexStateKey where
  firstIndex := 38
  secondIndex := 9
  support := fam_247_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_247_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        38 9 source_226_support r mask) :
    source_226_producer.Applies fam_247_key r mask := by
  unfold source_226_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_247_key, fam_247_support, source_226_support],
    hsource⟩⟩⟩

theorem fam_247_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_247_key.support r mask) :
    row_010_producer.Applies fam_247_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_247_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        38 9 source_226_support r mask)
    (hrows : ExactTwoSourceValidRows fam_247_key.support r mask) :
    SourceIndexStateKeyFacts fam_247_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_226_producer.sourceFacts
      (fam_247_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_247_rowApplies_of_rows hrows))

theorem fam_247_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        38 9 source_226_support r mask)
    (hrows : ExactTwoSourceValidRows fam_247_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_247_key.goodKilled_of_source_row
    (source_226_producer.sourceFacts
      (fam_247_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_247_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2d0214e4910d9eaa1793839d8a69afbf8d37c87c58efd9a82498db6ba99c4f6f`.
Observed representative GoodDirection cases: 1. -/
private def fam_248_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_248_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 9
  support := fam_248_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_248_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 9 source_225_support r mask) :
    source_225_producer.Applies fam_248_key r mask := by
  unfold source_225_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_248_key, fam_248_support, source_225_support],
    hsource⟩⟩⟩

theorem fam_248_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_248_key.support r mask) :
    row_008_producer.Applies fam_248_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_248_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 9 source_225_support r mask)
    (hrows : ExactTwoSourceValidRows fam_248_key.support r mask) :
    SourceIndexStateKeyFacts fam_248_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_225_producer.sourceFacts
      (fam_248_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_248_rowApplies_of_rows hrows))

theorem fam_248_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 9 source_225_support r mask)
    (hrows : ExactTwoSourceValidRows fam_248_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_248_key.goodKilled_of_source_row
    (source_225_producer.sourceFacts
      (fam_248_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_248_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2d7aafa6d90a976cfbbdcec38eb55e5706411aa12f2c996088719de38bd31150`.
Observed representative GoodDirection cases: 1. -/
private def fam_249_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_249_key : SourceIndexStateKey where
  firstIndex := 115
  secondIndex := 10
  support := fam_249_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_249_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 10 source_289_support r mask) :
    source_289_producer.Applies fam_249_key r mask := by
  unfold source_289_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_249_key, fam_249_support, source_289_support],
    hsource⟩⟩⟩

theorem fam_249_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_249_key.support r mask) :
    row_008_producer.Applies fam_249_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_249_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 10 source_289_support r mask)
    (hrows : ExactTwoSourceValidRows fam_249_key.support r mask) :
    SourceIndexStateKeyFacts fam_249_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_289_producer.sourceFacts
      (fam_249_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_249_rowApplies_of_rows hrows))

theorem fam_249_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        115 10 source_289_support r mask)
    (hrows : ExactTwoSourceValidRows fam_249_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_249_key.goodKilled_of_source_row
    (source_289_producer.sourceFacts
      (fam_249_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_249_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `314eee03483b488c04e72aafd9c8df371e25368287c67ecd85a4254c364733ad`.
Observed representative GoodDirection cases: 1. -/
private def fam_250_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_250_key : SourceIndexStateKey where
  firstIndex := 182
  secondIndex := 9
  support := fam_250_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_250_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 9 source_216_support r mask) :
    source_216_producer.Applies fam_250_key r mask := by
  unfold source_216_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_250_key, fam_250_support, source_216_support],
    hsource⟩⟩⟩

theorem fam_250_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_250_key.support r mask) :
    row_010_producer.Applies fam_250_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_250_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 9 source_216_support r mask)
    (hrows : ExactTwoSourceValidRows fam_250_key.support r mask) :
    SourceIndexStateKeyFacts fam_250_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_216_producer.sourceFacts
      (fam_250_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_250_rowApplies_of_rows hrows))

theorem fam_250_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        182 9 source_216_support r mask)
    (hrows : ExactTwoSourceValidRows fam_250_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_250_key.goodKilled_of_source_row
    (source_216_producer.sourceFacts
      (fam_250_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_250_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `38f7ec304a220b9de48eb49cbe45fc6aa64148b6041f1311796e6f34db4e6257`.
Observed representative GoodDirection cases: 1. -/
private def fam_251_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_251_key : SourceIndexStateKey where
  firstIndex := 111
  secondIndex := 8
  support := fam_251_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_251_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 8 source_247_support r mask) :
    source_247_producer.Applies fam_251_key r mask := by
  unfold source_247_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_251_key, fam_251_support, source_247_support],
    hsource⟩⟩⟩

theorem fam_251_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_251_key.support r mask) :
    row_008_producer.Applies fam_251_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_251_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 8 source_247_support r mask)
    (hrows : ExactTwoSourceValidRows fam_251_key.support r mask) :
    SourceIndexStateKeyFacts fam_251_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_247_producer.sourceFacts
      (fam_251_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_251_rowApplies_of_rows hrows))

theorem fam_251_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 8 source_247_support r mask)
    (hrows : ExactTwoSourceValidRows fam_251_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_251_key.goodKilled_of_source_row
    (source_247_producer.sourceFacts
      (fam_251_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_251_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `39ee2997250107122e7eea24dc0a941a697f6601faf64ab54cf0f400444dbf6a`.
Observed representative GoodDirection cases: 1. -/
private def fam_252_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_252_key : SourceIndexStateKey where
  firstIndex := 100
  secondIndex := 9
  support := fam_252_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_252_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        100 9 source_213_support r mask) :
    source_213_producer.Applies fam_252_key r mask := by
  unfold source_213_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_252_key, fam_252_support, source_213_support],
    hsource⟩⟩⟩

theorem fam_252_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_252_key.support r mask) :
    row_008_producer.Applies fam_252_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_252_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        100 9 source_213_support r mask)
    (hrows : ExactTwoSourceValidRows fam_252_key.support r mask) :
    SourceIndexStateKeyFacts fam_252_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_213_producer.sourceFacts
      (fam_252_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_252_rowApplies_of_rows hrows))

theorem fam_252_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        100 9 source_213_support r mask)
    (hrows : ExactTwoSourceValidRows fam_252_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_252_key.goodKilled_of_source_row
    (source_213_producer.sourceFacts
      (fam_252_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_252_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3ae054daffa17aed38d706a8995f0717e686672b5ed0b95ba717da8118221bc2`.
Observed representative GoodDirection cases: 1. -/
private def fam_253_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_253_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 12
  support := fam_253_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_253_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask) :
    source_138_producer.Applies fam_253_key r mask := by
  unfold source_138_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_253_key, fam_253_support, source_138_support],
    hsource⟩⟩⟩

theorem fam_253_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_253_key.support r mask) :
    row_008_producer.Applies fam_253_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_253_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask)
    (hrows : ExactTwoSourceValidRows fam_253_key.support r mask) :
    SourceIndexStateKeyFacts fam_253_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_138_producer.sourceFacts
      (fam_253_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_253_rowApplies_of_rows hrows))

theorem fam_253_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 12 source_138_support r mask)
    (hrows : ExactTwoSourceValidRows fam_253_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_253_key.goodKilled_of_source_row
    (source_138_producer.sourceFacts
      (fam_253_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_253_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3b7e093d7c59f8c5e5c810cff1492ae56eca717d517dd39fd7ce2d55aae22786`.
Observed representative GoodDirection cases: 1. -/
private def fam_254_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_254_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 11
  support := fam_254_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_254_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 11 source_224_support r mask) :
    source_224_producer.Applies fam_254_key r mask := by
  unfold source_224_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_254_key, fam_254_support, source_224_support],
    hsource⟩⟩⟩

theorem fam_254_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_254_key.support r mask) :
    row_013_producer.Applies fam_254_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_254_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 11 source_224_support r mask)
    (hrows : ExactTwoSourceValidRows fam_254_key.support r mask) :
    SourceIndexStateKeyFacts fam_254_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_224_producer.sourceFacts
      (fam_254_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_254_rowApplies_of_rows hrows))

theorem fam_254_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 11 source_224_support r mask)
    (hrows : ExactTwoSourceValidRows fam_254_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_254_key.goodKilled_of_source_row
    (source_224_producer.sourceFacts
      (fam_254_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_254_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `476102ebe96984dc65502016f55d0eb0122adfc57083de07bd4fb5f8534db450`.
Observed representative GoodDirection cases: 1. -/
private def fam_255_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_255_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 6
  support := fam_255_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_255_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 6 source_227_support r mask) :
    source_227_producer.Applies fam_255_key r mask := by
  unfold source_227_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_255_key, fam_255_support, source_227_support],
    hsource⟩⟩⟩

theorem fam_255_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_255_key.support r mask) :
    row_013_producer.Applies fam_255_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_255_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 6 source_227_support r mask)
    (hrows : ExactTwoSourceValidRows fam_255_key.support r mask) :
    SourceIndexStateKeyFacts fam_255_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_227_producer.sourceFacts
      (fam_255_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_255_rowApplies_of_rows hrows))

theorem fam_255_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 6 source_227_support r mask)
    (hrows : ExactTwoSourceValidRows fam_255_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_255_key.goodKilled_of_source_row
    (source_227_producer.sourceFacts
      (fam_255_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_255_rowApplies_of_rows hrows))

theorem chunk_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk003
